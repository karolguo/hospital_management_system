package cn.eleven.service.impl;

import cn.eleven.mapper.DoctorMapper;
import cn.eleven.pojo.Doctor;
import cn.eleven.pojo.Registered;
import cn.eleven.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 10:03
 * doctor service的实现类
 */
@Service
public class DoctorServiceImpl implements DoctorService {

    @Autowired
    private DoctorMapper doctorMapper;

    public Doctor doctorLogin(Doctor doctor) {//医生登录方法

        return doctorMapper.findDoctor(doctor);
    }

    public List<Doctor> findAllDoctor() {
        return doctorMapper.findAllDoctor();
    }

    public Doctor findDoctorById(Doctor doctor) {
        return doctorMapper.findDoctor(doctor);
    }

    public void updateDoctor(Doctor doctor) {
        doctorMapper.updateDoctor(doctor);
    }

    public void addDoctor(Doctor doctor) {
        doctorMapper.addDoctor(doctor);
    }

    public List<Registered> findRegByDoctorId(Integer doctorId) {
        return doctorMapper.findRegByDoctorId(doctorId);
    }

    @Override
    public Registered findUserByRegStatus(Integer doctorId) {
        return doctorMapper.findUserByRegStatus(doctorId);
    }

    /*public List<Registered> findUserByRegStatus(Integer doctorId) {
        return doctorMapper.findUserByRegStatus(doctorId);
    }*/

    public List<Doctor> findAllDoctorByDeptId(Integer deptId) {
        return doctorMapper.findAllDoctorByDeptId(deptId);
    }

    public List<Doctor> findDoctorByDeptIdAndJobId(Integer deptId, Integer jobId) {
        System.out.println(deptId+"ssssssssssss和这两个"+jobId);
        return doctorMapper.findDoctorByDeptIdAndJobId(deptId,jobId);
    }
}
