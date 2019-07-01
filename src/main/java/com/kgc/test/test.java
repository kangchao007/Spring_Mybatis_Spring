package com.kgc.test;

import com.kgc.entity.User;
import com.kgc.mapper.UserMapper;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
    public static void main(String[] args) {
        ApplicationContext app=new ClassPathXmlApplicationContext("spring.xml");
        UserMapper userMapper = (UserMapper)app.getBean("userMapper");
        System.out.println(userMapper.getAllUser().size());
    }
}
