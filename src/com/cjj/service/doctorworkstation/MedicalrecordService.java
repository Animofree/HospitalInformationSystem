package com.cjj.service.doctorworkstation;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Medicalrecord;
import com.cjj.vo.MedicalrecordVo;

public interface MedicalrecordService extends BaseService<Medicalrecord, Integer>{
	public List<MedicalrecordVo> manyConditionsFind(MedicalrecordVo t,int currentpage,int pagesize);
	public Medicalrecord findRepetition(String medicalrecordcode);
}
