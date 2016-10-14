package com.bdqn.qqmusic.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.bdqn.qqmusic.pojo.User;
import com.bdqn.qqmusic.pojo.UserDAO;
import com.bdqn.qqmusic.service.SongListManageService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProfileAction extends ActionSupport{
	//域
	private Integer page;
	//封装
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}

	//构造器
	public ProfileAction(){}

	public ProfileAction(Integer page) {
		super();
		this.page = page;
	}




	//取出HttpServletsession和HttpServletrequest对象
	private static Map<String, Object> session=(Map<String, Object>)ActionContext.getContext().get("session");
	private static Map<String, Object> request=(Map<String, Object>)ActionContext.getContext().get("request");
	
	//由于时间的关系 user已经有 
	private static UserDAO userDAO=new UserDAO();
	private static User user=userDAO.findById(2);
	
	
				
			
			
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		SongListManageService SLMS=new SongListManageService();
		List<SongListManageService> songlist__list=new ArrayList<SongListManageService>();
		//没参数就默认第一页
		if(page==null){
			 this.setPage(1);
		}
		
		songlist__list=SLMS.showFavList(user, page);
		//request.put("key",value);
		session.put("SLMSSFav", songlist__list);
		
		
		/**************分页按钮****************/
		
		
		
		return SUCCESS;
	}
	
}
