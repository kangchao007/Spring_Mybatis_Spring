package com.kgc.service;

import com.github.pagehelper.PageInfo;
import com.kgc.entity.Emp;
import com.kgc.entity.EmpExample;
import com.kgc.util.Params;

import java.util.List;

public interface EmpService {
    List<Emp> getAllEmp();

    int insert(Emp record);

    int insertSelective(Emp record);

    int deleteByPrimaryKey(Integer id);

    Emp selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Emp record);


    PageInfo<Emp> getAllEmpPage(int pageNum,int pageSize);

    List<Emp>pageAll(Params params);

    List<Emp>getAllEmpJson();

    PageInfo<Emp>getAllEmpByPage(Integer page,Integer rows);

    int updateByPrimaryKey(Emp record);



}
