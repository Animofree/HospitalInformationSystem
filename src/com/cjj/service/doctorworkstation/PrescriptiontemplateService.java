package com.cjj.service.doctorworkstation;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Prescriptiontemplate;
import com.cjj.vo.PrescriptiontemplateVo;

public interface PrescriptiontemplateService extends BaseService<Prescriptiontemplate, Integer>{

	public List<PrescriptiontemplateVo> manyConditionsFind(PrescriptiontemplateVo t,int currentpage,int pagesize);
	public List<PrescriptiontemplateVo> vagueFind(String contant);
	public Prescriptiontemplate findRepetitionByName(String templatename);
	public PrescriptiontemplateVo findByid(int id);
}
