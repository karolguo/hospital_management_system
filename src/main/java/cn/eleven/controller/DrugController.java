package cn.eleven.controller;

import cn.eleven.pojo.Drug;
import cn.eleven.pojo.MedicalRecord;
import cn.eleven.service.DrugService;
import com.alibaba.fastjson.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DrugController {
    @Autowired
    DrugService drugService;
    @RequestMapping("/drugLogin")
    public String DrugLogin(){
        return "/drug_login.jsp";
    }
    @RequestMapping("/find_drug_medical")
    public String findDrug(){
        return "backstage/drug/find_drug_medical";
    }
    @RequestMapping("/find_drug")
    public String findDrugMedical(ModelMap map,MedicalRecord medicalRecord){
        System.out.println("find");
        System.out.println(medicalRecord.getUserId());
        List<MedicalRecord> medical = drugService.findDrugMedical(medicalRecord);
        System.out.println("controller:"+medical);
        if(medical.size()!=0){
            map.addAttribute("medical",medical);
            return "backstage/drug/drug_medical";
        }else{
            return "backstage/drug/find_drug_medical";
        }

    }
    @RequestMapping("/find_stock")
    public  String findMedicalStock(ModelMap map){
        List<Drug> stock = drugService.findMedicalStock();
        map.addAttribute("stock",stock);
        System.out.println("controller:"+stock);
        return "backstage/drug/drug_stock";
    }
    @RequestMapping("/delDrug")
    public void delDrug(MedicalRecord medicalRecord,ModelMap map, HttpServletResponse response){
        int drugOrderStatus = 0;
        medicalRecord.setDrugOrderStatus(drugOrderStatus);

        boolean row = drugService.delDrug(medicalRecord);

        PrintWriter writer = null;
        try {
            writer = response.getWriter();
            String msg = null;
            if (row) {
                msg = "alert( 'success' );location.href='find_stock'";
            }else {
                msg = "alert('error');history.go(-1)";
            }
            writer.print("<script type='text/javascript'>" + msg + "</script>");
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/checkoutDrug")
    public void checkoutDrug(MedicalRecord medicalRecord,ModelMap map, HttpServletResponse response) {
        int drugOrderStatus = 2;
        medicalRecord.setDrugOrderStatus(drugOrderStatus);

        boolean row = drugService.checkoutDrug(medicalRecord);

        PrintWriter writer = null;
        try {
            writer = response.getWriter();
            String msg = null;
            if (row) {
                msg = "alert( 'success' );location.href='find_stock'";
            } else {
                msg = "alert('error');history.go(-1)";
            }
            writer.print("<script type='text/javascript'>" + msg + "</script>");
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/findMedicalByName")
    public String findMedicalByName(String drugName,ModelMap map){
        List<Drug> stock = drugService.findMedicalByName(drugName);
        map.addAttribute("stock",stock);
        return "backstage/drug/drug_stock";
    }
    @RequestMapping("/find_critical_stock")
    public String findCriticalStock(ModelMap map){
        List<Drug> stock = drugService.findCriticalStock();
        map.addAttribute("stock",stock);
        return "backstage/drug/drug_stock";
    }
//寻找所有药单列表
@RequestMapping("/findListStock")
    public  String findListStock(ModelMap map,MedicalRecord medicalRecord){
    List<MedicalRecord> listStock = drugService.findListStock(medicalRecord);
    if(listStock.size()!=0){
        map.addAttribute("listStock",listStock);
        return "backstage/drug/drug_list_stock";
    }else{
        return "backstage/drug/find_drug_medical";
    }


}
}
