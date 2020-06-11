package com.cjj.service.baseinfo;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Chargetype;

public interface ChargetypeService extends BaseService<Chargetype, Integer>{
	public List<Chargetype> vagueFind(String contant,int currentpage,int pagesize);
}
