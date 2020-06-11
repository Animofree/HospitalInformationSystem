package com.cjj.dao.personnelmanage;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cjj.po.Department;

public interface DepartmentMapper {
    int insert(Department record);
    List<Department> findAll();
    List<Department> findIsRgs();
    List<Department> findDptByPid(Integer id);
    Department findLastCode();
    Department selectByPrimaryKey(Integer id);
    int updateByPrimaryKeySelective(Department record);
    int delete(Integer id);
    List<Department> vagueFind(@Param("contant")String contant,@Param("currentpage")Integer currentpage,@Param("pagesize")Integer pagesize);
}