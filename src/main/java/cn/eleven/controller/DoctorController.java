package cn.eleven.controller;

import cn.eleven.pojo.*;
import cn.eleven.service.*;
import cn.eleven.utils.ImageUtils;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 10:14
 * doctor 的controller层
 */
@Controller
@RequestMapping("/doctor")
public class DoctorController {
    @Autowired
    private DeptService deptService;
    @Autowired
    private CheckService checkService;
    @Autowired
    private CardService cardService;
    @Autowired
    private DoctorService doctorService;
    @Autowired
    private RegisteredService registeredService;
    @Autowired
    private MedicalRecordService medicalRecordService;
    @Autowired
    private DrugService drugService;
    @Autowired
    private CheckOrderService checkOrderService;

    @RequestMapping("/toDoctorLogin")//跳转到doctor_login
    public String toDoctorLogin() {
        return "../../doctor_login";
    }

    @RequestMapping("/toDoctorIndex")//跳转到doctor_index
    public String toDoctorIndex() {
        return "backstage/doctor/doctor_index";
    }

    @RequestMapping("/toWindows1")//跳转到选择检查项
    public String toWindows1(Model model, String userId) {
        System.out.println("---userId:" + userId);
        List<Check> checkList = checkService.findAllCheck();
        Card card = cardService.findCardByUserId(userId);
        if (checkList != null && card != null) {
            model.addAttribute("card", card);
            model.addAttribute("checkList", checkList);
            return "backstage/doctor/windows1";
        }
        return "";
    }

    @RequestMapping("/findCheckByParentId")
    @ResponseBody
    public String findCheckByParentId(Check check) {
        System.out.println("------JSON:");
        String jason = JSON.toJSONString(checkService.findCheckByParentId(check));
        System.out.println("------check JSON:" + jason);
        return jason;
    }

    @RequestMapping("/findDrugById")
    @ResponseBody
    public String findDrugById(Drug drug) {
        String jason = JSON.toJSONString(drugService.findDrugById(drug.getDrugId()));
        System.out.println("------drug JSON:" + jason);
        return jason;
    }


    @RequestMapping("/toWindows2")//跳转到选择检查项
    public String toWindows2(Model model, String userId) {
        List<Drug> drugList = drugService.findMedicalStock();
        Card card = cardService.findCardByUserId(userId);
        if (drugList != null && card != null) {
            model.addAttribute("card", card);
            model.addAttribute("drugList", drugList);
            return "backstage/doctor/windows2";
        }
        return "";
    }

    @RequestMapping("/doctorLogin")
    public String doctorLogin(Doctor doctor, HttpSession session, Model model) {//医生登陆方法
        Doctor doctor1 = doctorService.doctorLogin(doctor);
        if (doctor1 != null) {
            if (doctor1.getDoctorStatus() == 0) {
                model.addAttribute("res", "您的账号已被停用");
                return "../../doctor_login";
            }
            session.setAttribute("doctor", doctor1);
            return "backstage/doctor/doctor_index";
        }
        model.addAttribute("res", "用户名或密码错误");
        return "../../doctor_login";
    }

    @RequestMapping("/findDoctorById")
    public String findDoctorById(Model model, Doctor doctor) {//通过医生id查找医生
        System.out.println("----" + doctor.getDoctorId());
        Doctor doc = doctorService.findDoctorById(doctor);
        System.out.println("=====" + doc.toString());
        if (doc != null) {
            model.addAttribute("doctor", doc);
            return "backstage/doctor/show_doctor_by_id";
        }
        return "";
    }

    @RequestMapping("/updateDoctor")
    public String updateDoctor(Doctor doctor, Model model, HttpServletRequest request) throws Exception {//修改医生信息
        Doctor parDoc = new Doctor();
        parDoc.setDoctorId(doctor.getDoctorId());//只将id封装到parDoc对象中
        Doctor resDoc = doctorService.findDoctorById(parDoc);//调用service方法通过doctorId查找到医生的密码
        if (!resDoc.getDoctorPwd().equals(doctor.getDoctorPwd())) {
            doctorService.updateDoctor(doctor);
            String res = "修改密码请重新登陆";
            model.addAttribute("res", res);
            return "../../doctor_login";
        }
        //将照片上传到服务器
        // 得到上传图片的地址
        String imgPath;
        try {
            //ImageUtils为之前添加的工具类
            imgPath = ImageUtils.upload(request, doctor.getFile());
            if (imgPath != null) {
                // 将上传图片的地址封装到实体类
                doctor.setDoctorPic(imgPath);
                System.out.println("-----------------图片上传成功！");
                doctorService.updateDoctor(doctor);
                return "backstage/doctor/doctor_index";
            } else {
                System.out.println("-----------------图片上传失败！");
            }
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("----------------图片上传失败！");
        }


        return "";

    }

    @RequestMapping("/findRegByDoctorId")
    public String findRegByDoctorId(Model model, int doctorId) {//查看排号
        List<Registered> regList = doctorService.findRegByDoctorId(doctorId);
        if (regList != null) {
            System.out.println("---查看排号-" + regList.toString());
            model.addAttribute("regList", regList);
            return "backstage/doctor/show_reg_by_doctor_id";
        }
        return "";
    }

    @RequestMapping("/cancelReg")
    public String cancelReg(int regId, int doctorId) {//取消号
        Registered registered = new Registered();
        //取消号后将挂号费退回病人卡中
        Registered reg = registeredService.findRegistrarsByRegId(regId);
        if (reg.getRegPrice() != null) {
            Card card = cardService.findCardByUserId(reg.getCard().getUserId());
            double money = card.getMoney() + reg.getRegPrice();
            card.setMoney(money);
            cardService.updateCardMoney(card);
        }
        //改变挂号单的状态
        registered.setRegId(regId);
        registered.setRegStatus(0);
        registeredService.updateRegistrarsStatus(registered);
        System.out.println("---cancel reg:" + doctorId);
        return "redirect:findRegByDoctorId?doctorId=" + doctorId + "";
    }

    @RequestMapping("/findUserByRegStatus")
    public String findUserByRegStatus(Model model, int doctorId) {
        /*List<Registered> regList = doctorService.findUserByRegStatus(doctorId);*/
        Registered regList = doctorService.findUserByRegStatus(doctorId);
        /*Registered registered = registeredService.findRegistrarsByRegId(regId);
        System.out.println(registered.getCard().getUserId());
        MedicalRecord medicalRecord = MedicalRecordService.findMRByUserId(registered.getCard().getUserId());*/
        if (regList != null) {
            model.addAttribute("regList", regList);
            // model.addAttribute("medicalRecord",medicalRecord);
            return "backstage/doctor/show_user_by_reg_status";
        }
        model.addAttribute("res","没有就诊病人，请叫号");
        return "redirect:findRegByDoctorId?doctorId=" + doctorId + "";
    }

    @RequestMapping("/checkRegStatus")
    public String checkRegStatus(Model model, Registered registered, int doctorId, RedirectAttributes attributes) {//检查医生是否有正在就诊的病人，如果有则不可以叫号
        /*List<Registered> reg = doctorService.findUserByRegStatus(doctorId);*/
        Registered reg = doctorService.findUserByRegStatus(doctorId);
        //System.out.println(reg.toString());
        if (reg != null) {
            model.addAttribute("res", "您还有就诊病人，请诊断完毕后叫号");
            System.out.println("您还有就诊病人，请诊断完毕后叫号");
            return "redirect:findRegByDoctorId?doctorId=" + doctorId + "";
        }
        System.out.println("===叫号：" + doctorId + "  " + registered.getRegId());
        attributes.addAttribute("doctorId", doctorId);
        attributes.addAttribute("regId", registered.getRegId());
        return "redirect:updateRegStatus";
    }

    @RequestMapping("/updateRegStatus")
    public String updateRegStatus(Registered registered, int doctorId, RedirectAttributes attributes) {//叫号更新状态为2
        System.out.println("----" + registered.getRegId());
        //Registered reg =  registeredService.findRegistrarsByRegId(registered.getRegId());
        //System.out.println("----"+reg.toString());
        registered.setRegStatus(2);
        int res = registeredService.updateRegistrarsStatus(registered);
        if (res > 0) {
            attributes.addAttribute("doctorId", doctorId);
            //attributes.addAttribute("regId",registered.getRegId());
            return "redirect:findUserByRegStatus";
        }
        return "";
    }

    List<Check> cList = new ArrayList();

    @RequestMapping("/chooseCheck")
    @ResponseBody
    public String chooseCheck(Check check, String userId, HttpSession session) {//选择检查项目
        System.out.println("---choose checkId:" + check.getCheckId());
        Check check1 = checkService.findCheckById(check.getCheckId());//通过checkid查找，需要价格
        Card card = cardService.findCardByUserId(userId);
        System.out.println("----card:" + card.toString());
        if (card.getMoney() != 0) {
            if (card.getMoney() > check1.getCheckPrice()) {
                //card.setUserId(userId);
                //card.setMoney(card.getMoney() - check1.getCheckPrice());
                //cardService.updateCardMoney(card);//扣费
                cList.add(check1);
                session.setAttribute("cList", cList);
                return "true";/*redirect:findUserByRegStatus?doctorId=" + doctorId +"*/
            }
        }
        //model.addAttribute("res","余额不足请充值！");
        return "false";/*redirect:toWindows1?userId="+userId+"*/
    }

    List<Drug> dList = new ArrayList();

    @ResponseBody
    @RequestMapping("/chooseDrug")
    public String chooseDrug(Drug drug, String userId, HttpSession session) {//选择药品
        Card card = cardService.findCardByUserId(userId);
        System.out.println("---drugId:" + drug.getDrugId());
        Drug drug1 = drugService.findDrugById(drug.getDrugId());
        Double drugPrice = drug1.getDrugPrice();
        Double allDrugPrice = drugPrice * drug.getDrugNum();
        if (drug.getDrugNum() < drug1.getDrugNum()) {//判断库存量与所选数量
            if (card.getMoney() != null) {
                if (card.getMoney() > allDrugPrice) {//判断卡中余额与选择药品总价格
                    //card.setUserId(userId);
                    //card.setMoney(card.getMoney() - allDrugPrice);
                    // cardService.updateCardMoney(card);//扣费
                    //drug1.setDrugId(drug.getDrugId());//封装药品id
                    // drug1.setDrugNum(drug1.getDrugNum() - drug.getDrugNum());//封装修改后的数量
                    //drugService.updateDrugNum(drug1);//修改库存
                    drug1.setDrugNum(drug.getDrugNum());//将选择数量重新封装，展示到页面
                    dList.add(drug1);
                    session.setAttribute("dList", dList);
                    return "true";
                }
            }
            return "false";
        }
        return "false1";

    }


    @RequestMapping("updateMedRecord")
    public String updateMedRecord(MedicalRecord medicalRecord, int regId, int check[], double checkPrice[], int drug[], int drugNum[]) {
        System.out.println("---MedicalRecord:" + medicalRecord.getUserId() + "--" + medicalRecord.getRegId());
        MedicalRecord resMR = medicalRecordService.findMRByUserId(medicalRecord);
        Card card = cardService.findCardByUserId(medicalRecord.getUserId());
//        System.out.println(resMR.toString());
        if (check != null) {
            for (int i = 0; i < check.length; i++) {

                System.out.println("---check:" + check[i]);
                System.out.println("---check:" + checkPrice[i]);
                Card card1 = new Card();
                card1.setUserId(medicalRecord.getUserId());
                double money = card.getMoney() - checkPrice[i];
                System.out.println("---money:" + money);
                card1.setMoney(money);
                cardService.updateCardMoney(card1);//扣费
                resMR.setCheckId(check[i]);
                resMR.setMrCheckPrice(checkPrice[i]);
                medicalRecordService.addCheck(resMR);//添加检查项到中间表
            }
            List<Double> checkOrders = checkOrderService.findCheckOrderByMrId(resMR.getMrId());
            double price = 0;
            for (int i=0;i<checkOrders.size();i++){
                price = checkOrders.get(i)+price;
            }
            System.out.println("*****检查总价："+price);
            resMR.setMrCheckPrice(price);


        }
        if (drug != null) {

            for (int i = 0; i < drug.length; i++) {
                System.out.println("---drug:" + drug[i]);
                Drug drug1 = drugService.findDrugById(drug[i]);

                Card card1 = new Card();
                card1.setUserId(medicalRecord.getUserId());
                double money = card.getMoney() - drugNum[i] * drug1.getDrugPrice();
                card1.setMoney(money);
                cardService.updateCardMoney(card1);//扣费
                drug1.setDrugNum(drug1.getDrugNum() - drugNum[i]);
                drug1.setDrugId(drug[i]);
                drugService.updateDrugNum(drug1);//扣除库存

                DrugOrder drugOrder = new DrugOrder();
                drugOrder.setDrug(drug1);
                System.out.println("choose drug:" + drug1.toString());
                drugOrder.setMedicalRecord(resMR);
                System.out.println("choose resMR:" + resMR.toString());
                drugOrder.setDrugOrderNum(drugNum[i]);
                System.out.println("choose drug num:" + drugNum[i]);
                drugOrder.setDrugOrderPrice(drug1.getDrugPrice() * drugNum[i]);
                //resMR.setMrDrugPrice(drug1.getDrugPrice() * drugNum[i]);
                System.out.println("choose drug price:" + drug1.getDrugPrice() * drugNum[i]);

                drugService.addDrugOrder(drugOrder);

            }
            List<DrugOrder> drugOrders =drugService.findDrugOrderByMrId(resMR.getMrId());
            double drugOrderPrice = 0 ;
            for (int i=0;i<drugOrders.size();i++){
                drugOrderPrice = drugOrders.get(i).getDrugOrderPrice()+drugOrderPrice;
            }
            System.out.println("*****药品总价："+drugOrderPrice);
            resMR.setMrDrugPrice(drugOrderPrice);
        }
        if (medicalRecord.getMedOrder() != null) {
            resMR.setMedOrder(medicalRecord.getMedOrder());
            System.out.println("====final resMR:" + resMR.toString());
            medicalRecordService.updateMR(resMR);
        }
        if (regId > 0) {
            //修改挂号单的状态为3 就诊完毕
            Registered registered = new Registered();
            registered.setRegId(regId);
            registered.setRegStatus(3);
            registeredService.updateRegistrarsStatus(registered);
        }
        cList.clear();//清空已开的检查项目
        dList.clear();//清空已开的药
        return "redirect:findRegByDoctorId?doctorId=" + resMR.getDoctorId() + "";
    }

    @RequestMapping("/toClearCheck")
    public String toClearCheck(int checkId, int doctorId, RedirectAttributes attributes) {//重新选择检查项
       /* MedicalRecord medicalRecord = new MedicalRecord();
        medicalRecord.setUserId(userId);
        medicalRecord.setRegId(regId);
        MedicalRecord record = medicalRecordService.findMRByUserId(medicalRecord);//通过用户id和挂号单id查找病例信息
        System.out.println("---record:" + record.toString());*/
        /*if (record != null) {
            Card card = cardService.findCardByUserId(userId);
            System.out.println("---card money" + card.getMoney());

            //for(int i=0;i<check.length;i++){
            System.out.println("--- check money" + checkService.findCheckById(checkId).getCheckPrice());
            card.setMoney(card.getMoney() + checkService.findCheckById(checkId).getCheckPrice());//将扣费推到用户的card上
            cardService.updateCardMoney(card);
            //}

            medicalRecord.setMrCheckPrice(null);//将病例中的检查项钱制空
            medicalRecordService.updateMR(medicalRecord);
        }*/

        for (int i = 0; i < cList.size(); i++) {
            if (cList.size() == 0) {
                cList.clear();
            } else if (cList.get(i).getCheckId() == checkId) {
                cList.remove(i);
            }
        }
        System.out.println("====list:"+cList.toString());
        attributes.addAttribute("doctorId", doctorId);
        return "redirect:findUserByRegStatus";
    }

    @RequestMapping("/toClearDrug")
    public String toClearDrug(int doctorId, int drugId, RedirectAttributes attributes) {//重新选择药品
        /*MedicalRecord medicalRecord = new MedicalRecord();
        medicalRecord.setUserId(userId);
        medicalRecord.setRegId(regId);
        MedicalRecord record = medicalRecordService.findMRByUserId(medicalRecord);//通过用户id和挂号单id查找病例信息
        if (record != null) {
            Card card = cardService.findCardByUserId(userId);
            card.setMoney(card.getMoney() + record.getMrDrugPrice());//将扣费推到用户的card上
            medicalRecord.setMrDrugPrice(null);//将病例中的药品钱制空
            medicalRecordService.updateMR(medicalRecord);
            cardService.updateCardMoney(card);
        }*/
        for (int i = 0; i < dList.size(); i++) {
            if (dList.size() == 0) {
                dList.clear();
            } else if (dList.get(i).getDrugId() == drugId) {
                /*Drug drug = drugService.findDrugById(drugId);
                drug.setDrugNum(drug.getDrugNum()+drugNum);
                drugService.updateDrugNum(drug);*/
                dList.remove(i);
            }
        }
        System.out.println("====list:"+dList.toString());
        attributes.addAttribute("doctorId", doctorId);
        return "redirect:findUserByRegStatus";
    }
}
