<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta http-equiv="Content-Language" content="zh-cn" />
    <meta name="keywords" content="音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌"/>
    <meta name="description" content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选" />
    <meta name="mobile-agent" content="format==[html5];url=http://m.y.qq.com">
    <meta name="applicable-device" content="pc">
    <title>QQ音乐 - 歌单广场</title>
    <link rel="canonical" href="//y.qq.com/portal/playlist.html" />
	
<script id="mod_spt">
document.domain = 'http://y.qq.com/portal/qq.com';
(function(m, o, d, u, l, a, r) {
	if(m[o]) {return;}  
	function f(n) { 
		return function() { r.push(n, arguments); return a; }
	}  
	m[o] = a = { 
		args: (r = []),	resourceMap : f(0),	async: f(1)
	};
	u = d.createElement("script");  
	u.id = o + "node"; 
	u.async = true;  
	u.src = "//y.gtimg.cn/c/=/music/portal/js/common/map.js,/music/portal/js/common/music/mod.js?r=" + parseInt(new Date()/600000) ;  
	l = d.getElementsByTagName("head")[0];  
	l.appendChild(u);
})(window, "require", document); 
window.SPD={_timing:{},_start:(new Date()),mark:function(a,b){this._timing[a]=(b||new Date())-this._start}};
</script>

    <link rel="stylesheet" href="css/layout0914.css-max_age=25920000&v=20160803.css" tppabs="http://y.gtimg.cn/mediastyle/yqq/layout0914.css?max_age=25920000&v=20160803" />
    <link rel="stylesheet" href="css/playlist.css-max_age=2592000.css" tppabs="http://y.gtimg.cn/mediastyle/yqq/playlist.css?max_age=2592000" />
<script type="text/javascript">SPD.mark(31); // CSS加载完毕</script> 
</head>
<body>
       <!-- 头部 S -->

<script>
if(window.ActiveXObject || window.msIsStaticHTML){
	var ie = 6;

	if(!!window.XMLHttpRequest) {ie = 7}; 
	if(navigator.userAgent.indexOf("MSIE 7.0")!=-1) {ie = 7}; 
	if(navigator.userAgent.indexOf("Trident/4.0")!=-1){ie = 8}; 
	if(navigator.userAgent.indexOf("Trident/5.0") != -1){ie = 9};
	if(navigator.userAgent.indexOf("Trident/6.0") != -1){ie = 10};
	if(navigator.userAgent.indexOf("Trident/7.0") != -1 || "undefined" == typeof attachEvent){ie = 11};
	if (ie < 8) {
		document.write("<div class=\"popup_top\"  id=\"zoom_warn\">使用更高版本的 <a href=\"http://www.google.cn/intl/zh-CN/chrome/browser/desktop/\" target=\"_blank\">Chrome</a> 或 <a href=\"https://support.microsoft.com/zh-cn/help/17621/internet-explorer-downloads\" target=\"_blank\">Internet Explorer</a>，体验更精彩</div>");
	}
}</script>
<div class="mod_header">
    <div class="section_inner">
        <h1 class="qqmusic_title"><a href="http://y.qq.com/"><img srcset="images/logo.png" src="./QQ音乐 - 歌单广场_files/logo.png" alt="QQ音乐" class="qqmusic_logo"></a></h1>
        <!-- 导航 S -->
        <!-- 
            当前态 & hover 用 top_nav__link--current
            参考Im.qq.com的交互 
        -->
        <ul class="mod_top_nav" role="nav">
            <li class="top_nav__item top_nav__item--room">
                <a href="http://y.qq.com/" class="top_nav__link top_nav__link--current" title="音乐馆">音乐馆<i class="top_nav__txt"></i></a>
            </li>
            <li class="top_nav__item top_nav__item--mine">
                <a href="http://y.qq.com/portal/profile.html" class="top_nav__link" title="我的音乐">我的音乐<i class="top_nav__txt"></i></a>
            </li>
            <li class="top_nav__item top_nav__item--down">
                <a href="http://y.qq.com/download/index.html" class="top_nav__link" title="下载客户端" target="_blank">下载客户端<i class="top_nav__txt"></i></a>
            </li>
	    <li class="top_nav__item top_nav__item--vip">
	        <a href="http://y.qq.com/vipportal/" class="top_nav__link" title="VIP" target="_blank">VIP<i class="top_nav__txt"></i></a>
	    </li>
        </ul>
	    <ul class="mod_top_subnav" style="display:;">
		<li class="top_subnav__item">
		    <a href=http://y.qq.com/ class="top_subnav__link">首页</a>
		</li>
		<li class="top_subnav__item">
		    <a href="http://y.qq.com/portal/singerlist.html" class="top_subnav__link">歌手</a>
		</li>
		<li class="top_subnav__item">
		    <a href="http://y.qq.com/portal/album_lib.html#t9=2" class="top_subnav__link">专辑</a>
		</li>
		<li class="top_subnav__item">
		    <a href="http://y.qq.com/portal/toplist/4.html" class="top_subnav__link">排行榜</a>
		</li>
		<li class="top_subnav__item">
		    <a href="http://y.qq.com/portal/mv_lib.html#t6=2" class="top_subnav__link">歌单广场</a>
		</li>
		<li class="top_subnav__item">
		    <a href="http://y.qq.com/portal/mv_lib.html#t6=2" class="top_subnav__link">MV</a>
		</li>
	    </ul>
        <!-- 导航 E -->
                <div class="mod_top_search" role="search">
                    <div class="mod_search_input">
                        <input class="search_input__input" type="text" placeholder="关键字搜索" accesskey="s"/>
                        <button class="search_input__btn"><i class="icon_search"></i><span class="icon_txt">搜索</span></button>
                    </div>
                </div>
        <div class="header__opt">

               
                <!-- 未登录 -->
                <span class="mod_top_login">
		    	<a class="top_login__link js_logined" href="http://y.qq.com/portal/profile.html#stat=y_new.top.user_pic" style="display:none;">
                	<img src="http://p.qpic.cn/music_cover/xuw5SicGO1JcU0WE5dhS1r3FacGHrzRNp8NgRawzCHTzPKRtc0GNc4Q/300?n=1&n=1" class="top_login__cover" alt="" />
                </a>
                    <a class="top_login__link js_login" data-stat="y_new.top.login" href="javascript:;"> 登录</a>

                    <a class="login__link header__link js_login" data-stat="y_new.top.login" href="javascript:;">登录</a>
                    <a class="mod_btn_green top_login__btn_vip js_openvip" data-aid="music.pc.20316.newyqqtop" data-stat="music.20316.btnclick.pc" href="javascript:;">开通绿钻豪华版</a>
		    <a class="mod_btn top_login__btn_vip js_openmusic" data-aid="music.pc.20317.newyqqtop" data-stat="music.20317.btnclick.pc" href="javascript:;">开通付费包</a>
                </span>
		<!-- 用户信息 -->
		    <div class="popup_user">
		    </div>
            </div>
        </div>
    </div>
    <!-- 头部 E -->

	<div class="mod_loading" id="before_page" style="display: none;"><i class="icon_txt">加载中</i></div>
	 <div class="mod_banner_push" id="p_header" style="display:none;"></div>
    <div class="main" style="">    

        <!-- 标签筛选 -->
        <div class="mod_playlist_tag" id="taglist">
            <div class="playlist_tag__list playlist_tag__list--lang">
                <h3 class="playlist_tag__tit c_tx_thin">语种</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="165">国语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="167">英语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="168">韩语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="166">粤语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="169">日语</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="170">小语种</a></li>
		
		    
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">流派</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="6">流行</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="15">轻音乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="11">摇滚</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="28">民谣</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="8">R&amp;B</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="17">舞曲</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="153">嘻哈</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="24">电子</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="27">古典</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="18">乡村</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="22">蓝调</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="21">爵士</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="164">新世纪</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="25">拉丁</a></li>
		
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">主题</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="39">ACG</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="136">经典好歌</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="139">90后</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="143">小清新</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="133">影视原声</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="138">80后</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="137">70后</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="141">热唱K歌</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="131">儿歌童谣</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="150">游戏</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="145">中国风</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="207">70年代</a></li>
		
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">心情</h3>
		
                <i class="playlist_tag__line"></i>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="52">伤感</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="122">安静</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="117">快乐</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="116">治愈</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="125">励志</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="59">甜蜜</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="55">孤单</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="126">宣泄</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="68">思念</a></li>
		
		    
                </ul>
            </div>
	    

            <div class="playlist_tag__list ">
                <h3 class="playlist_tag__tit c_tx_thin">场景</h3>
		
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="78">睡前</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="102">夜店嗨歌</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="101">学习</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="99">运动</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="84">减压</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="85">开车</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="76">约会</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="95">下午茶</a></li>
		
		    
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_more_tag">更多<i class="playlist_tag__arrow"></i></a></li>
		    
                </ul>
            </div>
	    
            <div class="popup_tag" style="display:none;">
                <ul class="playlist_tag__tags">
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="104">散步</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="94">工作</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="81">旅行</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="103">聚会</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="171">公交</a></li>
		
                    <li class="playlist_tag__itembox"><a href="javascript:;" class="playlist_tag__item js_tag" data-id="96">做家务</a></li>
		
                </ul>
            </div>
	    
</div>
	    
</div>
            
           	<div class="mod_part_detail">
            <div class="part_detail__hd">
            	<h2 class="part_detail__tit">全部歌单</h2>
                <div class="part_switch" id="sortbox" aria-label="排列方式"><a href="javascript:;" class="part_switch__item js_sort part_switch__item--left part_switch__item--select" title="推荐" data-sort="5">推荐</a><a href="javascript:;" class="part_switch__item part_switch__item--right js_sort" title="最新" data-sort="2">最新</a></div>
            </div>
            
            <div class="mod_playlist mod_playlist--all">
            	<ul class="playlist__list" id="playlist_box">
            	
            	 <!-- 歌单广场筛选遍历展示  --> 
<c:forEach items="${all}" var="square">
   
<li class="playlist__item" data-disstid="3534108761" 
onmouseover="this.className=(this.className+&#39; playlist__item--hover&#39;)" 
onmouseout="this.className=this.className.replace(/ playlist__item--hover/, &#39;&#39;)">     	
	 <div class="playlist__item_box">
     <div class="playlist__cover mod_cover">
     <a href="http://y.qq.com/portal/playlist/3534108761.html#stat=y_new.playlist.pic_click" 
     	class="js_playlist" 
     	title="华语｜每首歌都在诉说的自己的故事" 
     	data-disstid="3534108761" 
     	data-stat="y_new.playlist.pic_click">
     
     <img src="images/300.jpg" 
     onerror="this.src=&#39;//y.gtimg.cn/mediastyle/global/img/cover_playlist.png?max_age=31536000&#39;;this.onerror=null;" 
     alt="华语｜每首歌都在诉说的自己的故事" class="playlist__pic">
     
     <i class="mod_cover__icon_play js_play" data-stat="y_new.playlist.pic_play"></i></a></div>
     <h4 class="playlist__title">
     <span class="playlist__title_txt">
     <a href="http://y.qq.com/portal/playlist/3534108761.html#stat=y_new.playlist.dissname" 
    	 class="js_playlist" 
     	 data-stat="y_new.playlist.dissname" 
     	 data-disstid="3534108761" 
     	 title="华语｜每首歌都在诉说的自己的故事">${square.getType().getTtype()}|${square.getRname()}${ square.rname }</a>
     </span></h4><div class="playlist__author">
     
     <a href="http://y.qq.com/portal/profile.html?uin=485232579#stat=y_new.playlist.creater" 
     	class="js_user" 
     	data-uin="485232579" 
     	data-stat="y_new.playlist.creater" 
     	title="拾得断笔">${square.getRmainartist()}</a>
		</div>
		<div class="playlist__other">
		播放量： 372.2万
		</div>
       </div>
       		<a href="javascript:;" class="btn_operate_menu js_playlist_more" data-type="3" data-id="3534108761" data-stat="y_new.playlist.pic_mod_more"><span class="icon_txt">更多</span></a>
	   
            </li>
</c:forEach>   
            	</ul>
            		
            	</div>
            	
<!-- 底部数字分页 -->
        <div class="mod_page_nav js_pager"> 
        	<strong class="current">1</strong>
        		<a href="javascript:;" class="js_pageindex" data-index="2" hidefocus="">2</a>
        		<a href="javascript:;" class="js_pageindex" data-index="3" hidefocus="">3</a>
        		<a href="javascript:;" class="js_pageindex" data-index="4" hidefocus="">4</a>
        		<strong class="more">...</strong>
        		<a href="javascript:;" class="js_pageindex" data-index="41881" hidefocus="">910</a>
        		<a href="javascript:;" class="next js_pageindex" data-index="2" title="下一页" hidefocus=""><span>&gt;</span></a>
        </div>
       
       </div>

        
    </div>

    <div class="footer" role="footer">
    <div class="section_inner">
        <div class="footer_info">

            <div class="footer_download">
                <h3 class="footer_tit">下载QQ音乐客户端</h3>
                <ul class="footer_download_list">
                    <li class="footer_download_list__item"><a href="http://y.qq.com/download/" class="js_footer_down" data-type="pc" data-stat="y_new.footer.download.pc"><i class="icon_qm_pc"><span class="icon_txt">QQ音乐</span></i>PC版</a></li>
                    <li class="footer_download_list__item"><a href="http://y.qq.com/download/" class="js_footer_down" data-type="mac" data-stat="y_new.footer.download.mac"><i class="icon_qm_mac"><span class="icon_txt">QQ音乐</span></i>Mac版</a></li>
                    <li class="footer_download_list__item"><a href="http://y.qq.com/download/" class="js_footer_down" data-type="andriod" data-stat="y_new.footer.download.andriod"><i class="icon_qm_android"><span class="icon_txt">QQ音乐</span></i>Android版</a></li>
                    <li class="footer_download_list__item"><a href="http://y.qq.com/download/" class="js_footer_down" data-type="iphone" data-stat="y_new.footer.download.iphone"><i class="icon_qm_iphone"><span class="icon_txt">QQ音乐</span></i>iPhone版</a></li>
                </ul>
            </div>

            <div class="footer_product">
                <h3 class="footer_tit">特色产品</h3>
                <ul class="footer_product_list">
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.k"><i class="icon_qm_kg"></i>全民K歌</a></li>
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="http://y.qq.com/vip/voice_intro/index.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.supersound"><i class="icon_qm_ss"></i>Super Sound</a></li>
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="http://y.qq.com/y/static/down/qplay.html?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.qplay"><i class="icon_qm_qp"></i>QPlay</a></li>
                    <li class="footer_product_list__item"><a href="http://y.qq.com/cp/homepage.html#/home?from=yqq" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.cp">QQ音乐原创音乐平台</a></li>
                    <li class="footer_product_list__item"><a href="http://y.qq.com/y/static/down/car_introduce.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.car_play">车载互联</a></li>
                    <li class="footer_product_list__item"><a href="http://y.qq.com/yanchu/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.yanchu">QQ演出</a></li>
                </ul>
            </div>

            <div class="footer_link">
                <h3 class="footer_tit">合作链接</h3>
                <!-- 显示全部 footer_link_list--show -->
                <ul class="footer_link_list">
                    <li class="footer_link_list__item"><a href="http://v.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯视频</a></li>
                    <li class="footer_link_list__item"><a href="http://z.qzone.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">手机QQ空间</a></li>
                    <li class="footer_link_list__item"><a href="http://im.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">最新版QQ</a></li>
                    <li class="footer_link_list__item"><a href="http://e.qq.com/index.shtml" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯社交广告</a></li>
                    <li class="footer_link_list__item"><a href="http://guanjia.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">电脑管家</a></li>
                    <li class="footer_link_list__item"><a href="http://browser.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">QQ浏览器</a></li>
                    <li class="footer_link_list__item"><a href="http://huabao.qzone.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">画报</a></li>
                    <li class="footer_link_list__item"><a href="http://act.qzone.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">黄钻活动</a></li>
                    <li class="footer_link_list__item"><a href="http://xing.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">星钻</a></li>
                    <li class="footer_link_list__item"><a href="http://www.weiyun.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯微云</a></li>
                    <li class="footer_link_list__item"><a href="http://fm.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">企鹅FM</a></li>
                    <li class="footer_link_list__item js_last" style="display:none;"><a href="https://www.qcloud.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云</a></li>
                    <li class="footer_link_list__item"><a href="javascript:;" class="js_footer_more">更多</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://buluo.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">兴趣部落</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="https://ke.qq.com/?from=100" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯课堂</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://yunsou.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云搜</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://bbs.qcloud.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云论坛</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://www.znds.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">智能电视网</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="http://www.dangbei.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">当贝市场</a></li>
                </ul>
            </div>
        </div>
        <div class="footer_copyright">
		
		<p >
			<a href="http://www.tencent.com/" rel="nofollow" target="_blank" title="关于腾讯">关于腾讯</a> | 
			<a href="http://www.tencent.com/index_e.shtml" rel="nofollow" target="_blank" title="About Tencent">About Tencent</a> | 
			<a href="http://www.qq.com/contract.shtml" rel="nofollow" target="_blank" title="服务条款">服务条款</a> | 
			<a href="http://y.qq.com/y/static/tips/service_tips.html" rel="nofollow" target="_blank" title="用户服务协议">用户服务协议</a> | 
			<a href="http://www.tencentmind.com/" rel="nofollow" target="_blank" title="广告服务">广告服务</a> | 
			<a href="http://hr.tencent.com/" rel="nofollow" target="_blank" title="腾讯招聘">腾讯招聘</a> | 
			<a href="http://service.qq.com/" rel="nofollow" target="_blank" title="客服中心">客服中心</a> | 
			<a href="http://www.qq.com/map/" rel="nofollow" target="_blank" title="网站导航">网站导航</a>
		</p>

            <p>Copyright © 1998 - <script type="text/javascript">document.write(new Date().getFullYear());</script> Tencent. <a target="_blank" href="http://www.tencent.com/en-us/le/copyrightstatement.shtml" rel="nofollow" title="All Rights Reserved.">All Rights Reserved.</a></p>
			<p>腾讯公司 <a target="_blank" href="http://www.tencent.com/zh-cn/le/copyrightstatement.shtml" rel="nofollow" title="版权所有">版权所有</a> <a target="_blank" href="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm" rel="nofollow" title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a></p>
        </div>
    </div>
</div>

</div>

<script>SPD.mark(32); // HTML加载完毕</script>
<script type="text/javascript">require.resourceMap({"res":{"js/v4/album.js"/*tpa=http://y.qq.com/portal/js/v4/album.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/album_81c0596.js?max_age=31536000","m":"81c0596"},"js/v4/album_lib.js"/*tpa=http://y.qq.com/portal/js/v4/album_lib.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/album_lib_42ae192.js?max_age=31536000","m":"42ae192"},"js/v4/index.js"/*tpa=http://y.qq.com/portal/js/v4/index.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/index_c4eb2d7.js?max_age=31536000","m":"c4eb2d7"},"js/v4/mv.js"/*tpa=http://y.qq.com/portal/js/v4/mv.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mv_28b6275.js?max_age=31536000","m":"28b6275"},"js/v4/mvToplist.js"/*tpa=http://y.qq.com/portal/js/v4/mvToplist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mvToplist_5a97428.js?max_age=31536000","m":"5a97428"},"js/v4/mv_lib.js"/*tpa=http://y.qq.com/portal/js/v4/mv_lib.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mv_lib_397139d.js?max_age=31536000","m":"397139d"},"js/v4/mymusic.js"/*tpa=http://y.qq.com/portal/js/v4/mymusic.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mymusic_47250ee.js?max_age=31536000","m":"47250ee"},"js/v4/mymusic_edit.js"/*tpa=http://y.qq.com/portal/js/v4/mymusic_edit.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mymusic_edit_a67c28c.js?max_age=31536000","m":"a67c28c"},"js/v4/player.js"/*tpa=http://y.qq.com/portal/js/v4/player.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/,"js/common/music/scroller.js"/*tpa=http://y.qq.com/portal/js/common/music/scroller.js*/,"js/common/module/webplayer.js"/*tpa=http://y.qq.com/portal/js/common/module/webplayer.js*/,"js/common/module/lrcHandler.js"/*tpa=http://y.qq.com/portal/js/common/module/lrcHandler.js*/,"js/common/module/qrcHandler.js"/*tpa=http://y.qq.com/portal/js/common/module/qrcHandler.js*/,"js/common/music/txtpl.js"/*tpa=http://y.qq.com/portal/js/common/music/txtpl.js*/,"js/common/music/storage.js"/*tpa=http://y.qq.com/portal/js/common/music/storage.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/player_b4eb8b9.js?max_age=31536000","m":"b4eb8b9"},"js/v4/playlist.js"/*tpa=http://y.qq.com/portal/js/v4/playlist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/playlist_11793de.js?max_age=31536000","m":"11793de"},"js/v4/playlist_detail.js"/*tpa=http://y.qq.com/portal/js/v4/playlist_detail.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/playlist_detail_ce9050c.js?max_age=31536000","m":"ce9050c"},"js/v4/profile.js"/*tpa=http://y.qq.com/portal/js/v4/profile.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/,"js/common/music/storage.js"/*tpa=http://y.qq.com/portal/js/common/music/storage.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/profile_0b03fbb.js?max_age=31536000","m":"0b03fbb"},"js/v4/search.js"/*tpa=http://y.qq.com/portal/js/v4/search.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/,"js/common/music/storage.js"/*tpa=http://y.qq.com/portal/js/common/music/storage.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/search_6c6ee5b.js?max_age=31536000","m":"6c6ee5b"},"js/v4/singer.js"/*tpa=http://y.qq.com/portal/js/v4/singer.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/,"js/common/music/lib/base.js"/*tpa=http://y.qq.com/portal/js/common/music/lib/base.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/singer_b1872f9.js?max_age=31536000","m":"b1872f9"},"js/v4/singerlist.js"/*tpa=http://y.qq.com/portal/js/v4/singerlist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/singerlist_b530ffa.js?max_age=31536000","m":"b530ffa"},"js/v4/song_detail.js"/*tpa=http://y.qq.com/portal/js/v4/song_detail.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/song_detail_1db6650.js?max_age=31536000","m":"1db6650"},"js/v4/toplist.js"/*tpa=http://y.qq.com/portal/js/v4/toplist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/toplist_64c1e5e.js?max_age=31536000","m":"64c1e5e"}},"pkg":{}});</script>
<script type="text/javascript"> 
	window.onload = function () {
		SPD.mark(35);	// onload
	};
;(function () {
	require.async("js/v4/playlist.js"/*tpa=http://y.qq.com/portal/js/v4/playlist.js*/, function( playlist ){
		SPD.mark(33);	// JS加载完毕
		playlist.init();
	});
})(); 
</script> 

</body>
</html>

