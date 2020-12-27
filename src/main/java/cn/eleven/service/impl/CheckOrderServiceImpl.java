package cn.eleven.service.impl;

import cn.eleven.mapper.CheckOrderMapper;
import cn.eleven.pojo.CheckOrder;
import cn.eleven.service.CheckOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-10-01 15:21
 */
@Service
public class CheckOrderServiceImpl implements CheckOrderService {
    @Autowired
    private CheckOrderMapper checkOrderMapper;

    public List<Double> findCheckOrderByMrId(Integer mrId) {
        return checkOrderMapper.findCheckOrderByMrId(mrId);
    }
}
