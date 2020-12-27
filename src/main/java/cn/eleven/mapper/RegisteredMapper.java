package cn.eleven.mapper;

import cn.eleven.pojo.Registered;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RegisteredMapper {
    //查询所有挂号单的钱
    Registered findRegistrarsMoney();
    //添加挂号单
    int addRegistered(Registered registered);
    //查询所有挂号单
    List<Registered> findAllRegistrars();
    //根据状态和科室查询所有的等待中的挂号单并按时间顺序排列
    List<Registered> findAllRegistrarsByIdAndStatus(Registered registered);
    //根据用户Id查询挂号单
    Registered findRegistrarsByRegId(Integer regId);
    //通过id修改挂号单状态
    int updateRegistrarsStatus(Registered registered);
    //通过医生id科室号订单状态查询挂号单
    Registered findRegistrarsForRepeat(Registered registered);
    //得到最大的挂号id通过userId
    Registered findMaxRegisteredIdByUserId(String userId);
    //改变挂号单的状态3

    //根据挂号单状态（等待中）统计挂号单数量

}
