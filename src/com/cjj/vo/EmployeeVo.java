package com.cjj.vo;

import java.util.ArrayList;
import java.util.List;

import com.cjj.po.Employee;

public class EmployeeVo extends Employee{

	private String jobtitlename;

	private String positionname;

	private String maxeducationname;

	private String majorname;

	private String politicsstatusname;

	private String departmentname;

	private List<ResourceVo> menulist = new ArrayList<ResourceVo>();

	private List<ResourceVo> resources = new ArrayList<ResourceVo>(); 
	
	public String getJobtitlename() {
		return jobtitlename;
	}
	public void setJobtitlename(String jobtitlename) {
		this.jobtitlename = jobtitlename;
	}
	public String getPositionname() {
		return positionname;
	}
	public void setPositionname(String positionname) {
		this.positionname = positionname;
	}
	public String getMaxeducationname() {
		return maxeducationname;
	}
	public void setMaxeducationname(String maxeducationname) {
		this.maxeducationname = maxeducationname;
	}
	public String getMajorname() {
		return majorname;
	}
	public void setMajorname(String majorname) {
		this.majorname = majorname;
	}
	public String getPoliticsstatusname() {
		return politicsstatusname;
	}
	public void setPoliticsstatusname(String politicsstatusname) {
		this.politicsstatusname = politicsstatusname;
	}
	public String getDepartmentname() {
		return departmentname;
	}
	public void setDepartmentname(String departmentname) {
		this.departmentname = departmentname;
	}
	public List<ResourceVo> getMenulist() {
		return menulist;
	}
	public void setMenulist(List<ResourceVo> menulist) {
		this.menulist = menulist;
	}
	public List<ResourceVo> getResources() {
		return resources;
	}
	public void setResources(List<ResourceVo> resources) {
		this.resources = resources;
	}
}
