package com.cjj.dao.baseinfo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Chargetype;

public interface ChargetypeMapper {
    int insert(Chargetype record);
    List<Chargetype> findAll();
    Chargetype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Chargetype record);
    int delete(Integer id);
    List<Chargetype> vagueFind(@Param("contant")String contant,@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
}