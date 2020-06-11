package com.cjj.vo;

import com.cjj.po.Dispensing;

public class DispensingVo extends Dispensing{

	private int chargestatus;

	private int prescriptionid;

	private int registerid;

	private String prescriptioncode;

	private String cardcode;

	private String patientname;

	private String employeename;

	private int departmentid;

	private int doctorid;

	private String begintime;

	private String endtime;
	
	public int getChargestatus() {
		return chargestatus;
	}
	public void setChargestatus(int chargestatus) {
		this.chargestatus = chargestatus;
	}
	public int getPrescriptionid() {
		return prescriptionid;
	}
	public void setPrescriptionid(int prescriptionid) {
		this.prescriptionid = prescriptionid;
	}
	public int getRegisterid() {
		return registerid;
	}
	public void setRegisterid(int registerid) {
		this.registerid = registerid;
	}
	public String getPrescriptioncode() {
		return prescriptioncode;
	}
	public void setPrescriptioncode(String prescriptioncode) {
		this.prescriptioncode = prescriptioncode;
	}
	public String getCardcode() {
		return cardcode;
	}
	public void setCardcode(String cardcode) {
		this.cardcode = cardcode;
	}
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
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
	public int getDoctorid() {
		return doctorid;
	}
	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}
	public String getBegintime() {
		return begintime;
	}
	public void setBegintime(String begintime) {
		this.begintime = begintime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
}
