package cn.eleven.service.impl;

import cn.eleven.mapper.StatisticalMapper;
import cn.eleven.pojo.Doctor;
import cn.eleven.service.StatisticalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @program: hospital_management_system
 * @author:MR.FYS
 * @create: 2019--09--30 21:05
 **/
@Service
public class StatisticalServiceImpl implements StatisticalService {

    @Autowired
    private StatisticalMapper statisticalMapper;

    @Override
    public Doctor adminStatisticalDoctor(Doctor doctor) {
        return statisticalMapper.adminStatisticalDoctor(doctor);
    }
}
