package com.cjj.dao.registermanage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Register;
import com.cjj.vo.RegisterVo;

public interface RegisterMapper {
    int insert(Register record);
    List<RegisterVo> findAll();
    RegisterVo findLast();
    RegisterVo countInfo();
    List<RegisterVo> pageFindToday(@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    List<RegisterVo> vagueFind(RegisterVo record);
    List<RegisterVo> manyConditionsFindhistory(@Param("vo")RegisterVo vo,@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    RegisterVo findByid(Integer id);
    int updateByPrimaryKeySelective(Register record);
    int delete(Integer id);
    int updatestatus(Register record);
}