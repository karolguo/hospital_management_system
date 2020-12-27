package cn.eleven.pojo;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-10-01 15:19
 */
public class CheckOrder {
    private Integer coId  ;
    private Integer mrId ;
    private Check check  ;

    @Override
    public String toString() {
        return "CheckOrder{" +
                "coId=" + coId +
                ", mrId=" + mrId +
                ", check=" + check +
                '}';
    }

    public Integer getCoId() {

        return coId;
    }

    public void setCoId(Integer coId) {
        this.coId = coId;
    }

    public Integer getMrId() {
        return mrId;
    }

    public void setMrId(Integer mrId) {
        this.mrId = mrId;
    }

    public Check getCheck() {
        return check;
    }

    public void setCheck(Check check) {
        this.check = check;
    }
}
