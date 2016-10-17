<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<!-- saved from url=(0054)http://y.qq.com/portal/profile.html#sub=song&tab=like& -->
<html lang="zh-cn">
<style type="text/css" id="26575940752"></style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Language" content="zh-cn">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="0">
<meta name="keywords"
	content="音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌">
<meta name="description"
	content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选">
<meta name="mobile-agent" content="format==[html5];url=//m.y.qq.com">
<meta name="applicable-device" content="pc">
<title>我的音乐</title>

<script type="text/javascript">
	var _speedMark = new Date();
</script>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
	/* 控制添加菜单弹出 */
	var clickEvent;
	function show() {
		$('.mod_operate_menu').css('display', 'block');
	}
	function hide() {
		$('.mod_operate_menu').css('display', 'none');
	}

	function menu(event) {

		console.log('how dare you click me( `д´) ');
		var e = event || window.event;
		var x = 0;
		var y = 0;
		if (e.clientX) {
			x = e.pageX;
			y = e.pageY;
		}
		console.log('x=' + x + '  ' + 'y=' + y);
		if ($('.mod_operate_menu').css('display') == "none") {
			$('.mod_operate_menu').css({
				position : "absolute",
				left : x + "px",
				top : y + "px"
			});
			show();
		} else {
			hide();
		}
	}
	/*    */

	function bodyClickOn() {
		clickEvent = "on";
		console.log(clickEvent);

	}

	function bodyClickOff() {
		clickEvent = "off";
		console.log(clickEvent);

	}

	//ONLOAD
	 window.onload = function() {
		
		$("body").click(function() {
			console.log('bodyclickED');
			console.log(clickEvent);
			if (clickEvent == "on") {
				hide();
			}
		});

	}
</script>


<script id="mod_spt">
	document.domain = 'localhost';
	(function(m, o, d, u, l, a, r) {
		if (m[o]) {
			return;
		}
		function f(n) {
			return function() {
				r.push(n, arguments);
				return a;
			}
		}
		m[o] = a = {
			args : (r = []),
			resourceMap : f(0),
			async : f(1)
		};
		u = d.createElement("script");
		u.id = o + "node";
		u.async = true;
		u.src = "//y.gtimg.cn/c/=/music/portal/js/common/map.js,/music/portal/js/common/music/mod.js?r="
				+ parseInt(new Date() / 600000);
		l = d.getElementsByTagName("head")[0];
		l.appendChild(u);
	})(window, "require", document);
	window.SPD = {
		_timing : {},
		_start : (new Date()),
		mark : function(a, b) {
			this._timing[a] = (b || new Date()) - this._start
		}
	};
</script>
<script id="requirenode" async="" src="images/mod.js"></script>
<link rel="stylesheet" href="css/layout0927.css">
<link rel="stylesheet" href="css/profile.css">
<script type="text/javascript">
	SPD.mark(31); // CSS加载完毕
</script>
<style type="text/css">
.emojicon-m {
	min-height: 1em !important;
	min-width: 1em !important;
	max-height: 1em !important;
	max-width: 1em !important;
	vertical-align: middle !important;
	float: none !important;
	background-repeat: no-repeat;
	background-position: center center;
	background-size: contain;
	display: inline-block;
}
</style>
<!-- <script src="images/cdn_dianjiliu.js"></script>
<script src="images/cdn_dianjiliu(1).js"></script>
<script src="images/analysis"></script> -->
</head>
<body class="os_mac">

	<!-- 头部 S -->

	<script>
		if (window.ActiveXObject || window.msIsStaticHTML) {
			var ie = 6;

			if (!!window.XMLHttpRequest) {
				ie = 7
			}
			;
			if (navigator.userAgent.indexOf("MSIE 7.0") != -1) {
				ie = 7
			}
			;
			if (navigator.userAgent.indexOf("Trident/4.0") != -1) {
				ie = 8
			}
			;
			if (navigator.userAgent.indexOf("Trident/5.0") != -1) {
				ie = 9
			}
			;
			if (navigator.userAgent.indexOf("Trident/6.0") != -1) {
				ie = 10
			}
			;
			if (navigator.userAgent.indexOf("Trident/7.0") != -1
					|| "undefined" == typeof attachEvent) {
				ie = 11
			}
			;
			if (ie < 8) {
				document
						.write("<div class=\"popup_top\"  id=\"zoom_warn\">使用更高版本的 <a href=\"http://www.google.cn/intl/zh-CN/chrome/browser/desktop/\" target=\"_blank\">Chrome</a> 或 <a href=\"https://support.microsoft.com/zh-cn/help/17621/internet-explorer-downloads\" target=\"_blank\">Internet Explorer</a>，体验更精彩</div>");
			}
		}
	</script>
	<div class="mod_header">
		<div class="section_inner">
			<h1 class="qqmusic_title">
				<a href="http://y.qq.com/"><img
					srcset="//y.gtimg.cn/mediastyle/yqq/img/logo@2x.png 2x"
					src="images/logo.png" alt="QQ音乐" class="qqmusic_logo"> </a>
			</h1>
			<!-- 导航 S -->
			<!-- 
            当前态 & hover 用 top_nav__link--current
            参考Im.qq.com的交互 
        -->
			<ul class="mod_top_nav" role="nav">
				<li class="top_nav__item top_nav__item--room"><a
					href="http://y.qq.com/" class="top_nav__link" title="音乐馆">音乐馆<i
						class="top_nav__txt"></i> </a></li>
				<li class="top_nav__item top_nav__item--mine"><a
					href="http://y.qq.com/portal/profile.html"
					class="top_nav__link top_nav__link--current" title="我的音乐">我的音乐<i
						class="top_nav__txt"></i> </a></li>
				<li class="top_nav__item top_nav__item--down"><a
					href="http://y.qq.com/download/index.html" class="top_nav__link"
					title="下载客户端" target="_blank">下载客户端<i class="top_nav__txt"></i>
				</a></li>
				<li class="top_nav__item top_nav__item--vip"><a
					href="http://y.qq.com/vipportal/" class="top_nav__link" title="VIP"
					target="_blank">VIP<i class="top_nav__txt"></i> </a></li>

			</ul>
			<ul class="mod_top_subnav" style="display:none;">
				<li class="top_subnav__item"><a href="http://y.qq.com/"
					class="top_subnav__link">首页</a></li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/singerlist.html"
					class="top_subnav__link">歌手</a></li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/album_lib.html#t9=2"
					class="top_subnav__link">专辑</a></li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/toplist/4.html"
					class="top_subnav__link">排行榜</a></li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/playlist.html"
					class="top_subnav__link">歌单广场</a></li>
				<li class="top_subnav__item"><a
					href="http://y.qq.com/portal/mv_lib.html#t6=2"
					class="top_subnav__link">MV</a></li>
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
										data-name="张杰"> <span class="search_hot__number">1</span>
										<span class="search_hot__name">张杰</span> <span
										class="search_hot__listen">10.7万</span> </a> <a
										href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="PPAP"> <span class="search_hot__number">2</span>
										<span class="search_hot__name">PPAP</span> <span
										class="search_hot__listen">8.4万</span> </a> <a href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="大鱼海棠"> <span class="search_hot__number">3</span>
										<span class="search_hot__name">大鱼海棠</span> <span
										class="search_hot__listen">5.9万</span> </a> <a href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="PAPA AP-GASOLINA DADDY YANKEE"> <span
										class="search_hot__number">4</span> <span
										class="search_hot__name">PAPA AP-GASOLINA DADDY YANKEE</span>
										<span class="search_hot__listen">5.4万</span> </a> <a
										href="javascript:;"
										class="search_hot__link js_smartbox_search js_left"
										data-name="大王叫我来巡山"> <span class="search_hot__number">5</span>
										<span class="search_hot__name">大王叫我来巡山</span> <span
										class="search_hot__listen">4.2万</span> </a>

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
										class="search_history__link js_smartbox_search js_right"
										data-name="METALLICA one">METALLICA one</a> <a
										href="javascript:;"
										class="search_history__delete js_smartbox_delete"
										data-name="METALLICA one"><i
										class="search_history__icon_delete"></i><span class="icon_txt">删除</span>
									</a>
								</dd>

								<dd class="search_history__item">
									<a href="javascript:;"
										class="search_history__link js_smartbox_search js_right"
										data-name="red hot chili pepper hey">red hot chili pepper
										hey</a> <a href="javascript:;"
										class="search_history__delete js_smartbox_delete"
										data-name="red hot chili pepper hey"><i
										class="search_history__icon_delete"></i><span class="icon_txt">删除</span>
									</a>
								</dd>

								<dd class="search_history__item">
									<a href="javascript:;"
										class="search_history__link js_smartbox_search js_right"
										data-name="林峰">林峰</a> <a href="javascript:;"
										class="search_history__delete js_smartbox_delete"
										data-name="林峰"><i class="search_history__icon_delete"></i><span
										class="icon_txt">删除</span> </a>
								</dd>

								<dd class="search_history__item">
									<a href="javascript:;"
										class="search_history__link js_smartbox_search js_right"
										data-name="Dig Out Your Soul">Dig Out Your Soul</a> <a
										href="javascript:;"
										class="search_history__delete js_smartbox_delete"
										data-name="Dig Out Your Soul"><i
										class="search_history__icon_delete"></i><span class="icon_txt">删除</span>
									</a>
								</dd>

								<dd class="search_history__item">
									<a href="javascript:;"
										class="search_history__link js_smartbox_search js_right"
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
					href="http://y.qq.com/portal/profile.html#stat=y_new.top.user_pic"
					style=""><img src="images/g.png"
						onerror="this.src=&#39;//y.gtimg.cn/mediastyle/global/img/person_300.png?max_age=2592000&#39;;this.onerror=null;"
						class="top_login__cover js_user_img"> </a> <a
					class="top_login__link js_login" data-stat="y_new.top.login"
					href="javascript:;" style="display: none;"> 登录 </a> <a
					class="login__link header__link js_login"
					data-stat="y_new.top.login" href="javascript:;"
					style="display: none;">登录</a> <a
					class="mod_btn_green top_login__btn_vip js_openvip"
					data-aid="music.pc.20316.newyqqtop"
					data-stat="music.20316.btnclick.pc" href="javascript:;">开通绿钻豪华版</a>
					<a class="mod_btn top_login__btn_vip js_openmusic"
					data-aid="music.pc.20317.newyqqtop"
					data-stat="music.20317.btnclick.pc" href="javascript:;">开通付费包</a> </span>

				<!-- 用户信息 -->
				<div class="popup_user" style="">
					<div class="popup_user_data">
						<a
							href="http://y.qq.com/portal/profile.html#stat=y_new.top.pop.user_pic"><img
							src="images/g.png"
							onerror="this.src=&#39;//y.gtimg.cn/mediastyle/global/img/person_300.png?max_age=2592000&#39;;this.onerror=null;"
							class="popup_user_data__cover js_user_img"> </a>
						<div class="popup_user_data__name">
							<a
								href="http://y.qq.com/portal/profile.html#stat=y_new.top.pop.user_nickname">
								Vèrve.</a>
						</div>
						<div class="popup_user_data__lv">
							<a href="http://y.qq.com/vipportal/" class="js_vip_jump"
								data-stat="y_new.top.pop.vip_icon" target="_blank"><img
								src="images/svip_g.png" alt="绿钻"
								class="popup_user_data__lv_icon"> </a><a
								href="http://y.qq.com/vip/fufeibao/index.html"
								class="js_vip_jump" data-stat="y_new.top.pop.vip_icon"
								target="_blank"><img src="images/sui_g.png" alt="付费音乐包"
								class="popup_user_data__lv_icon"> </a>
						</div>
						<a href="javascript:;" class="popup_user_data__out js_logout"
							data-stat="y_new.top.pop.logout">[退出]</a>
					</div>
					<ul class="mod_user_statistic">
						<li class="user_statistic__item"><a href="javascript:;"
							class="js_profile_tab" data-stat="y_new.top.pop.gedan"
							data-tab="create"><strong
								class="user_statistic__number js_create">10</strong><span
								class="user_statistic__tit">歌单</span> </a></li>
						<li class="user_statistic__item"><a href="javascript:;"
							class="js_profile_tab" data-stat="y_new.top.pop.focus"
							data-tab="focus"><strong
								class="user_statistic__number js_focus">2</strong><span
								class="user_statistic__tit">关注</span> </a></li>
						<li class="user_statistic__item user_statistic__item--last">
							<a href="javascript:;" class="js_profile_tab"
							data-stat="y_new.top.pop.fans" data-tab="fans"><strong
								class="user_statistic__number js_fans">0</strong><span
								class="user_statistic__tit">粉丝</span> </a></li>
					</ul>
					<div class="popup_user__toolbar">
						<a class="mod_btn_green popup_user__btn1 js_openvip"
							data-aid="music.pc.20318.newyqqhover"
							data-stat="music.20318.btnclick.pc" href="javascript:;">开通绿钻豪华版</a>
						<div class="popup_user_data__time" style="display:none;">到期</div>
						<a class="mod_btn popup_user__btn2 js_openmusic"
							href="javascript:;" data-aid="music.pc.20320.newyqqhover"
							data-stat="music.20320.btnclick.pc" style="display:;">开通付费音乐包</a>
						<div class="popup_user_data__time" style="display:none;">到期</div>
						<div class="popup_top_login__tips">开通绿钻豪华版 赠送付费音乐包</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 头部 E -->


	<div class="js_mod_profile_unlogin" style="display:none;"></div>

	<div class="mod_profile js_user_data" style="">
		<div class="section_inner">
			<img src="images/g.png"
				onerror="this.src=&#39;//y.gtimg.cn/mediastyle/global/img/person_300.png?max_age=31536000&#39;;this.onerror=null;"
				alt="Vèrve." class="profile__cover">
			<h1 class="profile__tit">
				<span class="profile__name">Vèrve.</span> <a
					href="http://y.qq.com/vipportal/" target="_blank"><img
					src="images/svip_g@2x.png" alt="绿钻" class="lv_icon"> </a><a
					href="http://y.qq.com/vip/fufeibao/index.html" class="js_vip"
					data-href="//y.qq.com/vip/fufeibao/index.html"><img
					src="images/sui_g@2x.png" alt="付费音乐包" class="lv_icon"> </a>
			</h1>
			<ul class="mod_user_statistic">
				<li class="user_statistic__item"><a href="javascript:;"
					class="js_tab" data-tab="focus_singer"
					data-stat="y_new.profile.header.focus_click"><strong
						class="user_statistic__number js_num_follow">2</strong><span
						class="user_statistic__tit">关注</span> </a></li>
				<li class="user_statistic__item user_statistic__item--last"><a
					href="javascript:;" class="js_tab" data-tab="fans"
					data-stat="y_new.profile.header.fans_click"><strong
						class="user_statistic__number js_num_fans">0</strong><span
						class="user_statistic__tit">粉丝</span> </a></li>
			</ul>


			<button class="js_btn_lock btn_lock" title="主页已公开" data-status="0">
				<span class="icon_txt">主页已公开</span>
			</button>


		</div>
	</div>
	<!-- 一级导航 -->
	<div class="main main--profile" style="">
		<div class="mod_tab profile_nav" role="nav" id="nav">
			<a class="mod_tab__item " href="javascript:;" id="like_tab"
				data-tab="like" data-stat="y_new.profile.tab.like">我喜欢 </a>
			<!-- ---------------------------------------------------------------- -->
			<a class="mod_tab__item mod_tab__current" href="javascript:;"
				id="buy_tab" data-tab="buy"
				data-stat="y_new.profile.tab.digital_album" style="display: none;">我的数字专辑</a>

			<a class="mod_tab__item" href="javascript:;" id="create_tab"
				data-tab="create" data-stat="y_new.profile.tab.create_playlist">我创建的歌单
			</a>
			<!-- ---------------------------------------------------------------- -->
			<a class="mod_tab__item" href="javascript:;" id="focus_tab"
				data-tab="focus" data-stat="y_new.profile.tab.focus">关注 </a>
			<!-- ---------------------------------------------------------------- -->
			<a class="mod_tab__item" href="javascript:;" id="fans_tab"
				data-tab="fans" data-stat="y_new.profile.tab.fans">粉丝 </a>
		</div>
		 <!--  控制页面box切换 -->
		<script type="text/javascript">
			
			$('#like_tab').click(function() {
				console.log('like_box:' + $('#like_box').css('display'));
				if ($('#like_box').css('display') == "none") {
					$('#like_box').css('display', 'block');
					$('#focus_box').css('display', 'none');
					$('#fans_box').css('display', 'none');
					$('#create_box').css('display', 'none');
					console.log('show like_box');
				}
			});

			$('#create_tab').click(function() {
				console.log('create_box:' + $('#create_box').css('display'));
				if ($('#create_box').css('display') == "none") {
					$('#like_box').css('display', 'none');
					$('#focus_box').css('display', 'none');
					$('#fans_box').css('display', 'none');
					$('#create_box').css('display', 'block');
					console.log('show create_box');
				}
			});

			$('#focus_tab').click(function() {
				console.log('focus_box:' + $('#focus_box').css('display'));
				if ($('#focus_box').css('display') == "none") {
					$('#like_box').css('display', 'none');
					$('#focus_box').css('display', 'block');
					$('#fans_box').css('display', 'none');
					$('#create_box').css('display', 'none');
					console.log('show focus_box');
				}
			});

			$('#fans_tab').click(function() {
				console.log('fans_box:' + $('#fans_box').css('display'));
				if ($('#fans_box').css('display') == "none") {
					$('#like_box').css('display', 'none');
					$('#focus_box').css('display', 'none');
					$('#fans_box').css('display', 'block');
					$('#create_box').css('display', 'none');
					console.log('show fans_box');
				}
			});
		</script>
		<!-- like_box -->
		<div class="js_box" id="like_box" style="display: block;">
				<!-- like_box 收藏导航 --> 
			<div class="mod_tab" role="nav">
				<a class="mod_tab__item mod_tab__current" href="javascript:;"
					data-tab="like_song" data-stat="y_new.profile.like.tab.song">歌曲
					96</a> <a class="mod_tab__item" href="javascript:;"
					data-tab="like_playlist"
					data-stat="y_new.profile.like.tab.playlist">歌单 0</a> <a
					class="mod_tab__item" href="javascript:;" data-tab="like_album"
					data-stat="y_new.profile.like.tab.album">专辑 1</a> <a
					class="mod_tab__item" href="javascript:;" data-tab="like_mv"
					data-stat="y_new.profile.like.tab.mv">MV 0</a>
			</div>
				<!-- profile页正文 -->
			<div class="profile_cont">
		<!-- like_songList_box -->
		<div class="js_sub" id="like_song_box" style="display: block;">
						<!-- favor歌单操作按钮 -->
					<div class="mod_songlist_toolbar">
						<a href="javascript:;" class="mod_btn_green js_all_play"
							data-stat="y_new.profile.like.song.playall"><i
							class="mod_btn_green__icon_play"></i>播放全部</a> <a href="javascript:;"
							class="mod_btn js_all_fav"
							data-stat="y_new.profile.like.song.addall"><i
							class="mod_btn__icon_add"></i>添加到</a> <a href="javascript:;"
							class="mod_btn js_all_down" onclick="hide()"
							data-stat="y_new.profile.like.song.downloadall"><i
							class="mod_btn__icon_down"></i>下载</a> <a href="javascript:;"
							class="mod_btn js_batch"
							data-stat="y_new.profile.like.song.batch"><i
							class="mod_btn__icon_batch"></i>批量操作</a>
					</div>
					<!-- 歌单表头 -->
					<div class="mod_songlist">
						<ul class="songlist__header">
							<li class="songlist__edit songlist__edit--check"><input
								type="checkbox" class="songlist__checkbox js_check_all">
							</li>
							<li class="songlist__header_name">歌曲</li>
							<li class="songlist__header_author">歌手</li>
							<li class="songlist__header_album">专辑</li>
							<li class="songlist__header_time">时长</li>
						</ul>
						<!-- favor ul列表 -->
						<ul class="songlist__list">
							<!-- 开始favor列表遍历 -->
						<s:iterator value="#request.SLMSSFav" var="list" status="index" >	
						
							<li mid="102796884" ix="30">
								<div class="js_song_li songlist__item"
									onmouseover="bodyClickOff();this.className=(this.className+' songlist__item--hover')"
									onmouseout="bodyClickOn();this.className=this.className.replace(/ songlist__item--hover/, '')">
									<div class="songlist__edit songlist__edit--check">
										<input type="checkbox" class="songlist__checkbox">
									</div>
									<!-- 歌曲名字 -->
									<div class="songlist__songname">
										<span class="songlist__songname_txt">
										<a  href="http://y.qq.com/portal/song/002QyILG4ROqHS.html"
											class="js_song" title="<s:property value="#list.songName" />">
											
											<s:property value="#list.songName" />
											
										</a> 
										</span> 
										<i class="songlist__icon songlist__icon_exclusive" title="独家"></i>
										<a href="http://y.qq.com/portal/mv/v/a001865s89e.html"
											class="songlist__icon songlist__icon_mv" target="_blank"
											title="MV"><span class="icon_txt">MV</span> </a>

										<div class="mod_list_menu">
											<a href="javascript:;"
												class="list_menu__item list_menu__play js_play" title="播放">
												<i class="list_menu__icon_play"></i> <span class="icon_txt">播放</span>
											</a> <a href="javascript:;" onclick="menu(event)" id="test"
												class="list_menu__item list_menu__add js_fav" title="添加到歌单"
												aria-haspopup="true"> <i class="list_menu__icon_add"></i>
												<span class="icon_txt">添加到歌单</span> </a> <a href="javascript:;"
												class="list_menu__item list_menu__down js_down" title="下载"
												aria-haspopup="true"> <i class="list_menu__icon_down"></i>
												<span class="icon_txt">下载</span> </a> <a href="javascript:;"
												class="list_menu__item list_menu__share js_share" title="分享"
												aria-haspopup="true"> <i class="list_menu__icon_share"></i>
												<span class="icon_txt">分享</span> </a>
										</div>
									</div>
									<!-- 艺人名字 -->
									<div class="songlist__artist">
										<a href="http://y.qq.com/portal/singer/000GDFdW1he8eS.html"
											data-singermid="000GDFdW1he8eS" data-singerid="182742"
											title="<s:property value="#list.artistName"/>" class="singer_name">
										
											<s:property value="#list.artistName"/>
										
										</a>
											
											<!-- 有多个歌手时,用  "/" 分隔 这里暂不实现 -->
										<a  display="none"
											href="http://y.qq.com/portal/singer/001P2ODl3YGyip.html"
											data-singermid="001P2ODl3YGyip" data-singerid="999775"
											title="" class="singer_name"></a>
									</div>
									<!-- 专辑名字 -->
									<div class="songlist__album">
										<a data-albummid="0017Wxwf08P1KF" data-albumid="1032937"
											href="http://y.qq.com/portal/album/0017Wxwf08P1KF.html"
											title="<s:property value="#list.recordName" />" class="album_name">
										
										<s:property value="#list.recordName" />
										
										</a>
									</div>
									<!-- 音轨长度 -->
									<div class="songlist__time">
									
									<s:date name="#list.duration" format=" mm:ss"></s:date>
									
									</div>
									<div class="songlist__other">
										<i class="icon_sosomusic">无版权</i>
									</div>
									<a href="javascript:;" class="songlist__delete js_delfav_song"
										data-id="102796884"><span class="icon_txt">删除</span> </a>
								</div>
							</li>
							</s:iterator>
							<!-- 结束favor列表遍历 -->	
						</ul>
					</div>
					<!-- 分页按钮 -->
					<div class="mod_page_nav js_pager">
						<strong class="current">1</strong>
						<a href="javascript:;" class="js_pageindex" data-index="2" hidefocus="">2</a>
						<a href="javascript:;" class="js_pageindex" data-index="3"hidefocus="">3</a>
						<a href="javascript:;" class="current"data-index="4" hidefocus="">4</a>
						<a href="javascript:;" class="next js_pageindex" data-index="2" title="下一页" hidefocus="">
						<span>&gt;</span>
						</a>
					</div>
					<!-- 控制分页按钮 -->
					<script type="text/javascript">
					
						
					</script>
				</div>
				<!-- 以下三个盒子因为没有数据,和暂时还不想做,先空着 -->
				<div class="js_sub" style="display:none;" id="like_playlist_box"></div>
				<div class="js_sub" style="display:none;" id="like_album_box"></div>
				<div class="js_sub" style="display:none;" id="like_mv_box"></div>
			</div>
		</div>
		<!-- buy_box 完全不知道是什么 也许是vip功能,也许谁资助我买个VIP -->
		<div class="js_box profile_cont" id="buy_box" style="display:none;">
		</div>
		<!-- create_box 歌单  -->
		<div class="js_box profile_cont" id="create_box"
			style="display: none;">
			<!-- 左侧新建导入按钮 -->
			<div class="playlist_toolbar">
				<!-- 新建歌单 -->
				<button class="mod_btn js_create_new"
					data-stat="y_new.profile.create_playlist.create_new">
					<i class="mod_btn__icon_new"></i>新建歌单
				</button>
				<!-- 导入歌单 -->
				<button class="mod_btn js_import"
					data-stat="y_new.profile.create_playlist.import">
					<i class="mod_btn__icon_input"></i>导入歌单
				</button>
				<!-- 风格切换 -->
				<div class="style_switch" aria-label="排列方式">
					<a 
						id="upPicDownText"
						href="javascript:;" class="style_switch__item style_switch__item--select" title="上图下文"
						data-type="mod_playlist" data-tab="create"
						data-stat="y_new.profile.create_playlist.pic_mod">
						<i class="icon_style_pic"></i>
						<span class="icon_txt">上图下文</span> </a> 
					<a	
						id="isList"
						href="javascript:;"
						class="style_switch__item " title="列表"
						data-type="mod_playlist_text" data-tab="create"
						data-stat="y_new.profile.create_playlist.list_mod">
						<i class="icon_style_list"></i>
						<span class="icon_txt">列表</span> </a>
				</div>
				<!-- 切换控制 -->
				<script type="text/javascript">
					function sson(obj){
						$(obj).addClass('style_switch__item--select');
						
						console.log('function sson() was called');
					}
					function ssoff(other){
						other.removeClass("style_switch__item--select");
						console.log('function ssoff() was called');
					}
					$('#upPicDownText').click(function(){
						$('.mod_playlist_text').css('display','none');
						$('.mod_playlist').css('display','block');
						
						sson(this);
						var other=$('#isList');
						ssoff(other);
						console.log('#upPicDownText was clicked');
						console.log('列表display:'+$('.mod_playlist_text').css('display'));
						console.log('图标display:'+$('.mod_playlist').css('display'));
					});
					$('#isList').click(function(){
						$('.mod_playlist_text').css('display','block');
						$('.mod_playlist').css('display','none');
						
						sson(this);
						var other=$('#upPicDownText');
						ssoff(other);
						console.log('#isList was clicked');
						console.log('列表display:'+$('.mod_playlist_text').css('display'));
						console.log('图标display:'+$('.mod_playlist').css('display'));
						
					
					});
				</script>
			</div>
			<!-- 列表视图 -->
			<div class="mod_playlist_text js_list" style="display: none;">
				<ul class="playlist__header">
					<li class="playlist__header_name">歌单</li>
					<li class="playlist__header_number">曲目数</li>
					<li class="playlist__header_author">创建人</li>
					<li class="playlist__header_other">收听</li>
				</ul>
				<ul class="playlist__list">

					<li class="playlist__item" data-disstid="0" data-uin="529497710"
						data-dirid="205"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__cover">

							<a
								href="http://y.qq.com/portal/mymusic.html#stat=y_new.profile.create_playlist.qzone.click&dirid=205&hostuin=529497710">
								<img src="images/cover_qzone.png"
								onerror="this.src=&#39;//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000&#39;;this.onerror=null;"
								alt="QZone背景音乐" class="playlist__pic"> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="http://y.qq.com/portal/mymusic.html#stat=y_new.profile.create_playlist.qzone.click&dirid=205&hostuin=529497710"
								title="QZone背景音乐">QZone背景音乐</a> </span>
						</h4>
						<div class="mod_list_menu">
							<a href="javascript:;"
								class="list_menu__item list_menu__play js_play"
								data-stat="y_new.profile.create_playlist.qzone.play" title="播放">
								<i class="list_menu__icon_play"></i> <span class="icon_txt">播放</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__add js_fav" title="添加到歌单">
								<i class="list_menu__icon_add"></i> <span class="icon_txt">添加到歌单</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__down js_down" title="下载">
								<i class="list_menu__icon_down"></i> <span class="icon_txt">下载</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__share js_share" title="分享">
								<i class="list_menu__icon_share"></i> <span class="icon_txt">分享</span>
							</a>
						</div>
						<div class="playlist__number">2首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other"></div> <a href="javascript:;"
						class="playlist__delete js_delcreate_gedan" data-dirid="205"
						style="display:none;"><span class="icon_txt">删除</span> </a>
					</li>

					<li class="playlist__item" data-disstid="0" data-uin="529497710"
						data-dirid="206"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__cover">

							<a
								href="http://y.qq.com/portal/playlist/790685759.html#stat=y_new.profile.create_playlist.love.click&dirid=201"
								class="js_playlist" data-disstid="790685759" data-dirid="201"
								data-stat="y_new.profile.create_playlist.click"> <img
								src="images/cover_like.png"
								onerror="this.src=&#39;//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000&#39;;this.onerror=null;"
								alt="我喜欢" class="playlist__pic"> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="http://y.qq.com/portal/playlist/790685759.html#stat=y_new.profile.create_playlist.love.click&dirid=201"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="790685759" data-dirid="201" title="我喜欢">我喜欢</a> </span>
						</h4>
						<div class="mod_list_menu">
							<a href="javascript:;"
								class="list_menu__item list_menu__play js_play"
								data-stat="y_new.profile.create_playlist.love.play" title="播放">
								<i class="list_menu__icon_play"></i> <span class="icon_txt">播放</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__add js_fav" title="添加到歌单">
								<i class="list_menu__icon_add"></i> <span class="icon_txt">添加到歌单</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__down js_down" title="下载">
								<i class="list_menu__icon_down"></i> <span class="icon_txt">下载</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__share js_share" title="分享">
								<i class="list_menu__icon_share"></i> <span class="icon_txt">分享</span>
							</a>
						</div>
						<div class="playlist__number">96首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">125</div> <a href="javascript:;"
						class="playlist__delete js_delcreate_gedan" data-dirid="201"
						style="display:none;"><span class="icon_txt">删除</span> </a>
					</li>

					<li class="playlist__item playlist__item--even "
						data-disstid="831155592" data-uin="529497710" data-dirid="18"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__cover">

							<a
								href="http://y.qq.com/portal/mymusic.html#stat=y_new.profile.create_playlist.upload.click&dirid=206&hostuin=529497710">
								<img src="images/cover_upload.png"
								onerror="this.src=&#39;//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000&#39;;this.onerror=null;"
								alt="本地上传" class="playlist__pic"> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="http://y.qq.com/portal/mymusic.html#stat=y_new.profile.create_playlist.upload.click&dirid=206&hostuin=529497710"
								title="本地上传">本地上传</a> </span>
						</h4>
						<div class="mod_list_menu">
							<a href="javascript:;"
								class="list_menu__item list_menu__play js_play"
								data-stat="y_new.profile.create_playlist.upload.play" title="播放">
								<i class="list_menu__icon_play"></i> <span class="icon_txt">播放</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__add js_fav" title="添加到歌单">
								<i class="list_menu__icon_add"></i> <span class="icon_txt">添加到歌单</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__down js_down" title="下载">
								<i class="list_menu__icon_down"></i> <span class="icon_txt">下载</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__share js_share" title="分享">
								<i class="list_menu__icon_share"></i> <span class="icon_txt">分享</span>
							</a>
						</div>
						<div class="playlist__number">0首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other"></div> <a href="javascript:;"
						class="playlist__delete js_delcreate_gedan" data-dirid="206"
						style="display:none;"><span class="icon_txt">删除</span> </a>
					</li>

					<li class="playlist__item playlist__item--even "
						data-disstid="831155592" data-uin="529497710" data-dirid="18"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__cover">

							<a
								href="http://y.qq.com/portal/playlist/831155592.html#stat=y_new.profile.create_playlist.click&dirid=18"
								class="js_playlist" data-disstid="831155592" data-dirid="18"
								data-stat="y_new.profile.create_playlist.click"> <img
								src="images/300_albumpic_169869_0.jpg"
								onerror="this.src=&#39;//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000&#39;;this.onerror=null;"
								alt="Six" class="playlist__pic"> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="http://y.qq.com/portal/playlist/831155592.html#stat=y_new.profile.create_playlist.click&dirid=18"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="831155592" data-dirid="18" title="Six">Six</a> </span>
						</h4>
						<div class="mod_list_menu">
							<a href="javascript:;"
								class="list_menu__item list_menu__play js_play"
								data-stat="y_new.profile.create_playlist.play" title="播放"> <i
								class="list_menu__icon_play"></i> <span class="icon_txt">播放</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__add js_fav" title="添加到歌单">
								<i class="list_menu__icon_add"></i> <span class="icon_txt">添加到歌单</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__down js_down" title="下载">
								<i class="list_menu__icon_down"></i> <span class="icon_txt">下载</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__share js_share" title="分享">
								<i class="list_menu__icon_share"></i> <span class="icon_txt">分享</span>
							</a>
						</div>
						<div class="playlist__number">13首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">5</div> <a href="javascript:;"
						class="playlist__delete js_delcreate_gedan" data-dirid="18"
						style="display:;"><span class="icon_txt">删除</span> </a>
					</li>

					<li class="playlist__item" data-disstid="831155507"
						data-uin="529497710" data-dirid="17"
						onmouseover="this.className=(this.className+' playlist__item--hover')"
						onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
						<div class="playlist__cover">

							<a
								href="http://y.qq.com/portal/playlist/831155507.html#stat=y_new.profile.create_playlist.click&dirid=17"
								class="js_playlist" data-disstid="831155507" data-dirid="17"
								data-stat="y_new.profile.create_playlist.click"> <img
								src="images/300_albumpic_185557_0.jpg"
								onerror="this.src=&#39;//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000&#39;;this.onerror=null;"
								alt="灰灯笼的逆袭" class="playlist__pic"> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="http://y.qq.com/portal/playlist/831155507.html#stat=y_new.profile.create_playlist.click&dirid=17"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="831155507" data-dirid="17" title="灰灯笼的逆袭">灰灯笼的逆袭</a>

							</span>
						</h4>
						<div class="mod_list_menu">
							<a href="javascript:;"
								class="list_menu__item list_menu__play js_play"
								data-stat="y_new.profile.create_playlist.play" title="播放"> <i
								class="list_menu__icon_play"></i> <span class="icon_txt">播放</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__add js_fav" title="添加到歌单">
								<i class="list_menu__icon_add"></i> <span class="icon_txt">添加到歌单</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__down js_down" title="下载">
								<i class="list_menu__icon_down"></i> <span class="icon_txt">下载</span>
							</a> <a href="javascript:;"
								class="list_menu__item list_menu__share js_share" title="分享">
								<i class="list_menu__icon_share"></i> <span class="icon_txt">分享</span>
							</a>
						</div>
						<div class="playlist__number">11首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">8</div> <a href="javascript:;"
						class="playlist__delete js_delcreate_gedan" data-dirid="17"
						style="display:;"><span class="icon_txt">删除</span> </a>
					</li>




				</ul>
			</div>
			<!-- 图标视图 -->
			<div class="mod_playlist js_list" style="display: block;">
			<ul class="playlist__header">
				<li class="playlist__header_name">歌单</li>
				<li class="playlist__header_number">曲目数</li>
				<li class="playlist__header_author">编辑</li>
				<li class="playlist__header_other">收听</li>
			</ul>
			<ul class="playlist__list">

				<li class="playlist__item" data-disstid="0" data-dirid="205"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/mymusic.html#stat=y_new.profile.create_playlist.qzone.click&amp;dirid=205&amp;hostuin=529497710">
								<img src="//y.gtimg.cn/mediastyle/global/img/cover_qzone.png"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="QZone背景音乐" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.qzone.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/mymusic.html#stat=y_new.profile.create_playlist.qzone.click&amp;dirid=205&amp;hostuin=529497710"
								title="QZone背景音乐">QZone背景音乐</a> </span>
						</h4>
						<div class="playlist__number">2首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other"></div>

						<a href="javascript:;"
							class="btn_operate_menu js_playlist_more_dirid" data-type="4"
							data-stat="y_new.profile.create_playlist.qzone.pic_mod_more"
							data-id="205"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="790685759" data-dirid="201"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/790685759.html#stat=y_new.profile.create_playlist.love.click&amp;dirid=201"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="790685759" data-dirid="201"> <img
								src="//y.gtimg.cn/mediastyle/global/img/cover_like.png"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="我喜欢" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.love.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/790685759.html#stat=y_new.profile.create_playlist.love.click&amp;dirid=201"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="790685759" data-dirid="201" title="我喜欢">我喜欢</a> </span>
						</h4>
						<div class="playlist__number">96首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">134</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="790685759" data-dirid="201"
							data-stat="y_new.profile.create_playlist.love.pic_mod_more"><span
							class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="0" data-dirid="206"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/mymusic.html#stat=y_new.profile.create_playlist.upload.click&amp;dirid=206&amp;hostuin=529497710">
								<img src="//y.gtimg.cn/mediastyle/global/img/cover_upload.png"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="本地上传" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.upload.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/mymusic.html#stat=y_new.profile.create_playlist.upload.click&amp;dirid=206&amp;hostuin=529497710"
								title="本地上传">本地上传</a> </span>
						</h4>
						<div class="playlist__number">0首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other"></div>

						<a href="javascript:;"
							class="btn_operate_menu js_playlist_more_dirid" data-type="4"
							data-stat="y_new.profile.create_playlist.upload.pic_mod_more"
							data-id="206"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="831155592" data-dirid="18"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/831155592.html#stat=y_new.profile.create_playlist.click&amp;dirid=18"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="831155592" data-dirid="18"> <img
								src="http://y.gtimg.cn/music/photo/album_300/69/300_albumpic_169869_0.jpg?n=1"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="Six" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/831155592.html#stat=y_new.profile.create_playlist.click&amp;dirid=18"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="831155592" data-dirid="18" title="Six">Six</a> </span>
						</h4>
						<div class="playlist__number">14首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">9</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="831155592" data-dirid="18"
							data-stat="y_new.profile.create_playlist.pic_mod_more"
							data-delete="delcreate_gedan"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="831155507" data-dirid="17"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/831155507.html#stat=y_new.profile.create_playlist.click&amp;dirid=17"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="831155507" data-dirid="17"> <img
								src="http://y.gtimg.cn/music/photo/album_300/57/300_albumpic_185557_0.jpg?n=1"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="灰灯笼的逆袭" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/831155507.html#stat=y_new.profile.create_playlist.click&amp;dirid=17"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="831155507" data-dirid="17" title="灰灯笼的逆袭">灰灯笼的逆袭</a>

							</span>
						</h4>
						<div class="playlist__number">11首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">10</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="831155507" data-dirid="17"
							data-stat="y_new.profile.create_playlist.pic_mod_more"
							data-delete="delcreate_gedan"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="830977104" data-dirid="16"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/830977104.html#stat=y_new.profile.create_playlist.click&amp;dirid=16"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="830977104" data-dirid="16"> <img
								src="http://y.gtimg.cn/music/photo/album_300/51/300_albumpic_121151_0.jpg?n=1"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="xiami" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/830977104.html#stat=y_new.profile.create_playlist.click&amp;dirid=16"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="830977104" data-dirid="16" title="xiami">xiami</a>

							</span>
						</h4>
						<div class="playlist__number">768首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">57</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="830977104" data-dirid="16"
							data-stat="y_new.profile.create_playlist.pic_mod_more"
							data-delete="delcreate_gedan"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="830772580" data-dirid="12"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/830772580.html#stat=y_new.profile.create_playlist.click&amp;dirid=12"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="830772580" data-dirid="12"> <img
								src="http://y.gtimg.cn/music/photo/album_300/18/300_albumpic_8218_0.jpg?n=1"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="on the road" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/830772580.html#stat=y_new.profile.create_playlist.click&amp;dirid=12"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="830772580" data-dirid="12" title="on the road">on
									the road</a> </span>
						</h4>
						<div class="playlist__number">164首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">10</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="830772580" data-dirid="12"
							data-stat="y_new.profile.create_playlist.pic_mod_more"
							data-delete="delcreate_gedan"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="815646322" data-dirid="11"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/815646322.html#stat=y_new.profile.create_playlist.click&amp;dirid=11"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="815646322" data-dirid="11"> <img
								src="http://y.gtimg.cn/music/photo/album_300/96/300_albumpic_139996_0.jpg?n=1"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="Echobelly" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/815646322.html#stat=y_new.profile.create_playlist.click&amp;dirid=11"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="815646322" data-dirid="11" title="Echobelly">Echobelly</a>

							</span>
						</h4>
						<div class="playlist__number">18首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">18</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="815646322" data-dirid="11"
							data-stat="y_new.profile.create_playlist.pic_mod_more"
							data-delete="delcreate_gedan"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="806144818" data-dirid="10"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/806144818.html#stat=y_new.profile.create_playlist.click&amp;dirid=10"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="806144818" data-dirid="10"> <img
								src="http://y.gtimg.cn/music/photo/album_300/25/300_albumpic_1014525_0.jpg?n=1"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="虾米歌单2016216191521" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/806144818.html#stat=y_new.profile.create_playlist.click&amp;dirid=10"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="806144818" data-dirid="10"
								title="虾米歌单2016216191521">虾米歌单2016216191521</a> </span>
						</h4>
						<div class="playlist__number">143首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">25</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="806144818" data-dirid="10"
							data-stat="y_new.profile.create_playlist.pic_mod_more"
							data-delete="delcreate_gedan"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="806135574" data-dirid="9"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/806135574.html#stat=y_new.profile.create_playlist.click&amp;dirid=9"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="806135574" data-dirid="9"> <img
								src="http://y.gtimg.cn/music/photo/album_300/32/300_albumpic_444232_0.jpg?n=1"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="虾米歌单2016216181155" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/806135574.html#stat=y_new.profile.create_playlist.click&amp;dirid=9"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="806135574" data-dirid="9"
								title="虾米歌单2016216181155">虾米歌单2016216181155</a> </span>
						</h4>
						<div class="playlist__number">180首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">18</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="806135574" data-dirid="9"
							data-stat="y_new.profile.create_playlist.pic_mod_more"
							data-delete="delcreate_gedan"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="790685762" data-dirid="1"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/790685762.html#stat=y_new.profile.create_playlist.click&amp;dirid=1"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="790685762" data-dirid="1"> <img
								src="//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="我最爱听" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/790685762.html#stat=y_new.profile.create_playlist.click&amp;dirid=1"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="790685762" data-dirid="1" title="我最爱听">我最爱听</a> </span>
						</h4>
						<div class="playlist__number">14首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">17</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="790685762" data-dirid="1"
							data-stat="y_new.profile.create_playlist.pic_mod_more"
							data-delete="delcreate_gedan"><span class="icon_txt">更多</span>
						</a>

					</div></li>

				<li class="playlist__item" data-disstid="790685760" data-dirid="6"
					data-uin="529497710"
					onmouseover="this.className=(this.className+' playlist__item--hover')"
					onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')">
					<div class="playlist__item_box">
						<div class="playlist__cover mod_cover">

							<a
								href="//y.qq.com/portal/playlist/790685760.html#stat=y_new.profile.create_playlist.click&amp;dirid=6"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="790685760" data-dirid="6"> <img
								src="http://y.gtimg.cn/music/photo/album_300/20/300_albumpic_17720_0.jpg?n=1"
								onerror="this.src='//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000';this.onerror=null;"
								alt="favor" class="playlist__pic"> <i
								class="mod_cover__icon_play js_play"
								data-stat="y_new.profile.create_playlist.play"></i> </a>

						</div>
						<h4 class="playlist__title">
							<span class="playlist__title_txt"> <a
								href="//y.qq.com/portal/playlist/790685760.html#stat=y_new.profile.create_playlist.click&amp;dirid=6"
								class="js_playlist"
								data-stat="y_new.profile.create_playlist.click"
								data-disstid="790685760" data-dirid="6" title="favor">favor</a>

							</span>
						</h4>
						<div class="playlist__number">835首</div>
						<div class="playlist__author">
							<a title=" Vèrve."> Vèrve.</a>
						</div>
						<div class="playlist__other">49</div>

						<a href="javascript:;" class="btn_operate_menu js_playlist_more"
							data-type="3" data-id="790685760" data-dirid="6"
							data-stat="y_new.profile.create_playlist.pic_mod_more"
							data-delete="delcreate_gedan"><span class="icon_txt">更多</span>
						</a>

					</div></li>

			</ul>
		</div>
	 </div>
		





		<!-- focus_box 关注 -->
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
		<!-- fans_box 粉丝  暂空-->
		<div class="js_box profile_cont" id="fans_box" style="display:none;"></div>
	</div>
	<!-- 公开个人页开关 -->
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
	<!-- ↓↓暂时不知道这是什么鬼 一去掉就报错↓↓ -->
	<!-- <script>
		SPD.mark(32); // HTML加载完毕
	</script> -->
	<!-- <script type="text/javascript">
		window.onload = function() {
			SPD.mark(35); // onload
		};;
		(function() {
			require.async("js/v4/profile.js", function(profile) {
				profile.init();
			});
		})();
	</script> -->





	<!-- 添加歌单菜单 -->
	<div class="mod_operate_menu"
		style="position: absolute; display: none;" id="fav_pop">
		<div class="operate_menu__cont">
			<a href="javascript:;" class="operate_menu__link js_addto_playlist"
				style="display:block;">播放队列</a>
			<ul role="menu"
				class="operate_menu__list operate_menu__top_line operate_menu__bottom_line">

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist operate_menu__link--disabled"
					data-dirid="201" title="我喜欢 "><i
						class="operate_menu__icon_like"></i>我喜欢 </a></li>

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist" data-dirid="18"
					title="Six ">Six </a></li>

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist" data-dirid="17"
					title="灰灯笼的逆袭 ">灰灯笼的逆袭 </a></li>

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist" data-dirid="16"
					title="xiami ">xiami </a></li>

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist" data-dirid="12"
					title="on the road ">on the road </a></li>

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist" data-dirid="11"
					title="Echobelly ">Echobelly </a></li>

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist" data-dirid="10"
					title="虾米歌单2016216191521 ">虾米歌单2016216191521 </a></li>

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist" data-dirid="9"
					title="虾米歌单2016216181155 ">虾米歌单2016216181155 </a></li>

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist" data-dirid="1"
					title="我最爱听 ">我最爱听 </a></li>

				<li class="operate_menu__item"><a href="javascript:;"
					class="operate_menu__link js_addto_taogelist" data-dirid="6"
					title="favor ">favor </a></li>

			</ul>
			<a href="javascript:;" class="operate_menu__link js_addto_new"
				style="display:;"><i class="operate_menu__icon_add"></i>添加到新歌单</a>
		</div>
	</div>


	<a href="javascript:;" class="btn_bottom_top sprite js_btn_top"
		style="display: none;"><span class="icon_txt">返回顶部</span> </a>
	<a href="javascript:;" data-href="http://wj.qq.com/s/795312/eae0"
		class="btn_bottom_feedback sprite js_btn_feedback"><span
		class="icon_txt">新版反馈</span> </a>
	<a href="http://y.qq.com/portal_old"
		class="btn_bottom_back js_goto_old" target="_blank">返回旧版</a>
	<div id="divdialog_0"></div>
	<div class="mod_popup_tips" id="popup"
		style="z-index: 10000000; left: 594px; top: 251px; display: none;">
		<i class="popup_tips__icon"></i>
		<h2 class="popup_tips__tit">主页已公开!</h2>
	</div>
</body>
<style type="text/css" id="26575941752"></style>
</html>
