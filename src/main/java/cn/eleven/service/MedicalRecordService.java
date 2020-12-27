package cn.eleven.service;

import cn.eleven.pojo.MedicalRecord;

/**
 * @author gfh
 * @project_name hospital_management_system
 * @create_date 2019-09-24 17:19
 */
public interface MedicalRecordService {
    //查询医嘱内检查项画的钱和开药画的钱
    MedicalRecord findCheckAndDrugMoney();
    //初始化，挂号时添加一条病例记录
    int addMR(MedicalRecord medicalRecord);
    //通过用户身份证号查找病例
    MedicalRecord findMRByUserId(MedicalRecord medicalRecord);
    //添加检查项到中间表
    int addCheck(MedicalRecord medicalRecord);
    //更新医嘱 检查项价格 药品价格到病例表
    void updateMR(MedicalRecord medicalRecord);
}
