package com.cjj.dao.baseinfo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Registertype;

public interface RegistertypeMapper {
    int insert(Registertype record);
    List<Registertype> findAll();   
    List<Registertype> findBefor();
    Registertype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Registertype record);

    int delete(Integer id);

    List<Registertype> vagueFind(@Param("contant")String contant,@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
}