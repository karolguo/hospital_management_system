package cn.eleven.pojo;

import java.sql.Date;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 17:19
 */
public class Card {
    private Integer cardId ;
    private String userId ;//用户身份证号
    private String userPwd ;
    private String userName ;
    private String userSex ;
    private Double money;
    private Date birthday;
    private Integer cardStatus ;
    private String userTel ;
    private String userPic ;//用户照片
    private String sosTel ;//紧急联系人

    @Override
    public String toString() {
        return "Card{" +
                "cardId=" + cardId +
                ", userId='" + userId + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userName='" + userName + '\'' +
                ", userSex='" + userSex + '\'' +
                ", money=" + money +
                ", birthday=" + birthday +
                ", cardStatus=" + cardStatus +
                ", userTel='" + userTel + '\'' +
                ", userPic='" + userPic + '\'' +
                ", sosTel='" + sosTel + '\'' +
                '}';
    }

    public Integer getCardId() {
        return cardId;
    }

    public void setCardId(Integer cardId) {
        this.cardId = cardId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getCardStatus() {
        return cardStatus;
    }

    public void setCardStatus(Integer cardStatus) {
        this.cardStatus = cardStatus;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    public String getUserPic() {
        return userPic;
    }

    public void setUserPic(String userPic) {
        this.userPic = userPic;
    }

    public String getSosTel() {
        return sosTel;
    }

    public void setSosTel(String sosTel) {
        this.sosTel = sosTel;
    }
}
