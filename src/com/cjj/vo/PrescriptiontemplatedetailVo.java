package com.cjj.vo;

import com.cjj.po.Prescriptiontemplatedetail;

public class PrescriptiontemplatedetailVo extends Prescriptiontemplatedetail{

	private String drugcode;

	private String drugname;

	private String medicineformname;

	private String medicinefrequencyname;
	
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
}
