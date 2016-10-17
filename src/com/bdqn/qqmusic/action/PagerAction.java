package com.bdqn.qqmusic.action;
import com.opensymphony.xwork2.ActionSupport;
public class PagerAction extends ActionSupport {
	//值
	private int maxPage;
	private int currentPage;
	//action
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		maxPage=(int)(1+Math.random()*20);currentPage=(int)(1+Math.random()*maxPage);
		//maxPage=6;currentPage=1;
		System.out.println("random maxpage:"+maxPage);
		System.out.println("random currentPage:"+currentPage);
		return "pageNum";
	}
	public int getMaxPage() {
		return maxPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public PagerAction() {
		// TODO Auto-generated constructor stub
	}
	
	public PagerAction(int maxPage, int currentPage) {
		super();
		this.maxPage = maxPage;
		this.currentPage = currentPage;
	}
	
	
	
}
