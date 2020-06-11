package com.cjj.dao.doctorworkstation;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Medicalrecordtemplate;
import com.cjj.vo.MedicalrecordtemplateVo;

public interface MedicalrecordtemplateMapper {

    int insert(Medicalrecordtemplate record);
    List<MedicalrecordtemplateVo> manyConditionsFind(@Param("vo") MedicalrecordtemplateVo record,
    		@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    Medicalrecordtemplate findRepetitionByCode(String templatecode);
    List<MedicalrecordtemplateVo> vagueFind(String contant);
    Medicalrecordtemplate findRepetitionByName(String templatename);
    Medicalrecordtemplate selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(Medicalrecordtemplate record);
    int delete(Integer id);
}