package cn.eleven.controller;

import cn.eleven.pojo.Card;
import cn.eleven.pojo.Dept;
import cn.eleven.pojo.Doctor;
import cn.eleven.pojo.MedicalRecord;
import cn.eleven.service.AdminService;
import cn.eleven.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;
import java.util.List;

@Controller
@RequestMapping("/card")
public class CardController {
    @Autowired
    CardService cardService;
    @Autowired
    AdminService adminService;


//---------------------------------------修改完善个人信息
   @RequestMapping("/updateCardByUserId")
   public String updateCardByUserId(Card card,ModelMap model){

    Card card1=cardService.findCardByUserId(card.getUserId());
    if(card1==null){
        System.out.println("查找失败");
        return null;
    }else{
        model.put("card",card1);
        return "card/user_update_own_card";}

}
    @RequestMapping("/updateCardByUserIdEnd")
    public String updateCardByUserIdEnd(Card card,ModelMap model){
       //通过用户的id修改卡
        int x=cardService.updateCardByUserId(card);
        if(x==1){
            System.out.println("修改成功");
            model.put("message","修改成功");
            return "../../hello";
        }
        else {
            model.put("message","修改失败");
            return "../../login";
        }
    }
//---------------------------------------充值卡先获取挂号员id
    @RequestMapping("/addMoneyByUserId")
    public String addMoneyByUserId(ModelMap model,Card card){
        Card card1=cardService.findCardByUserId(card.getUserId());
        double Balance=card1.getMoney()+card.getMoney();
        card1.setMoney(Balance);
        if(cardService.updateCardMoney(card1)==1)
        {
        model.put("message","当前卡的钱数为："+Balance+"充值成功！");
        return "backstage/registrars/registrars_index";
        }else{
            model.put("message","充值失败！");
            return "backstage/registrars/registrars_index";
        }
    }
/*new的*/
    //-------------------------------------修改卡的状态
    @RequestMapping("/updateCardStatus")
    public String updateCardStatus(Card card, ModelMap model, HttpSession session) {
        System.out.println(card.getCardStatus());
        if (cardService.updateCardStatus(card) == 1) {
            System.out.println("修改成功");
            List<Card> cardList=cardService.findAllCard();
            model.put("cardList",cardList);
            return "backstage/registrars/find_all_card";
        } else {
            model.put("message", "充值失败");
            System.out.println("修改失败");
            return "backstage/registrars/registrars_index";
        }
    }
/*new的*/
//-----------------------------------------用户的登录
@RequestMapping("/userLogin")
    public String userLogin(Card card, ModelMap model, HttpSession session){
    System.out.println("用户的登录");
    Card card1=cardService.userLogin(card);
    session.setAttribute("card",card1);

    card.getUserId();
    card.getUserPwd();
    System.out.println("身份证"+card.getUserId()+"密码"+card.getUserPwd());
    if (card1==null){
        model.put("message","登录失败,账号或密码错误");
        System.out.println("没有查到用户，登录失败");
        return "../../user_login";
    }else{
        model.addAttribute("card",card1);
    return "../../hello";
    }
    }

//-----------------------------------------根据用户id查询卡的信息
@RequestMapping("/findCardByUserId")
    public String findCardByUserId(Card card, ModelMap model){
    System.out.println("通过身份证号查询卡的信息");
    System.out.println("身份证号："+card.getUserId());
    Card card1=cardService.findCardByUserId(card.getUserId());
    if(card1==null){
        System.out.println("查找失败");
        return null;
    }else{
        model.put("card",card1);
        return "backstage/registrars/add_registered";}

}

//-----------------------------------------查找所有的用户（卡）
@RequestMapping("/findAllCard")
    public String findAllCard(ModelMap model){

    List<Card> cardList=cardService.findAllCard();
    model.put("cardList",cardList);
    return "backstage/registrars/find_all_card";
}

//查找一级科室
    @RequestMapping("/findDept")
    public String findFirstDept(ModelMap map){
        List<Dept> depts = adminService.toFindAllNullDept();
        System.out.println("controller"+depts);
        map.addAttribute("depts",depts);
        return "../../user/user_department";
    }
//根据一级科室ID查找二级科室
    @RequestMapping("/findSecondDept")
    public String findSecondDept(ModelMap map, /*HttpServletRequest request*/int deptId){
        System.out.println("controller的depId"+deptId);
        List<Dept> deptList = adminService.toFindSecondDeptByFirst(deptId);
        //List<Dept> deptList = adminService.toFindSecondDeptByFirst(Integer.parseInt(request.getParameter("deptId")));
        map.addAttribute("depList",deptList);
        System.out.println(deptList);
        return "../../user/user_second_department";
    }


    //根据一级科室ID寻找医生
    @RequestMapping("/findFirstDoctorByDeptId")
    public  String findFirstDoctorByDeptId(ModelMap map,Integer deptParentId,Integer Id){
        Integer depId = deptParentId;
        //查找一级科室医生
        List<Doctor> firstDeptDoctor = cardService.findFirstDeptDoctor(depId);
        map.addAttribute("firstDeptDoctor",firstDeptDoctor);

        System.out.println("controller的deptParentId是:"+deptParentId);
        System.out.println("controller的Id是:"+Id);
        //查找二级科室医生
        List<Doctor> doctor = cardService.findSecondDeptDoctor(Id);
        map.addAttribute("doctor",doctor);

        System.out.println("controller的数据是"+doctor);
        return "../../user/user_doctor";
    }
    @RequestMapping("/findDetailedDoctor")
    public  String findDetailedDoctor(ModelMap map,Integer doctorId){
        System.out.println("controller的id"+doctorId);
        List<Doctor> detailedDoctor = cardService.findDetailedDoctor(doctorId);
        System.out.println("controller:"+detailedDoctor);
        map.addAttribute("detailedDoctor",detailedDoctor);
        return "../../user/user_detailed_doctor";
    }
    //查找个人病例
    @RequestMapping("/findCase")
    public String findCase(ModelMap map,String userId){
        System.out.println(userId);
        List<MedicalRecord> Case = cardService.findCase(userId);
        System.out.println(Case);
        map.addAttribute("Case",Case);
        return "card/user_case";
    }
    //查找个人详细病例
    @RequestMapping("/findDetailedCase")
    public String findDetailedCase(ModelMap map,Integer mrId){
        List<MedicalRecord> detailedCase = cardService.findDetailedCase(mrId);
        map.addAttribute("detailedCase",detailedCase);
        System.out.println(detailedCase);
        return "card/user_detailed_case";
    }
    //退出
    @RequestMapping("/logout")
    public String exit(HttpSession httpSession, HttpServletRequest request){
        Enumeration em = request.getSession().getAttributeNames();
        while (em.hasMoreElements()){
            request.getSession().removeAttribute(em.nextElement().toString());
        }
        return "../../user_login";
    }
}
