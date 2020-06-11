package com.cjj.service.baseinfo;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Patienttype;

public interface PatienttypeService extends BaseService<Patienttype, Integer>{
	List<Patienttype> vagueFind(String contant,int currentpage,int pagesize);
}
