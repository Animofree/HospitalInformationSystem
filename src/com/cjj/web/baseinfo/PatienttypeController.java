package com.cjj.web.baseinfo;

import java.util.List;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjj.core.common.BaseController;
import com.cjj.po.Patienttype;
import com.cjj.service.baseinfo.PatienttypeService;

@Controller
@RequestMapping("/patienttypeController")
public class PatienttypeController extends BaseController{
	
	@Autowired
	private PatienttypeService patienttypeService;
	@RequestMapping("/list")
	public String list(){
		return "/baseinfo/patienttype/patienttype_list";
	}
	@RequestMapping("/datalist")
	public String datalist(String contant,int pagesize, int currentpage){
		int sumrow = patienttypeService.vagueFind(contant, 0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<Patienttype> list = patienttypeService.vagueFind(contant, pagingVo.getCurrentpage(), pagesize);
		request().setAttribute("patienttypes", list);
		return "/baseinfo/patienttype/table/patienttypetable";
		
	}
	@RequestMapping("/toadd")
	public String toadd(){
		return "/baseinfo/patienttype/patienttype_add";
	}
	
	@RequestMapping("/add")
	public String add(Patienttype vo){
		vo.setIsvalid(1);
		patienttypeService.add(vo);
		request().setAttribute("resulttext", "add");
		return list();
	}
	
	@RequestMapping("/toedit")
	public String toedit(Integer id){
		Patienttype vo = patienttypeService.findById(id);
		request().setAttribute("patienttype", vo);
		return "/baseinfo/patienttype/patienttype_edit";
	}
	
	@RequestMapping("/edit")
	public String edit(Patienttype vo){
		patienttypeService.edit(vo);
		request().setAttribute("resulttext", "edit");
		return list();
	}

	@ResponseBody
	@RequestMapping(value="/delete",produces="application/json")
	public Object delete(Integer id){
		int i = patienttypeService.delete(id);
		String msg = i > 0 ? "信息已删除" : "信息未删除";
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
}
