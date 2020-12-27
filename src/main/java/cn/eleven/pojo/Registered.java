package cn.eleven.pojo;

import java.sql.Timestamp;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 19:28
 * 挂号
 */
public class Registered {
    private Integer regId ;
    private Card card;//需要获取用户身份证号
    private Timestamp regDate;//挂号时间
    private Double regPrice;//挂号费
    private Dept dept;//挂号所选科室
    private Doctor doctor;//挂号所选医生
    private Job job;//所选号的类型，例如专家号还是普通号
    private Integer regStatus ;//挂号状态 1等待就诊，2就诊中，3就诊完毕，0废弃号
    private Check check;
    @Override
    public String toString() {
        return "Registered{" +
                "regId=" + regId +
                ", card=" + card +
                ", regDate=" + regDate +
                ", regPrice=" + regPrice +
                ", dept=" + dept +
                ", doctor=" + doctor +
                ", job=" + job +
                ", regStatus=" + regStatus +
                '}';
    }

    public Integer getRegId() {
        return regId;
    }

    public void setRegId(Integer regId) {
        this.regId = regId;
    }

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }

    public Check getCheck() {
        return check;
    }

    public void setCheck(Check check) {
        this.check = check;
    }

    public Timestamp getRegDate() {
        return regDate;
    }

    public void setRegDate(Timestamp regDate) {
        this.regDate = regDate;
    }

    public Double getRegPrice() {
        return regPrice;
    }

    public void setRegPrice(Double regPrice) {
        this.regPrice = regPrice;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public Integer getRegStatus() {
        return regStatus;
    }

    public void setRegStatus(Integer regStatus) {
        this.regStatus = regStatus;
    }
}
