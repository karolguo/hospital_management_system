package cn.eleven.service;

import cn.eleven.pojo.Dept;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 20:20
 */
public interface DeptService {
    List<Dept> findAllDept();
    Dept findDeptById(Integer deptId);
    List<Dept> findSecondDeptByFirst(Integer deptParentId);
}
