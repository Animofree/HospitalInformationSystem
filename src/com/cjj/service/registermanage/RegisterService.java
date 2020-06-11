package com.cjj.service.registermanage;

import java.util.List;

import com.cjj.po.Register;
import com.cjj.vo.RegisterVo;

public interface RegisterService {
	public List<RegisterVo> findAll();
	public RegisterVo findLast();
	public RegisterVo countInfo();
	public int add(Register t);
	public List<RegisterVo> pageFindToday(int currentpage,int pagesize);
	public List<RegisterVo> vagueFind(RegisterVo t);
	public List<RegisterVo> manyConditionsFindhistory(RegisterVo vo,int currentpage,int pagesize);
	public RegisterVo findByid(int id);
	public int delete(int id);
	public int updatestatus(Register t);
}
