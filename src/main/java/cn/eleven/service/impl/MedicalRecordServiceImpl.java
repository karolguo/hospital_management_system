package cn.eleven.service.impl;

import cn.eleven.mapper.MedicalRecordMapper;
import cn.eleven.pojo.MedicalRecord;
import cn.eleven.service.MedicalRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.text.SimpleDateFormat;
import java.util.Date;
//import java.sql.Date;
/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-24 17:19
 */
@Service
public class MedicalRecordServiceImpl implements MedicalRecordService {
    @Autowired
    private MedicalRecordMapper medicalRecordMapper;

    @Override
    public MedicalRecord findCheckAndDrugMoney() {
        return medicalRecordMapper.findCheckAndDrugMoney();
    }

    public int addMR(MedicalRecord medicalRecord) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date=new Date();

        String createdate = sdf.format(date);
        System.out.println("获取当前日期"+createdate);
        java.sql.Date medDate=java.sql.Date.valueOf(createdate);
        medicalRecord.setMedDate(medDate);
        return medicalRecordMapper.addMR(medicalRecord);
    }

    public MedicalRecord findMRByUserId(MedicalRecord medicalRecord) {
        return medicalRecordMapper.findMRByUserId(medicalRecord);
    }

    public int addCheck(MedicalRecord medicalRecord) {
        return medicalRecordMapper.addCheck(medicalRecord);
    }

    public void updateMR(MedicalRecord medicalRecord) {
        medicalRecordMapper.updateMR(medicalRecord);
    }
}
