package cn.eleven.mapper;


import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-10-01 15:20
 */
public interface CheckOrderMapper {
    List<Double> findCheckOrderByMrId(Integer mrId);
}
