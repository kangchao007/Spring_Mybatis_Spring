package com.kgc.controller;

import com.kgc.entity.User;
import com.kgc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/getAllUser")
    public String servletAll(Model model){
        List<User> userList = userService.getAllUser();
        model.addAttribute("userList",userList);
        return "list";
    }

    @RequestMapping("/deleteUser/{id}")
    public String deleteUser(HttpSession session, @PathVariable Integer id){
        //session.removeAttribute("img");
        int i = userService.deleteUser(id);
        String img="";
        if (i>0){
            img="删除成功！";
        }else {
            img="删除失败！";
        }
        session.setAttribute("img",img);
        return "redirect:/getAllUser";
    }

    @RequestMapping("/addUser")
    public String addUser(HttpSession session,User user){
        session.removeAttribute("img");
        int i = userService.addUser(user);
        String img="";
        if (i>0){
            img="添加成功！";
        }else {
            img="添加失败！";
        }
        session.setAttribute("img",img);
        return "redirect:/getAllUser";
    }

    @RequestMapping("/getByIdUser")
    public String getByIdUser(HttpSession session,Model model,Integer id){
        session.removeAttribute("img");
        User user = userService.getByIdUser(id);
        System.out.println("user = " + user);
        model.addAttribute("user",user);
        return "update";
    }

    @RequestMapping("/updateUser")
    public String updateUser(HttpSession session,User user){
        int i = userService.updateUser(user);
        System.out.println("i = " + i);
        session.removeAttribute("img");
        String img="";
        if (i>0){
            img="修改成功！";
        }else {
            img="修改失败！";
        }
        session.setAttribute("img",img);
        return "redirect:/getAllUser";
    }

}
