package com.cjj.web.user;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjj.core.common.BaseController;
import com.cjj.core.util.MD5Util;
import com.cjj.po.Employee;
import com.cjj.service.personnelmanage.EmployeeService;
import com.cjj.vo.EmployeeVo;

@Controller
@RequestMapping("/userinfoController")
public class UserinfoController extends BaseController{
	
	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/finduser")
	public String finduser(){
		EmployeeVo vo = (EmployeeVo) request().getSession().getAttribute("pfuserinfo");
		EmployeeVo user = employeeService.findUser(vo.getId());
		request().setAttribute("user", user);
		return "/user/userinfo";
	}

	@RequestMapping("/toeditpsw")
	public String toeditpsw(){
		EmployeeVo vo = (EmployeeVo) request().getSession().getAttribute("pfuserinfo");
		request().setAttribute("userid", vo.getId());
		return "/user/editpsw";
	}
	
	@ResponseBody
	@RequestMapping(value="/editpswnext",produces="application/json")
	public Object editpswnext(Employee bo){
		EmployeeVo vo = (EmployeeVo) request().getSession().getAttribute("pfuserinfo");
		bo.setPsw(MD5Util.GetMD5Code32(bo.getPsw()));
		bo.setId(vo.getId());
		vo = employeeService.findPsw(bo);
		String msg = (vo != null ? "true" : "��������ȷ������");
		return JSONSerializer.toJSON("{'msg':'" + msg +"'}");
	}
	

	@ResponseBody
	@RequestMapping(value="/editpsw",produces="application/json")
	public Object editpsw(Employee bo){
		EmployeeVo vo = (EmployeeVo) request().getSession().getAttribute("pfuserinfo");
		bo.setPsw(MD5Util.GetMD5Code32(bo.getPsw()));
		bo.setId(vo.getId());
		int i = employeeService.edit(bo);
		String msg = i > 0 ? "�޸ĳɹ�" : "�޸�ʧ��";

		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
}
