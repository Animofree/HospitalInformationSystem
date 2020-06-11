package com.cjj.service.doctorworkstation;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Prescription;
import com.cjj.vo.PrescriptionVo;

public interface PrescriptionService extends BaseService<Prescription, Integer>{
	public List<PrescriptionVo> manyConditionsFind(PrescriptionVo t,int currentpage,int pagesize);
	public Prescription findRepetitionByCode(String prescriptioncode);
	public List<PrescriptionVo> vagueFind(String contant);
	public PrescriptionVo findByid(int id);
}
