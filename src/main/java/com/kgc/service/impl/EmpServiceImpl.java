package com.kgc.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.kgc.entity.Emp;
import com.kgc.entity.EmpExample;
import com.kgc.entity.User;
import com.kgc.mapper.EmpMapper;
import com.kgc.mapper.UserMapper;
import com.kgc.service.EmpService;
import com.kgc.util.Params;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional//开启事务支持
public class EmpServiceImpl implements com.kgc.service.EmpService {
    @Autowired
    private EmpMapper empMapper;
    @Override
    public List<Emp> getAllEmp() {
        return empMapper.getAllEmp();
    }

    @Override
    public int insert(Emp record) {
        return empMapper.insert(record);
    }

    @Override
    public int insertSelective(Emp record) {
        return empMapper.insertSelective(record);
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return empMapper.deleteByPrimaryKey(id);
    }

    @Override
    public Emp selectByPrimaryKey(Integer id) {
        return empMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(Emp record) {
        return empMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    @Transactional(propagation = Propagation.NOT_SUPPORTED)//不基于事务执行
    public PageInfo<Emp> getAllEmpPage(int pageNum, int pageSize) {
        PageHelper.startPage(pageNum,pageSize);
        List<Emp> empList = empMapper.getAllEmp();
        PageInfo pageInfo=new PageInfo(empList);
        return pageInfo;
    }

    @Override
    public List<Emp> pageAll(Params params) {
        PageHelper.startPage(params.getPageNum(),params.getPageSize());
        return empMapper.pageAll(params);
    }

    @Override
    public List<Emp> getAllEmpJson() {
        return empMapper.getAllEmpJson();
    }

    @Override
    public PageInfo<Emp> getAllEmpByPage(Integer page, Integer rows) {
        PageHelper.startPage(page,rows);
        List<Emp> empList = empMapper.getAllEmpJson();
        PageInfo pageInfo=new PageInfo(empList);
        return pageInfo;
    }

    @Override
    public int updateByPrimaryKey(Emp record) {
        return empMapper.updateByPrimaryKey(record);
    }


}
