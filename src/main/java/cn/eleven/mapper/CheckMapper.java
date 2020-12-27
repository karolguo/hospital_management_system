package cn.eleven.mapper;

import cn.eleven.pojo.Check;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-23 20:59
 */
public interface CheckMapper {
    List<Check> findAllCheck();
    List<Check> findCheckByParentId(Check check);
    Check findCheckById(Integer checkId);
}
