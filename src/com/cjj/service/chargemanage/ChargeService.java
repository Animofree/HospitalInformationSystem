package com.cjj.service.chargemanage;

import java.util.List;

import com.cjj.po.Charge;
import com.cjj.vo.ChargeVo;

public interface ChargeService {
	public ChargeVo findLast();
	public int add(Charge t);
	public List<ChargeVo> manyConditionsFindHistory(ChargeVo t,int currentpage,int pagesize);
	public int delete(int id);
}
