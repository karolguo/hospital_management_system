package cn.eleven.controller;

import cn.eleven.pojo.Dept;
import cn.eleven.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 20:21
 * dept controller
 */
@Controller
@RequestMapping("/dept")
public class DeptController {
    @Autowired
    private DeptService deptService;

    @RequestMapping("/findAllDept")
    public String findAllDept(Model model){//查询所有部门
        List<Dept> deptList = deptService.findAllDept();
        if(deptList!=null){
            model.addAttribute("deptList",deptList);
            return "";
        }
        return "";
    }

    @RequestMapping("/findDeptById")
    public String findDeptById(Dept dept,Model model){
        Dept dept1 = deptService.findDeptById(dept.getDeptId());
        if(dept1!=null){
            model.addAttribute("dept",dept1);
            return "";
        }
        return "";
    }

}
