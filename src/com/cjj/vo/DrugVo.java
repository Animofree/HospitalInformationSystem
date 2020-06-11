package com.cjj.vo;

import com.cjj.po.Drug;

public class DrugVo extends Drug{

	private String chargetypename;

	private String drugtypename;

	private String agenttypename;

	private String medicaretypename;

	private String suppliername;

	private String employeename;

	private Integer nowpage;

	private Integer pagesize;

	private Integer virtualinventory;
	
	public String getChargetypename() {
		return chargetypename;
	}
	public void setChargetypename(String chargetypename) {
		this.chargetypename = chargetypename;
	}
	public String getDrugtypename() {
		return drugtypename;
	}
	public void setDrugtypename(String drugtypename) {
		this.drugtypename = drugtypename;
	}
	public String getAgenttypename() {
		return agenttypename;
	}
	public void setAgenttypename(String agenttypename) {
		this.agenttypename = agenttypename;
	}
	public String getMedicaretypename() {
		return medicaretypename;
	}
	public void setMedicaretypename(String medicaretypename) {
		this.medicaretypename = medicaretypename;
	}
	public String getSuppliername() {
		return suppliername;
	}
	public void setSuppliername(String suppliername) {
		this.suppliername = suppliername;
	}
	public String getEmployeename() {
		return employeename;
	}
	public void setEmployeename(String employeename) {
		this.employeename = employeename;
	}
	public Integer getNowpage() {
		return nowpage;
	}
	public void setNowpage(Integer nowpage) {
		this.nowpage = nowpage;
	}
	public Integer getPagesize() {
		return pagesize;
	}
	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}
	public Integer getVirtualinventory() {
		return virtualinventory;
	}
	public void setVirtualinventory(Integer virtualinventory) {
		this.virtualinventory = virtualinventory;
	}	
}
