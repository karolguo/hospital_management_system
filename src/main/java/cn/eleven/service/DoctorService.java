package cn.eleven.service;

import cn.eleven.pojo.Doctor;
import cn.eleven.pojo.Registered;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 10:01
 * doctor 的service接口
 */
public interface DoctorService {
    Doctor doctorLogin(Doctor doctor);
    List<Doctor> findAllDoctor();
    Doctor findDoctorById(Doctor doctor);
    void updateDoctor(Doctor doctor);
    void addDoctor(Doctor doctor);
    List<Registered> findRegByDoctorId(Integer doctorId);
    /*List<Registered> findUserByRegStatus(Integer doctorId);*/
    Registered findUserByRegStatus(Integer doctorId);
    List<Doctor> findAllDoctorByDeptId(Integer deptId);
    //通过科室和职称查询医生findDoctorByDeptIdAndRoleId
    List<Doctor> findDoctorByDeptIdAndJobId(Integer deptId,Integer jobId);
}
