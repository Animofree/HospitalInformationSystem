package com.cjj.vo;

import java.math.BigDecimal;

import com.cjj.po.Register;

public class RegisterVo extends Register{

	private String cardcode;

	private String patientname;

	private int sex;

	private int age;

	private String tel;

	private String insuretypename;

	private String drugallergyhistory;

	private String typename;

	private BigDecimal typesum;

	private String departmentname;

	private String doctorname;

	private String registerpersonname;

	private BigDecimal sumregistersum;

	private int countregister;

	private String begintime;

	private String endtime;
	
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
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getInsuretypename() {
		return insuretypename;
	}
	public void setInsuretypename(String insuretypename) {
		this.insuretypename = insuretypename;
	}
	public String getDrugallergyhistory() {
		return drugallergyhistory;
	}
	public void setDrugallergyhistory(String drugallergyhistory) {
		this.drugallergyhistory = drugallergyhistory;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public BigDecimal getTypesum() {
		return typesum;
	}
	public void setTypesum(BigDecimal typesum) {
		this.typesum = typesum;
	}
	public String getDepartmentname() {
		return departmentname;
	}
	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}
	public String getDoctorname() {
		return doctorname;
	}
	public void setDoctorname(String doctorname) {
		this.doctorname = doctorname;
	}
	public String getRegisterpersonname() {
		return registerpersonname;
	}
	public void setRegisterpersonname(String registerpersonname) {
		this.registerpersonname = registerpersonname;
	}
	public BigDecimal getSumregistersum() {
		return sumregistersum;
	}
	public void setSumregistersum(BigDecimal sumregistersum) {
		this.sumregistersum = sumregistersum;
	}
	public int getCountregister() {
		return countregister;
	}
	public void setCountregister(int countregister) {
		this.countregister = countregister;
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
