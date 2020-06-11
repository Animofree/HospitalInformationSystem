package com.cjj.dao.personnelmanage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Employee;
import com.cjj.vo.EmployeeVo;

public interface EmployeeMapper {    
    EmployeeVo login(Employee record); 
    int insert(Employee record);
    List<EmployeeVo> findIsRegister();
    List<Employee> findRegisterP();
    List<Employee> findChargeP();
    EmployeeVo findUser(Integer id);    
    EmployeeVo findPsw(Employee record);
    Employee findByEpCode(String employeecode);
    List<EmployeeVo> vagueFind(@Param("contant")String contant,
    		@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
    List<EmployeeVo> findByDepartmentId(int id);
    Employee selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(Employee record);
    int delete(Integer id);
}