<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'loginForm.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/loginForm.css">
<style type="text/css">
	.web_qr_login{
		position: relative;top: -100;
	}
</style>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	
</script>
</head>
<div class="login" id="login">
	<div class="header"></div>
	

	<div class="web_qr_login" id="web_qr_login" style="display: block;">
		<div class="web_qr_login_show" id="web_qr_login_show">
			<div class="web_login" id="web_login">
				<div class="tips" id="tips">

					<div class="title" id="title_2">帐号密码登录</div>
					推荐使用<a class="switch_btn_focus link_tips" hideFocus=true
						id="switcher_qlogin" href="javascript:void(0);" tabindex="7">快速安全登录</a>，防止盗号。
					
				</div>
				
				<div class="login_form">
					<form id="loginform" name="loginform" action="userAction" method="post" target="_parent"
						style="margin:0px">
						<div class="uinArea" id="uinArea">
							<label class="input_tips" id="uin_tips" for="u"
								data-onlyqq="QQ号码">支持QQ号/邮箱/手机号登录</label>
							<div class="inputOuter">
								<input type="text" class="inputstyle" id="u" name="user.uname" value=""
									tabindex="1"> 
							</div>
						</div>
						<div class="pwdArea" id="pwdArea">
							<label class="input_tips" id="pwd_tips" for="p">密码</label>
							<div class="inputOuter">
								<input type="password" class="inputstyle password" id="p"
									name="user.upwd" maxlength="16" tabindex="2">
							</div>
						</div>

						<div class="submit">
							<a class="login_button" href="javascript:void(0);"
								hidefocus="true"><input type="submit" tabindex="6"
								value="登 录" class="btn" id="login_button"> </a>
						</div>
					</form>
				</div>
			</div>
			<div class="bottom" id="bottom_web">
				<a href="http://ptlogin2.qq.com/ptui_forgetpwd" class="link"
					id="forgetpwd" target="_blank">忘了密码？</a> <span class="dotted">|</span>
				<a href="http://ptlogin2.qq.com/j_newreg_url" class="link"
					target="_blank">注册新帐号</a> <span class="dotted">|</span> <a
					class="link" id="feedback_web"
					href="http://support.qq.com/write.shtml?guest=1&fid=713&SSTAG=hailunna"
					target="_blank">意见反馈</a>
			</div>
		</div>
	</div>
</div>
</html>
