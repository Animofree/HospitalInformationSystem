package com.cjj.vo;

public class PagingVo {

	private int sumrow;

	private int currentpage;

	private int sumpage;

	private int beginpage;

	private int endpage;
	public PagingVo(int sumrow, int currentpage, int sumpage, int beginpage, int endpage) {
		super();
		this.sumrow = sumrow;
		this.currentpage = currentpage;
		this.sumpage = sumpage;
		this.beginpage = beginpage;
		this.endpage = endpage;
	}
	public PagingVo() {
		super();
	}
	public int getSumrow() {
		return sumrow;
	}
	public void setSumrow(int sumrow) {
		this.sumrow = sumrow;
	}
	public int getCurrentpage() {
		return currentpage;
	}
	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}
	public int getSumpage() {
		return sumpage;
	}
	public void setSumpage(int sumpage) {
		this.sumpage = sumpage;
	}
	public int getBeginpage() {
		return beginpage;
	}
	public void setBeginpage(int beginpage) {
		this.beginpage = beginpage;
	}
	public int getEndpage() {
		return endpage;
	}
	public void setEndpage(int endpage) {
		this.endpage = endpage;
	}

}
