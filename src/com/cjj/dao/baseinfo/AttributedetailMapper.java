package com.cjj.dao.baseinfo;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Attributedetail;

public interface AttributedetailMapper {

    int insert(Attributedetail record);
   
    List<Attributedetail> findByAttributeid(Integer id);

    Attributedetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Attributedetail record);

    int delete(Integer id);
    List<Attributedetail> vagueFind(@Param("contant")String contant,@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
}