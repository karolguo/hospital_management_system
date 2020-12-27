package cn.eleven.service;

import cn.eleven.pojo.Card;
import cn.eleven.pojo.Doctor;
import cn.eleven.pojo.MedicalRecord;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CardService {
    //改变卡的状态
    int updateCardStatus(@Param("card")Card card);
    //用户登录
    Card userLogin(@Param("card")Card card);
    //新用户判断
    Card newUserLogin(@Param("card")Card card);
    //根据身份证号查询卡的信息
    Card findCardByUserId(String userId);
    //第一次就诊添加新卡
    int addCard( Card card);
    //查询所有卡(用户)
    List<Card> findAllCard();
    //更改卡的状态通过卡的id（挂失，解封）
    int updateCardByUserId(Card card);
    //改变卡的钱数
    int updateCardMoney(Card card);


    //查找一级科室的医生
    List<Doctor> findFirstDeptDoctor (Integer depId);
    //查找二级科室的医生
    List<Doctor> findSecondDeptDoctor (Integer Id);
    //根据ID查找医生
    List<Doctor> findDetailedDoctor(Integer doctorId);
    //查找个人病例
    List<MedicalRecord> findCase(String userId);
    //查找个人详细病例
    List<MedicalRecord> findDetailedCase(Integer mrId);
}
