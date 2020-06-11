package com.cjj.service.dispensingmanage;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Drug;
import com.cjj.vo.DrugVo;

public interface DrugService extends BaseService<Drug, Integer>{
	public List<DrugVo> manyConditionsFind(DrugVo t,int currentpage,int pagesize);
	public List<DrugVo> vagueFind(String contant);
	public int updateInventoryquantity(Drug t);
}
