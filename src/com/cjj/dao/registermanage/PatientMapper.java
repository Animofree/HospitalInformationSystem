package com.cjj.dao.registermanage;

import java.util.List;

import com.cjj.po.Patient;
import com.cjj.vo.PatientVo;

public interface PatientMapper {
    int insert(Patient record);
    List<PatientVo> findAll();
    List<PatientVo> vagueFind(PatientVo record);
    Patient selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(Patient record);
}