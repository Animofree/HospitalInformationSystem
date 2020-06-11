package com.cjj.vo;

import com.cjj.po.Prescriptiontemplate;

public class PrescriptiontemplateVo extends Prescriptiontemplate{

	private String employeename;

	private int departmentid;

	private String departmentname;

	private String naturename;

	private String prescriptiontypename;

	private String classifyname;
	
	public String getEmployeename() {
		return employeename;
	}
	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}
	public int getDepartmentid() {
		return departmentid;
	}
	public void setDepartmentid(int departmentid) {
		this.departmentid = departmentid;
	}
	public String getDepartmentname() {
		return departmentname;
	}
	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}
	public String getNaturename() {
		return naturename;
	}
	public void setNaturename(String naturename) {
		this.naturename = naturename;
	}
	public String getPrescriptiontypename() {
		return prescriptiontypename;
	}
	public void setPrescriptiontypename(String prescriptiontypename) {
		this.prescriptiontypename = prescriptiontypename;
	}
	public String getClassifyname() {
		return classifyname;
	}
	public void setClassifyname(String classifyname) {
		this.classifyname = classifyname;
	}	
}
