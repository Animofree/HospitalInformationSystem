package com.cjj.web.chargemanage;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cjj.core.common.BaseController;
import com.cjj.core.util.DateUtil;
import com.cjj.po.Charge;
import com.cjj.po.Dispensing;
import com.cjj.po.Prescription;
import com.cjj.po.Register;
import com.cjj.service.personnelmanage.EmployeeService;
import com.cjj.service.chargemanage.ChargeService;
import com.cjj.service.dispensingmanage.DispensingService;
import com.cjj.service.doctorworkstation.PrescriptionService;
import com.cjj.service.registermanage.RegisterService;
import com.cjj.vo.ChargeVo;
import com.cjj.vo.EmployeeVo;
import com.cjj.vo.PrescriptionVo;

@Controller
@RequestMapping("/chargeController")
public class ChargeController extends BaseController{
	
	@Autowired
	private PrescriptionService prescriptionService;
	@Autowired
	private ChargeService chargeService;
	@Autowired
	private RegisterService registerService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private DispensingService dispensingService;

	@RequestMapping("/list")
	public String list(){
		request().setAttribute("lastcharge", chargeService.findLast());
		return "/chargemanage/charge";
	}
	

	@RequestMapping("/prescripttablelist")
	public String prescripttablelist(String contant){
		List<PrescriptionVo> list = prescriptionService.vagueFind(contant);
		request().setAttribute("prescriptions", list);
		return "/chargemanage/table/prescriptiontable";
	}
	
	@RequestMapping("/add")
	public String add(Charge charge){
		String resulttext = "";
		EmployeeVo employee = (EmployeeVo) request().getSession().getAttribute("pfuserinfo");
		charge.setInvoicecode("FP" + new Random().nextInt(99999999));
		charge.setOperationpersonid(employee.getId());
		charge.setChargetime(DateUtil.timestamp());
		charge.setIsvalid(1);
		if(charge.getChargestatus() == 1){
			resulttext = "add";
		}else{
			resulttext = "edit";
		}
		int chargeid = chargeService.add(charge);
		Prescription vo = prescriptionService.findById(charge.getPrescriptionid());
		Register register = new Register();
		// 测试charge
		if(charge.equals(null)) 
			System.out.println("Charge为空");
		
		register.setId(vo.getRegisterid());
		register.setRegisterstatus(charge.getChargestatus() == 1 ? 4 : 7);  
		// 测试register
		if(register.equals(null)) {
			System.out.println("register为空!!");
		} else {
			System.out.println("register不为空");
			System.out.println("-----" + register.getId() + "-----");
			System.out.println("-----" + register.getRegisterstatus() + "-----");
		}
		
		if(register.getRegisterstatus() == 4){
			Dispensing dispensing = new Dispensing();
			dispensing.setChargeid(chargeid);
			dispensing.setDispensingstatus(1);
			dispensing.setIsvalid(1);
			dispensingService.add(dispensing);
		}
		registerService.updatestatus(register);
		request().setAttribute("resulttext", resulttext);
		return list();
	}
	@RequestMapping("/tohistory")
	public String tohistory(){
		request().setAttribute("operations", employeeService.findChargeP());
		return "/chargemanage/chargehistory_list";
	}
	
	@RequestMapping("/historydatalist")
	public String historydatalist(ChargeVo bo,Integer pagesize, Integer currentpage){
		int sumrow = chargeService.manyConditionsFindHistory(bo, 0, 99999999).size();
		setPaging(pagesize, sumrow, currentpage);
		List<ChargeVo> list = chargeService.manyConditionsFindHistory(bo,pagingVo.getCurrentpage(),pagesize);
		request().setAttribute("chargehistorys", list);
		return "/chargemanage/table/chargehistorytable";
	}
}
