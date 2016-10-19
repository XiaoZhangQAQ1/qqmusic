package com.bdqn.qqmusic.action;

import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bdqn.qqmusic.pojo.User;
import com.bdqn.qqmusic.pojo.UserDAO;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

private User user;
private HttpSession session=ServletActionContext.getRequest().getSession();
	public String execute() throws Exception {
		System.out.println("用户提交的用户名 :"+user.getUname());
		System.out.println("用户提交的密码  :"+user.getUpwd());
		
		if (!user.getUname().equals("")&&user!=null) {
			System.out.println("用户输入非空,开始查找数据库");
			UserDAO userDAO=new UserDAO();
			List<User> ulist=userDAO.findByUname(user.getUname());
			if (ulist!=null&&ulist.size()!=0) {
				System.out.println("数据库返回用户名 :"+ulist.get(0).getUname());
				System.out.println("数据库返回用户密码 :"+ulist.get(0).getUpwd());
				User userAuth=ulist.get(0);
				if (userAuth!=null&&user.getUpwd().equals(userAuth.getUpwd())) {
					
					System.out.println("auth passed");
					session.setAttribute("Auth", userAuth);
					return SUCCESS;
				}
				else {
					System.out.println("auth failed");
					return ERROR;
				}
			}
			else {
				System.out.println("auth failed");
				return ERROR;
			}
		}
		else {
			System.out.println("auth failed");
			return ERROR;
		}
	}
		
		
		
	
	public String logout(){
		session.removeAttribute("Auth");
		return "index";
	}
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
}
