package com.bdqn.qqmusic.action.interceptor;

import java.util.Map;

import com.bdqn.qqmusic.pojo.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthInerceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("进入登录拦截器");
		ActionContext context=ai.getInvocationContext();
		Map<String, Object> session=context.getSession();
		User user=(User) session.get("Auth");
		if(user!=null){
			System.out.println("登录拦截器通过");
			return ai.invoke();
			
		}
		else {
			System.out.println("拦截成功,返回登录页面");
			return "error";
		}
		
	}

}
