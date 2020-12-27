package cn.eleven.service.impl;

import cn.eleven.mapper.CheckMapper;
import cn.eleven.pojo.Check;
import cn.eleven.service.CheckService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-23 21:05
 */
@Service
public class CheckServiceImpl implements CheckService {
    @Autowired
    private CheckMapper checkMapper;

    public List<Check> findAllCheck() {
        return checkMapper.findAllCheck();
    }


    public List<Check> findCheckByParentId(Check check) {
        return checkMapper.findCheckByParentId(check);
    }

    public Check findCheckById(Integer checkId) {
        return checkMapper.findCheckById(checkId);
    }
}
