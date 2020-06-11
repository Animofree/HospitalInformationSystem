package com.cjj.web.baseinfo;

import java.util.List;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjj.core.common.BaseController;
import com.cjj.po.Registertype;
import com.cjj.service.baseinfo.RegistertypeService;

@Controller
@RequestMapping("/registertypeController")
public class RegistertypeController extends BaseController{
	
	@Autowired
	private RegistertypeService registertypeService;
	
	@RequestMapping("/list")
	public String list(){
		return "/baseinfo/registertype/registertype_list";
	}
	
	@RequestMapping("/datalist")
	public String datalist(String contant,int pagesize, int currentpage){
		int sumrow = registertypeService.vagueFind(contant, 0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<Registertype> list = registertypeService.vagueFind(contant, pagingVo.getCurrentpage(), pagesize);
		request().setAttribute("rgstypes", list);
		return "/baseinfo/registertype/table/registertypetable";
	}

	@RequestMapping("/toadd")
	public String toadd(){
		return "/baseinfo/registertype/registertype_add";
	}

	@RequestMapping("/add")
	public String add(Registertype vo){
		vo.setIsvalid(1);
		registertypeService.add(vo);
		request().setAttribute("resulttext", "add");
		return list();
	}

	@RequestMapping("/toedit")
	public String toedit(Integer id){
		Registertype vo = registertypeService.findById(id);
		request().setAttribute("rgstype", vo);
		return "/baseinfo/registertype/registertype_edit";
	}
	
	@RequestMapping("/edit")
	public String edit(Registertype vo){
		registertypeService.edit(vo);
		request().setAttribute("resulttext", "edit");
		return list();
	}
	
	@ResponseBody
	@RequestMapping(value="/delete",produces="application/json")
	public Object delete(Integer id){
		int i = registertypeService.delete(id);
		String msg = i > 0 ? "信息已删除" : "信息未删除";
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
}
