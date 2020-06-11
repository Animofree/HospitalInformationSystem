package com.cjj.web.personnelmanage;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cjj.core.common.BaseController;
import com.cjj.core.util.DateUtil;
import com.cjj.core.util.FileLoadUtil;
import com.cjj.core.util.MD5Util;
import com.cjj.po.Employee;
import com.cjj.service.baseinfo.AttributedetailService;
import com.cjj.service.personnelmanage.DepartmentService;
import com.cjj.service.personnelmanage.EmployeeService;
import com.cjj.vo.EmployeeVo;

@Controller
@RequestMapping("/employeeController")
public class EmployeeController extends BaseController{
	
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private AttributedetailService attributedetailService;

	@RequestMapping("/list")
	public String list(){
		return "/personnelmanage/employee/employee_list";
	}
	
	@RequestMapping("/datalist")
	public String datalist(String contant,Integer currentpage, Integer pagesize){
		int sumrow = employeeService.vagueFind(contant, 0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<EmployeeVo> list = employeeService.vagueFind(contant,pagingVo.getCurrentpage(),pagesize);
		request().setAttribute("employees", list);
		return "/personnelmanage/employee/table/employeetable";
	}
	
	@RequestMapping("/toadd")
	public String toadd(){
		request().setAttribute("departments", departmentService.findAll());
		request().setAttribute("maxeducations", attributedetailService.findByAttributeid(1));
		request().setAttribute("politicsstatuss", attributedetailService.findByAttributeid(2));
		request().setAttribute("positions", attributedetailService.findByAttributeid(4));
		request().setAttribute("jobtitles", attributedetailService.findByAttributeid(5));
		request().setAttribute("majors", attributedetailService.findByAttributeid(10));
		return "/personnelmanage/employee/employee_add";
	}
	
	@RequestMapping("/add")
	public String add(Employee bo,@RequestParam(value="file",required=true)MultipartFile myfile) throws IOException{
		String picture = FileLoadUtil.file_load(myfile,request());
		if(picture != ""){
			bo.setPicture(picture);
		}else{
			bo.setPicture("http://127.0.0.1:8089/hospitalmanage/initial.jpg");
		}
		bo.setIsvalid(1);
		bo.setPsw(MD5Util.GetMD5Code32("123"));
		employeeService.add(bo);
		request().setAttribute("resulttext", "add");
		return list();
	}
	@InitBinder
	protected void initBinder(ServletRequestDataBinder binder) throws Exception {
		binder.registerCustomEditor(Date.class, new DateUtil());
	}
	
	@RequestMapping("/toedit")
	public String toedit(int id){
		request().setAttribute("departments", departmentService.findAll());
		request().setAttribute("maxeducations", attributedetailService.findByAttributeid(1));
		request().setAttribute("politicsstatuss", attributedetailService.findByAttributeid(2));
		request().setAttribute("positions", attributedetailService.findByAttributeid(4));
		request().setAttribute("jobtitles", attributedetailService.findByAttributeid(5));
		request().setAttribute("majors", attributedetailService.findByAttributeid(10));
		Employee bo = employeeService.findById(id);
		request().setAttribute("employee", bo);
		return "/personnelmanage/employee/employee_edit";
	}
	
	@RequestMapping("/edit")
	public String edit(Employee bo,@RequestParam(value="file",required=true)MultipartFile myfile) throws IOException{		
		if(!myfile.isEmpty()){
			String picture = FileLoadUtil.file_load(myfile,request());
			bo.setPicture(picture);
		}
		employeeService.edit(bo);
		request().setAttribute("resulttext", "edit");
		return list();
	}

	@ResponseBody
	@RequestMapping(value="/resetpsw",produces="application/json")
	public Object resetpsw(Employee bo){
		bo.setPsw(MD5Util.GetMD5Code32(bo.getPsw()));
		int i = employeeService.edit(bo);
		String msg = i > 0 ? "密码重置成功" : "密码重置失败";
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
	

	@ResponseBody
	@RequestMapping(value="/delete",produces="application/json")
	public Object delete(Integer id){
		int i = employeeService.delete(id);
		String msg = i > 0 ? "信息已删除" : "信息未删除";
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
}
