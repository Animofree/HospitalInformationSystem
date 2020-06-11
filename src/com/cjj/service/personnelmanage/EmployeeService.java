package com.cjj.service.personnelmanage;

import java.util.List;

import com.cjj.core.common.BaseService;
import com.cjj.po.Employee;
import com.cjj.vo.EmployeeVo;

public interface EmployeeService extends BaseService<Employee, Integer>{
	public EmployeeVo login(Employee t);
	public Employee findByEpCode(String employeecode);
	public List<EmployeeVo> findIsRegister();
	public List<Employee> findRegisterP();
	public List<Employee> findChargeP();
	public EmployeeVo findUser(int id);
	public EmployeeVo findPsw(Employee t);
	public List<EmployeeVo> findByDepartmentId(int id);
	public List<EmployeeVo> vagueFind(String contant,int currentpage, int pagesize);
}
