package cn.eleven.service.impl;

import cn.eleven.mapper.JobMapper;
import cn.eleven.pojo.Job;
import cn.eleven.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 11:28
 */
@Service
public class JobServiceImpl implements JobService {
    @Autowired
    private JobMapper jobMapper;

    @Override
    public List<Job> findAllJob() {
        return jobMapper.findAllJob();
    }

    @Override
    public Job findJobById(int jobId) {
        return jobMapper.findJobById(jobId);
    }

    @Override
    public Job findJobByDoctorId(int doctorId) {
        return jobMapper.findJobByDoctorId(doctorId);
    }
}
