package cn.eleven.pojo;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 17:15
 */
public class Admin {
    private Integer adminId;
    private String adminLoginName ;
    private Role role;
    private Integer adminStatus ;
    private String adminLoginPwd ;
    private Dept dept;
    private String adminRealName;

    @Override
    public String toString() {
        return "Admin{" +
                "adminId=" + adminId +
                ", adminLoginName='" + adminLoginName + '\'' +
                ", role=" + role +
                ", adminStatus=" + adminStatus +
                ", adminLoginPwd='" + adminLoginPwd + '\'' +
                ", dept=" + dept +
                ", adminRealName='" + adminRealName + '\'' +
                '}';
    }

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminLoginName() {
        return adminLoginName;
    }

    public void setAdminLoginName(String adminLoginName) {
        this.adminLoginName = adminLoginName;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Integer getAdminStatus() {
        return adminStatus;
    }

    public void setAdminStatus(Integer adminStatus) {
        this.adminStatus = adminStatus;
    }

    public String getAdminLoginPwd() {
        return adminLoginPwd;
    }

    public void setAdminLoginPwd(String adminLoginPwd) {
        this.adminLoginPwd = adminLoginPwd;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public String getAdminRealName() {
        return adminRealName;
    }

    public void setAdminRealName(String adminRealName) {
        this.adminRealName = adminRealName;
    }
}
