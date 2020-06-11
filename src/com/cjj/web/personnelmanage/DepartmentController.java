package com.cjj.web.personnelmanage;

import java.util.List;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjj.core.common.BaseController;
import com.cjj.po.Department;
import com.cjj.po.Employee;
import com.cjj.service.personnelmanage.DepartmentService;
import com.cjj.service.personnelmanage.EmployeeService;

@Controller
@RequestMapping("/departmentController")
public class DepartmentController extends BaseController{
	
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping("/list")
	public String list(){
		return "/personnelmanage/department/department_list";
	}
	
	@RequestMapping("/datalist")
	public String datalist(String contant, int pagesize, int currentpage) {
		int sumrow = departmentService.vagueFind(contant, 0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<Department> list = departmentService.vagueFind(contant, pagingVo.getCurrentpage(), pagesize);
		request().setAttribute("departments", list);
		return "/personnelmanage/department/table/departmenttable";
	}
	
	@ResponseBody
	@RequestMapping(value="/findbydid",produces="application/json")
	public Object findbydid(int did){
		Employee employee = employeeService.findById(did);
		int id = employee.getDepartmentid();
		Department vo = departmentService.findById(id);
		String dpname = vo.getDepartmentname();
		return JSONSerializer.toJSON("{'dpname':'" + dpname +"'}");
	}
	@RequestMapping("/toadd")
	public String toadd(){
		return "/personnelmanage/department/department_add";
	}
	
	@RequestMapping("/add")
	public String add(Department vo){
		vo.setIsvalid(1);
		vo.setDepartmentcode(findLastCode());
		departmentService.add(vo);
		request().setAttribute("resulttext", "add");
		return list();
	}
	
	@RequestMapping("/toedit")
	public String toedit(Integer id){
		Department vo = departmentService.findById(id);
		request().setAttribute("department", vo);
		return "/personnelmanage/department/department_edit";
	}
	
	@RequestMapping("/edit")
	public String edit(Department vo){
		if(vo.getIsregister() == null){
			vo.setIsregister(2);
		}
		departmentService.edit(vo);
		request().setAttribute("resulttext", "edit");
		return list();
	}
	
	@ResponseBody
	@RequestMapping(value="/delete",produces="application/json")
	public Object delete(Integer id){
		int i = departmentService.delete(id);
		String msg = i > 0 ? "信息已删除" : "信息未删除";
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
	
	@ResponseBody
	@RequestMapping(value="/getdptbypid",produces="application/json")
	public Object dataselect(Integer id){
		List<Department> list = departmentService.findDptByPid(id);
		return list;
	}
	
	public String findLastCode(){
		Department vo = departmentService.findLastCode();
		String code = (vo.getDepartmentcode() == null ? "0" : vo.getDepartmentcode());
		code = (Integer.parseInt(code) + 1) + "";
		code = (code.length() > 1 ? "0" + code : "00" + code);
		return code;
	}
}
