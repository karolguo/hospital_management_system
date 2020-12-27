package cn.eleven.service.impl;

import cn.eleven.mapper.*;
import cn.eleven.pojo.*;
import cn.eleven.service.AdminService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @program: hospital_management_system
 * @author:MR.FYS
 * @create: 2019--09--19 10:23
 **/

@Service
public class AdminSeerviceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;
    @Autowired
    private DeptMapper deptMapper;
    @Autowired
    private DoctorMapper doctorMapper;
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private JobMapper jobMapper;


    //登录
    @Override
    public Admin adminLogin(Admin admin) {
        return adminMapper.adminLogin(admin);
    }

    //查看超级管理员信息
    @Override
    public List<Admin> adminManager(Admin admin){
        return adminMapper.adminManager(admin);
    }

    //添加管理员
    @Override
    public Boolean addAdmin(Admin admin) {
        int res= adminMapper.addAdmin(admin);
        if(res>0){
            return true;
        }
        else return false;
    }

    //根据ID查找管理员
    @Override
    public Admin findAdminById(Integer adminId) {
        return adminMapper.findAdminById(adminId);
    }

    //更新管理员状态
    @Override
    public Boolean updateAdmin(Admin admin) {
        int res=adminMapper.updateAdmin(admin);
        if (res>0){
            return true;
        }
        return false;
    }

    //admin根据ID查找科室信息
    @Override
    public Dept toFindMaxDeptById(int deptId) {
        return deptMapper.toFindMaxDeptById(deptId);
    }

    //admin根据一级科室ID查找二级科室信息
    @Override
    public List<Dept> toFindSecondDeptByFirst(int deptId) {
        return deptMapper.toFindSecondDeptByFirst(deptId);
    }

    //显示所有一级科室信息
    @Override
    public List<Dept> toFindAllNullDept() {
        return deptMapper.toFindAllNullDept();
    }

    //显示所有二级科室信息
    @Override
    public List<Dept> toFindAllNoNullDept() {
        return deptMapper.toFindAllNoNullDept();
    }

    //添加科室
    @Override
    public Boolean addDept(Dept dept) {
        int res= deptMapper.addDept(dept);
        if(res>0){
            return true;
        }
         else return false;
    }

    //修改科室
    @Override
    public Boolean updateDept(Dept dept) {
        int res=deptMapper.updateDept(dept);
        if (res>0){
            return true;
        }
        return false;
    }

    //根据deptId查找dept
    @Override
    public Dept findDeptById(int deptId) {
        return deptMapper.findDeptById(deptId);
    }

    //admin根据科室ID查找医生
    @Override
    public List<Doctor> adminFindAllDoctorByDeptId(Integer deptId) {
        return doctorMapper.adminFindDoctorByDeptId(deptId);
    }

    //admin通过id查找医生
    @Override
    public Doctor adminFindDoctorById(Integer doctorId) {
        return doctorMapper.adminFindDoctorById(doctorId);
    }

    //admin更新医生状态
    @Override
    public Boolean adminUpdateDoctor(Doctor doctor) {
        int res=doctorMapper.adminUpdateDoctor(doctor);
        if (res>0){
            return true;
        }
        return false;
    }

    //admin添加医生
    @Override
    public Boolean adminAddDoctor(Doctor doctor) {
        int res=doctorMapper.adminAddDoctor(doctor);
        if (res>0){
            return true;
        }
        return false;
    }

    //admin查询角色
    @Override
    public List<Role> findAllRole() {
        return roleMapper.findAllRole();
    }

    //admin查询职称
    @Override
    public List<Job> findAllJob() {
        return jobMapper.findAllJob();
    }

    //admin修改医生信息
    @Override
    public Boolean adminUpdateDoctorAll(Doctor doctor) {
        int res=doctorMapper.adminUpdateDoctorAll(doctor);
        if (res>0){
            return true;
        }
        return false;
    }



}
