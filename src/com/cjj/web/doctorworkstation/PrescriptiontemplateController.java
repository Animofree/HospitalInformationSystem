package com.cjj.web.doctorworkstation;

import java.util.List;

import net.sf.json.JSONSerializer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjj.core.common.BaseController;
import com.cjj.po.Prescriptiontemplate;
import com.cjj.po.Prescriptiontemplatedetail;
import com.cjj.service.baseinfo.AttributedetailService;
import com.cjj.service.personnelmanage.DepartmentService;
import com.cjj.service.personnelmanage.EmployeeService;
import com.cjj.service.doctorworkstation.PrescriptiontemplateService;
import com.cjj.service.doctorworkstation.PrescriptiontemplatedetailService;
import com.cjj.vo.PrescriptiontemplateVo;
import com.cjj.vo.PrescriptiontemplatedetailVo;

@Controller
@RequestMapping("/prescriptiontemplateController")
public class PrescriptiontemplateController extends BaseController{

	@Autowired
	private PrescriptiontemplateService prescriptiontemplateService;
	@Autowired
	private AttributedetailService attributedetailService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private DepartmentService departmentService;
	@Autowired
	private PrescriptiontemplatedetailService prescriptiontemplatedetailService;
	
	@RequestMapping("/list")
	public String list(){
		request().setAttribute("prescriptiontypes", attributedetailService.findByAttributeid(15));
		request().setAttribute("departments", departmentService.findIsRgs());
		request().setAttribute("doctors", employeeService.findIsRegister());
		return "/doctorworkstation/prescription/prescriptiontemplate_list";
	}
	
	@RequestMapping("/datalist")
	public String datalist(PrescriptiontemplateVo bo,Integer pagesize, Integer currentpage){		
		int sumrow = prescriptiontemplateService.manyConditionsFind(bo, 0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<PrescriptiontemplateVo> list = prescriptiontemplateService.manyConditionsFind(bo,pagingVo.getCurrentpage(),pagesize);
		request().setAttribute("templates", list);
		return "/doctorworkstation/prescription/table/prescriptiontemplatetable";
	}
	
	@RequestMapping("/detailtablelist")
	public String detailtablelist(int id){
		List<PrescriptiontemplatedetailVo> list = prescriptiontemplatedetailService.findByTemplateid(id);
		request().setAttribute("details", list);
		return "/doctorworkstation/prescription/table/prescriptiontemplatedetailtable";
	}
	
	public String toset(String link){
		request().setAttribute("naturenames", attributedetailService.findByAttributeid(14));
		request().setAttribute("prescriptiontypes", attributedetailService.findByAttributeid(15));
		request().setAttribute("classifynames", attributedetailService.findByAttributeid(16));
		request().setAttribute("doctors", employeeService.findIsRegister());
		request().setAttribute("medicineforms", attributedetailService.findByAttributeid(24));
		request().setAttribute("medicinefrequencys", attributedetailService.findByAttributeid(25));
		return link;
	}

	@RequestMapping("/toadd")
	public String toadd(){
		return toset("/doctorworkstation/prescription/prescriptiontemplate_add");
	}

	@RequestMapping("/add")
	public String add(Prescriptiontemplate bo){		
		bo.setIsvalid(1);
		int i = prescriptiontemplateService.add(bo);
		for (Prescriptiontemplatedetail dbo : bo.getDetail()) {
			if(dbo.getDrugid() != null){
				dbo.setPrescriptiontemplateid(i);
				dbo.setIsvalid(1);
				prescriptiontemplatedetailService.add(dbo);
			}
		}
		request().setAttribute("resulttext", "add");
		return list();
	}
	
	@RequestMapping("/toedit")
	public String toedit(int id){
		request().setAttribute("prescription", prescriptiontemplateService.findByid(id));
		request().setAttribute("details", prescriptiontemplatedetailService.findByTemplateid(id));
		return toset("/doctorworkstation/prescription/prescriptiontemplate_edit");
	}

	@RequestMapping("/edit")
	public String edit(Prescriptiontemplate bo){		
		int i = prescriptiontemplateService.edit(bo);
		prescriptiontemplatedetailService.deleteByPrescriptionid(i);
		for (Prescriptiontemplatedetail dbo : bo.getDetail()) {
			if(dbo.getDrugid() != null){
				dbo.setPrescriptiontemplateid(i);
				dbo.setIsvalid(1);
				prescriptiontemplatedetailService.add(dbo);
			}
		}
		request().setAttribute("resulttext", "edit");
		return list();
	}

	@ResponseBody
	@RequestMapping(value="/delete",produces="application/json")
	public Object delete(Integer id){
		int i = prescriptiontemplateService.delete(id);
		prescriptiontemplatedetailService.deleteByPrescriptionid(i);
		String msg = i > 0 ? "信息已删除" : "信息未删除";
		return JSONSerializer.toJSON("{'msg':'"+ msg +"'}");
	}
	
	@RequestMapping("/prescriptdetailtablelist")
	public String prescriptdetailtablelist(int id){
		List<PrescriptiontemplatedetailVo> list = prescriptiontemplatedetailService.findByTemplateid(id);
		request().setAttribute("details", list);
		return "/doctorworkstation/prescription/table/detailtable";
	}
}
