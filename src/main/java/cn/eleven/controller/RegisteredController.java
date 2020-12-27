package cn.eleven.controller;

import cn.eleven.pojo.*;
import cn.eleven.service.*;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.List;

@Controller
@RequestMapping("/registrars")
public class RegisteredController {
@Autowired
    RegisteredService registeredService;
@Autowired
    DoctorService doctorService;
@Autowired
    DeptService deptService;
@Autowired
    RoleService roleService;
@Autowired
    JobService jobService;
@Autowired
    CardService cardService;
@Autowired
    MedicalRecordService medicalRecordService;

    @RequestMapping("/toRegLogin")//跳转到doctor_login
    public String toRegLogin() {
        return "../../registrars_login";
    }

//-----------------------测试跳到挂号员主页
@RequestMapping("/test")
public  String registrarsLogin(Admin admin,ModelMap model){

    return "backstage/registrars/registrars_index";
}

//-----------------------添加挂号单
@RequestMapping("/addRegistered")
public String addRegistered(MedicalRecord medicalRecord,ModelMap model,Job job, Card card, Dept dept, Doctor doctor, Registered registered){
    //System.out.println("跳到添加挂号单里");
    System.out.println(doctor.getDoctorId());
    if(cardService.newUserLogin(card)!=null)
    {
        //写一个通过身份证号查询用户的卡的状态
        if (cardService.findCardByUserId(card.getUserId()).getCardStatus()==1)
        {
            model.put("message","此卡已经被封，无法使用!");
            return "backstage/registrars/registrars_index";}
        //------------------判断重复挂号
        registered.setCard(card);
        registered.setDoctor(doctor);
        registered.setDept(dept);
        if(registeredService.findRegistrarsForRepeat(registered)!=null){
            model.put("message","挂号不成功!同科室挂了相同医生号");
            return "backstage/registrars/registrars_index";
        }
        //-------------------要在这里加钱
        //roleService.findAllRole();
   /* registered.setCard(card);
    registered.setDept(dept);
    registered.setDoctor(doctor);*/
   Job jobFree=jobService.findJobByDoctorId(doctor.getDoctorId());
   //挂号收取手续费
   Card card1=cardService.findCardByUserId(card.getUserId());
   double Balance=card1.getMoney()-jobFree.getJobFee();
   card1.setMoney(Balance);
   if(Balance>0){
       cardService.updateCardMoney(card1);
   }else {
       model.put("message","当前余额"+card1.getMoney()+"余额不足请先充值");
       return "backstage/registrars/registrars_index";
   }
   //查询userid为xx的卡的钱
   //挂号收取手续费
   registered.setRegPrice(jobFree.getJobFee());
    registered.setJob(job);
    int result= registeredService.addRegistered(registered);
    System.out.println("用到的外键医生"+doctor.getDoctorId());
    System.out.println("用到的外键科室"+dept.getDeptId());
if(result==1){
    System.out.println("插入成功");
    model.put("message","挂号成功!");
    //--------------------------------------添加病历
    Registered maxReg=registeredService.findMaxRegisteredIdByUserId(card.getUserId());
    System.out.println("这里是最大的id"+maxReg.getRegId());
    medicalRecord.setRegId(maxReg.getRegId());
    medicalRecord.setUserId(card.getUserId());
    medicalRecord.setDoctorId(doctor.getDoctorId());
    medicalRecordService.addMR(medicalRecord);

    return "backstage/registrars/registrars_index";
}else{
    System.out.println("插入失败");
    return null;
}

  }else{
        //----------------------如果用户第一次就诊就创建个新卡
        System.out.println("添加卡");
        cardService.addCard(card);
        registered.setCard(card);
        registered.setDept(dept);
        registered.setDoctor(doctor);
        registered.setJob(job);
        //-------------------------新卡减钱///？？？？？？？？？？？？？
        Job jobFree=jobService.findJobByDoctorId(doctor.getDoctorId());
        Card card1=cardService.findCardByUserId(card.getUserId());
        double Balance=card1.getMoney()-jobFree.getJobFee();
        if(Balance<0){
            model.put("message","当前余额"+card1.getMoney()+"余额不足请先充值");
            return "backstage/registrars/registrars_index";
        }
        else {
            card1.setMoney(Balance);

        //挂号单加
        registered.setRegPrice(jobFree.getJobFee());
        cardService.updateCardMoney(card1);
        //-------------------------新卡减钱
        int result= registeredService.addRegistered(registered);
        if(result==1){
            System.out.println("插入成功");
            Registered maxReg=registeredService.findMaxRegisteredIdByUserId(card.getUserId());
            medicalRecord.setRegId(maxReg.getRegId());
            medicalRecord.setUserId(card.getUserId());
            medicalRecord.setDoctorId(doctor.getDoctorId());
            medicalRecordService.addMR(medicalRecord);

            model.put("message","挂号成功！此用户为新的用户，以为他注册了账号！办卡费100元");
            return "backstage/registrars/registrars_index";
        }else{
            System.out.println("插入失败");
            return null;
        }
    }
    }
}

//------------------------给用户卡充钱
@RequestMapping("/findCardByUserId")
    public String findCardByUserId(ModelMap model,Card card){
    Card card1=cardService.findCardByUserId(card.getUserId());
    model.put("card",card1);
    return "backstage/registrars/charge_money";
    }

//------------------------查找到添加订单需要的信息
@RequestMapping("/findMessageForRegistrars")
    public String  findMessageForRegistrars(int max,ModelMap model){
        List<Doctor> doctorList=doctorService.findAllDoctor();
        List<Dept> deptList=deptService.findAllDept();
        List<Role> roleList=roleService.findAllRole();
        List<Job> jobList=jobService.findAllJob();
    System.out.println(max+"-------------------------------这里是max的值");
    if(max==1){
          model.put("jobList",jobList);
          model.put("roleList",roleList);
          model.put("deptList",deptList);
          model.put("doctorList",doctorList);
    return "backstage/registrars/add_experts_registered";
    }else {
        model.put("roleList",roleList);
        model.put("deptList",deptList);
        model.put("doctorList",doctorList);
        System.out.println("添加订单查询信息");
        return "backstage/registrars/add_registered";}
    }

    //四级联查开始------------------通过一级科室的父id查询二级科室
    @RequestMapping("/findSecondDeptByFirst")
    @ResponseBody
    public String findSecondDeptByFirst(Dept dept){
        String json = JSON.toJSONString(deptService.findSecondDeptByFirst(dept.getDeptParentId()));
        System.out.println(json);

        System.out.println("传过来的科室父ID"+dept.getDeptParentId());
    return json;
    }
    //-------------------通过二级科室选择医生
    @RequestMapping("/findThirdDeptBySecond")
    @ResponseBody
    public String findThirdDeptBySecond(Dept dept,Doctor doctor){
     //doctorService.findAllDoctorByDeptId(dept.getDeptId())
        String json = JSON.toJSONString(doctorService.findAllDoctorByDeptId(dept.getDeptId()));
        System.out.println(json);
        System.out.println("传过来的科室父ID"+dept.getDeptId());
        return json;
    }
    //--------------------通过医生id显示职称
    @RequestMapping("/findJobByDoctorId")
    @ResponseBody
    public String findJobByDoctorId(Doctor doctor){

        Job job1=jobService.findJobByDoctorId(doctor.getDoctorId());
        //System.out.println(job.getJobId()+"   "+job.getJobName());
        String json = JSON.toJSONString(job1);
        System.out.println(json);
        return json;
    }

    //联查结束----------------------------------------------------end

    //------------------------------通过身份证号找card
    @RequestMapping("/findUserNameByUserId")
    @ResponseBody
    public String findUserNameByUserId(Card card){
        Card card1=cardService.findCardByUserId(card.getUserId());
        //System.out.println(job.getJobId()+"   "+job.getJobName());
        String json = JSON.toJSONString(card1);
        System.out.println(json);
        return json;
    }

    //-------------------------查询所有的挂号单
    @RequestMapping("/findAllRegistrars")
    public String findAllRegistrars(){

        System.out.println("查看所有挂号单");
    return null;
    }

//------------------------查找医生通过科室id和职称
    @RequestMapping("/findDoctorByDeptIdAndJobId")
    @ResponseBody
    public String findDoctorByDeptIdAndRoleId(int deptId,int jobId){
        System.out.println(deptId+"和这两个"+jobId);
        List<Doctor> doctorList=doctorService.findDoctorByDeptIdAndJobId(deptId,jobId);
        //System.out.println(job.getJobId()+"   "+job.getJobName());
        String json = JSON.toJSONString(doctorList);
        System.out.println(json);
        return json;
    }
}
