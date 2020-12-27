package cn.eleven.mapper;

import cn.eleven.pojo.Job;


import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 11:21
 * 职称mapper接口
 */
public interface JobMapper {
    List<Job> findAllJob();//查找所有职称
    Job findJobById(int jobId);//通过职称id查找职称
    Job findJobByDoctorId(int doctorId);//通过医生id查找职称
}
