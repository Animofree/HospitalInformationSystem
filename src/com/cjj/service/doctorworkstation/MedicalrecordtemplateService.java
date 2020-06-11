package com.cjj.service.doctorworkstation;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Medicalrecordtemplate;
import com.cjj.vo.MedicalrecordtemplateVo;

public interface MedicalrecordtemplateService extends BaseService<Medicalrecordtemplate, Integer>{
	public List<MedicalrecordtemplateVo> manyConditionsFind(MedicalrecordtemplateVo t,int currentpage,int pagesize);
	public Medicalrecordtemplate findRepetitionByCode(String templatecode);
	public List<MedicalrecordtemplateVo> vagueFind(String contant);
	public Medicalrecordtemplate findRepetitionByName(String templatename);
}
