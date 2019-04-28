package com.test424.Service.Imp;

import com.test424.Entity.User;
import com.test424.Mapper.UserMapper;
import com.test424.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import redis.clients.jedis.JedisCluster;
@Service
public class UserServiceImp implements UserService {
    @Autowired
    UserMapper userMapper;
    @Autowired
    JedisCluster jedisCluster;



@Override
    public int addUser(User user) {
       return  userMapper.addUser(user);
    }

@Autowired
    public String getFisrtKey() {
        return jedisCluster.get("h");
    }
}
