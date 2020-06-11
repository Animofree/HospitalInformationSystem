package com.cjj.vo;

import java.math.BigDecimal;

import com.cjj.po.Prescriptiondetail;

public class PrescriptiondetailVo extends Prescriptiondetail{

	private String drugcode;

	private String drugname;

	private BigDecimal inbulksellprice;

	private String dosageunit;

	private Integer ismedicare;

	private String drugtypename;

	private BigDecimal drugsum;

	private String medicineformname;

	private String medicinefrequencyname;

	private String agenttypename;

	private String norms;
	
	public String getDrugcode() {
		return drugcode;
	}
	public void setDrugcode(String drugcode) {
		this.drugcode = drugcode;
	}
	public String getDrugname() {
		return drugname;
	}
	public void setDrugname(String drugname) {
		this.drugname = drugname;
	}
	public BigDecimal getInbulksellprice() {
		return inbulksellprice;
	}
	public void setInbulksellprice(BigDecimal inbulksellprice) {
		this.inbulksellprice = inbulksellprice;
	}
	public String getDosageunit() {
		return dosageunit;
	}
	public void setDosageunit(String dosageunit) {
		this.dosageunit = dosageunit;
	}
	public Integer getIsmedicare() {
		return ismedicare;
	}
	public void setIsmedicare(Integer ismedicare) {
		this.ismedicare = ismedicare;
	}
	public String getDrugtypename() {
		return drugtypename;
	}
	public void setDrugtypename(String drugtypename) {
		this.drugtypename = drugtypename;
	}
	public BigDecimal getDrugsum() {
		return drugsum;
	}
	public void setDrugsum(BigDecimal drugsum) {
		this.drugsum = drugsum;
	}
	public String getMedicineformname() {
		return medicineformname;
	}
	public void setMedicineformname(String medicineformname) {
		this.medicineformname = medicineformname;
	}
	public String getMedicinefrequencyname() {
		return medicinefrequencyname;
	}
	public void setMedicinefrequencyname(String medicinefrequencyname) {
		this.medicinefrequencyname = medicinefrequencyname;
	}
	public String getAgenttypename() {
		return agenttypename;
	}
	public void setAgenttypename(String agenttypename) {
		this.agenttypename = agenttypename;
	}
	public String getNorms() {
		return norms;
	}
	public void setNorms(String norms) {
		this.norms = norms;
	}
}
