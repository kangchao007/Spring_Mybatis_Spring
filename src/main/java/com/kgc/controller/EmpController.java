package com.kgc.controller;

import com.github.pagehelper.PageInfo;
import com.kgc.entity.Emp;
import com.kgc.service.EmpService;
import com.kgc.util.Params;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class EmpController {
    @Autowired
    private EmpService empService;
    @RequestMapping("/getAllEmp")
    public String getAllEmp(Model model){
        List<Emp> empList = empService.getAllEmp();
        model.addAttribute("empList",empList);
        return "EmpList";
    }


    @RequestMapping("/getAllEmp1")
    public String getAllEmp1(Integer pageNum ,Model model){
        //判断pageNum是否有值
        pageNum=pageNum==null?1:pageNum;
        PageInfo<Emp> pageInfo = empService.getAllEmpPage(pageNum, 4);
        System.out.println("pageInfo = " + pageInfo);
        model.addAttribute("pageInfo",pageInfo);
        return "EmpListPage";

    }

    @RequestMapping("/insertSelective")
    public String insertSelective(Emp emp){
        empService.insertSelective(emp);
        return "redirect:getAllEmp";
    }

    @RequestMapping("/deleteByPrimaryKey/{id}")
    public String deleteByPrimaryKey(@PathVariable Integer id){
        empService.deleteByPrimaryKey(id);
        return "redirect:getAllEmp";
    }

    @RequestMapping("/selectByPrimaryKey/{id}")
    public String selectByPrimaryKey(@PathVariable Integer id,Model model){
        Emp emp = empService.selectByPrimaryKey(id);
        System.out.println("emp = " + emp);
        model.addAttribute("emp",emp);
        return "EmpUpdate";
    }

    @RequestMapping("/updateByPrimaryKeySelective")
    public String updateByPrimaryKeySelective(Emp emp){
        empService.updateByPrimaryKeySelective(emp);
        return "redirect:getAllEmp";
    }



    @RequestMapping("/pageAll")
    public String pageAll(Params params ,Model model){
        List<Emp> empList = empService.pageAll(params);
        PageInfo pageInfo=new PageInfo(empList);
        model.addAttribute("pageInfo",pageInfo);
        return "EmpList";

    }


    @RequestMapping("/getAllEmpJson")
    public @ResponseBody List<Emp> getAllEmpJson(){
        List<Emp> empList = empService.getAllEmpJson();
        return empList;
    }

    @RequestMapping("/getAllEmpByPage")
    public @ResponseBody Map<String,Object> getAllEmpByPage(Integer page,Integer rows){
        PageInfo<Emp> pageInfo = empService.getAllEmpByPage(page, rows);
        System.out.println("pageInfo = " + pageInfo);
        Map<String,Object>map=new HashMap<>();
        map.put("total",pageInfo.getTotal());
        map.put("rows",pageInfo.getList());
        System.out.println("map = " + map);
        return map;
    }
}
