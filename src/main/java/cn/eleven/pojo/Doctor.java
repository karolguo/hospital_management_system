package cn.eleven.pojo;

import org.springframework.web.multipart.MultipartFile;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 17:19
 */
public class Doctor {
    private Integer doctorId;
    private String doctorName;
    private String doctorSex;
    private MultipartFile file;//医生照片路径
    private String doctorPic;
    private Job job;//医生职称
    private String doctorInfo;//医生描述
    private Integer doctorStatus;//医生状态1可用，0不可用
    private String doctorPwd;//医生登陆密码
    private Dept dept;//医生所属科室
    private Role role;//医生角色
    private Integer deptId;
    private Integer jobId;

    @Override
    public String toString() {
        return "Doctor{" +
                "doctorId=" + doctorId +
                ", doctorName='" + doctorName + '\'' +
                ", doctorSex='" + doctorSex + '\'' +
                ", file=" + file +
                ", doctorPic='" + doctorPic + '\'' +
                ", job=" + job +
                ", doctorInfo='" + doctorInfo + '\'' +
                ", doctorStatus=" + doctorStatus +
                ", doctorPwd='" + doctorPwd + '\'' +
                ", dept=" + dept +
                ", role=" + role +
                ", deptId=" + deptId +
                ", jobId=" + jobId +
                '}';
    }

    public Integer getDeptId() {
        return deptId;
    }

    public void setDeptId(Integer deptId) {
        this.deptId = deptId;
    }

    public Integer getJobId() {
        return jobId;
    }

    public void setJobId(Integer jobId) {
        this.jobId = jobId;
    }

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName;
    }

    public String getDoctorSex() {
        return doctorSex;
    }

    public void setDoctorSex(String doctorSex) {
        this.doctorSex = doctorSex;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    public String getDoctorPic() {
        return doctorPic;
    }

    public void setDoctorPic(String doctorPic) {
        this.doctorPic = doctorPic;
    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public String getDoctorInfo() {
        return doctorInfo;
    }

    public void setDoctorInfo(String doctorInfo) {
        this.doctorInfo = doctorInfo;
    }

    public Integer getDoctorStatus() {
        return doctorStatus;
    }

    public void setDoctorStatus(Integer doctorStatus) {
        this.doctorStatus = doctorStatus;
    }

    public String getDoctorPwd() {
        return doctorPwd;
    }

    public void setDoctorPwd(String doctorPwd) {
        this.doctorPwd = doctorPwd;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
