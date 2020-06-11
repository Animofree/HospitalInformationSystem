package com.cjj.vo;

import java.math.BigDecimal;

import com.cjj.po.Prescription;

public class PrescriptionVo extends Prescription{

	private String registercode;

	private String cardcode;

	private String patientname;

	private String employeename;

	private int departmentid;

	private String departmentname;

	private String naturename;

	private String prescriptiontypename;

	private String classifyname;

	private int registerstatus;

	private String sex;

	private String age;

	private String insuretypename;

	private String viptypename;

	private int typediscount;

	private BigDecimal beforediscountsum;

	private BigDecimal medicarepay;

	private BigDecimal behinddiscountsum;

	private int privilege;

	private BigDecimal refund;

	private String receiptcode;

	public String getRegistercode() {
		return registercode;
	}
	public void setRegistercode(String registercode) {
		this.registercode = registercode;
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
	public int getRegisterstatus() {
		return registerstatus;
	}
	public void setRegisterstatus(int registerstatus) {
		this.registerstatus = registerstatus;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getInsuretypename() {
		return insuretypename;
	}
	public void setInsuretypename(String insuretypename) {
		this.insuretypename = insuretypename;
	}
	public String getViptypename() {
		return viptypename;
	}
	public void setViptypename(String viptypename) {
		this.viptypename = viptypename;
	}
	public int getTypediscount() {
		return typediscount;
	}
	public void setTypediscount(int typediscount) {
		this.typediscount = typediscount;
	}
	public BigDecimal getBeforediscountsum() {
		return beforediscountsum;
	}
	public void setBeforediscountsum(BigDecimal beforediscountsum) {
		this.beforediscountsum = beforediscountsum;
	}
	public BigDecimal getMedicarepay() {
		return medicarepay;
	}
	public void setMedicarepay(BigDecimal medicarepay) {
		this.medicarepay = medicarepay;
	}
	public BigDecimal getBehinddiscountsum() {
		return behinddiscountsum;
	}
	public void setBehinddiscountsum(BigDecimal behinddiscountsum) {
		this.behinddiscountsum = behinddiscountsum;
	}
	public int getPrivilege() {
		return privilege;
	}
	public void setPrivilege(int privilege) {
		this.privilege = privilege;
	}
	public BigDecimal getRefund() {
		return refund;
	}
	public void setRefund(BigDecimal refund) {
		this.refund = refund;
	}
	public String getReceiptcode() {
		return receiptcode;
	}
	public void setReceiptcode(String receiptcode) {
		this.receiptcode = receiptcode;
	}
}
