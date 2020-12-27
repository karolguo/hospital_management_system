package cn.eleven.service.impl;

import cn.eleven.mapper.DrugMapper;
import cn.eleven.pojo.Drug;
import cn.eleven.pojo.DrugOrder;
import cn.eleven.pojo.MedicalRecord;
import cn.eleven.service.DrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DrugServiceImpl implements DrugService {
    @Autowired
    DrugMapper drugMapper;
//根据userid查询指定药单
    @Override
    public List<MedicalRecord> findDrugMedical(MedicalRecord medicalRecord) {
        System.out.println("service"+medicalRecord.getUserId());
        System.out.println("service结果："+drugMapper.findDrugMedical(medicalRecord));
        return drugMapper.findDrugMedical(medicalRecord);
    }
//查询所有药品
    @Override
    public List<Drug> findMedicalStock() {
        return drugMapper.findMedicalStock();
    }
//删除药单
    @Override
    public boolean delDrug(MedicalRecord medicalRecord) {
        return drugMapper.delDrug(medicalRecord);
    }
    //出库药单
    @Override
    public boolean checkoutDrug(MedicalRecord medicalRecord) {
        return drugMapper.checkoutDrug(medicalRecord);
    }
    //根据药品名称查询
    @Override
    public List<Drug> findMedicalByName(String drugName) {
        return drugMapper.findMedicalByName(drugName);
    }
    //查找紧急药品
    @Override
    public List<Drug> findCriticalStock() {
        return drugMapper.findCriticalStock();
    }

    @Override
    public Drug findDrugById(Integer drugId) {
        return drugMapper.findDrugById(drugId);
    }

    @Override
    public void updateDrugNum(Drug drug) {
        drugMapper.updateDrugNum(drug);
    }

    @Override
    public void addDrugOrder(DrugOrder drugOrder) {
        drugMapper.addDrugOrder(drugOrder);
    }

    @Override
    public List<MedicalRecord> findListStock(MedicalRecord medicalRecord) {
        return drugMapper.findListStock(medicalRecord);
    }

    @Override
    public List<DrugOrder> findDrugOrderByMrId(Integer mrId) {
        return drugMapper.findDrugOrderByMrId(mrId);
    }


}
