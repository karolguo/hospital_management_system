package cn.eleven.mapper;

import cn.eleven.pojo.Doctor;
import cn.eleven.pojo.Registered;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-19 9:13
 * doctor的mapper接口
 */
public interface DoctorMapper {
    Doctor findDoctor(Doctor doctor);
    List<Doctor> findAllDoctor();
    int updateDoctor(Doctor doctor);
    int addDoctor(Doctor doctor);
    List<Registered> findRegByDoctorId(Integer doctorId);
    /*List<Registered> findUserByRegStatus(Integer doctorId);*/
    Registered findUserByRegStatus(Integer doctorId);
    List<Doctor> findAllDoctorByDeptId(Integer deptId);
    //通过科室和职称查询医生findDoctorByDeptIdAndRoleId
    List<Doctor> findDoctorByDeptIdAndJobId(@Param("deptId") Integer deptId,@Param("jobId") Integer jobId);

    //admin根据科室ID查找医生
    List<Doctor> adminFindDoctorByDeptId(Integer deptId);

    //admin通过id查找医生
    Doctor adminFindDoctorById(Integer doctroId);

    //admin更新医生状态
    int adminUpdateDoctor(Doctor doctor);

    //admin添加医生
    int adminAddDoctor(Doctor doctor);

    //admin修改医生信息
    int adminUpdateDoctorAll(Doctor doctor);
}
