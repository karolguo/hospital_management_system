package cn.eleven.pojo;

import java.sql.Date;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 19:30
 */
public class MedicalRecord {
    private Integer mrId;
    private String userId;
    private String drugName;
    private Integer drugOrderNum;
    private Double drugPrice;
    private Double drugOderPrice;
    private Integer checkId;
    private Integer doctorId;
    private String doctorName;
    private Integer drugOrderStatus;
    private Integer regId;
    private String userName;
    private String deptName;
    private String checkName;
    /* private Card card;
     private Doctor doctor;*/
    private String medOrder;//医嘱
    private Date medDate;//病例创建时间
    private Double mrCheckPrice;//检查项目总价 mrCheckPrice mrDrugPrice
    private Double mrDrugPrice;//开药总价
    private String wordUrl;//医生填写病例word地址

    public Integer getMrId() {
        return mrId;
    }

    public void setMrId(Integer mrId) {
        this.mrId = mrId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }

    public Integer getDrugOrderNum() {
        return drugOrderNum;
    }

    public void setDrugOrderNum(Integer drugOrderNum) {
        this.drugOrderNum = drugOrderNum;
    }

    public Double getDrugPrice() {
        return drugPrice;
    }

    public void setDrugPrice(Double drugPrice) {
        this.drugPrice = drugPrice;
    }

    public Double getDrugOderPrice() {
        return drugOderPrice;
    }

    public void setDrugOderPrice(Double drugOderPrice) {
        this.drugOderPrice = drugOderPrice;
    }

    public Integer getCheckId() {
        return checkId;
    }

    public void setCheckId(Integer checkId) {
        this.checkId = checkId;
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

    public Integer getDrugOrderStatus() {
        return drugOrderStatus;
    }

    public void setDrugOrderStatus(Integer drugOrderStatus) {
        this.drugOrderStatus = drugOrderStatus;
    }

    public Integer getRegId() {
        return regId;
    }

    public void setRegId(Integer regId) {
        this.regId = regId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getCheckName() {
        return checkName;
    }

    public void setCheckName(String checkName) {
        this.checkName = checkName;
    }

    public String getMedOrder() {
        return medOrder;
    }

    public void setMedOrder(String medOrder) {
        this.medOrder = medOrder;
    }

    public Date getMedDate() {
        return medDate;
    }

    public void setMedDate(Date medDate) {
        this.medDate = medDate;
    }

    public Double getMrCheckPrice() {
        return mrCheckPrice;
    }

    public void setMrCheckPrice(Double mrCheckPrice) {
        this.mrCheckPrice = mrCheckPrice;
    }

    public Double getMrDrugPrice() {
        return mrDrugPrice;
    }

    public void setMrDrugPrice(Double mrDrugPrice) {
        this.mrDrugPrice = mrDrugPrice;
    }

    public String getWordUrl() {
        return wordUrl;
    }

    public void setWordUrl(String wordUrl) {
        this.wordUrl = wordUrl;
    }

    @Override
    public String toString() {
        return "MedicalRecord{" +
                "mrId=" + mrId +
                ", userId='" + userId + '\'' +
                ", drugName='" + drugName + '\'' +
                ", drugOrderNum=" + drugOrderNum +
                ", drugPrice=" + drugPrice +
                ", drugOderPrice=" + drugOderPrice +
                ", checkId=" + checkId +
                ", doctorId=" + doctorId +
                ", doctorName='" + doctorName + '\'' +
                ", drugOrderStatus=" + drugOrderStatus +
                ", regId=" + regId +
                ", userName='" + userName + '\'' +
                ", deptName='" + deptName + '\'' +
                ", checkName='" + checkName + '\'' +
                ", medOrder='" + medOrder + '\'' +
                ", medDate=" + medDate +
                ", mrCheckPrice=" + mrCheckPrice +
                ", mrDrugPrice=" + mrDrugPrice +
                ", wordUrl='" + wordUrl + '\'' +
                '}';
    }
}

