package cn.eleven.mapper;

import cn.eleven.pojo.Dept;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 20:19
 */
public interface DeptMapper {
    List<Dept> findAllDept();
    Dept findDeptById(int deptId);
    List<Dept> findSecondDeptByFirst(int deptParentId);

    //根据ID查找科室信息
    Dept toFindMaxDeptById(int deptId);


    //根据ID查找科室信息
    Dept toFindDeptById(Integer deptId);

    //根据一级科室ID查找二级科室信息
    List<Dept> toFindSecondDeptByFirst(int deptId);

    //显示所有一级科室信息
    List<Dept> toFindAllNullDept();

    //显示所有二级科室信息
    List<Dept> toFindAllNoNullDept();

    //添加科室
    int addDept(Dept dept);
    //修改科室
    int updateDept(Dept dept);
}
