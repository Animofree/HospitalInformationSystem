package com.cjj.dao.dispensingmanage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Dispensing;
import com.cjj.vo.DispensingVo;

public interface DispensingMapper {
    int insert(Dispensing record);
    Dispensing selectByPrimaryKey(Integer id);
    List<DispensingVo> manyConditionsFind(@Param("vo")DispensingVo record,
    		@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    Dispensing findByRegisterId(Integer rid);

    int updateByPrimaryKeySelective(Dispensing record);

    int updatedispensingstatus(Dispensing record);

    int delete(Integer id);
}