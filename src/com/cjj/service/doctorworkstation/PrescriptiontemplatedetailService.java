package com.cjj.service.doctorworkstation;

import java.util.List;

import com.cjj.po.Prescriptiontemplatedetail;
import com.cjj.vo.PrescriptiontemplatedetailVo;

public interface PrescriptiontemplatedetailService {
	public List<PrescriptiontemplatedetailVo> findByTemplateid(int id);
	public int add(Prescriptiontemplatedetail t);
	public int deleteByPrescriptionid(int id);
}
