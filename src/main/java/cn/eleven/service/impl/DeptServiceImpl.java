package cn.eleven.service.impl;

import cn.eleven.mapper.DeptMapper;
import cn.eleven.pojo.Dept;
import cn.eleven.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 20:20
 */
@Service
public class DeptServiceImpl implements DeptService {
    @Autowired
    private DeptMapper deptMapper;

    public List<Dept> findAllDept() {
        return deptMapper.findAllDept();
    }

    public Dept findDeptById(Integer deptId) {
        return deptMapper.findDeptById(deptId);
    }

    @Override
    public List<Dept> findSecondDeptByFirst(Integer deptParentId) {
        return deptMapper.findSecondDeptByFirst(deptParentId);
    }
}
