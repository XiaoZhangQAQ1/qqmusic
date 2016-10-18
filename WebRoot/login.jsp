<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Language" content="zh-cn">
<meta name="keywords"
	content="音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌">
<meta name="description"
	content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选">
<meta name="mobile-agent" content="format==[html5];url=//m.y.qq.com">
<meta name="applicable-device" content="pc">
<title>我的音乐</title>

<link rel="stylesheet" href="css/jquery-webox.css"  type="text/css">
<link rel="stylesheet" href="css/layout0927.css">
<link rel="stylesheet" href="css/profile.css">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/jquery-webox.js"></script>
<!-- 点击弹出iframe -->
	<script type="text/javascript">
	$(document).ready(function(){
		$('.js_login').click(function(){
			$.webox({
			height:680,
			width:600,
			bgvisibel:true,
			title:'  ',
			iframe:'http://localhost:8080/qqmusic/loginForm.jsp'
			});
		});
	});
	</script>





</head>
<body class="os_mac">

	<!-- 头部 S -->

	
	<div class="mod_header">
		<div class="section_inner">
			<h1 class="qqmusic_title">
				<a href="http://y.qq.com/"><img
					srcset="//y.gtimg.cn/mediastyle/yqq/img/logo@2x.png 2x"
					src="images/logo.png" alt="QQ音乐" class="qqmusic_logo">
				</a>
			</h1>
			<!-- 导航 S -->
			<!-- 
            当前态 & hover 用 top_nav__link--current
            参考Im.qq.com的交互 
        -->
			<ul class="mod_top_nav" role="nav">
				<li class="top_nav__item top_nav__item--room"><a
					href="indexAction" class="top_nav__link" title="音乐馆">音乐馆<i
						class="top_nav__txt"></i> </a>
				</li>
				<li class="top_nav__item top_nav__item--mine"><a
					href="http://y.qq.com/portal/profile.html"
					class="top_nav__link top_nav__link--current" title="我的音乐">我的音乐<i
						class="top_nav__txt"></i> </a>
				</li>
				<li class="top_nav__item top_nav__item--down"><a
					href="http://y.qq.com/download/index.html" class="top_nav__link"
					title="下载客户端" target="_blank">下载客户端<i class="top_nav__txt"></i>
				</a>
				</li>
				<li class="top_nav__item top_nav__item--vip"><a
					href="http://y.qq.com/vipportal/" class="top_nav__link" title="VIP"
					target="_blank">VIP<i class="top_nav__txt"></i> </a>
				</li>

			</ul>
			<ul class="mod_top_subnav" style="display:none;">
				<li class="top_subnav__item"><a href="http://y.qq.com/"
					class="top_subnav__link">首页</a>
				</li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/singerlist.html"
					class="top_subnav__link">歌手</a>
				</li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/album_lib.html#t9=2"
					class="top_subnav__link">专辑</a>
				</li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/toplist/4.html"
					class="top_subnav__link">排行榜</a>
				</li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/playlist.html"
					class="top_subnav__link">歌单广场</a>
				</li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/mv_lib.html#t6=2"
					class="top_subnav__link">MV</a>
				</li>
			</ul>
			<!-- 导航 E -->
			<div class="mod_top_search" role="search">
				<div class="mod_search_input">
					<input class="search_input__input" type="text" placeholder="关键字搜索"
						accesskey="s">
					<button class="search_input__btn">
						<i class="icon_search"></i><span class="icon_txt">搜索</span>
					</button>
				</div>
				<div class="js_smartbox">
					<div class="mod_search_other" style="">
						<div class="search_hot">
							<dl class="search_hot__list" aria-labelledy="search_hot__tit">
								<dt class="search_hot__tit">热门搜索</dt>
								<dd>

									<a href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="周杰伦"> <span class="search_hot__number">1</span>
										<span class="search_hot__name">周杰伦</span> <span
										class="search_hot__listen">87万</span> </a> <a href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="薛之谦"> <span class="search_hot__number">2</span>
										<span class="search_hot__name">薛之谦</span> <span
										class="search_hot__listen">81.4万</span> </a> <a
										href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="TFBOYS"> <span class="search_hot__number">3</span>
										<span class="search_hot__name">TFBOYS</span> <span
										class="search_hot__listen">71.7万</span> </a> <a
										href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="蓝瘦香菇"> <span class="search_hot__number">4</span>
										<span class="search_hot__name">蓝瘦香菇</span> <span
										class="search_hot__listen">56.4万</span> </a> <a
										href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="鹿晗"> <span class="search_hot__number">5</span>
										<span class="search_hot__name">鹿晗</span> <span
										class="search_hot__listen">47万</span> </a>

								</dd>

							</dl>
						</div>

						<div class="search_history">
							<dl class="search_history__list">
								<dt class="search_history__tit">
									搜索历史<a href="javascript:;"
										class="search_history__clear js_smartbox_delete_all"><i
										class="icon_history_clear"></i><span class="icon_txt">清空</span>
									</a>
								</dt>

								<dd class="search_history__item">
									<a href="javascript:;"
										class="search_history__link js_smartbox_search js_left"
										data-name="METALLICA one">METALLICA one</a> <a
										href="javascript:;"
										class="search_history__delete js_smartbox_delete"
										data-name="METALLICA one"><i
										class="search_history__icon_delete"></i><span class="icon_txt">删除</span>
									</a>
								</dd>

								<dd class="search_history__item">
									<a href="javascript:;"
										class="search_history__link js_smartbox_search js_left"
										data-name="red hot chili pepper hey">red hot chili pepper
										hey</a> <a href="javascript:;"
										class="search_history__delete js_smartbox_delete"
										data-name="red hot chili pepper hey"><i
										class="search_history__icon_delete"></i><span class="icon_txt">删除</span>
									</a>
								</dd>

								<dd class="search_history__item">
									<a href="javascript:;"
										class="search_history__link js_smartbox_search js_left"
										data-name="林峰">林峰</a> <a href="javascript:;"
										class="search_history__delete js_smartbox_delete"
										data-name="林峰"><i class="search_history__icon_delete"></i><span
										class="icon_txt">删除</span> </a>
								</dd>

								<dd class="search_history__item">
									<a href="javascript:;"
										class="search_history__link js_smartbox_search js_left"
										data-name="Dig Out Your Soul">Dig Out Your Soul</a> <a
										href="javascript:;"
										class="search_history__delete js_smartbox_delete"
										data-name="Dig Out Your Soul"><i
										class="search_history__icon_delete"></i><span class="icon_txt">删除</span>
									</a>
								</dd>

								<dd class="search_history__item">
									<a href="javascript:;"
										class="search_history__link js_smartbox_search js_left"
										data-name="苏维埃进行曲">苏维埃进行曲</a> <a href="javascript:;"
										class="search_history__delete js_smartbox_delete"
										data-name="苏维埃进行曲"><i class="search_history__icon_delete"></i><span
										class="icon_txt">删除</span> </a>
								</dd>

							</dl>
						</div>
					</div>
				</div>
			</div>
			<div class="header__opt">

				<!-- 未登录 -->
				<span class="mod_top_login"> <a
					class="top_login__link js_logined"
					href="javascript:void(0);"
					style="display:none;"></a> <a class="top_login__link js_login"
					data-stat="y_new.top.login" href="javascript:;"> 登录 </a> <a
					class="login__link header__link js_login"
					data-stat="y_new.top.login" href="javascript:;">登录</a> <a
					class="mod_btn_green top_login__btn_vip js_openvip"
					data-aid="music.pc.20316.newyqqtop"
					data-stat="music.20316.btnclick.pc" href="javascript:;">开通绿钻豪华版</a>
					<a class="mod_btn top_login__btn_vip js_openmusic"
					data-aid="music.pc.20317.newyqqtop"
					data-stat="music.20317.btnclick.pc" href="javascript:;">开通付费包</a> </span>

				<!-- 用户信息 -->
				<div class="popup_user" style=""></div>
			</div>
		</div>
	</div>
	<!-- 头部 E -->


	<div class="js_mod_profile_unlogin play" style="">
		<div class="mod_profile_unlogin">
			<div class="section_inner">
				<h2 class="profile_unlogin__tit">
					<div class="icon_txt">听我喜欢听的歌</div>
				</h2>
				<div class="profile_unlogin__desc"></div>
				<a  id="testIFRAME"href="javascript:void(0);;" 
					class="mod_btn_green profile_unlogin__btn js_login ">立即登录</a>
			</div>
		</div>
	</div>
	
	<div class="mod_profile js_user_data" style="display:none;"></div>

	<div class="main" style="display:none;">
		<div class="mod_tab profile_nav" role="nav" id="nav">
			<a class="mod_tab__item mod_tab__current" href="javascript:;"
				id="like_tab" data-tab="like" data-stat="y_new.profile.tab.like">我喜欢</a>
			<a class="mod_tab__item" href="javascript:;" id="buy_tab"
				data-tab="buy" data-stat="y_new.profile.tab.digital_album">我的数字专辑</a>
			<a class="mod_tab__item" href="javascript:;" id="create_tab"
				data-tab="create" data-stat="y_new.profile.tab.create_playlist">我创建的歌单</a>
			<a class="mod_tab__item" href="javascript:;" id="focus_tab"
				data-tab="focus" data-stat="y_new.profile.tab.focus">关注</a> <a
				class="mod_tab__item" href="javascript:;" id="fans_tab"
				data-tab="fans" data-stat="y_new.profile.tab.fans">粉丝</a>
		</div>

		<div class="js_box" id="like_box">
			<div class="mod_tab" role="nav">
				<a class="mod_tab__item mod_tab__current" href="javascript:;"
					data-tab="like_song" data-stat="y_new.profile.like.tab.song">歌曲</a>
				<a class="mod_tab__item" href="javascript:;"
					data-tab="like_playlist"
					data-stat="y_new.profile.like.tab.playlist">歌单</a> <a
					class="mod_tab__item" href="javascript:;" data-tab="like_album"
					data-stat="y_new.profile.like.tab.album">专辑</a> <a
					class="mod_tab__item" href="javascript:;" data-tab="like_mv"
					data-stat="y_new.profile.like.tab.mv">MV</a>
			</div>
			<div class="profile_cont">
				<div class="js_sub" id="like_song_box"></div>
				<div class="js_sub" style="display:none;" id="like_playlist_box"></div>
				<div class="js_sub" style="display:none;" id="like_album_box"></div>
				<div class="js_sub" style="display:none;" id="like_mv_box"></div>
			</div>
		</div>
		<!-- 歌单 -->
		<div class="js_box profile_cont" id="buy_box" style="display:none;">
		</div>
		<!-- 歌单 -->
		<div class="js_box profile_cont" id="create_box" style="display:none;">
		</div>
		<!-- 关注 -->
		<div class="js_box" id="focus_box" style="display:none;">
			<div class="mod_tab" role="nav">
				<a class="mod_tab__item mod_tab__current" href="javascript:;"
					data-tab="focus_singer" data-stat="y_new.profile.focus.tab.singer">歌手</a>
				<a class="mod_tab__item" href="javascript:;" data-tab="focus_user"
					data-stat="y_new.profile.focus.tab.user">用户</a>
			</div>
			<div class="profile_cont">
				<div class="js_sub" id="focus_singer_box"></div>
				<div class="js_sub" style="display:none;" id="focus_user_box"></div>
			</div>
		</div>
		<div class="js_box profile_cont" id="fans_box" style="display:none;">
		</div>
	</div>
	<div id="locked" style="display:none;"></div>

	<div class="footer" role="footer">
		<div class="section_inner">
			<div class="footer_info">

				<div class="footer_download">
					<h3 class="footer_tit">下载QQ音乐客户端</h3>
					<ul class="footer_download_list">
						<li class="footer_download_list__item"><a
							href="http://y.qq.com/download/" class="js_footer_down"
							data-type="pc" data-stat="y_new.footer.download.pc"><i
								class="icon_qm_pc"><span class="icon_txt">QQ音乐</span> </i>PC版</a></li>
						<li class="footer_download_list__item"><a
							href="http://y.qq.com/download/" class="js_footer_down"
							data-type="mac" data-stat="y_new.footer.download.mac"><i
								class="icon_qm_mac"><span class="icon_txt">QQ音乐</span> </i>Mac版</a>
						</li>
						<li class="footer_download_list__item"><a
							href="http://y.qq.com/download/" class="js_footer_down"
							data-type="andriod" data-stat="y_new.footer.download.andriod"><i
								class="icon_qm_android"><span class="icon_txt">QQ音乐</span> </i>Android版</a>
						</li>
						<li class="footer_download_list__item"><a
							href="http://y.qq.com/download/" class="js_footer_down"
							data-type="iphone" data-stat="y_new.footer.download.iphone"><i
								class="icon_qm_iphone"><span class="icon_txt">QQ音乐</span> </i>iPhone版</a>
						</li>
					</ul>
				</div>

				<div class="footer_product">
					<h3 class="footer_tit">特色产品</h3>
					<ul class="footer_product_list">
						<li
							class="footer_product_list__item footer_product_list__item--pic"><a
							href="http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.k"><i class="icon_qm_kg"></i>全民K歌</a>
						</li>
						<li
							class="footer_product_list__item footer_product_list__item--pic"><a
							href="http://y.qq.com/vip/voice_intro/index.html" target="_blank"
							class="js_other_link"
							data-stat="y_new.footer.other_music.supersound"><i
								class="icon_qm_ss"></i>Super Sound</a></li>
						<li
							class="footer_product_list__item footer_product_list__item--pic"><a
							href="http://y.qq.com/y/static/down/qplay.html?pgv_ref=qqmusic.y.topmenu"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.qplay"><i
								class="icon_qm_qp"></i>QPlay</a></li>
						<li class="footer_product_list__item"><a
							href="http://y.qq.com/cp/homepage.html#/home?from=yqq"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.cp">QQ音乐原创音乐平台</a></li>
						<li class="footer_product_list__item"><a
							href="http://y.qq.com/y/static/down/car_introduce.html"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.car_play">车载互联</a></li>
						<li class="footer_product_list__item"><a
							href="http://y.qq.com/yanchu/?pgv_ref=qqmusic.y.topmenu"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_music.yanchu">QQ演出</a></li>
					</ul>
				</div>

				<div class="footer_link">
					<h3 class="footer_tit">合作链接</h3>
					<!-- 显示全部 footer_link_list--show -->
					<ul class="footer_link_list">
						<li class="footer_link_list__item"><a href="http://v.qq.com/"
							target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">腾讯视频</a></li>
						<li class="footer_link_list__item"><a
							href="http://z.qzone.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">手机QQ空间</a></li>
						<li class="footer_link_list__item"><a
							href="http://im.qq.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">最新版QQ</a></li>
						<li class="footer_link_list__item"><a
							href="http://e.qq.com/index.shtml" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯社交广告</a>
						</li>
						<li class="footer_link_list__item"><a
							href="http://guanjia.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">电脑管家</a>
						</li>
						<li class="footer_link_list__item"><a
							href="http://browser.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">QQ浏览器</a>
						</li>
						<li class="footer_link_list__item"><a
							href="http://huabao.qzone.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">画报</a>
						</li>
						<li class="footer_link_list__item"><a
							href="http://act.qzone.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">黄钻活动</a>
						</li>
						<li class="footer_link_list__item"><a
							href="http://xing.qq.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">星钻</a></li>
						<li class="footer_link_list__item"><a
							href="http://www.weiyun.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯微云</a>
						</li>
						<li class="footer_link_list__item"><a
							href="http://fm.qq.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">企鹅FM</a></li>
						<li class="footer_link_list__item js_last" style="display:none;"><a
							href="https://www.qcloud.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯云</a>
						</li>
						<li class="footer_link_list__item"><a href="javascript:;"
							class="js_footer_more">更多</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://buluo.qq.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">兴趣部落</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="https://ke.qq.com/?from=100" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯课堂</a>
						</li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://yunsou.qq.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯云搜</a>
						</li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://bbs.qcloud.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">腾讯云论坛</a>
						</li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://www.znds.com/" target="_blank" class="js_other_link"
							data-stat="y_new.footer.other_link">智能电视网</a></li>
						<li class="footer_link_list__item footer_link_list__item--more"><a
							href="http://www.dangbei.com/" target="_blank"
							class="js_other_link" data-stat="y_new.footer.other_link">当贝市场</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="footer_copyright">

				<p>
					<a href="http://www.tencent.com/" rel="nofollow" target="_blank"
						title="关于腾讯">关于腾讯</a> | <a
						href="http://www.tencent.com/index_e.shtml" rel="nofollow"
						target="_blank" title="About Tencent">About Tencent</a> | <a
						href="http://www.qq.com/contract.shtml" rel="nofollow"
						target="_blank" title="服务条款">服务条款</a> | <a
						href="http://y.qq.com/y/static/tips/service_tips.html"
						rel="nofollow" target="_blank" title="用户服务协议">用户服务协议</a> | <a
						href="http://www.tencentmind.com/" rel="nofollow" target="_blank"
						title="广告服务">广告服务</a> | <a href="http://hr.tencent.com/"
						rel="nofollow" target="_blank" title="腾讯招聘">腾讯招聘</a> | <a
						href="http://service.qq.com/" rel="nofollow" target="_blank"
						title="客服中心">客服中心</a> | <a href="http://www.qq.com/map/"
						rel="nofollow" target="_blank" title="网站导航">网站导航</a>
				</p>

				<p>
					Copyright © 1998 -
					<script type="text/javascript">
						document.write(new Date().getFullYear());
					</script>
					2016 Tencent. <a target="_blank"
						href="http://www.tencent.com/en-us/le/copyrightstatement.shtml"
						rel="nofollow" title="All Rights Reserved.">All Rights
						Reserved.</a>
				</p>
				<p>
					腾讯公司 <a target="_blank"
						href="http://www.tencent.com/zh-cn/le/copyrightstatement.shtml"
						rel="nofollow" title="版权所有">版权所有</a> <a target="_blank"
						href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm"
						rel="nofollow" title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a>
				</p>
			</div>
		</div>
	</div>




	



	<a href="javascript:;"
		class="btn_bottom_feedback sprite js_btn_feedback"><span
		class="icon_txt">意见反馈</span> </a>
	<div id="divdialog_0"></div>
</body>
<style type="text/css" id="15060158141"></style>
</html>
