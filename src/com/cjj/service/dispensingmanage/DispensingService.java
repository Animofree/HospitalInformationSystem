package com.cjj.service.dispensingmanage;

import java.util.List;

import com.cjj.po.Dispensing;
import com.cjj.vo.DispensingVo;

public interface DispensingService {
	public List<DispensingVo> manyConditionsFind(DispensingVo t,int currentpage,int pagesize);
	public int add(Dispensing t);
	public int updatedispensingstatus(Dispensing t);
	public Dispensing findByRegisterId(int rid);

	public int delete(int id);
}
