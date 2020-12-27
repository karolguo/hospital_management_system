package cn.eleven.mapper;

import cn.eleven.pojo.Admin;
import cn.eleven.pojo.Dept;

import java.util.List;

public interface AdminMapper {

    //登录
    Admin adminLogin(Admin admin);

    //查看超级管理员信息
    List<Admin> adminManager(Admin admin);

    //添加管理员
    int addAdmin(Admin admin);

    //根据ID查找管理员
    Admin findAdminById(Integer adminId);

    //更新管理员状态
    int updateAdmin(Admin admin);



}
