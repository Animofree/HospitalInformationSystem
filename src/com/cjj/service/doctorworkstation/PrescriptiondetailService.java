package com.cjj.service.doctorworkstation;

import java.util.List;

import com.cjj.po.Prescriptiondetail;
import com.cjj.vo.PrescriptiondetailVo;

public interface PrescriptiondetailService {
	public List<PrescriptiondetailVo> findByPrescriptionid(int id);
	public List<PrescriptiondetailVo> findZyByPrescriptionId(int id);
	public List<PrescriptiondetailVo> findXyByPrescriptionId(int id);
	public List<Prescriptiondetail> findByRegisterid(int id);
	public int add(Prescriptiondetail t);
	public int deleteByPrescriptionid(int id);
}
