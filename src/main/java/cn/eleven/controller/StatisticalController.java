package cn.eleven.controller;


import cn.eleven.pojo.Doctor;
import cn.eleven.pojo.MedicalRecord;
import cn.eleven.pojo.Registered;
import cn.eleven.service.MedicalRecordService;
import cn.eleven.service.RegisteredService;
import cn.eleven.service.StatisticalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * @program: hospital_management_system
 * @author:MR.FYS
 * @create: 2019--09--30 21:06
 **/
@Controller
@RequestMapping("/adminStatisticalDoctor")
public class StatisticalController {

    @Autowired
    private StatisticalService statisticalService;
    @Autowired
    private RegisteredService registeredService;
    @Autowired
    private MedicalRecordService medicalRecordService;

    @RequestMapping("/adminLookMoney")
    public String adminLookMoney(ModelMap model){
        Registered reg=registeredService.findRegistrarsMoney();
        MedicalRecord med=medicalRecordService.findCheckAndDrugMoney();
        model.put("reg",reg);
        model.put("med",med);
        return "backstage/admin/admin_money_eleven";
    }

    @RequestMapping("/adminStatisticalDoctor")
    public String adminStatisticalDoctor(HttpServletResponse response,Map map){
        System.out.println("这里是统计医生");

        Doctor doctor1=new Doctor();
        doctor1.setDeptId(101);
        doctor1.setJobId(1);
        Doctor doctors1=statisticalService.adminStatisticalDoctor(doctor1);
        map.put("a1",doctors1);

        Doctor doctor2=new Doctor();
        doctor2.setDeptId(102);
        doctor2.setJobId(1);
        Doctor doctors2=statisticalService.adminStatisticalDoctor(doctor2);
        map.put("a2",doctors2);

        Doctor doctor3=new Doctor();
        doctor3.setDeptId(103);
        doctor3.setJobId(1);
        Doctor doctors3=statisticalService.adminStatisticalDoctor(doctor3);
        map.put("a3",doctors3);

        Doctor doctor4=new Doctor();
        doctor4.setDeptId(104);
        doctor4.setJobId(1);
        Doctor doctors4=statisticalService.adminStatisticalDoctor(doctor4);
        map.put("a4",doctors4);

        Doctor doctor5=new Doctor();
        doctor5.setDeptId(105);
        doctor5.setJobId(1);
        Doctor doctors5=statisticalService.adminStatisticalDoctor(doctor5);
        map.put("a5",doctors5);

        Doctor doctor6=new Doctor();
        doctor6.setDeptId(106);
        doctor6.setJobId(1);
        Doctor doctors6=statisticalService.adminStatisticalDoctor(doctor6);
        map.put("a6",doctors6);

        Doctor doctor7=new Doctor();
        doctor7.setDeptId(107);
        doctor7.setJobId(1);
        Doctor doctors7=statisticalService.adminStatisticalDoctor(doctor7);
        map.put("a7",doctors7);

        Doctor doctor8=new Doctor();
        doctor8.setDeptId(108);
        doctor8.setJobId(1);
        Doctor doctors8=statisticalService.adminStatisticalDoctor(doctor8);
        map.put("a8",doctors8);

        Doctor doctor9=new Doctor();
        doctor9.setDeptId(109);
        doctor9.setJobId(1);
        Doctor doctors9=statisticalService.adminStatisticalDoctor(doctor9);
        map.put("a9",doctors9);

        Doctor doctor10=new Doctor();
        doctor10.setDeptId(110);
        doctor10.setJobId(1);
        Doctor doctors10=statisticalService.adminStatisticalDoctor(doctor10);
        map.put("a10",doctors10);

        Doctor doctor11=new Doctor();
        doctor11.setDeptId(111);
        doctor11.setJobId(1);
        Doctor doctors11=statisticalService.adminStatisticalDoctor(doctor11);
        map.put("a11",doctors11);

        Doctor doctor12=new Doctor();
        doctor12.setDeptId(112);
        doctor12.setJobId(1);
        Doctor doctors12=statisticalService.adminStatisticalDoctor(doctor12);
        map.put("a12",doctors12);

        Doctor doctor13=new Doctor();
        doctor13.setDeptId(113);
        doctor13.setJobId(1);
        Doctor doctors13=statisticalService.adminStatisticalDoctor(doctor13);
        map.put("a13",doctors13);

        Doctor doctor14=new Doctor();
        doctor14.setDeptId(114);
        doctor14.setJobId(1);
        Doctor doctors14=statisticalService.adminStatisticalDoctor(doctor14);
        map.put("a14",doctors14);

        Doctor doctor15=new Doctor();
        doctor15.setDeptId(115);
        doctor15.setJobId(1);
        Doctor doctors15=statisticalService.adminStatisticalDoctor(doctor15);
        map.put("a15",doctors15);

        Doctor doctor16=new Doctor();
        doctor16.setDeptId(101);
        doctor16.setJobId(2);
        Doctor doctors16=statisticalService.adminStatisticalDoctor(doctor16);
        map.put("a16",doctors16);

        Doctor doctor17=new Doctor();
        doctor17.setDeptId(102);
        doctor17.setJobId(2);
        Doctor doctors17=statisticalService.adminStatisticalDoctor(doctor17);
        map.put("a17",doctors17);

        Doctor doctor18=new Doctor();
        doctor18.setDeptId(103);
        doctor18.setJobId(2);
        Doctor doctors18=statisticalService.adminStatisticalDoctor(doctor18);
        map.put("a18",doctors18);

        Doctor doctor19=new Doctor();
        doctor19.setDeptId(104);
        doctor4.setJobId(2);
        Doctor doctors19=statisticalService.adminStatisticalDoctor(doctor19);
        map.put("a19",doctors19);

        Doctor doctor20=new Doctor();
        doctor20.setDeptId(105);
        doctor20.setJobId(2);
        Doctor doctors20=statisticalService.adminStatisticalDoctor(doctor20);
        map.put("a20",doctors20);

        Doctor doctor21=new Doctor();
        doctor21.setDeptId(106);
        doctor21.setJobId(2);
        Doctor doctors21=statisticalService.adminStatisticalDoctor(doctor21);
        map.put("a21",doctors21);

        Doctor doctor22=new Doctor();
        doctor22.setDeptId(107);
        doctor22.setJobId(2);
        Doctor doctors22=statisticalService.adminStatisticalDoctor(doctor22);
        map.put("a22",doctors22);

        Doctor doctor23=new Doctor();
        doctor23.setDeptId(108);
        doctor23.setJobId(2);
        Doctor doctors23=statisticalService.adminStatisticalDoctor(doctor23);
        map.put("a23",doctors23);

        Doctor doctor24=new Doctor();
        doctor24.setDeptId(109);
        doctor24.setJobId(2);
        Doctor doctors24=statisticalService.adminStatisticalDoctor(doctor24);
        map.put("a24",doctors24);

        Doctor doctor25=new Doctor();
        doctor25.setDeptId(110);
        doctor25.setJobId(2);
        Doctor doctors25=statisticalService.adminStatisticalDoctor(doctor25);
        map.put("a25",doctors25);

        Doctor doctor26=new Doctor();
        doctor26.setDeptId(111);
        doctor26.setJobId(2);
        Doctor doctors26=statisticalService.adminStatisticalDoctor(doctor26);
        map.put("a26",doctors26);

        Doctor doctor27=new Doctor();
        doctor27.setDeptId(112);
        doctor27.setJobId(2);
        Doctor doctors27=statisticalService.adminStatisticalDoctor(doctor27);
        map.put("a27",doctors27);

        Doctor doctor28=new Doctor();
        doctor28.setDeptId(113);
        doctor28.setJobId(2);
        Doctor doctors28=statisticalService.adminStatisticalDoctor(doctor28);
        map.put("a28",doctors28);

        Doctor doctor29=new Doctor();
        doctor29.setDeptId(114);
        doctor29.setJobId(2);
        Doctor doctors29=statisticalService.adminStatisticalDoctor(doctor29);
        map.put("a29",doctors29);

        Doctor doctor30=new Doctor();
        doctor30.setDeptId(115);
        doctor30.setJobId(2);
        Doctor doctors30=statisticalService.adminStatisticalDoctor(doctor30);
        map.put("a30",doctors30);

        Doctor doctor31=new Doctor();
        doctor31.setDeptId(101);
        doctor31.setJobId(3);
        Doctor doctors31=statisticalService.adminStatisticalDoctor(doctor31);
        map.put("a31",doctors31);

        Doctor doctor32=new Doctor();
        doctor32.setDeptId(102);
        doctor32.setJobId(3);
        Doctor doctors32=statisticalService.adminStatisticalDoctor(doctor32);
        map.put("a32",doctors32);

        Doctor doctor33=new Doctor();
        doctor33.setDeptId(103);
        doctor33.setJobId(3);
        Doctor doctors33=statisticalService.adminStatisticalDoctor(doctor33);
        map.put("a33",doctors33);

        Doctor doctor34=new Doctor();
        doctor34.setDeptId(104);
        doctor34.setJobId(3);
        Doctor doctors34=statisticalService.adminStatisticalDoctor(doctor34);
        map.put("a34",doctors34);

        Doctor doctor35=new Doctor();
        doctor35.setDeptId(105);
        doctor35.setJobId(3);
        Doctor doctors35=statisticalService.adminStatisticalDoctor(doctor35);
        map.put("a35",doctors35);

        Doctor doctor36=new Doctor();
        doctor36.setDeptId(106);
        doctor36.setJobId(3);
        Doctor doctors36=statisticalService.adminStatisticalDoctor(doctor36);
        map.put("a36",doctors36);

        Doctor doctor37=new Doctor();
        doctor37.setDeptId(107);
        doctor37.setJobId(3);
        Doctor doctors37=statisticalService.adminStatisticalDoctor(doctor37);
        map.put("a37",doctors37);

        Doctor doctor38=new Doctor();
        doctor38.setDeptId(108);
        doctor38.setJobId(3);
        Doctor doctors38=statisticalService.adminStatisticalDoctor(doctor38);
        map.put("a38",doctors38);

        Doctor doctor39=new Doctor();
        doctor39.setDeptId(109);
        doctor39.setJobId(3);
        Doctor doctors39=statisticalService.adminStatisticalDoctor(doctor39);
        map.put("a39",doctors39);

        Doctor doctor40=new Doctor();
        doctor40.setDeptId(110);
        doctor40.setJobId(3);
        Doctor doctors40=statisticalService.adminStatisticalDoctor(doctor40);
        map.put("a40",doctors40);

        Doctor doctor41=new Doctor();
        doctor41.setDeptId(111);
        doctor41.setJobId(3);
        Doctor doctors41=statisticalService.adminStatisticalDoctor(doctor41);
        map.put("a41",doctors41);

        Doctor doctor42=new Doctor();
        doctor42.setDeptId(112);
        doctor42.setJobId(3);
        Doctor doctors42=statisticalService.adminStatisticalDoctor(doctor42);
        map.put("a42",doctors42);

        Doctor doctor43=new Doctor();
        doctor43.setDeptId(113);
        doctor43.setJobId(3);
        Doctor doctors43=statisticalService.adminStatisticalDoctor(doctor43);
        map.put("a43",doctors43);

        Doctor doctor44=new Doctor();
        doctor44.setDeptId(114);
        doctor44.setJobId(3);
        Doctor doctors44=statisticalService.adminStatisticalDoctor(doctor44);
        map.put("a44",doctors44);

        Doctor doctor45=new Doctor();
        doctor45.setDeptId(115);
        doctor45.setJobId(3);
        Doctor doctors45=statisticalService.adminStatisticalDoctor(doctor45);
        map.put("a45",doctors45);

        Doctor doctor46=new Doctor();
        doctor46.setDeptId(101);
        doctor46.setJobId(4);
        Doctor doctors46=statisticalService.adminStatisticalDoctor(doctor46);
        map.put("a46",doctors46);

        Doctor doctor47=new Doctor();
        doctor47.setDeptId(102);
        doctor47.setJobId(4);
        Doctor doctors47=statisticalService.adminStatisticalDoctor(doctor47);
        map.put("a47",doctors47);

        Doctor doctor48=new Doctor();
        doctor48.setDeptId(103);
        doctor48.setJobId(4);
        Doctor doctors48=statisticalService.adminStatisticalDoctor(doctor48);
        map.put("a48",doctors48);

        Doctor doctor49=new Doctor();
        doctor49.setDeptId(104);
        doctor49.setJobId(4);
        Doctor doctors49=statisticalService.adminStatisticalDoctor(doctor49);
        map.put("a49",doctors49);

        Doctor doctor50=new Doctor();
        doctor50.setDeptId(105);
        doctor50.setJobId(4);
        Doctor doctors50=statisticalService.adminStatisticalDoctor(doctor50);
        map.put("a50",doctors50);

        Doctor doctor51=new Doctor();
        doctor51.setDeptId(106);
        doctor51.setJobId(4);
        Doctor doctors51=statisticalService.adminStatisticalDoctor(doctor51);
        map.put("a51",doctors51);

        Doctor doctor52=new Doctor();
        doctor52.setDeptId(107);
        doctor52.setJobId(4);
        Doctor doctors52=statisticalService.adminStatisticalDoctor(doctor52);
        map.put("a52",doctors52);

        Doctor doctor53=new Doctor();
        doctor53.setDeptId(108);
        doctor53.setJobId(4);
        Doctor doctors53=statisticalService.adminStatisticalDoctor(doctor53);
        map.put("a53",doctors53);

        Doctor doctor54=new Doctor();
        doctor54.setDeptId(109);
        doctor54.setJobId(4);
        Doctor doctors54=statisticalService.adminStatisticalDoctor(doctor54);
        map.put("a54",doctors54);

        Doctor doctor55=new Doctor();
        doctor55.setDeptId(110);
        doctor55.setJobId(4);
        Doctor doctors55=statisticalService.adminStatisticalDoctor(doctor55);
        map.put("a55",doctors55);

        Doctor doctor56=new Doctor();
        doctor56.setDeptId(111);
        doctor56.setJobId(4);
        Doctor doctors56=statisticalService.adminStatisticalDoctor(doctor56);
        map.put("a56",doctors56);

        Doctor doctor57=new Doctor();
        doctor57.setDeptId(112);
        doctor57.setJobId(4);
        Doctor doctors57=statisticalService.adminStatisticalDoctor(doctor57);
        map.put("a57",doctors57);

        Doctor doctor58=new Doctor();
        doctor58.setDeptId(113);
        doctor58.setJobId(4);
        Doctor doctors58=statisticalService.adminStatisticalDoctor(doctor58);
        map.put("a58",doctors58);

        Doctor doctor59=new Doctor();
        doctor59.setDeptId(114);
        doctor59.setJobId(4);
        Doctor doctors59=statisticalService.adminStatisticalDoctor(doctor59);
        map.put("a59",doctors59);

        Doctor doctor60=new Doctor();
        doctor60.setDeptId(115);
        doctor60.setJobId(4);
        Doctor doctors60=statisticalService.adminStatisticalDoctor(doctor60);
        map.put("a60",doctors60);

        Doctor doctor61=new Doctor();
        doctor61.setDeptId(101);
        doctor61.setJobId(5);
        Doctor doctors61=statisticalService.adminStatisticalDoctor(doctor61);
        map.put("a61",doctors61);

        Doctor doctor62=new Doctor();
        doctor62.setDeptId(102);
        doctor62.setJobId(5);
        Doctor doctors62=statisticalService.adminStatisticalDoctor(doctor62);
        map.put("a62",doctors62);

        Doctor doctor63=new Doctor();
        doctor63.setDeptId(103);
        doctor63.setJobId(5);
        Doctor doctors63=statisticalService.adminStatisticalDoctor(doctor63);
        map.put("a63",doctors63);

        Doctor doctor64=new Doctor();
        doctor64.setDeptId(104);
        doctor64.setJobId(5);
        Doctor doctors64=statisticalService.adminStatisticalDoctor(doctor64);
        map.put("a64",doctors64);

        Doctor doctor65=new Doctor();
        doctor65.setDeptId(105);
        doctor65.setJobId(5);
        Doctor doctors65=statisticalService.adminStatisticalDoctor(doctor65);
        map.put("a65",doctors65);

        Doctor doctor66=new Doctor();
        doctor66.setDeptId(106);
        doctor66.setJobId(5);
        Doctor doctors66=statisticalService.adminStatisticalDoctor(doctor66);
        map.put("a66",doctors66);

        Doctor doctor67=new Doctor();
        doctor67.setDeptId(107);
        doctor67.setJobId(5);
        Doctor doctors67=statisticalService.adminStatisticalDoctor(doctor67);
        map.put("a67",doctors67);

        Doctor doctor68=new Doctor();
        doctor68.setDeptId(108);
        doctor68.setJobId(5);
        Doctor doctors68=statisticalService.adminStatisticalDoctor(doctor68);
        map.put("a68",doctors68);

        Doctor doctor69=new Doctor();
        doctor69.setDeptId(109);
        doctor69.setJobId(5);
        Doctor doctors69=statisticalService.adminStatisticalDoctor(doctor69);
        map.put("a69",doctors69);

        Doctor doctor70=new Doctor();
        doctor70.setDeptId(110);
        doctor70.setJobId(5);
        Doctor doctors70=statisticalService.adminStatisticalDoctor(doctor70);
        map.put("a70",doctors70);

        Doctor doctor71=new Doctor();
        doctor71.setDeptId(111);
        doctor71.setJobId(5);
        Doctor doctors71=statisticalService.adminStatisticalDoctor(doctor71);
        map.put("a71",doctors71);

        Doctor doctor72=new Doctor();
        doctor72.setDeptId(112);
        doctor72.setJobId(5);
        Doctor doctors72=statisticalService.adminStatisticalDoctor(doctor72);
        map.put("a72",doctors72);

        Doctor doctor73=new Doctor();
        doctor73.setDeptId(113);
        doctor73.setJobId(5);
        Doctor doctors73=statisticalService.adminStatisticalDoctor(doctor73);
        map.put("a73",doctors73);

        Doctor doctor74=new Doctor();
        doctor74.setDeptId(114);
        doctor74.setJobId(5);
        Doctor doctors74=statisticalService.adminStatisticalDoctor(doctor74);
        map.put("a74",doctors74);

        Doctor doctor75=new Doctor();
        doctor75.setDeptId(115);
        doctor75.setJobId(5);
        Doctor doctors75=statisticalService.adminStatisticalDoctor(doctor75);
        map.put("a75",doctors75);

        /*System.out.println("内科主任医师"+doctors2.getDoctorId());*/
/*        int a=0;
        int b=100;
        for(int i=1;i<100;i++){
            doctor1.setJobId(a+i);
            doctor1.setDeptId(b+i);
            Doctor doctors=statisticalService.adminStatisticalDoctor(doctor1);
            map.put("a1",doctor1);
        }
        */
            return "backstage/admin/admin_statistical_doctor";
    }


}
