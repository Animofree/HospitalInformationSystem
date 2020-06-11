package com.cjj.service.registermanage;

import java.util.List;

import com.cjj.po.Patient;
import com.cjj.vo.PatientVo;

public interface PatientService {
	public List<PatientVo> findAll();
	public int add(Patient t);
	public List<PatientVo> vagueFind(PatientVo t);
}
