package com.cjj.web.baseinfo;

import java.util.List;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjj.core.common.BaseController;
import com.cjj.po.Chargetype;
import com.cjj.service.baseinfo.ChargetypeService;

@Controller
@RequestMapping("/chargetypeController")
public class ChargetypeController extends BaseController{
	
	@Autowired
	private ChargetypeService chargetypeService;
	@RequestMapping("/list")
	public String list(){
		return "/baseinfo/chargetype/chargetype_list";
	}
	
	@RequestMapping("/datalist")
	public String datalist(String contant,int pagesize, int currentpage){
		int sumrow = chargetypeService.vagueFind(contant, 0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<Chargetype> list = chargetypeService.vagueFind(contant, pagingVo.getCurrentpage(), pagesize);
		request().setAttribute("chargetypes", list);
		return "/baseinfo/chargetype/table/chargetypetable";
	}
	
	@RequestMapping("/toadd")
	public String toadd(){
		return "/baseinfo/chargetype/chargetype_add";
	}

	@RequestMapping("/add")
	public String add(Chargetype vo){
		vo.setIsvalid(1);
		chargetypeService.add(vo);
		List<Chargetype> list = chargetypeService.findAll();
		request().setAttribute("chargetypes", list);
		request().setAttribute("resulttext", "add");
		return list();
	}
	
	@RequestMapping("/toedit")
	public String toedit(Integer id){
		Chargetype vo = chargetypeService.findById(id);
		request().setAttribute("chargetype", vo);
		return "/baseinfo/chargetype/chargetype_edit";
	}
	@RequestMapping("/edit")
	public String edit(Chargetype vo){
		chargetypeService.edit(vo);
		request().setAttribute("resulttext", "edit");
		return list();
	}
	@ResponseBody
	@RequestMapping(value="/delete",produces="application/json")
	public Object delete(Integer id){
		int i = chargetypeService.delete(id);
		String msg = i > 0 ? "信息已删除" : "信息未删除";
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
}
