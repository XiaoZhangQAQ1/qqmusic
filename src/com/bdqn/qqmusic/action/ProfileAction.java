package com.bdqn.qqmusic.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.bdqn.qqmusic.pojo.SongListDAO;
import com.bdqn.qqmusic.pojo.SongListManage;
import com.bdqn.qqmusic.pojo.SongListManageDAO;
import com.bdqn.qqmusic.pojo.User;
import com.bdqn.qqmusic.pojo.UserDAO;
import com.bdqn.qqmusic.service.SongListManageService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ProfileAction extends ActionSupport{
	//域
	private Integer currentPage;
	private Integer maxPage;
		//favor歌单曲面分页列表
	private List<SongListManageService> songlist__list=new ArrayList<SongListManageService>();
		//歌单列表
	private List<SongListManage> SLIlist=new ArrayList<SongListManage>();
	//取出HttpServletsession和HttpServletrequest对象
	private  Map<String, Object> session=(Map<String, Object>)ActionContext.getContext().get("session");
	private  Map<String, Object> request=(Map<String, Object>)ActionContext.getContext().get("request");
	
	//由于时间的关系 user已经有 
	private static UserDAO userDAO=new UserDAO();
	private static User user=userDAO.findById(2);		
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		SongListManageService SLMS=new SongListManageService();
		
		
		
		///Integer oldPage = (Integer)ServletActionContext.getRequest().getSession().getAttribute("currentPage");
		
		//没参数就默认第一页
		if(currentPage==null){
			 
				 this.setCurrentPage(1);
			
		}
		
		System.out.println("请求页数:"+currentPage);
		
		songlist__list=SLMS.showFavList(user, currentPage);
		//request.put("key",value);
		//将请求页放在session里
		//session.put("currentPage", currentPage);
		request.put("SLMSSFav", songlist__list);
		request.put("currentPage", currentPage);
		
		SongListManageDAO count=new SongListManageDAO();
		
		int size=SLMS.getMaxPageByGeDan(count.getFavList(user));
		if((size%20)==0){
			this.setMaxPage(size/20);
		}
		else{
			this.setMaxPage((size/20)+1);
		}
		request.put("maxPage", maxPage);
		System.out.println("最大页数为"+maxPage);
		/**************具体歌单****************/
		SLIlist=count.findByProperty("user", user);
		request.put("SLIlist", SLIlist);
		return SUCCESS;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public Integer getMaxPage() {
		return maxPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public void setMaxPage(Integer maxPage) {
		this.maxPage = maxPage;
	}
	public List<SongListManageService> getSonglist__list() {
		return songlist__list;
	}

	public void setSonglist__list(List<SongListManageService> songlist__list) {
		this.songlist__list = songlist__list;
	}

	public List<SongListManage> getSLIlist() {
		return SLIlist;
	}

	public void setSLIlist(List<SongListManage> sLIlist) {
		SLIlist = sLIlist;
	}

	public ProfileAction(){}
	public ProfileAction(Integer currentPage, Integer maxPage) {
		super();
		this.currentPage = currentPage;
		this.maxPage = maxPage;
	}

	public ProfileAction(Integer currentPage, Integer maxPage,
			List<SongListManageService> songlist__list,
			Map<String, Object> session, Map<String, Object> request) {
		super();
		this.currentPage = currentPage;
		this.maxPage = maxPage;
		this.songlist__list = songlist__list;
		this.session = session;
		this.request = request;
	}

	public ProfileAction(Integer currentPage, Integer maxPage,
			List<SongListManageService> songlist__list) {
		super();
		this.currentPage = currentPage;
		this.maxPage = maxPage;
		this.songlist__list = songlist__list;
	}

	public ProfileAction(Integer currentPage, Integer maxPage,
			List<SongListManageService> songlist__list,
			List<SongListManage> sLIlist, Map<String, Object> session,
			Map<String, Object> request) {
		super();
		this.currentPage = currentPage;
		this.maxPage = maxPage;
		this.songlist__list = songlist__list;
		SLIlist = sLIlist;
		this.session = session;
		this.request = request;
	}
	

}
