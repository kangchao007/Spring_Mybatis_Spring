package com.kgc.mapper;

import com.kgc.entity.Emp;
import com.kgc.entity.EmpExample;
import com.kgc.util.Params;

import java.util.List;

public interface EmpMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Emp record);

    int insertSelective(Emp record);

    List<Emp>getAllEmp();

    List<Emp>getAllEmpJson();
    List<Emp>pageAll(Params params);
    List<Emp> selectByExample(EmpExample example);


    Emp selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Emp record);

    int updateByPrimaryKey(Emp record);
}