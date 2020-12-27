package cn.eleven.service.impl;

import cn.eleven.mapper.CardMapper;
import cn.eleven.pojo.Card;
import cn.eleven.pojo.Doctor;
import cn.eleven.pojo.MedicalRecord;
import cn.eleven.service.CardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;

import java.util.List;
@Service
public class CardServiceImpl implements CardService {
@Autowired
    CardMapper cardMapper;
    /*new 的*/
    @Override
    public int updateCardStatus(Card card) {
        return cardMapper.updateCardStatus(card);
    }
    /*new 的*/
    @Override
    public Card userLogin(Card card) {
        return cardMapper.userLogin(card);
    }

    @Override
    public Card newUserLogin(Card card) {
        return cardMapper.newUserLogin(card);
    }

    @Override
    public Card findCardByUserId(String userId) {
        return cardMapper.findCardByUserId(userId);
    }

    @Override
    public int addCard(Card card) {
        String userId= card.getUserId();
        System.out.println("这里是密码"+userId.substring(12,18));
        System.out.println("这里是性别"+userId.substring(16,17));
        int sex = Integer.parseInt(userId.substring(16,17));
        if(sex%2==0){
            card.setUserSex("女");
        }else{
            card.setUserSex("男");
        }
        card.setUserPwd(userId.substring(12,18));
        //-------------------截取生日

        String birthday=userId.substring(6,14);
       StringBuilder sb=new StringBuilder(birthday);
        sb.insert(4,"-");
        sb.insert(7,"-");
        birthday=sb.toString();
        Date date=Date.valueOf(birthday);
        card.setBirthday(date);
     /*   String strDate = "2012-3-1";
        String format2 = "yyyy-MM-dd HH:mm";
        //String Time = string2 + ":00";
        SimpleDateFormat sdf = new SimpleDateFormat(format2);
        return sdf.parse(strDate);
        java.sql.Date birthday=java.sql.Date(userId.substring(7,14));
        //int x=new int(userId.substring(17,17));*/
        //-----------------------------截取生日结束


        //System.out.println("要开始处理的身份证号"+card.getUserId());



        return cardMapper.addCard(card);
    }

    @Override
    public List<Card> findAllCard() { return cardMapper.findAllCard();}

    @Override
    public int updateCardByUserId(Card card) {
        return cardMapper.updateCardByUserId(card);
    }

    @Override
    public int updateCardMoney(Card card) {


        return cardMapper.updateCardMoney(card);
    }
    //根据一级科室ID查找医生
    @Override
    public List<Doctor> findFirstDeptDoctor(Integer depId) {
        return cardMapper.findFirstDeptDoctor(depId);
    }
    //根据二级科室ID查找医生
    @Override
    public List<Doctor> findSecondDeptDoctor(Integer Id) {
        return cardMapper.findSecondDeptDoctor(Id);
    }
    //根据ID查找医生
    @Override
    public List<Doctor> findDetailedDoctor(Integer doctorId) {
        return cardMapper.findDetailedDoctor(doctorId);
    }
    //查找个人病例
    @Override
    public List<MedicalRecord> findCase(String userId) {
        return cardMapper.findCase(userId);
    }
    //查找个人详细病例
    @Override
    public List<MedicalRecord> findDetailedCase(Integer mrId) {
        return cardMapper.findDetailedCase(mrId);
    }

}
