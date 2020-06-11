package com.cjj.dao.doctorworkstation;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Prescriptiontemplate;
import com.cjj.vo.PrescriptiontemplateVo;

public interface PrescriptiontemplateMapper {
    int insert(Prescriptiontemplate record);
    
    List<PrescriptiontemplateVo> manyConditionsFind(@Param("vo")PrescriptiontemplateVo record,
    		@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    List<PrescriptiontemplateVo> vagueFind(String contant);
    
    int findmaxid();
    
    PrescriptiontemplateVo findByid(Integer id);
    Prescriptiontemplate findRepetitionByName(String templatename);
    int updateByPrimaryKeySelective(Prescriptiontemplate record);

    int delete(Integer id);
}