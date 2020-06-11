package com.cjj.web.registermanage;

import java.util.List;
import java.util.Random;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjj.core.common.BaseController;
import com.cjj.core.util.DateUtil;
import com.cjj.po.Dispensing;
import com.cjj.po.Register;
import com.cjj.service.personnelmanage.EmployeeService;
import com.cjj.service.dispensingmanage.DispensingService;
import com.cjj.service.registermanage.RegisterService;
import com.cjj.vo.EmployeeVo;
import com.cjj.vo.RegisterVo;

@Controller
@RequestMapping("/registerController")
public class RegisterController extends BaseController{
	
	@Autowired
	private RegisterService registerService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private DispensingService dispensingService;

	@RequestMapping("/registerlist")
	public String registerlist(Integer pagesize, Integer currentpage){
		int sumrow = registerService.pageFindToday(0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<RegisterVo> list = registerService.pageFindToday(pagingVo.getCurrentpage(),pagesize);
		request().setAttribute("registers", list);
		return "/registermanage/table/registertable";
	}
	
	@RequestMapping("/add")
	public String add(Register bo){
		EmployeeVo employee = (EmployeeVo) request().getSession().getAttribute("pfuserinfo");
		
		bo.setRegistercode("GHD" + new Random().nextInt(99999999));
		bo.setRegistertime(DateUtil.timestamp());
		bo.setRegisterstatus(1);
		bo.setIsvalid(1);		
		bo.setRegisterpersonid(employee.getId());
		
		registerService.add(bo);
		request().setAttribute("resulttext", "addrgt");
		return "forward:/patientController/list.do";
	}
	
	@ResponseBody
	@RequestMapping(value="/delete",produces="application/json")
	public Object delete(Integer id){
		int i = registerService.delete(id);
		Dispensing dispensing = dispensingService.findByRegisterId(id);
		if(dispensing != null){
			dispensingService.delete(dispensing.getId());
		}
		String msg = i > 0 ? "作废成功" : "作废失败";
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
	
	@RequestMapping("/tohistory")
	public String tohistory(){
		request().setAttribute("persons", employeeService.findRegisterP());
		return "/registermanage/registerhistory_list";
	}
	
	@RequestMapping("/historydatalist")
	public String historydatalist(RegisterVo bo,Integer pagesize, Integer currentpage){
		int sumrow = registerService.manyConditionsFindhistory(bo, 0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<RegisterVo> list = registerService.manyConditionsFindhistory(bo,pagingVo.getCurrentpage(),pagesize);
		request().setAttribute("registers", list);
		return "/registermanage/table/registerhistorytable";
	}
}
