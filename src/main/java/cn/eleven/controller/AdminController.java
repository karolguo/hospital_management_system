package cn.eleven.controller;

import cn.eleven.pojo.*;
import cn.eleven.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @program: hospital_management_system
 * @author:MR.FYS
 * @create: 2019--09--19 10:49
 **/

@Controller
@RequestMapping("/admin")
public class AdminController {


    @Autowired
    private AdminService adminService;

    //管理员登录
    @RequestMapping("/adminLogin")
    public String adminLogin(Admin admin, HttpSession session,Model model,ModelMap map){
        Admin admin1=adminService.adminLogin(admin);
        if(admin1!=null) {
            session.setAttribute("admin",admin1);
            /*if (admin1.getRole().getRoleId() == 8) {
                session.setAttribute("admin", admin1);
                return "admin/admin_manager";
            } else if(admin1.getRole().getRoleId() == 2){
                session.setAttribute("admin", admin1);
                return "registrars/registrars_index";
            }else if(admin1.getRole().getRoleId() == 3){
                session.setAttribute("admin", admin1);
                return "drug/drug_manager.jsp";
            }*/
            switch (admin1.getRole().getRoleId()) {
                case 8:
                    session.setAttribute("admin", admin1);
                    return "backstage/admin/admin_manager";
                case 2:
                    session.setAttribute("admin", admin1);
                    return "backstage/registrars/registrars_index";
                case 3:
                    session.setAttribute("admin", admin1);
                    return "backstage/drug/drug_manager";
            }


        }
        map.addAttribute("message","登陆失败");
        return "../../admin_login";
    }

/*
    //登录跳转方法
    @RequestMapping("/ceshi")
    public String ceshi(){
        return "/admin_login.jsp";
    }
*/

    //添加管理员跳转方法
    @RequestMapping("/toAddAdmin")
    public String toAddAdmin(HttpSession session,Admin admin){
        System.out.println("这里是controller层测试");
        session.setAttribute("admin",admin);
        return "backstage/admin/add_admin";
    }

    //添加管理员跳转方法
    @RequestMapping("/toAdminManager")
    public String toAdminManager(/*HttpSession session,Admin admin*/){
        System.out.println("这里是controller层测试");
        /*   session.setAttribute("admin",admin);*/
        return "backstage/admin/admin_home";
    }

    //查看管理员信息
    @RequestMapping("/findAllAdmin")
    public String adminManager(Admin admin, ModelMap map,HttpSession session) {
        List<Admin> adminList = adminService.adminManager(admin);
        List<Admin> adminList1=adminService.adminManager(admin);
        if (adminList != null) {
            session.setAttribute("admin",adminList1);
            map.addAttribute("adminList",adminList);
            return "backstage/admin/find_all_admin";
        }
        return "";
    }

    //添加管理员
    @RequestMapping("/addAdmin")
    public String addAdmin(Admin admin){
        Boolean admin1=adminService.addAdmin(admin);
        if(admin1){
            return "forward:findAllAdmin";
        }
        return  "";
    }


    //根据ID查找管理员
    @RequestMapping("findAdminById")
    public String findAdminById(Admin admin, Model model){
        Admin admin1=adminService.findAdminById(admin.getAdminId());
        if (admin1!=null){
            model.addAttribute("admin1",admin1);
            return "forward:updateAdmin";
        }
        return "";
    }

    //更新管理员状态
    @RequestMapping("updateAdmin")
    public String updateAdmin(Admin admin, Model model){
        System.out.println("测试到updateAdmin");
        Boolean admin1=adminService.updateAdmin(admin);
        System.out.println("测试到获得返回值类型");
        if (admin1){
            System.out.println("测试到updateAdmin跳转findAllAdmin");
            model.addAttribute("admin",admin);
            System.out.println(admin.getAdminId());
            return "forward:toUpdateAdmin";
        }
        System.out.println("测试到updateAdmin跳转404");
        return "";
    }

    //添加管理员跳转方法
    @RequestMapping("/toUpdateAdmin")
    public String toUpdateAdmin(Admin admin,Model model){
        System.out.println("这里是controller的toUpdateAdmin层测试");
        Admin admin1=adminService.findAdminById(admin.getAdminId());
        System.out.println(admin1.getRole().getRoleId()+"toUpdateAdmin的roleId");
        if (admin1!=null){
            model.addAttribute("admin1",admin1);
            return "forward:findAllAdmin?role.roleId="+admin1.getRole().getRoleId()+"";
        }
        return "";
    }

    //显示所有一级科室信息
    @RequestMapping("showAllDept")
    public String showAllDept(HttpSession session){
        List<Dept> dept1=adminService.toFindAllNullDept();
        if (dept1!=null){
            session.setAttribute("deptList",dept1);
            return "backstage/admin/admin_show_all_dept";
        }
        return "";
    }


    //根据一级科室ID查找科室信息
    @RequestMapping("findSecondDeptByFirst")
    public String findSecondDeptByFirst(Model model,int deptId,Dept dept,HttpSession session){
        List<Dept> dept1=adminService.toFindSecondDeptByFirst(deptId);
        System.out.println("查询二级科室"+dept1.toString());
        if(dept1!=null){
            model.addAttribute("deptList1",dept1);
            model.addAttribute("deptId",deptId);

            /*   session.setAttribute("deptList1",dept1);*/
            return "backstage/admin/admin_add_dept2";
        }
        return "";
    }

    //添加科室跳转方法
    @RequestMapping("/toAddDept")
    public String toAddDept(){
        System.out.println("这里是controller层测试");
        return "backstage/admin/admin_add_dept";
    }

    //添加科室
    @RequestMapping("addDept")
    public String addDept(Dept dept,HttpSession session){
        Boolean dept1=adminService.addDept(dept);
        if (dept1){
            session.setAttribute("dept",dept1);
            return "forward:showAllDept";
        }
        return "";
    }

    //添加二级科室跳转方法
    @RequestMapping("toAddDeptTwo")
    public String toAddDeptTwo(Model model,Dept dept,int deptId){
        System.out.println("这里是controller层测试");
        System.out.println("获得DeptId为："+deptId);
        Dept deptId1=adminService.toFindMaxDeptById(deptId);
        System.out.println("获得的最大deptId"+deptId1.getDeptId());
        model.addAttribute("dept",dept);
        model.addAttribute("deptId",deptId);
        model.addAttribute("deptId1",deptId1);
        return "backstage/admin/admin_add_dept21";
    }


    //添加二级科室
    @RequestMapping("addDeptTwo")
    public String addDeptTwo(Dept dept,HttpSession session){
        session.setAttribute("dept",dept);
        System.out.println("获得DeptParentId为:"+dept.getDeptParentId());
        Boolean dept1=adminService.addDept(dept);
        if (dept1){

            return "forward:findSecondDeptByFirst?deptId="+dept.getDeptParentId()+"";
        }
        return "";
    }

    //根据deptId查找dept
    @RequestMapping("findDeptById")
    public String findDeptById(Model model,Dept dept){
        Dept dept1=adminService.findDeptById(dept.getDeptId());
        System.out.println("查询科室"+dept1.toString());
        if(dept1!=null){
            model.addAttribute("dept1",dept1);
            return "backstage/admin/admin_update_dept";
        }
        return "";
    }

    @RequestMapping("updateDept")
    public String updateDept(Dept dept){
        Boolean dept1=adminService.updateDept(dept);
        System.out.println("这里是Dept修改"+dept.getDeptId()+dept.getDeptId());
        if (dept1){
            return "forward:showAllDept";
        }
        return "";
    }

    ////admin根据科室ID查找医生
    @RequestMapping("adminFindDoctorByDeptId")
    public String adminFindDoctorByDeptId(Doctor doctor,Dept dept,Model model){
        List<Doctor> doctor1=adminService.adminFindAllDoctorByDeptId(dept.getDeptId());

        if (doctor1!=null){
            model.addAttribute("doctor1",doctor1);
            model.addAttribute("deptId",dept.getDeptId());
            return "backstage/admin/admin_find_doctor_by_deptId";
        }
        return "";
    }

    //显示所有一级科室信息
    @RequestMapping("showAllDeptFindDoctor")
    public String showAllDeptFindDoctor(HttpSession session){
        List<Dept> dept1=adminService.toFindAllNullDept();
        if (dept1!=null){
            session.setAttribute("deptList",dept1);
            return "backstage/admin/admin_show_all_doctor";
        }
        return "";
    }

    //admin通过id查找医生
    @RequestMapping("findDoctorById")
    public String adminFindDoctorById(Doctor doctor, Model model){
        Doctor doctor1=adminService.adminFindDoctorById(doctor.getDoctorId());
        if (doctor1!=null){
            model.addAttribute("doctor2",doctor1);
            return "forward:adminUpdateDoctor";
        }
        return "";
    }

    //admin更新医生状态
    @RequestMapping("adminUpdateDoctor")
    public String adminUpdateDoctor(Doctor doctor, Model model){
        System.out.println("测试到updateDoctor");
        System.out.println("获得返回值"+doctor.getDept().getDeptId()+doctor.getDoctorStatus());
        Boolean doctor1=adminService.adminUpdateDoctor(doctor);
        System.out.println("测试到获得返回值类型");
        model.addAttribute("doctor",doctor);
        if (doctor1){
            System.out.println("测试到updateDoctor跳转findAllDoctor");
            return "forward:adminFindDoctorByDeptId?deptId="+doctor.getDept().getDeptId()+"";
        }
        System.out.println("测试到updateAdmin跳转404");
        return "";
    }

    //admin添加医生
    @RequestMapping("adminAddDoctor")
    public String adminAddDoctor(Doctor doctor,Model model){
        System.out.println("admin添加医生"+doctor.toString());
        Boolean doctor1=adminService.adminAddDoctor(doctor);
        if(doctor1){
            return "forward:adminFindDoctorByDeptId?deptId="+doctor.getDept().getDeptId()+"";
        }
        return "";
    }

    //admin添加医生跳转
    @RequestMapping("toAdminAddDoctor")
    public String toAdminAddDoctor(Model model,int deptId){
        System.out.println("添加医生"+deptId);
        List<Dept> dept=adminService.toFindAllNullDept();
        List<Dept> depts=adminService.toFindSecondDeptByFirst(deptId);
        List<Role> roles=adminService.findAllRole();
        List<Job> jobs=adminService.findAllJob();
        System.out.println(""+dept.toString());
        model.addAttribute("doctor1",deptId);
        model.addAttribute("dept",dept);
        model.addAttribute("depts",depts);
        model.addAttribute("roles",roles);
        model.addAttribute("jobs",jobs);
        return "backstage/admin/admin_add_doctor";
    }

    //admin修改医生跳转
    @RequestMapping("toAdminUpdateDoctor")
    public String toAdminUpdateDoctor(ModelMap model,Doctor doctor){

        Doctor doctor1=adminService.adminFindDoctorById(doctor.getDoctorId());
        List<Dept> dept=adminService.toFindAllNullDept();
        List<Dept> depts=adminService.toFindSecondDeptByFirst(doctor1.getDept().getDeptId());
        List<Role> roles=adminService.findAllRole();
        List<Job> jobs=adminService.findAllJob();
        System.out.println(""+dept.toString());
        model.addAttribute("doctor1",doctor1);
        model.addAttribute("dept",dept);
        model.addAttribute("depts",depts);
        model.addAttribute("roles",roles);
        model.addAttribute("jobs",jobs);
        return "backstage/admin/admin_update_doctor";
    }

    //admin修改医生信息
    @RequestMapping("adminUpdateDoctorAll")
    public String adminUpdateDoctorAll(Doctor doctor,Model model){

        Boolean doctor1=adminService.adminUpdateDoctorAll(doctor);
        if (doctor1){
            model.addAttribute("doctor",doctor);
            return "forward:adminFindDoctorByDeptId?deptId="+doctor.getDept().getDeptId()+"";
        }
        return "";
    }

    //admin通过id查找医生to
    @RequestMapping("toFindDoctorById")
    public String toFindDoctorById(Doctor doctor, Model model){
        Doctor doctor1=adminService.adminFindDoctorById(doctor.getDoctorId());
        if (doctor1!=null){
            model.addAttribute("doctor2",doctor1);
            return "forward:toAdminUpdateDoctor";
        }
        return "";
    }

}
