package com.cjj.service.baseinfo;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Attributedetail;

public interface AttributedetailService extends BaseService<Attributedetail, Integer>{
	public List<Attributedetail> findByAttributeid(int id);
	public List<Attributedetail> vagueFind(String contant,int currentpage,int pagesize);
}
