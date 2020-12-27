package cn.eleven.service;

import cn.eleven.pojo.*;

import java.util.List;

public interface AdminService {


    //登录
    Admin adminLogin(Admin admin);

    //查看超级管理员信息
    List<Admin> adminManager(Admin admin);

    //添加管理员
    Boolean addAdmin(Admin admin);

    //根据ID查找管理员
    Admin findAdminById(Integer adminId);

    //更新管理员状态
    Boolean updateAdmin(Admin admin);

    //admin根据ID查找科室信息
    Dept toFindMaxDeptById(int deptId);

    //admin根据一级科室ID查找二级科室信息
    List<Dept> toFindSecondDeptByFirst(int deptId);

    //显示所有一级科室信息
    List<Dept> toFindAllNullDept();

    //显示所有二级科室信息
    List<Dept> toFindAllNoNullDept();

    //添加科室
    Boolean addDept(Dept dept);

    //修改科室
    Boolean updateDept(Dept dept);

    //根据deptId查找科室
    Dept findDeptById(int deptId);

    //admin根据科室ID查找医生
    List<Doctor> adminFindAllDoctorByDeptId(Integer deptId);

    //admin通过id查找医生
    Doctor adminFindDoctorById(Integer doctroId);

    //admin更新医生状态
    Boolean adminUpdateDoctor(Doctor doctor);

    //admin添加医生
    Boolean adminAddDoctor(Doctor doctor);

    //admin查询角色
    List<Role> findAllRole();

    //admin查询职称
    List<Job> findAllJob();

    //admin修改医生信息
    Boolean adminUpdateDoctorAll(Doctor doctor);


}
