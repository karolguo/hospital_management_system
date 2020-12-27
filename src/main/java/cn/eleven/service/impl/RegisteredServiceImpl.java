package cn.eleven.service.impl;

import cn.eleven.mapper.RegisteredMapper;
import cn.eleven.pojo.Registered;
import cn.eleven.service.RegisteredService;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;


@Service
public class RegisteredServiceImpl implements RegisteredService {

    @Autowired
    RegisteredMapper registeredMapper;

    @Override
    public Registered findRegistrarsMoney() {
        return registeredMapper.findRegistrarsMoney();
    }

    @Override
    public int addRegistered(Registered registered) {

        String current = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format( new java.util.Date());
         Timestamp date=Timestamp.valueOf(current);

        registered.setRegDate(date);

        //
        return registeredMapper.addRegistered(registered);
    }

    @Override
    public List<Registered> findAllRegistrars() {
        return registeredMapper.findAllRegistrars();
    }

    @Override
    public List<Registered> findAllRegistrarsByIdAndStatus(Registered registered) {
        return registeredMapper.findAllRegistrarsByIdAndStatus(registered);
    }

    @Override
    public Registered findRegistrarsByRegId(Integer regId) {
        return registeredMapper.findRegistrarsByRegId(regId);
    }

    @Override
    public int updateRegistrarsStatus(Registered registered) {
        return registeredMapper.updateRegistrarsStatus(registered);
    }

    @Override
    public Registered findRegistrarsForRepeat(Registered registered) {
        return registeredMapper.findRegistrarsForRepeat(registered);
    }

    @Override
    public Registered findMaxRegisteredIdByUserId(String userId) {
        return registeredMapper.findMaxRegisteredIdByUserId(userId);
    }

}
