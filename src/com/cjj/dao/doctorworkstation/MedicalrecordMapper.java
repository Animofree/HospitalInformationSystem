package com.cjj.dao.doctorworkstation;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Medicalrecord;
import com.cjj.vo.MedicalrecordVo;

public interface MedicalrecordMapper {
    int insert(Medicalrecord record);
    Medicalrecord selectByPrimaryKey(Integer id);
    Medicalrecord findRepetition(String medicalrecordcode);
    List<MedicalrecordVo> manyConditionsFind(@Param("vo")MedicalrecordVo record,
    		@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    int updateByPrimaryKeySelective(Medicalrecord record);
    int delete(Integer id);
}