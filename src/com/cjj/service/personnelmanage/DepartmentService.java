package com.cjj.service.personnelmanage;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Department;

public interface DepartmentService extends BaseService<Department, Integer>{
	public List<Department> findIsRgs();

	public List<Department> findDptByPid(Integer id);

    public Department findLastCode();

	public List<Department> vagueFind(String contant,int currentpage,int pagesize);
}
