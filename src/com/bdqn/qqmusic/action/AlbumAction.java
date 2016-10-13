package com.bdqn.qqmusic.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.bdqn.qqmusic.servlet.AlbumServlet;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AlbumAction extends ActionSupport {
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		/**
		 * 这个音乐库的action类的execute方法只是为了让大家可以继续使用AlbumServlet类
		 * 流程如下:
		 * ServletActionContext.get方法获取HttpServletRequest request,HttpServletResponse response
		 * 			↓
		 * 丢给servlet的doGet去引用
		 * 			↓
		 * DAO把数据放进session,servlet.doGet完成
		 * 			↓
		 * action result跳去ablum.jsp
		 * 			↓
		 * ablum.jsp显示层获取session作用域中的数据
		 * 
		 * 这样大家可以继续在servlet写一些方法,当用/ablum路径访问时
		 * 可以继续调用AlbumServlet,如果大家觉得这样太迂回,可以改
		 */
		AlbumServlet albumServlet=new AlbumServlet();
		HttpServletRequest req=ServletActionContext.getRequest();
		HttpServletResponse resp=ServletActionContext.getResponse();
		albumServlet.doGet(req, resp);
		System.out.println("AlbumAction.execute()");
		return SUCCESS;
	}

}
