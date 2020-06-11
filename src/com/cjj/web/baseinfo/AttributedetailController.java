package com.cjj.web.baseinfo;

import java.util.List;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjj.core.common.BaseController;
import com.cjj.po.Attributedetail;
import com.cjj.service.baseinfo.AttributedetailService;

@Controller
@RequestMapping("/attributedetailController")
public class AttributedetailController extends BaseController{
	
	@Autowired
	private AttributedetailService attributedetailService;
	

	@RequestMapping("/list")
	public String list(){
		return "/personnelmanage/position/position_list";
	}
	

	@RequestMapping("/datalist")
	public String datalist(String contant,int pagesize, int currentpage){
		int sumrow = attributedetailService.vagueFind(contant, 0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<Attributedetail> list = attributedetailService.vagueFind(contant, pagingVo.getCurrentpage(), pagesize);
		request().setAttribute("positions", list);
		return "/personnelmanage/position/table/positiontable";
	}

	@RequestMapping("/toadd")
	public String toadd(){
		return "/personnelmanage/position/position_add";
	}
	
	@RequestMapping("/add")
	public String add(Attributedetail vo){
		vo.setAttributeid(4);
		vo.setIsvalid(1);
		attributedetailService.add(vo);
		request().setAttribute("resulttext", "add");
		return list();
	}
	
	@RequestMapping("/toedit")
	public String toedit(Integer id){
		Attributedetail vo = attributedetailService.findById(id);
		request().setAttribute("position", vo);
		return "/personnelmanage/position/position_edit";
	}
	
	@RequestMapping("/edit")
	public String edit(Attributedetail vo){
		attributedetailService.edit(vo);
		request().setAttribute("resulttext", "edit");
		return list();
	}
	
	@ResponseBody
	@RequestMapping(value="/delete",produces="application/json")
	public Object delete(Integer id){
		int i = attributedetailService.delete(id);
		String msg = i > 0 ? "信息已删除" : "信息未删除";
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
}
