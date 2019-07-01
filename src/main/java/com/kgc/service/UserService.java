package com.kgc.service;

import com.kgc.entity.Emp;
import com.kgc.entity.User;

import java.util.List;

public interface UserService {
    List<User> getAllUser();
    int deleteUser(Integer id);
    int addUser(User user);
    int updateUser(User user);
    User getByIdUser(Integer id);

}
