package cn.eleven.service;


import cn.eleven.pojo.Drug;
import cn.eleven.pojo.DrugOrder;
import cn.eleven.pojo.MedicalRecord;

import java.util.List;

public interface DrugService {
    //根据userid查询指定药单
    List<MedicalRecord> findDrugMedical(MedicalRecord medicalRecord);
    //查询所有药品
    List<Drug> findMedicalStock();
    //删除药单
    boolean delDrug(MedicalRecord medicalRecord);
    //出库药品
    boolean checkoutDrug(MedicalRecord medicalRecord);
    //根据药品名称查询
    List<Drug> findMedicalByName(String drugName);
    //查找紧急库存
    List<Drug> findCriticalStock();

    //通过药品id查找药品
    Drug findDrugById(Integer drugId);
    //修改库存
    void updateDrugNum(Drug drug);
    //向drugOrder中间表中存值
    void addDrugOrder(DrugOrder drugOrder);
    //根据userID查询所有药单
    List<MedicalRecord> findListStock(MedicalRecord medicalRecord);

    List<DrugOrder> findDrugOrderByMrId(Integer mrId);
}
