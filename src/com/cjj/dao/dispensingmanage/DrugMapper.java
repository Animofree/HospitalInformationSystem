package com.cjj.dao.dispensingmanage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Drug;
import com.cjj.vo.DrugVo;

public interface DrugMapper {
    int insert(Drug record);
    List<DrugVo> manyConditionsFind(@Param("vo") DrugVo vo,
    		@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    
    List<DrugVo> vagueFind(String contant);

    DrugVo findByid(Integer id);

    int updateInventoryquantity(Drug record);
    
    int updateByPrimaryKeySelective(Drug record);
    
    int delete(Integer id);
}