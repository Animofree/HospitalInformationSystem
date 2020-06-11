package com.cjj.dao.baseinfo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Patienttype;

public interface PatienttypeMapper {
    int insert(Patienttype record);
    List<Patienttype> findAll();
    Patienttype selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(Patienttype record);
    int delete(Integer id);
    
    List<Patienttype> vagueFind(@Param("contant")String contant,@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
}