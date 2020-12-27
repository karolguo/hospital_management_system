package cn.eleven.pojo;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 17:19
 * 药品
 */
public class Drug {
    private Integer drugId ;
    private String drugName ;//药品名
    private Integer drugNum ;//药品库存数量
    private Double drugPrice ;//药品单价

    @Override
    public String toString() {
        return "Drug{" +
                "drugId=" + drugId +
                ", drugName='" + drugName + '\'' +
                ", drugNum=" + drugNum +
                ", drugPrice=" + drugPrice +
                '}';
    }

    public Integer getDrugId() {
        return drugId;
    }

    public void setDrugId(Integer drugId) {
        this.drugId = drugId;
    }

    public String getDrugName() {
        return drugName;
    }

    public void setDrugName(String drugName) {
        this.drugName = drugName;
    }

    public Integer getDrugNum() {
        return drugNum;
    }

    public void setDrugNum(Integer drugNum) {
        this.drugNum = drugNum;
    }

    public Double getDrugPrice() {
        return drugPrice;
    }

    public void setDrugPrice(Double drugPrice) {
        this.drugPrice = drugPrice;
    }
}
