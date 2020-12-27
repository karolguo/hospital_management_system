package cn.eleven.service;

import cn.eleven.pojo.Role;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 15:01
 */
public interface RoleService {
    List<Role> findAllRole();
    Role findRoleById(int roleId);
    List<Role> findRoleByDoctorId(int doctorId);
}
