package cn.eleven.service;

import cn.eleven.pojo.CheckOrder;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-10-01 15:21
 */
public interface CheckOrderService {
    List<Double> findCheckOrderByMrId(Integer mrId);
}
