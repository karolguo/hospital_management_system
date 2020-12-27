package cn.eleven.service;

import cn.eleven.pojo.Job;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 11:27
 */
public interface JobService {
    List<Job> findAllJob();
    Job findJobById(int jobId);
    Job findJobByDoctorId(int doctorId);//通过医生id查找职称
}
