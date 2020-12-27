package cn.eleven.mapper;

import cn.eleven.pojo.Card;
import cn.eleven.pojo.Doctor;
import cn.eleven.pojo.MedicalRecord;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CardMapper {
    //改变卡的状态
    int updateCardStatus(Card card);
    //用户登录
    Card userLogin(@Param("card")Card card);
    //新用户判断
    Card newUserLogin(@Param("card")Card card);
    //根据身份证号查询卡的信息
    Card findCardByUserId(@Param("userId") String userId);
    //查询所有卡（用户）
    List<Card> findAllCard();
    //用户修改卡的信息
    int updateCardByUserId(Card card);
    //第一次就诊添加新卡
    int addCard(Card card);
    //修改卡的钱数
    int updateCardMoney(Card card);
    //查找一级科室医生
    List<Doctor> findFirstDeptDoctor(Integer deptId);
    //查找二级科室医生
    List<Doctor> findSecondDeptDoctor(Integer Id);
    //查找医生详情
    List<Doctor> findDetailedDoctor(Integer doctorId);
    //查看个人病例
    List<MedicalRecord> findCase(String userId);
    //查看个人病例详情
    List<MedicalRecord> findDetailedCase(Integer mrId);
}
