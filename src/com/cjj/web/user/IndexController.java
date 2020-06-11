package com.cjj.web.user;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjj.core.common.BaseController;
import com.cjj.core.util.MD5Util;
import com.cjj.po.Employee;
import com.cjj.po.Role;
import com.cjj.service.personnelmanage.EmployeeService;
import com.cjj.service.system.ResourceService;
import com.cjj.service.system.RoleService;
import com.cjj.vo.EmployeeVo;

@Controller
@RequestMapping("/indexController")
public class IndexController extends BaseController{
	
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private RoleService roleService;
	@Autowired
	private ResourceService resourceService;
	@RequestMapping("/toinitial")
	public String toinitial(){
		return "/user/initial";
	}
	
	@RequestMapping("/tologin")
	public String tologin(){
		Object obj = request().getSession().getAttribute("pfuserinfo");
		if(obj != null){
			return "/user/index";
		}
		request().getSession().invalidate();
		return "/user/login";
	}
	
	@ResponseBody
	@RequestMapping(value="/verify", produces="application/json")
	public Object verify(String employeecode){
		Employee vo = employeeService.findByEpCode(employeecode);
		if(vo != null){
			return JSONSerializer.toJSON("{'valid':true}");
		}
		return JSONSerializer.toJSON("{'valid':false}");
	}
	
	@ResponseBody
	@RequestMapping(value="/login", produces="application/json")
	public Object login(Employee bo){		
		String msg = "";
		bo.setPsw(MD5Util.GetMD5Code32(bo.getPsw()));
		EmployeeVo vo = employeeService.login(bo);
		if(vo != null){
			Role role = roleService.findByEpId(vo.getId());
			if(role != null){
				vo.setMenulist(resourceService.findFByPids(role.getResourceid()));
				vo.setResources(resourceService.findByPids(role.getResourceid()));
				request().getSession().setAttribute("pfuserinfo", vo);
				msg = "1";
			}else{
				msg = "您没有该系统权限，请联系管理员！";
			}
		}else{
			msg = "密码错误，请重新输入！";
		}
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
	
	@RequestMapping("/toindex")
	public String toindex(){
		String link = tologin();
		return link;
	}
	
	@RequestMapping("/loginout")
	public String loginout(){
		request().getSession().invalidate();
		return "/user/login";
	}
}
