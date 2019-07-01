package com.kgc.mapper;

import com.kgc.entity.User;

import java.util.List;

public interface UserMapper {
    List<User>getAllUser();
    int deleteUser(Integer id);
    int addUser(User user);
    int updateUser(User user);
    User getByIdUser(Integer id);
}
