package com.cjj.vo;

import com.cjj.po.Patient;

public class PatientVo extends Patient{

	private String patienttypename;

	private String maritalstatusname;

	private String insuretypename;

	private String viptypename;
	
	public String getPatienttypename() {
		return patienttypename;
	}
	public void setPatienttypename(String patienttypename) {
		this.patienttypename = patienttypename;
	}
	public String getMaritalstatusname() {
		return maritalstatusname;
	}
	public void setMaritalstatusname(String maritalstatusname) {
		this.maritalstatusname = maritalstatusname;
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
}
