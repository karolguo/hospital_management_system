package cn.eleven.pojo;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-18 19:49
 * 药品订单表（病例与药品表中间表）
 */
public class DrugOrder {
    private MedicalRecord medicalRecord;//对应下药单的病例
    private Drug drug;//对应的药
    private Integer drugOrderNum ;//药的数量
    private Double drugOrderPrice ;//药的价钱 = 药的数量*药的单价
    private Integer drugOrderStatus ;//药单状态 1待取 2已取 0作废

    @Override
    public String toString() {
        return "DrugOrder{" +
                "medicalRecord=" + medicalRecord +
                ", drug=" + drug +
                ", drugOrderNum=" + drugOrderNum +
                ", drugOrderPrice=" + drugOrderPrice +
                ", drugOrderStatus=" + drugOrderStatus +
                '}';
    }

    public MedicalRecord getMedicalRecord() {
        return medicalRecord;
    }

    public void setMedicalRecord(MedicalRecord medicalRecord) {
        this.medicalRecord = medicalRecord;
    }

    public Drug getDrug() {
        return drug;
    }

    public void setDrug(Drug drug) {
        this.drug = drug;
    }

    public Integer getDrugOrderNum() {
        return drugOrderNum;
    }

    public void setDrugOrderNum(Integer drugOrderNum) {
        this.drugOrderNum = drugOrderNum;
    }

    public Double getDrugOrderPrice() {
        return drugOrderPrice;
    }

    public void setDrugOrderPrice(Double drugOrderPrice) {
        this.drugOrderPrice = drugOrderPrice;
    }

    public Integer getDrugOrderStatus() {
        return drugOrderStatus;
    }

    public void setDrugOrderStatus(Integer drugOrderStatus) {
        this.drugOrderStatus = drugOrderStatus;
    }
}
