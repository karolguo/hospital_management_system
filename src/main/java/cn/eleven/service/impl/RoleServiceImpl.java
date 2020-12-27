package cn.eleven.service.impl;

import cn.eleven.mapper.RoleMapper;
import cn.eleven.pojo.Role;
import cn.eleven.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 15:12
 */
@Service
public class RoleServiceImpl implements RoleService {
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Role> findAllRole() {
        return roleMapper.findAllRole();
    }

    @Override
    public Role findRoleById(int roleId) {
        return roleMapper.findRoleById(roleId);
    }

    @Override
    public List<Role> findRoleByDoctorId(int doctorId) {
        return roleMapper.findRoleByDoctorId(doctorId);
    }
}
