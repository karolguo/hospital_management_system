package cn.eleven.pojo;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 17:31
 */
public class Check {
    private Integer checkId ;
    private String checkName ;
    private Double checkPrice;
    private Integer checkParentId ;

    @Override
    public String toString() {
        return "Check{" +
                "checkId=" + checkId +
                ", checkName='" + checkName + '\'' +
                ", checkPrice=" + checkPrice +
                ", checkParentId=" + checkParentId +
                '}';
    }

    public Integer getCheckId() {
        return checkId;
    }

    public void setCheckId(Integer checkId) {
        this.checkId = checkId;
    }

    public String getCheckName() {
        return checkName;
    }

    public void setCheckName(String checkName) {
        this.checkName = checkName;
    }

    public Double getCheckPrice() {
        return checkPrice;
    }

    public void setCheckPrice(Double checkPrice) {
        this.checkPrice = checkPrice;
    }

    public Integer getCheckParentId() {
        return checkParentId;
    }

    public void setCheckParentId(Integer checkParentId) {
        this.checkParentId = checkParentId;
    }
}
