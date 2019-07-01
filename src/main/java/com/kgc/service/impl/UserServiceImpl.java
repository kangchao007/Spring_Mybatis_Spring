package com.kgc.service.impl;

import com.kgc.entity.User;
import com.kgc.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements com.kgc.service.UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public List<User> getAllUser(){
        return userMapper.getAllUser();
    }

    @Override
    public int deleteUser(Integer id) {
        return userMapper.deleteUser(id);
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public User getByIdUser(Integer id) {
        return userMapper.getByIdUser(id);
    }
}
