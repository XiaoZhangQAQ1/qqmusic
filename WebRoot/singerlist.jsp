<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

 <!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset=utf-8"utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta http-equiv="Content-Language" content="zh-cn" />
    <meta name="keywords" content="音乐,QQ音乐,在线听歌,音乐下载,音乐播放器,音乐网站,MV,巅峰榜,音乐排行榜,翻译歌曲,热门歌曲,经典老歌"/>
    <meta name="description" content="QQ音乐是腾讯公司推出的一款免费音乐服务，海量音乐在线试听、最流行音乐在线首发、歌词翻译、手机铃声下载、高品质音乐试听、正版音乐下载、免费空间背景音乐设置、MV观看等，是互联网音乐播放和下载的首选" />
    <meta name="mobile-agent" content="format==[html5];url=//m.y.qq.com">
    <meta name="applicable-device" content="pc">
    <title>歌手列表 - QQ音乐 - 听我想听的歌!</title>
    <link rel="canonical" href="//y.qq.com/portal/singerlist.html" />
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
    <link rel="stylesheet" href="css/layout0914.css-max_age=25920000&v=20160830.css" tppabs="http://y.gtimg.cn/mediastyle/yqq/layout0914.css?max_age=25920000&v=20160830" />
    <link rel="stylesheet" href="css/singer.css-max_age=25920000.css" tppabs="http://y.gtimg.cn/mediastyle/yqq/singer.css?max_age=25920000" />
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
        <h1 class="qqmusic_title"><a href="../index.htm" tppabs="http://y.qq.com/"><img srcset="//y.gtimg.cn/mediastyle/yqq/img/logo@2x.png 2x" src="../../y.gtimg.cn/mediastyle/yqq/img/logo.png" tppabs="http://y.gtimg.cn/mediastyle/yqq/img/logo.png" alt="QQ音乐" class="qqmusic_logo"/></a></h1>
        <!-- 导航 S -->
        <!-- 
            当前态 & hover 用 top_nav__link--current
            参考Im.qq.com的交互 
        -->
        <ul class="mod_top_nav" role="nav">
            <li class="top_nav__item top_nav__item--room">
                <a href="../index.htm" tppabs="http://y.qq.com/" class="top_nav__link top_nav__link--current" title="音乐馆">音乐馆<i class="top_nav__txt"></i></a>
            </li>
            <li class="top_nav__item top_nav__item--mine">
                <a href="profile.html" tppabs="http://y.qq.com/portal/profile.html" class="top_nav__link" title="我的音乐">我的音乐<i class="top_nav__txt"></i></a>
            </li>
            <li class="top_nav__item top_nav__item--down">
                <a href="../download/index.html" tppabs="http://y.qq.com/download/index.html" class="top_nav__link" title="下载客户端" target="_blank">下载客户端<i class="top_nav__txt"></i></a>
            </li>
	    <li class="top_nav__item top_nav__item--vip">
	        <a href="../vipportal/index.htm" tppabs="http://y.qq.com/vipportal/" class="top_nav__link" title="VIP" target="_blank">VIP<i class="top_nav__txt"></i></a>
	    </li>
        </ul>
	    <ul class="mod_top_subnav" style="display:;">
		<li class="top_subnav__item">
		    <a href="../index.htm" tppabs="http://y.qq.com/" class="top_subnav__link">首页</a>
		</li>
		<li class="top_subnav__item">
		    <a href="singerlist.html" tppabs="http://y.qq.com/portal/singerlist.html" class="top_subnav__link">歌手</a>
		</li>
		<li class="top_subnav__item">
		    <a href="album_lib.html#t9=2" tppabs="http://y.qq.com/portal/album_lib.html#t9=2" class="top_subnav__link">专辑</a>
		</li>
		<li class="top_subnav__item">
		    <a href="toplist/4.html" tppabs="http://y.qq.com/portal/toplist/4.html" class="top_subnav__link">排行榜</a>
		</li>
		<li class="top_subnav__item">
		    <a href="playlist.html" tppabs="http://y.qq.com/portal/playlist.html" class="top_subnav__link">歌单广场</a>
		</li>
		<li class="top_subnav__item">
		    <a href="mv_lib.html#t6=2" tppabs="http://y.qq.com/portal/mv_lib.html#t6=2" class="top_subnav__link">MV</a>
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
		    <a class="top_login__link js_logined" href="profile.html#stat=y_new.top.user_pic" tppabs="http://y.qq.com/portal/profile.html#stat=y_new.top.user_pic" style="display:none;">
                        <img src="../../p.qpic.cn/music_cover/xuw5SicGO1JcU0WE5dhS1r3FacGHrzRNp8NgRawzCHTzPKRtc0GNc4Q/300-n=1&n=1.jpg" tppabs="http://p.qpic.cn/music_cover/xuw5SicGO1JcU0WE5dhS1r3FacGHrzRNp8NgRawzCHTzPKRtc0GNc4Q/300?n=1&n=1" class="top_login__cover" alt="" />
                    </a>
                    <a class="top_login__link js_login" data-stat="y_new.top.login" href="javascript:;">
                        登录
                    </a>

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

    
    <div class="mod_singer_push js_my_singers_nologin">
        <div class="section_inner">
            <h2 class="singer_push__tit"><i class="icon_txt">万千歌手，尽在眼前</i></h2>
            <div class="singer_push__desc"><i class="icon_txt">登录查看你关注的歌手</i></div>
            <a class="singer_push__btn js_login" href="javascript:;" data-stat="y_new.singerlist.header.login">立即登录<span class="singer_push__btn_border"></span></a>
        </div>
    </div>

    <div class="mod_singer_push mod_slide_box js_my_singers" style="display:none;">
        <div class="section_inner">
            <div class="singer_push_tab">
                <span href="javascript:;" class="singer_push_tab__item singer_push_tab__item--on">我关注的歌手</span>
                <!--a href="javascript:;" class="singer_push_tab__item">我常听的歌手</a-->
            </div>
            <div class="mod_slide singer_push_slide">
		<a href="javascript:;" class="slider__prev js_jump" data-stat="y_new.singerlist.header.pager" data-p="prev"><i class="icon_txt">上一页</i></a>
                <a href="javascript:;" class="slider__next js_jump" data-stat="y_new.singerlist.header.pager" data-p="next"><i class="icon_txt">下一页</i></a>
                <ul class="singer_push_list slide__list">
                </ul>
            </div>
	    <div class="mod_slide_switch js_switch" data-stat="y_new.singerlist.header.pager">
            </div>
        </div>
    </div>
    <div class="main">
        <div class="mod_singer_tag">
            <div class="singer_tag__list js_area">
	    
                <a href="javascript:;" class="singer_tag__item singer_tag__item--all singer_tag__item--select" data-key="all_all" hidefocus>全部</a>
                <a href="javascript:;" class="singer_tag__item" data-key="cn_man" hidefocus>华语男</a>
                <a href="javascript:;" class="singer_tag__item" data-key="cn_woman" hidefocus>华语女</a>
                <a href="javascript:;" class="singer_tag__item" data-key="cn_team" hidefocus>华语组合</a>
                <a href="javascript:;" class="singer_tag__item" data-key="k_man" hidefocus>韩国男</a>
                <a href="javascript:;" class="singer_tag__item" data-key="k_woman" hidefocus>韩国女</a>
                <a href="javascript:;" class="singer_tag__item" data-key="k_team" hidefocus>韩国组合</a>
                <a href="javascript:;" class="singer_tag__item" data-key="j_man" hidefocus>日本男</a>
                <a href="javascript:;" class="singer_tag__item" data-key="j_woman" hidefocus>日本女</a>
                <a href="javascript:;" class="singer_tag__item" data-key="j_team" hidefocus>日本组合</a>
                <a href="javascript:;" class="singer_tag__item" data-key="eu_man" hidefocus>欧美男</a>
                <a href="javascript:;" class="singer_tag__item" data-key="eu_woman" hidefocus>欧美女</a>
                <a href="javascript:;" class="singer_tag__item" data-key="eu_team" hidefocus>欧美组合</a>
		<a href="javascript:;" class="singer_tag__item" data-key="c_orchestra" hidefocus>乐团</a>
		<a href="javascript:;" class="singer_tag__item" data-key="c_performer" hidefocus>演奏家</a>
		<a href="javascript:;" class="singer_tag__item" data-key="c_composer" hidefocus>作曲家</a>
		<a href="javascript:;" class="singer_tag__item" data-key="c_cantor" hidefocus>指挥家</a>
                <a href="javascript:;" class="singer_tag__item" data-key="other_other" hidefocus>其他</a>
            </div>
            <div class="singer_tag__list js_letter">
                <a href="javascript:;" class="singer_tag__item singer_tag__item--all singer_tag__item--select" data-key="all" hidefocus>热门</a>
                <a href="javascript:;" class="singer_tag__item" data-key="A" hidefocus>A</a>
                <a href="javascript:;" class="singer_tag__item" data-key="B" hidefocus>B</a>
                <a href="javascript:;" class="singer_tag__item" data-key="C" hidefocus>C</a>
                <a href="javascript:;" class="singer_tag__item" data-key="D" hidefocus>D</a>
                <a href="javascript:;" class="singer_tag__item" data-key="E" hidefocus>E</a>
                <a href="javascript:;" class="singer_tag__item" data-key="F" hidefocus>F</a>
                <a href="javascript:;" class="singer_tag__item" data-key="G" hidefocus>G</a>
                <a href="javascript:;" class="singer_tag__item" data-key="H" hidefocus>H</a>
                <a href="javascript:;" class="singer_tag__item" data-key="I" hidefocus>I</a>
                <a href="javascript:;" class="singer_tag__item" data-key="J" hidefocus>J</a>
                <a href="javascript:;" class="singer_tag__item" data-key="K" hidefocus>K</a>
                <a href="javascript:;" class="singer_tag__item" data-key="L" hidefocus>L</a>
                <a href="javascript:;" class="singer_tag__item" data-key="M" hidefocus>M</a>
                <a href="javascript:;" class="singer_tag__item" data-key="N" hidefocus>N</a>
                <a href="javascript:;" class="singer_tag__item" data-key="O" hidefocus>O</a>
                <a href="javascript:;" class="singer_tag__item" data-key="P" hidefocus>P</a>
                <a href="javascript:;" class="singer_tag__item" data-key="Q" hidefocus>Q</a>
                <a href="javascript:;" class="singer_tag__item" data-key="R" hidefocus>R</a>
                <a href="javascript:;" class="singer_tag__item" data-key="S" hidefocus>S</a>
                <a href="javascript:;" class="singer_tag__item" data-key="T" hidefocus>T</a>
                <a href="javascript:;" class="singer_tag__item" data-key="U" hidefocus>U</a>
                <a href="javascript:;" class="singer_tag__item" data-key="V" hidefocus>V</a>
                <a href="javascript:;" class="singer_tag__item" data-key="W" hidefocus>W</a>
                <a href="javascript:;" class="singer_tag__item" data-key="X" hidefocus>X</a>
                <a href="javascript:;" class="singer_tag__item" data-key="Y" hidefocus>Y</a>
                <a href="javascript:;" class="singer_tag__item" data-key="Z" hidefocus>1Z</a>
                <a href="javascript:;" class="singer_tag__item" data-key="9" hidefocus>#</a>
            </div>
        </div>
       
	<div id="mod-singerlist">
        <div class="mod_singer_list js_avtar_list">
            <ul class="singer_list__list">
                
                 <!-- src="../../y.gtimg.cn/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000" alt="薛之谦"> -->
                 <c:forEach items="${listArtist}" var="listArtist"  >   <!-- end="9"  -->   
                
                <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/002J4UUk29y8BY.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002J4UUk29y8BY.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/002J4UUk29y8BY.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="002J4UUk29y8BY" data-singerid="5062" title="薛之谦">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" 
                            src="./images/Artist/${listArtist.getAname() }.png" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000002J4UUk29y8BY.jpg?max_age=2592000" alt="薛之谦">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002J4UUk29y8BY.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002J4UUk29y8BY.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002J4UUk29y8BY.html#stat=y_new.singerlist.singername" data-singermid="002J4UUk29y8BY" data-id="5062" class="js_singer" title="薛之谦">         
                            <%-- ${sessionScope.listArtist.get(0).getAname()} --%>                           
                            <b>${listArtist.getAname()}</b>                            
                            </a></h3>
                    </div>
                </li>
                </c:forEach>
              <%--  <c:forEach items="${side_list_1}" var="side_list_1" end="5" >
      		<li>
      			<a href="servlet/ContextServlet?nid=${side_list_1.getNid()}"><b>${side_list_1.getnTitle()}</b></a>
      		</li>
      			</c:forEach> --%>
		  
                <!-- <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/0025NhlN2yWrP4.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0025NhlN2yWrP4.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/0025NhlN2yWrP4.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="0025NhlN2yWrP4" data-singerid="4558" title="周杰伦">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" 
                            src="../../y.gtimg.cn/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M0000025NhlN2yWrP4.jpg?max_age=2592000" alt="周杰伦">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0025NhlN2yWrP4.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0025NhlN2yWrP4.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0025NhlN2yWrP4.html#stat=y_new.singerlist.singername" data-singermid="0025NhlN2yWrP4" data-id="4558" class="js_singer" title="周杰伦">周杰伦</a></h3>
                    </div>
                </li>
		  
                <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/004AlfUb0cVkN1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004AlfUb0cVkN1.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/004AlfUb0cVkN1.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="004AlfUb0cVkN1" data-singerid="11733" title="BIGBANG (빅뱅)">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" src="../../y.gtimg.cn/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000004AlfUb0cVkN1.jpg?max_age=2592000" alt="BIGBANG (빅뱅)">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004AlfUb0cVkN1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004AlfUb0cVkN1.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004AlfUb0cVkN1.html#stat=y_new.singerlist.singername" data-singermid="004AlfUb0cVkN1" data-id="11733" class="js_singer" title="BIGBANG (빅뱅)">BIGBANG (빅뱅)</a></h3>
                    </div>
                </li>
		  
                <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/003Nz2So3XXYek.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003Nz2So3XXYek.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/003Nz2So3XXYek.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="003Nz2So3XXYek" data-singerid="143" title="陈奕迅">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" src="../../y.gtimg.cn/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000003Nz2So3XXYek.jpg?max_age=2592000" alt="陈奕迅">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003Nz2So3XXYek.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003Nz2So3XXYek.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003Nz2So3XXYek.html#stat=y_new.singerlist.singername" data-singermid="003Nz2So3XXYek" data-id="143" class="js_singer" title="陈奕迅">陈奕迅</a></h3>
                    </div>
                </li>
		  
                <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/000zmpju02bEBm.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000zmpju02bEBm.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/000zmpju02bEBm.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="000zmpju02bEBm" data-singerid="34412" title="TFBOYS">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" src="../../y.gtimg.cn/music/photo_new/T001R300x300M000000zmpju02bEBm.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000000zmpju02bEBm.jpg?max_age=2592000" alt="TFBOYS">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000zmpju02bEBm.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000zmpju02bEBm.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000zmpju02bEBm.html#stat=y_new.singerlist.singername" data-singermid="000zmpju02bEBm" data-id="34412" class="js_singer" title="TFBOYS">TFBOYS</a></h3>
                    </div>
                </li>
		  
                <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/001BLpXF2DyJe2.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001BLpXF2DyJe2.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/001BLpXF2DyJe2.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="001BLpXF2DyJe2" data-singerid="4286" title="林俊杰">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" src="../../y.gtimg.cn/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000001BLpXF2DyJe2.jpg?max_age=2592000" alt="林俊杰">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001BLpXF2DyJe2.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001BLpXF2DyJe2.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001BLpXF2DyJe2.html#stat=y_new.singerlist.singername" data-singermid="001BLpXF2DyJe2" data-id="4286" class="js_singer" title="林俊杰">林俊杰</a></h3>
                    </div>
                </li>
		  
                <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/000aHmbL2aPXWH.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000aHmbL2aPXWH.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/000aHmbL2aPXWH.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="000aHmbL2aPXWH" data-singerid="60505" title="李荣浩">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" src="../../y.gtimg.cn/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000000aHmbL2aPXWH.jpg?max_age=2592000" alt="李荣浩">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000aHmbL2aPXWH.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000aHmbL2aPXWH.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000aHmbL2aPXWH.html#stat=y_new.singerlist.singername" data-singermid="000aHmbL2aPXWH" data-id="60505" class="js_singer" title="李荣浩">李荣浩</a></h3>
                    </div>
                </li>
		  
                <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/003Cn3Yh16q1MO.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003Cn3Yh16q1MO.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/003Cn3Yh16q1MO.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="003Cn3Yh16q1MO" data-singerid="89698" title="庄心妍">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" src="../../y.gtimg.cn/music/photo_new/T001R300x300M000003Cn3Yh16q1MO.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000003Cn3Yh16q1MO.jpg?max_age=2592000" alt="庄心妍">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003Cn3Yh16q1MO.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003Cn3Yh16q1MO.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003Cn3Yh16q1MO.html#stat=y_new.singerlist.singername" data-singermid="003Cn3Yh16q1MO" data-id="89698" class="js_singer" title="庄心妍">庄心妍</a></h3>
                    </div>
                </li>
		  
                <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/001fNHEf1SFEFN.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001fNHEf1SFEFN.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/001fNHEf1SFEFN.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="001fNHEf1SFEFN" data-singerid="13948" title="G.E.M. 邓紫棋">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" src="../../y.gtimg.cn/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000001fNHEf1SFEFN.jpg?max_age=2592000" alt="G.E.M. 邓紫棋">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001fNHEf1SFEFN.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001fNHEf1SFEFN.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001fNHEf1SFEFN.html#stat=y_new.singerlist.singername" data-singermid="001fNHEf1SFEFN" data-id="13948" class="js_singer" title="G.E.M. 邓紫棋">G.E.M. 邓紫棋</a></h3>
                    </div>
                </li>
		  
                <li class="singer_list__item">
                    <div class="singer_list__item_box">
                        <a href="javascript:if(confirm('http://y.qq.com/portal/singer/001P6FhW0CDEDW.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001P6FhW0CDEDW.html#stat=y_new.singerlist.singerpic'" tppabs="http://y.qq.com/portal/singer/001P6FhW0CDEDW.html#stat=y_new.singerlist.singerpic" class="singer_list__cover js_singer" hidefocus="true" data-singermid="001P6FhW0CDEDW" data-singerid="11712" title="乔任梁">
                            <img class="singer_list__pic" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/singer_300.png?max_age=31536000'" src="../../y.gtimg.cn/music/photo_new/T001R300x300M000001P6FhW0CDEDW.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T001R300x300M000001P6FhW0CDEDW.jpg?max_age=2592000" alt="乔任梁">
                        </a>
                        <h3 class="singer_list__title"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001P6FhW0CDEDW.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001P6FhW0CDEDW.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001P6FhW0CDEDW.html#stat=y_new.singerlist.singername" data-singermid="001P6FhW0CDEDW" data-id="11712" class="js_singer" title="乔任梁">乔任梁</a></h3>
                    </div>
                </li> -->
		  
            </ul>
        </div>

         <ul class="singer_list_txt">
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0020PeOh4ZaCw1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0020PeOh4ZaCw1.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0020PeOh4ZaCw1.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0020PeOh4ZaCw1" data-singerid="944940" title="Alan Walker (艾兰·沃克)">Alan Walker (艾兰·沃克)</a></li>
                        
            <li class="singer_list_txt__item"><a href="singer/000GDDuQ3sGQiT.html#stat=y_new.singerlist.singername" tppabs="http://y.qq.com/portal/singer/000GDDuQ3sGQiT.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000GDDuQ3sGQiT" data-singerid="264" title="王菲">王菲</a></li>
                        
            <li class="singer_list_txt__item"><a href="singer/001oXbjs29oPul.html#stat=y_new.singerlist.singername" tppabs="http://y.qq.com/portal/singer/001oXbjs29oPul.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001oXbjs29oPul" data-singerid="22874" title="孙子涵">孙子涵</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002azErJ0UcDN6.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002azErJ0UcDN6.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002azErJ0UcDN6.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002azErJ0UcDN6" data-singerid="6499" title="张杰">张杰</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004coWV04C5FCV.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004coWV04C5FCV.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004coWV04C5FCV.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004coWV04C5FCV" data-singerid="944274" title="杨洋">杨洋</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000CK5xN3yZDJt.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000CK5xN3yZDJt.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000CK5xN3yZDJt.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000CK5xN3yZDJt" data-singerid="7221" title="许嵩">许嵩</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0003ZpE43ypssl.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0003ZpE43ypssl.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0003ZpE43ypssl.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0003ZpE43ypssl" data-singerid="199515" title="张碧晨">张碧晨</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001JuGrt372YIQ.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001JuGrt372YIQ.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001JuGrt372YIQ.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001JuGrt372YIQ" data-singerid="4983" title="Maroon 5 (魔力红乐团)">Maroon 5 (魔力红乐团)</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003tMm0y0TuewY.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003tMm0y0TuewY.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003tMm0y0TuewY.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003tMm0y0TuewY" data-singerid="11608" title="杨宗纬">杨宗纬</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001SqkF53OEhdO.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001SqkF53OEhdO.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001SqkF53OEhdO.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001SqkF53OEhdO" data-singerid="204664" title="鹿晗">鹿晗</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003LCFXH0eodXv.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003LCFXH0eodXv.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003LCFXH0eodXv.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003LCFXH0eodXv" data-singerid="137" title="那英">那英</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0000mFvh1jtLcz.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0000mFvh1jtLcz.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0000mFvh1jtLcz.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0000mFvh1jtLcz" data-singerid="167" title="张信哲">张信哲</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001Zi8pD2Xj9jM.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001Zi8pD2Xj9jM.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001Zi8pD2Xj9jM.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001Zi8pD2Xj9jM" data-singerid="1214505" title="汪晨蕊">汪晨蕊</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004Be55m1SJaLk.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004Be55m1SJaLk.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004Be55m1SJaLk.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004Be55m1SJaLk" data-singerid="174" title="张学友">张学友</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000t2qd13dLpae.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000t2qd13dLpae.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000t2qd13dLpae.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000t2qd13dLpae" data-singerid="19851" title="G-DRAGON (权志龙)">G-DRAGON (权志龙)</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002yeznU3VAVEV.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002yeznU3VAVEV.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002yeznU3VAVEV.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002yeznU3VAVEV" data-singerid="180646" title="吴亦凡">吴亦凡</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001z2JmX09LLgL.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001z2JmX09LLgL.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001z2JmX09LLgL.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001z2JmX09LLgL" data-singerid="3954" title="汪苏泷">汪苏泷</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000aw4WC2EQYTv.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000aw4WC2EQYTv.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000aw4WC2EQYTv.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000aw4WC2EQYTv" data-singerid="4607" title="张靓颖">张靓颖</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002OfR3n1vx75j.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002OfR3n1vx75j.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002OfR3n1vx75j.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002OfR3n1vx75j" data-singerid="61959" title="葛林">葛林</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002pUZT93gF4Cu.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002pUZT93gF4Cu.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002pUZT93gF4Cu.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002pUZT93gF4Cu" data-singerid="2" title="BEYOND">BEYOND</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002DYpxl3hW3EP.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002DYpxl3hW3EP.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002DYpxl3hW3EP.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002DYpxl3hW3EP" data-singerid="16257" title="Justin Bieber (贾斯汀·比伯)">Justin Bieber (贾斯汀·比伯)</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002Sm9iK4RIsCr.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002Sm9iK4RIsCr.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002Sm9iK4RIsCr.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002Sm9iK4RIsCr" data-singerid="11761" title="筷子兄弟">筷子兄弟</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0023ni2j3F9CpN.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0023ni2j3F9CpN.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0023ni2j3F9CpN.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0023ni2j3F9CpN" data-singerid="1041231" title="Jam">Jam</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003ZQQb64D5317.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003ZQQb64D5317.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003ZQQb64D5317.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003ZQQb64D5317" data-singerid="69205" title="南征北战">南征北战</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000mLAT42CFWNa.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000mLAT42CFWNa.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000mLAT42CFWNa.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000mLAT42CFWNa" data-singerid="4442" title="朴树">朴树</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001V2dZJ4NsvOp.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001V2dZJ4NsvOp.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001V2dZJ4NsvOp.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001V2dZJ4NsvOp" data-singerid="1200644" title="徐歌阳">徐歌阳</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0035kILA0ydw3j.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0035kILA0ydw3j.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0035kILA0ydw3j.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0035kILA0ydw3j" data-singerid="160022" title="MC天佑">MC天佑</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0030RkE50nmpWC.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0030RkE50nmpWC.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0030RkE50nmpWC.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0030RkE50nmpWC" data-singerid="34703" title="曲婉婷">曲婉婷</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004EoP1g2sL6pO.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004EoP1g2sL6pO.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004EoP1g2sL6pO.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004EoP1g2sL6pO" data-singerid="1198292" title="苏立生">苏立生</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003MQNIf1kZszq.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003MQNIf1kZszq.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003MQNIf1kZszq.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003MQNIf1kZszq" data-singerid="1214452" title="低调组合">低调组合</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001JDzPT3JdvqK.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001JDzPT3JdvqK.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001JDzPT3JdvqK.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001JDzPT3JdvqK" data-singerid="265" title="王力宏">王力宏</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004KKLWZ4320g1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004KKLWZ4320g1.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004KKLWZ4320g1.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004KKLWZ4320g1" data-singerid="61620" title="宋冬野">宋冬野</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003ArN8Z0WpjTz.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003ArN8Z0WpjTz.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003ArN8Z0WpjTz.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003ArN8Z0WpjTz" data-singerid="6028" title="A-Lin">A-Lin</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004QoDUs3jfOC6.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004QoDUs3jfOC6.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004QoDUs3jfOC6.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004QoDUs3jfOC6" data-singerid="1043567" title="韩安旭">韩安旭</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0012bj8d36Xkw1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0012bj8d36Xkw1.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0012bj8d36Xkw1.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0012bj8d36Xkw1" data-singerid="4422" title="牛奶咖啡">牛奶咖啡</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000cISVf2QqLc6.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000cISVf2QqLc6.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000cISVf2QqLc6.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000cISVf2QqLc6" data-singerid="54" title="莫文蔚">莫文蔚</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004DFS271osAwp.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004DFS271osAwp.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004DFS271osAwp.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004DFS271osAwp" data-singerid="4284" title="陈小春">陈小春</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001pWERg3vFgg8.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001pWERg3vFgg8.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001pWERg3vFgg8.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001pWERg3vFgg8" data-singerid="109" title="孙燕姿">孙燕姿</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000hNnWC3kko2c.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000hNnWC3kko2c.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000hNnWC3kko2c.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000hNnWC3kko2c" data-singerid="112" title="蔡健雅">蔡健雅</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004WgCsE3KBddt.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004WgCsE3KBddt.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004WgCsE3KBddt.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004WgCsE3KBddt" data-singerid="940748" title="陈粒">陈粒</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0022VU5J1D8BRP.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0022VU5J1D8BRP.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0022VU5J1D8BRP.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0022VU5J1D8BRP" data-singerid="159" title="胡彦斌">胡彦斌</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/00235pCx2tYjlq.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/00235pCx2tYjlq.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/00235pCx2tYjlq.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="00235pCx2tYjlq" data-singerid="3376" title="许巍">许巍</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004NMZuf2BLjg8.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004NMZuf2BLjg8.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004NMZuf2BLjg8.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004NMZuf2BLjg8" data-singerid="4365" title="周传雄">周传雄</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004E2BBy3X9xne.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004E2BBy3X9xne.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004E2BBy3X9xne.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004E2BBy3X9xne" data-singerid="91580" title="王俊凯">王俊凯</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001m7JoC1IVL44.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001m7JoC1IVL44.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001m7JoC1IVL44.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001m7JoC1IVL44" data-singerid="44018" title="金南玲">金南玲</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001WcO2V0TLCv3.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001WcO2V0TLCv3.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001WcO2V0TLCv3.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001WcO2V0TLCv3" data-singerid="38625" title="威仔">威仔</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000CQ06r24Naco.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000CQ06r24Naco.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000CQ06r24Naco.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000CQ06r24Naco" data-singerid="12978" title="Wiz Khalifa (维兹·卡利法)">Wiz Khalifa (维兹·卡利法)</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003wWQBU0fHBcj.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003wWQBU0fHBcj.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003wWQBU0fHBcj.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003wWQBU0fHBcj" data-singerid="28227" title="马旭东">马旭东</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000BFczD2NDqrN.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000BFczD2NDqrN.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000BFczD2NDqrN.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000BFczD2NDqrN" data-singerid="15580" title="刘涛">刘涛</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003cHsJw40aXQ3.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003cHsJw40aXQ3.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003cHsJw40aXQ3.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003cHsJw40aXQ3" data-singerid="1119968" title="万妮达">万妮达</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0044wQXL0ElWF1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0044wQXL0ElWF1.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0044wQXL0ElWF1.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0044wQXL0ElWF1" data-singerid="168" title="张宇">张宇</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001adLDR1SS40P.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001adLDR1SS40P.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001adLDR1SS40P.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001adLDR1SS40P" data-singerid="4604" title="汪峰">汪峰</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002LZVMH0zc8F4.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002LZVMH0zc8F4.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002LZVMH0zc8F4.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002LZVMH0zc8F4" data-singerid="16244" title="徐佳莹">徐佳莹</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002mze3U0NYXOM.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002mze3U0NYXOM.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002mze3U0NYXOM.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002mze3U0NYXOM" data-singerid="24833" title="胡夏">胡夏</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001f0VyZ1hmWZ1.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001f0VyZ1hmWZ1.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001f0VyZ1hmWZ1.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001f0VyZ1hmWZ1" data-singerid="11606" title="林宥嘉">林宥嘉</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002ZOuVm3Qn20Y.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002ZOuVm3Qn20Y.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002ZOuVm3Qn20Y.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002ZOuVm3Qn20Y" data-singerid="4615" title="李宇春">李宇春</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000SJp6n49rDgl.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000SJp6n49rDgl.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000SJp6n49rDgl.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000SJp6n49rDgl" data-singerid="63938" title="张赫宣">张赫宣</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000WbpKa3WokLD.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000WbpKa3WokLD.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000WbpKa3WokLD.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000WbpKa3WokLD" data-singerid="1045852" title="MC魏小然">MC魏小然</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004eaDNU1nfRO0.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004eaDNU1nfRO0.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004eaDNU1nfRO0.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004eaDNU1nfRO0" data-singerid="1012038" title="张磊">张磊</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004bsIDK0awMOv.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004bsIDK0awMOv.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004bsIDK0awMOv.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004bsIDK0awMOv" data-singerid="13203" title="萧敬腾">萧敬腾</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002MiBdR19HQWx.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002MiBdR19HQWx.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002MiBdR19HQWx.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002MiBdR19HQWx" data-singerid="6966" title="Rihanna (蕾哈娜)">Rihanna (蕾哈娜)</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003CKb192ggBqi.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003CKb192ggBqi.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003CKb192ggBqi.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003CKb192ggBqi" data-singerid="4868" title="Fall Out Boy (打倒男孩)">Fall Out Boy (打倒男孩)</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000Q4W691sMvLG.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000Q4W691sMvLG.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000Q4W691sMvLG.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000Q4W691sMvLG" data-singerid="5924" title="苏打绿">苏打绿</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002Vcz8F2hpBQj.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002Vcz8F2hpBQj.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002Vcz8F2hpBQj.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002Vcz8F2hpBQj" data-singerid="163550" title="华晨宇">华晨宇</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0035uMnn2AIQYq.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0035uMnn2AIQYq.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0035uMnn2AIQYq.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0035uMnn2AIQYq" data-singerid="1198289" title="白静晨">白静晨</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003CoxJh1zFPpx.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003CoxJh1zFPpx.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003CoxJh1zFPpx.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003CoxJh1zFPpx" data-singerid="12578" title="Adele (阿黛尔)">Adele (阿黛尔)</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/002xpOdd4Dh6pu.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/002xpOdd4Dh6pu.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/002xpOdd4Dh6pu.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="002xpOdd4Dh6pu" data-singerid="11707" title="李易峰">李易峰</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000kLeDp2p0adb.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000kLeDp2p0adb.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000kLeDp2p0adb.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000kLeDp2p0adb" data-singerid="187238" title="7妹">7妹</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003AfDK34H82GU.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003AfDK34H82GU.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003AfDK34H82GU.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003AfDK34H82GU" data-singerid="219" title="张敬轩">张敬轩</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001YS2uE1TV9qy.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001YS2uE1TV9qy.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001YS2uE1TV9qy.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001YS2uE1TV9qy" data-singerid="1195908" title="蒋敦豪">蒋敦豪</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001Ic36m4AhaBw.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001Ic36m4AhaBw.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001Ic36m4AhaBw.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001Ic36m4AhaBw" data-singerid="4417" title="Avril Lavigne (艾薇儿·拉维尼)">Avril Lavigne (艾薇儿·拉维尼)</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004DTQXp0cNXeG.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004DTQXp0cNXeG.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004DTQXp0cNXeG.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004DTQXp0cNXeG" data-singerid="11453" title="魏晨">魏晨</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001Z043U01BqsW.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001Z043U01BqsW.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001Z043U01BqsW.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001Z043U01BqsW" data-singerid="19633" title="曾轶可">曾轶可</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000JvETZ3tOrPR.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000JvETZ3tOrPR.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000JvETZ3tOrPR.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000JvETZ3tOrPR" data-singerid="228" title="陈慧娴">陈慧娴</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000tCjkO03wtAn.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000tCjkO03wtAn.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000tCjkO03wtAn.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000tCjkO03wtAn" data-singerid="165829" title="杨搏">杨搏</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004YXxql1sSr2o.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004YXxql1sSr2o.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004YXxql1sSr2o.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004YXxql1sSr2o" data-singerid="12111" title="金志文">金志文</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001oNMzI3WznzG.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001oNMzI3WznzG.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001oNMzI3WznzG.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001oNMzI3WznzG" data-singerid="23800" title="夏婉安">夏婉安</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001Yxpxc0OaUUX.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001Yxpxc0OaUUX.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001Yxpxc0OaUUX.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001Yxpxc0OaUUX" data-singerid="15514" title="逃跑计划">逃跑计划</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003rJfMG3PPqWd.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003rJfMG3PPqWd.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003rJfMG3PPqWd.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003rJfMG3PPqWd" data-singerid="943468" title="萌萌哒天团">萌萌哒天团</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004YjBWe1YkUaL.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004YjBWe1YkUaL.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004YjBWe1YkUaL.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004YjBWe1YkUaL" data-singerid="1214516" title="包师语">包师语</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004ALksm29seAk.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004ALksm29seAk.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004ALksm29seAk.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004ALksm29seAk" data-singerid="72148" title="印子月">印子月</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/0032kD0i1ARTGM.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/0032kD0i1ARTGM.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/0032kD0i1ARTGM.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="0032kD0i1ARTGM" data-singerid="1000700" title="MC高迪">MC高迪</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000yDAjj2TE9j8.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000yDAjj2TE9j8.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000yDAjj2TE9j8.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000yDAjj2TE9j8" data-singerid="4880" title="Eminem (艾米纳姆)">Eminem (艾米纳姆)</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/000NFT2p1GbnPB.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/000NFT2p1GbnPB.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/000NFT2p1GbnPB.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="000NFT2p1GbnPB" data-singerid="3347" title="古巨基">古巨基</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003ixfJX2AuX4V.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003ixfJX2AuX4V.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003ixfJX2AuX4V.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003ixfJX2AuX4V" data-singerid="1159033" title="MC梦柯">MC梦柯</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003JGrNQ3RjelA.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003JGrNQ3RjelA.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003JGrNQ3RjelA.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003JGrNQ3RjelA" data-singerid="141" title="张惠妹">张惠妹</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/001I1ErO39969j.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/001I1ErO39969j.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/001I1ErO39969j.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="001I1ErO39969j" data-singerid="1160775" title="高迪">高迪</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003bQEFA3KrvLI.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003bQEFA3KrvLI.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003bQEFA3KrvLI.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003bQEFA3KrvLI" data-singerid="161444" title="刘瑞琦">刘瑞琦</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/003aQYLo2x8izP.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/003aQYLo2x8izP.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/003aQYLo2x8izP.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="003aQYLo2x8izP" data-singerid="163" title="刘德华">刘德华</a></li>
                        
            <li class="singer_list_txt__item"><a href="javascript:if(confirm('http://y.qq.com/portal/singer/004EyqQS2hMS6V.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ���������ʼ��ַ��Զ�����ӡ������������ʼ��ַ�����������, ���ļ������������ض��С�  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/singer/004EyqQS2hMS6V.html#stat=y_new.singerlist.singername'" tppabs="http://y.qq.com/portal/singer/004EyqQS2hMS6V.html#stat=y_new.singerlist.singername" class="singer_list_txt__link js_singer" data-singermid="004EyqQS2hMS6V" data-singerid="22926" title="陈翔">陈翔</a></li>
                        
        </ul>
        <div class="mod_page_nav js_pager"><a href="javascript:;" class="prev js_pageindex" data-index="1" title="上一页" hidefocus=""><span>&lt;</span></a><a href="javascript:;" class="js_pageindex" data-index="1" hidefocus="">1</a><strong class="current">2</strong><a href="javascript:;" class="js_pageindex" data-index="3" hidefocus="">3</a><a href="javascript:;" class="js_pageindex" data-index="4" hidefocus="">4</a><strong class="more">...</strong><a href="javascript:;" class="js_pageindex" data-index="5016" hidefocus="">5016</a><a href="javascript:;" class="next js_pageindex" data-index="3" title="下一页" hidefocus=""><span>&gt;</span></a></div></div>
		
	</div> 
    </div>
    <div class="footer" role="footer">
    <div class="section_inner">
        <div class="footer_info">

            <div class="footer_download">
                <h3 class="footer_tit">下载QQ音乐客户端</h3>
                <ul class="footer_download_list">
                    <li class="footer_download_list__item"><a href="../download/index.htm" tppabs="http://y.qq.com/download/" class="js_footer_down" data-type="pc" data-stat="y_new.footer.download.pc"><i class="icon_qm_pc"><span class="icon_txt">QQ音乐</span></i>PC版</a></li>
                    <li class="footer_download_list__item"><a href="../download/index.htm" tppabs="http://y.qq.com/download/" class="js_footer_down" data-type="mac" data-stat="y_new.footer.download.mac"><i class="icon_qm_mac"><span class="icon_txt">QQ音乐</span></i>Mac版</a></li>
                    <li class="footer_download_list__item"><a href="../download/index.htm" tppabs="http://y.qq.com/download/" class="js_footer_down" data-type="andriod" data-stat="y_new.footer.download.andriod"><i class="icon_qm_android"><span class="icon_txt">QQ音乐</span></i>Android版</a></li>
                    <li class="footer_download_list__item"><a href="../download/index.htm" tppabs="http://y.qq.com/download/" class="js_footer_down" data-type="iphone" data-stat="y_new.footer.download.iphone"><i class="icon_qm_iphone"><span class="icon_txt">QQ音乐</span></i>iPhone版</a></li>
                </ul>
            </div>

            <div class="footer_product">
                <h3 class="footer_tit">特色产品</h3>
                <ul class="footer_product_list">
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="javascript:if(confirm('http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu'" tppabs="http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.k"><i class="icon_qm_kg"></i>全民K歌</a></li>
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="../vip/voice_intro/index.html" tppabs="http://y.qq.com/vip/voice_intro/index.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.supersound"><i class="icon_qm_ss"></i>Super Sound</a></li>
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="../y/static/down/qplay.html-pgv_ref=qqmusic.y.topmenu.htm" tppabs="http://y.qq.com/y/static/down/qplay.html?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.qplay"><i class="icon_qm_qp"></i>QPlay</a></li>
                    <li class="footer_product_list__item"><a href="../cp/homepage.html#/home?from=yqq" tppabs="http://y.qq.com/cp/homepage.html#/home?from=yqq" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.cp">QQ音乐原创音乐平台</a></li>
                    <li class="footer_product_list__item"><a href="../y/static/down/car_introduce.html" tppabs="http://y.qq.com/y/static/down/car_introduce.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.car_play">车载互联</a></li>
                    <li class="footer_product_list__item"><a href="../yanchu/-pgv_ref=qqmusic.y.topmenu.htm" tppabs="http://y.qq.com/yanchu/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.yanchu">QQ演出</a></li>
                </ul>
            </div>

            <div class="footer_link">
                <h3 class="footer_tit">合作链接</h3>
                <!-- 显示全部 footer_link_list--show -->
                <ul class="footer_link_list">
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://v.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://v.qq.com/'" tppabs="http://v.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯视频</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://z.qzone.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://z.qzone.com/'" tppabs="http://z.qzone.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">手机QQ空间</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://im.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://im.qq.com/'" tppabs="http://im.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">最新版QQ</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://e.qq.com/index.shtml  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://e.qq.com/index.shtml'" tppabs="http://e.qq.com/index.shtml" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯社交广告</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://guanjia.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://guanjia.qq.com/'" tppabs="http://guanjia.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">电脑管家</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://browser.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://browser.qq.com/'" tppabs="http://browser.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">QQ浏览器</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://huabao.qzone.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://huabao.qzone.qq.com/'" tppabs="http://huabao.qzone.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">画报</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://act.qzone.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://act.qzone.qq.com/'" tppabs="http://act.qzone.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">黄钻活动</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://xing.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://xing.qq.com/'" tppabs="http://xing.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">星钻</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://www.weiyun.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.weiyun.com/'" tppabs="http://www.weiyun.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯微云</a></li>
                    <li class="footer_link_list__item"><a href="javascript:if(confirm('http://fm.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://fm.qq.com/'" tppabs="http://fm.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">企鹅FM</a></li>
                    <li class="footer_link_list__item js_last" style="display:none;"><a href="javascript:if(confirm('https://www.qcloud.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://www.qcloud.com/'" tppabs="https://www.qcloud.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云</a></li>
                    <li class="footer_link_list__item"><a href="javascript:;" class="js_footer_more">更多</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="javascript:if(confirm('http://buluo.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://buluo.qq.com/'" tppabs="http://buluo.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">兴趣部落</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="javascript:if(confirm('https://ke.qq.com/?from=100  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='https://ke.qq.com/?from=100'" tppabs="https://ke.qq.com/?from=100" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯课堂</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="javascript:if(confirm('http://yunsou.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://yunsou.qq.com/'" tppabs="http://yunsou.qq.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云搜</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="javascript:if(confirm('http://bbs.qcloud.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://bbs.qcloud.com/'" tppabs="http://bbs.qcloud.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">腾讯云论坛</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="javascript:if(confirm('http://www.znds.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.znds.com/'" tppabs="http://www.znds.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">智能电视网</a></li>
                    <li class="footer_link_list__item footer_link_list__item--more"><a href="javascript:if(confirm('http://www.dangbei.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.dangbei.com/'" tppabs="http://www.dangbei.com/" target="_blank" class="js_other_link" data-stat="y_new.footer.other_link">当贝市场</a></li>
                </ul>
            </div>
        </div>
        <div class="footer_copyright">
		
		<p >
			<a href="javascript:if(confirm('http://www.tencent.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tencent.com/'" tppabs="http://www.tencent.com/" rel="nofollow" target="_blank" title="关于腾讯">关于腾讯</a> | 
			<a href="javascript:if(confirm('http://www.tencent.com/index_e.shtml  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tencent.com/index_e.shtml'" tppabs="http://www.tencent.com/index_e.shtml" rel="nofollow" target="_blank" title="About Tencent">About Tencent</a> | 
			<a href="javascript:if(confirm('http://www.qq.com/contract.shtml  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.qq.com/contract.shtml'" tppabs="http://www.qq.com/contract.shtml" rel="nofollow" target="_blank" title="服务条款">服务条款</a> | 
			<a href="../y/static/tips/service_tips.html" tppabs="http://y.qq.com/y/static/tips/service_tips.html" rel="nofollow" target="_blank" title="用户服务协议">用户服务协议</a> | 
			<a href="javascript:if(confirm('http://www.tencentmind.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tencentmind.com/'" tppabs="http://www.tencentmind.com/" rel="nofollow" target="_blank" title="广告服务">广告服务</a> | 
			<a href="javascript:if(confirm('http://hr.tencent.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://hr.tencent.com/'" tppabs="http://hr.tencent.com/" rel="nofollow" target="_blank" title="腾讯招聘">腾讯招聘</a> | 
			<a href="javascript:if(confirm('http://service.qq.com/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://service.qq.com/'" tppabs="http://service.qq.com/" rel="nofollow" target="_blank" title="客服中心">客服中心</a> | 
			<a href="javascript:if(confirm('http://www.qq.com/map/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.qq.com/map/'" tppabs="http://www.qq.com/map/" rel="nofollow" target="_blank" title="网站导航">网站导航</a>
		</p>

            <p>Copyright &copy; 1998 - <script type="text/javascript">document.write(new Date().getFullYear());</script> Tencent. <a target="_blank" href="javascript:if(confirm('http://www.tencent.com/en-us/le/copyrightstatement.shtml  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tencent.com/en-us/le/copyrightstatement.shtml'" tppabs="http://www.tencent.com/en-us/le/copyrightstatement.shtml" rel="nofollow" title="All Rights Reserved.">All Rights Reserved.</a></p>
	<p>腾讯公司 <a  target="_blank" href="javascript:if(confirm('http://www.tencent.com/zh-cn/le/copyrightstatement.shtml  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tencent.com/zh-cn/le/copyrightstatement.shtml'" tppabs="http://www.tencent.com/zh-cn/le/copyrightstatement.shtml" rel="nofollow" title="版权所有">版权所有</a> <a  target="_blank" href="javascript:if(confirm('http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm'" tppabs="http://www.tencent.com/law/mo_law.shtml?/law/copyright.htm" rel="nofollow" title="腾讯网络文化经营许可证">腾讯网络文化经营许可证</a></p>
        </div>
    </div>
</div>

<script>SPD.mark(32); </script>
<script type="text/javascript">require.resourceMap({"res":{"js/v4/album.js"/*tpa=http://y.qq.com/portal/js/v4/album.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/album_81c0596.js?max_age=31536000","m":"81c0596"},"js/v4/album_lib.js"/*tpa=http://y.qq.com/portal/js/v4/album_lib.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/album_lib_42ae192.js?max_age=31536000","m":"42ae192"},"js/v4/index.js"/*tpa=http://y.qq.com/portal/js/v4/index.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/index_c4eb2d7.js?max_age=31536000","m":"c4eb2d7"},"js/v4/mv.js"/*tpa=http://y.qq.com/portal/js/v4/mv.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mv_28b6275.js?max_age=31536000","m":"28b6275"},"js/v4/mvToplist.js"/*tpa=http://y.qq.com/portal/js/v4/mvToplist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mvToplist_5a97428.js?max_age=31536000","m":"5a97428"},"js/v4/mv_lib.js"/*tpa=http://y.qq.com/portal/js/v4/mv_lib.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mv_lib_397139d.js?max_age=31536000","m":"397139d"},"js/v4/mymusic.js"/*tpa=http://y.qq.com/portal/js/v4/mymusic.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mymusic_47250ee.js?max_age=31536000","m":"47250ee"},"js/v4/mymusic_edit.js"/*tpa=http://y.qq.com/portal/js/v4/mymusic_edit.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mymusic_edit_a67c28c.js?max_age=31536000","m":"a67c28c"},"js/v4/player.js"/*tpa=http://y.qq.com/portal/js/v4/player.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/,"js/common/music/scroller.js"/*tpa=http://y.qq.com/portal/js/common/music/scroller.js*/,"js/common/module/webplayer.js"/*tpa=http://y.qq.com/portal/js/common/module/webplayer.js*/,"js/common/module/lrcHandler.js"/*tpa=http://y.qq.com/portal/js/common/module/lrcHandler.js*/,"js/common/module/qrcHandler.js"/*tpa=http://y.qq.com/portal/js/common/module/qrcHandler.js*/,"js/common/music/txtpl.js"/*tpa=http://y.qq.com/portal/js/common/music/txtpl.js*/,"js/common/music/storage.js"/*tpa=http://y.qq.com/portal/js/common/music/storage.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/player_b4eb8b9.js?max_age=31536000","m":"b4eb8b9"},"js/v4/playlist.js"/*tpa=http://y.qq.com/portal/js/v4/playlist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/playlist_11793de.js?max_age=31536000","m":"11793de"},"js/v4/playlist_detail.js"/*tpa=http://y.qq.com/portal/js/v4/playlist_detail.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/playlist_detail_ce9050c.js?max_age=31536000","m":"ce9050c"},"js/v4/profile.js"/*tpa=http://y.qq.com/portal/js/v4/profile.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/,"js/common/music/storage.js"/*tpa=http://y.qq.com/portal/js/common/music/storage.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/profile_0b03fbb.js?max_age=31536000","m":"0b03fbb"},"js/v4/search.js"/*tpa=http://y.qq.com/portal/js/v4/search.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/,"js/common/music/storage.js"/*tpa=http://y.qq.com/portal/js/common/music/storage.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/search_6c6ee5b.js?max_age=31536000","m":"6c6ee5b"},"js/v4/singer.js"/*tpa=http://y.qq.com/portal/js/v4/singer.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/,"js/common/music/lib/base.js"/*tpa=http://y.qq.com/portal/js/common/music/lib/base.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/singer_b1872f9.js?max_age=31536000","m":"b1872f9"},"js/v4/singerlist.js"/*tpa=http://y.qq.com/portal/js/v4/singerlist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/singerlist_b530ffa.js?max_age=31536000","m":"b530ffa"},"js/v4/song_detail.js"/*tpa=http://y.qq.com/portal/js/v4/song_detail.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/song_detail_1db6650.js?max_age=31536000","m":"1db6650"},"js/v4/toplist.js"/*tpa=http://y.qq.com/portal/js/v4/toplist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/portal/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/toplist_64c1e5e.js?max_age=31536000","m":"64c1e5e"}},"pkg":{}});</script>
<script type="text/javascript"> 
	window.onload = function () {
		SPD.mark(35);	
	};
;(function () {
	require.async("js/v4/singerlist.js"/*tpa=http://y.qq.com/portal/js/v4/singerlist.js*/, function( singerlist ){
		singerlist.init({
			total_page : '4918'||0,
			per_page : '100'||100,
			total : '491796'||0
		});
	});
})(); 
</script> 

</body>
</html>