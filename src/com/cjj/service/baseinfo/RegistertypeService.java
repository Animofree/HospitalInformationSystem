package com.cjj.service.baseinfo;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Registertype;

public interface RegistertypeService extends BaseService<Registertype, Integer>{
	public List<Registertype> findBefor();
	public List<Registertype> vagueFind(String contant,int currentpage,int pagesize);
}
