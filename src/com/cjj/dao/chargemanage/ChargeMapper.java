package com.cjj.dao.chargemanage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Charge;
import com.cjj.vo.ChargeVo;

public interface ChargeMapper {
    int insert(Charge record);
    Charge selectByPrimaryKey(Integer id);
    List<ChargeVo> manyConditionsFindHistory(@Param("vo")ChargeVo record,
    		@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    ChargeVo findLast();
    int updateByPrimaryKeySelective(Charge record);
    int delete(Integer id);
}