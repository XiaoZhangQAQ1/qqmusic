<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <meta name="baidu-site-verification" content="kkpzPh12FZ" />
    <title>QQ音乐 - 中国最新最全免费正版高品质音乐平台！</title>
    <link rel="canonical" href="//y.qq.com/" />
<script type="text/javascript">
    var _speedMark = new Date();
</script>
          
<script id="mod_spt">
document.domain = 'http://y.qq.com/qq.com';
if (/iPhone|Android/i.test(navigator.userAgent) && !/type=(singer|album|song)&m?id/i.test(location.hash) && !/type=(topic|toplist|taoge|mymusic)/i.test(location.hash) && !/nomobile=1/.test(location.search)) {
	location.href='http://m.y.qq.com/';
}

function getParameterNew(url, name) {
    var r = new RegExp("(\\?|#|&)" + name + "=([^&#\\?]*)(&|#|$|\\?)");
    var m = url.match(r);
    if ((!m || m == "")){
        m = top.location.href.match(r);
	}
    return (!m ? "" : m[2]);
};
var myUrl = window.location.href;

var chnUrl = decodeURIComponent( getParameterNew(myUrl, 'url')||'' ),
	flag = unescape(getParameterNew(myUrl, 'f')),
	type = unescape(getParameterNew(myUrl, "type")),
	id = parseInt(getParameterNew(myUrl, "id")||'0', 10),
	mid = (getParameterNew(myUrl, "mid")),
	mids = (getParameterNew(myUrl, "mids")),
	tab = getParameterNew(myUrl, "tab")||'',
	page = decodeURIComponent(getParameterNew(myUrl, "p")||''),
	diruin = getParameterNew(myUrl, "uin")||0,
	dirid = getParameterNew(myUrl, "dirid")||0,
	pgv_ref = getParameterNew(myUrl, "pgv_ref")||'',
	msgid = getParameterNew(myUrl, "msgid")||0,
	adtag = getParameterNew(myUrl, "ADTAG")||'',
	downm = parseInt(getParameterNew(myUrl, "m"),10),
	songtype = getParameterNew(myUrl, "songtype")||0,
	shareuin = getParameterNew(myUrl, "shareuin")||0,
	disstid = getParameterNew(myUrl, "disstid")||0,
	play = parseInt(getParameterNew(myUrl, "play") || 0,10);
	if(type=='song'&&songtype>0){
	id = getParameterNew(myUrl, "id")||'0';
	}
	var mmid = mid.match(/[0-9a-zA-Z]*/);
	if (mmid.length>0)
	{
		mid = mmid[0];
	}else mid = '';
	
var goPhonePage = false;
	// 跳转到手机页面
	(function(){
		if(navigator.userAgent.match(/Android|iPhone|iPod/i)){ // 手机侧
			switch(type){
				case 'album' : 
					if(id){
						window.location.replace('//y.qq.com/w/album.html?ADTAG=newyqq.index.album&albumid='+id);
						goPhonePage = true;
					}else
					if(mid){
						window.location.replace('//y.qq.com/w/album.html?ADTAG=newyqq.index.album&albummid='+mid);
						goPhonePage = true;
					}
					break;
				case 'singer' : 
					if(id){
						window.location.replace('//y.qq.com/w/singer.html?ADTAG=newyqq.index.singer&singerid='+id);
						goPhonePage = true;
					}else
					if(mid){
						window.location.replace('//y.qq.com/w/singer.html?ADTAG=newyqq.index.singer&singermid='+mid);
						goPhonePage = true;
					}
					break;
				case 'song' : 
					if(id){
						window.location.replace('//c.y.qq.com/v8/playsong.html?ADTAG=newyqq.index.song&songid='+id+(!!songtype? ('&songtype='+songtype) : '')+(!!shareuin? ('&shareuin='+shareuin) : '')+(!!disstid? ('&disstid='+disstid) : ''));
						goPhonePage = true;
					}else
					if(mid){
						window.location.replace('//c.y.qq.com/v8/playsong.html?ADTAG=newyqq.index.song&songmid='+mid+(!!songtype? ('&songtype='+songtype) : '')+(!!shareuin? ('&shareuin='+shareuin) : '')+(!!disstid? ('&disstid='+disstid) : ''));
						goPhonePage = true;
					}
					break;
				case 'topic' : 
					if(id){
						window.location.replace('//y.qq.com/w/topic.html?ADTAG=newyqq.index.topic&id='+id);
						goPhonePage = true;
					}
					break;
				case 'taoge' : 
					if(id){
						window.location.replace('//y.qq.com/w/taoge.html?ADTAG=newyqq.index.taoge&id='+id);
						goPhonePage = true;
					}
					break;
				case 'toplist' : 
					if( /_/ig.test(page)  ){
						var tempType = page.split('_')[0], tempId = parseInt(page.split('_')[1]);
						if(tempId){
							if(tempType == 'top'){
								window.location.replace('//y.qq.com/w/toplist.html?ADTAG=newyqq.index.toplist&id='+tempId+'&type=0');
								goPhonePage = true;
							}else if(tempType=='global'){
								window.location.replace('//y.qq.com/w/toplist.html?ADTAG=newyqq.index.toplist&id='+tempId+'&type=1');
								goPhonePage = true;
							}
						}else{
							window.location.replace('w/toplist.html-ADTAG=newyqq.index.toplist&id=2&type=0.htm'/*tpa=http://y.qq.com/w/toplist.html?ADTAG=newyqq.index.toplist&id=2&type=0*/);
							goPhonePage = true;
						}
					}
					break;
				case 'mymusic' : 
					var tuin = getParameterNew(page, 'uin'),
						tdirid = getParameterNew(page, 'dirid');
					if(tuin && tdirid){
						var g_BCDCode ={
							Str2Hex : function(s){
								var ss = encodeURIComponent(s);
								var hex = '';
								
								for(var i=0, len=ss.length; i<len; ){
									var c = ss.charAt(i), tc = '';
									if(c==="%"){
										tc = ss.substring(i,i+3);
										i = i+3;
									}else{
										tc = ss.charCodeAt(i);
										tc = "%"+tc.toString(16);
										i++;
									}
									hex = hex + tc;
								}
								return (hex.replace(/%/g,"")).toUpperCase();
							}
						};
						tuin = g_BCDCode.Str2Hex(tuin);
						
						window.location.replace('//y.qq.com/w/myalbum.html?ADTAG=newyqq.index.mymusic&bu='+tuin+'&dirid='+tdirid);
						goPhonePage = true;
					}else{
						window.location.replace('http://m.y.qq.com/?ADTAG=newyqq.index.mymusic');
						goPhonePage = true;
					}
					break;
				case 'soso':
					var kw = decodeURIComponent(getParameterNew(page, 'w'));
					window.location.replace('//m.y.qq.com/#search/' + (kw? kw : ''));
					goPhonePage = true;
					break;
			}
		}
	})();
	function isURL(s){
	var _isURL =  /^(?:ht|f)tp(?:s)?\:\/\/(?:[\w\-\.]+)\.\w+/i;
	return _isURL.test(s);
}
	
function _go() {
	var url = '';
	
	if (type == "album") {
		if (mid!=''&&typeof(mid)!='undefined'&&(mid)!='undefined') {
			url = window.location.protocol+"//y.qq.com/portal/album/"+mid+".html"+(!!adtag? ('?ADTAG='+adtag) : '');
		}else if (id > 0) {
			url = 'http://y.qq.com/portal_old#type=album&id='+id;
		}
	} else if (type == "toplist"){
		if (!!page && !/top_index/.test(page)){
			page = page.replace(/\.html/g,'');
			url = window.location.protocol+"//y.qq.com/portal/toplist/"+page.split('_')[1]+".html"+(!!adtag? ('?ADTAG='+adtag) : '');
		} else {
			url = window.location.protocol+"//y.qq.com/portal/toplist/4.html"+(!!adtag? ('?ADTAG='+adtag) : '');
		}
	} else if (type == "singer") {
		if (mid!=''&&typeof(mid)!='undefined'&&(mid)!='undefined') {
			url = window.location.protocol+'//y.qq.com/portal/singer/'+mid+'.html'+(!!adtag? ('?ADTAG='+adtag) : '');
		}else if (id > 0) {
			url = window.location.protocol+'//y.qq.com/portal/singer/'+id+'_num.html'+(!!adtag? ('?ADTAG='+adtag) : '');
		} else {
			url = window.location.protocol+"//y.qq.com/portal/singerlist.html"+(!!adtag? ('?ADTAG='+adtag) : '');             ///////////////////////////////////SINGERLIST////////////////////////////////////////////////////////////////////////
		}
		
	} else if (type == "song" && (parseInt(id, 10) > 0||mid!='')) {
		id = getParameterNew(myUrl, "id")||'' , songtype = parseInt(songtype, 10), disstid = parseInt(disstid, 10);
		if (mid!=''&&typeof(mid)!='undefined'&&(mid)!='undefined') {
			url = window.location.protocol+"//y.qq.com/portal/song/"+mid+".html"+(!!adtag? ('?ADTAG='+adtag) : '');
			if (!!disstid&&!!songtype&&!!id)
			{
				url = window.location.protocol+"//y.qq.com/portal/song3/"+songtype+"/"+disstid+"/"+id+".html"+(!!adtag? ('?ADTAG='+adtag) : '')
			}else 
			if (!!songtype&&!!id)
			{
				url = window.location.protocol+"//y.qq.com/portal/song2/"+songtype+"/"+id+".html"+(!!adtag? ('?ADTAG='+adtag) : '')
			}
		} else {
			if (!!id)
			{
				url = window.location.protocol+"//y.qq.com/portal/song/"+id+"_num.html"+(!!adtag? ('?ADTAG='+adtag) : '');
				if (!!disstid&&!!songtype)
				{
					url = window.location.protocol+"//y.qq.com/portal/song3/"+songtype+"/"+disstid+"/"+id+".html"+(!!adtag? ('?ADTAG='+adtag) : '')
				}else 
				if (!!songtype)
				{
					url = window.location.protocol+"//y.qq.com/portal/song2/"+songtype+"/"+id+".html"+(!!adtag? ('?ADTAG='+adtag) : '')
				}
			}
		}
	} else if (type == "mymusic") {
		if (!!page&&(page == 'http://y.qq.com/songlist_import.html'||page == 'http://y.qq.com/list_recover.html')){
			url = window.location.protocol+"//y.qq.com/portal/"+page+"?tab="+tab;
			if (!!tab)
			{
				url = window.location.protocol+"//y.qq.com/portal/"+page+"?tab="+tab;
			}
		} else {
			if (!!page&&(page == 'http://y.qq.com/mymusic_albumlist.html'))
			{
			url = window.location.protocol+"//y.qq.com/portal/profile.html#sub=other&tab=create&"+(!!adtag? ('&ADTAG='+adtag) : '');
			}else
			url = window.location.protocol+"//y.qq.com/portal/profile.html"+(!!adtag? ('?ADTAG='+adtag) : '');
		}
	} else if (type == "down") {
		{
			url = "http://y.qq.com/download/index.html"+(!!adtag? ('?ADTAG='+adtag) : '');
		}
		window.location.replace(url);
		return false;
	}else if (type == "soso"){
		if (!!page){
			url = window.location.protocol+"//y.qq.com/portal/search.html"+page;
		}else
		url = window.location.protocol+"//y.qq.com/portal/search.html"+(!!adtag? ('?ADTAG='+adtag) : '');
	}else if (type == "qplay") {
		if (!!page) {
			url = "http://y.qq.com/y/static/qplay/" + page;
		} else {
			url = "y/static/qplay/qplay_coop.html"/*tpa=http://y.qq.com/y/static/qplay/qplay_coop.html*/;
		}
	}else if (type == "taoge") {
		if (id > 0){
			url = window.location.protocol+"//y.qq.com/portal/playlist/"+id+".html"+(!!adtag? ('?ADTAG='+adtag) : '');
		} 
		
	} else if (type == "radio") {
		url = "";
	} else if (type == "car") {
		url = "http://y.qq.com/y/static/down/car_introduce.html"+(!!adtag? ('?ADTAG='+adtag) : '')
	}
	
	
	if(!isURL(url)){
		url = '';
	}
	if (!!url) {
		if (!!adtag&&url.indexOf('ADTAG')==-1){
			if (url.indexOf('?')==-1){url = url+"?ADTAG=" + adtag; }else{url = url+"&ADTAG=" + adtag;}
		}
		if (!!play){
			if (url.indexOf('?')==-1){url = url+"?play=" + play; }else{url = url+"&play=" + play;}
		}
		if (!!mids){
			if (url.indexOf('?')==-1){url = url+"?mids=" + mids; }else{url = url+"&mids=" + mids;}
		}
		window.location.href=url;
	}

}
	if (!goPhonePage)
	{
		_go();
	}
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
    <link rel="stylesheet" href="css/layout0927.css" tppabs="http://y.gtimg.cn/mediastyle/yqq/layout0914.css?max_age=25920000&v=20160830" />
    <link rel="stylesheet" href="css/index.css" tppabs="http://y.gtimg.cn/mediastyle/yqq/index.css?max_age=25920000" />
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
        <h1 class="qqmusic_title"><a href="index.htm" tppabs="http://y.qq.com/"><img srcset="//y.gtimg.cn/mediastyle/yqq/img/logo@2x.png 2x" src="images/logo.png" tppabs="http://y.gtimg.cn/mediastyle/yqq/img/logo.png" alt="QQ音乐" class="qqmusic_logo"/></a></h1>
        <!-- 导航 S -->
        <ul class="mod_top_nav" role="nav">
            <li class="top_nav__item top_nav__item--room">
                <a href="index.htm" tppabs="http://y.qq.com/" class="top_nav__link top_nav__link--current" title="音乐馆">音乐馆<i class="top_nav__txt"></i></a>
            </li>
            <li class="top_nav__item top_nav__item--mine">
                <a href="profile" tppabs="http://y.qq.com/portal/profile.html" class="top_nav__link" title="我的音乐">我的音乐<i class="top_nav__txt"></i></a>
            </li>
            <li class="top_nav__item top_nav__item--down">
                <a href="download/index.html" tppabs="http://y.qq.com/download/index.html" class="top_nav__link" title="下载客户端" target="_blank">下载客户端<i class="top_nav__txt"></i></a>
            </li>
	    <li class="top_nav__item top_nav__item--vip">
	        <a href="vipportal/index.htm" tppabs="http://y.qq.com/vipportal/" class="top_nav__link" title="VIP" target="_blank">VIP<i class="top_nav__txt"></i></a>
	    </li>
        </ul>
	    <ul class="mod_top_subnav" style="display:;">
		<li class="top_subnav__item">
		    <a href="index.htm" tppabs="http://y.qq.com/" class="top_subnav__link">首页</a>
		</li>
		<li class="top_subnav__item">
		    <a href="singerlist.servlet" tppabs="http://y.qq.com/portal/singerlist.html" class="top_subnav__link">歌手</a>
		</li>
		<li class="top_subnav__item">
		    <a href="album.servlet" tppabs="http://y.qq.com/portal/album_lib.html#t9=2" class="top_subnav__link">专辑</a>
		</li>
		<li class="top_subnav__item">
		    <a href="toplist.servlet" tppabs="http://y.qq.com/portal/toplist/4.html" class="top_subnav__link">排行榜</a>
		</li>
		<li class="top_subnav__item">
		    <a href="playlist.servlet" tppabs="http://y.qq.com/portal/playlist.html" class="top_subnav__link">歌单广场</a>
		</li>
		<li class="top_subnav__item">
		    <a href="portal/mv_lib.html#t6=2" tppabs="http://y.qq.com/portal/mv_lib.html#t6=2" class="top_subnav__link">MV</a>
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
		    <a class="top_login__link js_logined" href="portal/profile.html#stat=y_new.top.user_pic" tppabs="http://y.qq.com/portal/profile.html#stat=y_new.top.user_pic" style="display:none;">
                        <img src="../p.qpic.cn/music_cover/xuw5SicGO1JcU0WE5dhS1r3FacGHrzRNp8NgRawzCHTzPKRtc0GNc4Q/300-n=1&n=1.jpg" tppabs="http://p.qpic.cn/music_cover/xuw5SicGO1JcU0WE5dhS1r3FacGHrzRNp8NgRawzCHTzPKRtc0GNc4Q/300?n=1&n=1" class="top_login__cover" alt="" />
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



    <!-- 新碟首发 -->
    <div class="mod_index mod_index--new mod_slide_box" id="albumlist_box" >
        <div class="section_inner">
            <div class="index__hd">
                <h2 class="index__tit"><i class="index__tit_sprite"></i><i class="icon_txt">新碟首发</i></h2>
                <i class="index__line index__line--left"></i>
                <i class="index__line index__line--right"></i>
            </div>
	    <a href="portal/album_lib.html#stat=y_new.index.album.more" tppabs="http://y.qq.com/portal/album_lib.html#stat=y_new.index.album.more" class="index__more index__more--white js_album_more">全部<i class="icon_index_arrow"></i></a>
            <!-- 切换 -->
            <div class="mod_index_tab">
                <a href="portal/album_lib.html#stat=y_new.index.album.all" tppabs="http://y.qq.com/portal/album_lib.html#stat=y_new.index.album.all" class="index_tab__item js_tab index_tab__item--current" data-type="all" data-stat="y_new.index.album.all">全部</a>
                <a href="portal/album_lib.html#stat=y_new.index.album.all&t2=0" tppabs="http://y.qq.com/portal/album_lib.html#stat=y_new.index.album.all&t2=0" class="index_tab__item js_tab" data-type="cn" data-stat="y_new.index.album.cn">华语</a>
                <a href="portal/album_lib.html#stat=y_new.index.album.all&t2=5" tppabs="http://y.qq.com/portal/album_lib.html#stat=y_new.index.album.all&t2=5" class="index_tab__item js_tab" data-type="eu" data-stat="y_new.index.album.eu">欧美</a>
                <a href="portal/album_lib.html#stat=y_new.index.album.all&t2=4" tppabs="http://y.qq.com/portal/album_lib.html#stat=y_new.index.album.all&t2=4" class="index_tab__item js_tab" data-type="k" data-stat="y_new.index.album.k">韩国</a>
                <a href="portal/album_lib.html#stat=y_new.index.album.all&t2=3" tppabs="http://y.qq.com/portal/album_lib.html#stat=y_new.index.album.all&t2=3" class="index_tab__item js_tab" data-type="j" data-stat="y_new.index.album.j">日本</a>
            </div>
            <div class="mod_playlist mod_slide">
                <!-- 偶数加 playlist__item--even -->
                <ul class="playlist__list slide__list" id="albumlist">
		
                    <li class="playlist__item slide__item " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="003Zeqez3rd07L" data-albumid="1621878">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/003Zeqez3rd07L.html" tppabs="http://y.qq.com/portal/album/003Zeqez3rd07L.html" class="js_album" data-albummid="003Zeqez3rd07L" data-albumid="1621878"><img src="images/PUG.png" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000003Zeqez3rd07L.jpg?max_age=2592000" alt="FLIGHT LOG : TURBULENCE" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/003Zeqez3rd07L.html" tppabs="http://y.qq.com/portal/album/003Zeqez3rd07L.html" class="js_album" data-albummid="003Zeqez3rd07L" data-albumid="1621878">Hello world</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="003Zeqez3rd07L"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/002SfPHq3JCBJQ.html" tppabs="http://y.qq.com/portal/singer/002SfPHq3JCBJQ.html" class="js_singer" data-singermid="177189" title="GOT7">GOT7</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item  playlist__item--even " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="001xRWE82ideg7" data-albumid="1620470">
                        <div class="playlist__item_box">
<!-- Cover Photo -->                            <div class="playlist__cover mod_cover"><a href="portal/album/001xRWE82ideg7.html" tppabs="http://y.qq.com/portal/album/001xRWE82ideg7.html" class="js_album" data-albummid="001xRWE82ideg7" data-albumid="1620470"><img src="images/PUG.png" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000001xRWE82ideg7.jpg?max_age=2592000" alt="跳到太阳升起来" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
<!-- Title -->				    <span class="playlist__title_txt"><a href="portal/album/001xRWE82ideg7.html" tppabs="http://y.qq.com/portal/album/001xRWE82ideg7.html" class="js_album" data-albummid="001xRWE82ideg7" data-albumid="1620470">XXXXX  +++  XXXXX</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="001xRWE82ideg7"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
<!-- Singer Name -->                                    <a href="portal/singer/001oXbjs29oPul.html" tppabs="http://y.qq.com/portal/singer/001oXbjs29oPul.html" class="js_singer" data-singermid="22874" title="孙子涵">Umm...</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="001OJpLE3rIBWv" data-albumid="1621165">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/001OJpLE3rIBWv.html" tppabs="http://y.qq.com/portal/album/001OJpLE3rIBWv.html" class="js_album" data-albummid="001OJpLE3rIBWv" data-albumid="1621165"><img src="images/PUG.png" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000001OJpLE3rIBWv.jpg?max_age=2592000" alt="Pink Revolution" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/001OJpLE3rIBWv.html" tppabs="http://y.qq.com/portal/album/001OJpLE3rIBWv.html" class="js_album" data-albummid="001OJpLE3rIBWv" data-albumid="1621165"> C++ :D</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="001OJpLE3rIBWv"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/002ACw3Q2Jwd5j.html" tppabs="http://y.qq.com/portal/singer/002ACw3Q2Jwd5j.html" class="js_singer" data-singermid="27090" title="에이핑크">PUG</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item  playlist__item--even " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="000NZAdw2thoaT" data-albumid="1621167">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/000NZAdw2thoaT.html" tppabs="http://y.qq.com/portal/album/000NZAdw2thoaT.html" class="js_album" data-albummid="000NZAdw2thoaT" data-albumid="1621167"><img src="images/PUG.png" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000000NZAdw2thoaT.jpg?max_age=2592000" alt="Evolution Pop_Vol.1" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/000NZAdw2thoaT.html" tppabs="http://y.qq.com/portal/album/000NZAdw2thoaT.html" class="js_album" data-albummid="000NZAdw2thoaT" data-albumid="1621167"> Java Hibernate </a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="000NZAdw2thoaT"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/001CbbK32AWGYx.html" tppabs="http://y.qq.com/portal/singer/001CbbK32AWGYx.html" class="js_singer" data-singermid="57782" title="크레용팝">Gavin King</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="002XE7N348IrMx" data-albumid="1621166">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/002XE7N348IrMx.html" tppabs="http://y.qq.com/portal/album/002XE7N348IrMx.html" class="js_album" data-albummid="002XE7N348IrMx" data-albumid="1621166"><img src="images/PUG.png" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000002XE7N348IrMx.jpg?max_age=2592000" alt="Erica" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/002XE7N348IrMx.html" tppabs="http://y.qq.com/portal/album/002XE7N348IrMx.html" class="js_album" data-albummid="002XE7N348IrMx" data-albumid="1621166">Erica</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="002XE7N348IrMx"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/0009OYVz1mMDXS.html" tppabs="http://y.qq.com/portal/singer/0009OYVz1mMDXS.html" class="js_singer" data-singermid="51304" title="프롬">프롬</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item  playlist__item--even " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="0001kHQ70NL99g" data-albumid="1620940">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/0001kHQ70NL99g.html" tppabs="http://y.qq.com/portal/album/0001kHQ70NL99g.html" class="js_album" data-albummid="0001kHQ70NL99g" data-albumid="1620940"><img src="../y.gtimg.cn/music/photo_new/T002R300x300M0000001kHQ70NL99g.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M0000001kHQ70NL99g.jpg?max_age=2592000" alt="你在终点等我" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/0001kHQ70NL99g.html" tppabs="http://y.qq.com/portal/album/0001kHQ70NL99g.html" class="js_album" data-albummid="0001kHQ70NL99g" data-albumid="1620940">你在终点等我</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="0001kHQ70NL99g"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/000GDDuQ3sGQiT.html" tppabs="http://y.qq.com/portal/singer/000GDDuQ3sGQiT.html" class="js_singer" data-singermid="264" title="王菲">王菲</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="002o2LhS38VHhc" data-albumid="1609263">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/002o2LhS38VHhc.html" tppabs="http://y.qq.com/portal/album/002o2LhS38VHhc.html" class="js_album" data-albummid="002o2LhS38VHhc" data-albumid="1609263"><img src="../y.gtimg.cn/music/photo_new/T002R300x300M000002o2LhS38VHhc.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000002o2LhS38VHhc.jpg?max_age=2592000" alt="新声有范第二季 第6期" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/002o2LhS38VHhc.html" tppabs="http://y.qq.com/portal/album/002o2LhS38VHhc.html" class="js_album" data-albummid="002o2LhS38VHhc" data-albumid="1609263">新声有范第二季 第6期</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="002o2LhS38VHhc"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/000akPE42BKtQf.html" tppabs="http://y.qq.com/portal/singer/000akPE42BKtQf.html" class="js_singer" data-singermid="1221674" title="新声有范">新声有范</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item  playlist__item--even " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="000Dd1dT1cRDE7" data-albumid="1620670">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/000Dd1dT1cRDE7.html" tppabs="http://y.qq.com/portal/album/000Dd1dT1cRDE7.html" class="js_album" data-albummid="000Dd1dT1cRDE7" data-albumid="1620670"><img src="../y.gtimg.cn/music/photo_new/T002R300x300M000000Dd1dT1cRDE7.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000000Dd1dT1cRDE7.jpg?max_age=2592000" alt="中国新歌声 第12期" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/000Dd1dT1cRDE7.html" tppabs="http://y.qq.com/portal/album/000Dd1dT1cRDE7.html" class="js_album" data-albummid="000Dd1dT1cRDE7" data-albumid="1620670">中国新歌声 第12期</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="000Dd1dT1cRDE7"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/001zisHA2DYkt3.html" tppabs="http://y.qq.com/portal/singer/001zisHA2DYkt3.html" class="js_singer" data-singermid="1194922" title="中国新歌声">中国新歌声</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="002omcya2uFH4M" data-albumid="1509881">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/002omcya2uFH4M.html" tppabs="http://y.qq.com/portal/album/002omcya2uFH4M.html" class="js_album" data-albummid="002omcya2uFH4M" data-albumid="1509881"><img src="../y.gtimg.cn/music/photo_new/T002R300x300M000002omcya2uFH4M.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000002omcya2uFH4M.jpg?max_age=2592000" alt="Illuminate (Deluxe)" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/002omcya2uFH4M.html" tppabs="http://y.qq.com/portal/album/002omcya2uFH4M.html" class="js_album" data-albummid="002omcya2uFH4M" data-albumid="1509881">Illuminate (Deluxe)</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="002omcya2uFH4M"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/001NODJ71LGPD5.html" tppabs="http://y.qq.com/portal/singer/001NODJ71LGPD5.html" class="js_singer" data-singermid="196676" title="Shawn Mendes">Shawn Mendes</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item  playlist__item--even " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="002wS9tA16g5iu" data-albumid="1570919">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/002wS9tA16g5iu.html" tppabs="http://y.qq.com/portal/album/002wS9tA16g5iu.html" class="js_album" data-albummid="002wS9tA16g5iu" data-albumid="1570919"><img src="../y.gtimg.cn/music/photo_new/T002R300x300M000002wS9tA16g5iu.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000002wS9tA16g5iu.jpg?max_age=2592000" alt="daydream" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/002wS9tA16g5iu.html" tppabs="http://y.qq.com/portal/album/002wS9tA16g5iu.html" class="js_album" data-albummid="002wS9tA16g5iu" data-albumid="1570919">daydream</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="002wS9tA16g5iu"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/0039EKtl4ec7wv.html" tppabs="http://y.qq.com/portal/singer/0039EKtl4ec7wv.html" class="js_singer" data-singermid="33716" title="Aimer">Aimer</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="000CxI210X8WwI" data-albumid="1504543">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="javascript:if(confirm('http://y.qq.com/portal/album/000CxI210X8WwI.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ������������ļ�δ�ҵ���  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/album/000CxI210X8WwI.html'" tppabs="http://y.qq.com/portal/album/000CxI210X8WwI.html" class="js_album" data-albummid="000CxI210X8WwI" data-albumid="1504543"><img src="../y.gtimg.cn/music/photo_new/T002R300x300M000000CxI210X8WwI.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000000CxI210X8WwI.jpg?max_age=2592000" alt="MD2000 ~ReLIFE Ending Songs~" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="javascript:if(confirm('http://y.qq.com/portal/album/000CxI210X8WwI.html  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ������������ļ�δ�ҵ���  \n\n�����ڷ������ϴ���?'))window.location='http://y.qq.com/portal/album/000CxI210X8WwI.html'" tppabs="http://y.qq.com/portal/album/000CxI210X8WwI.html" class="js_album" data-albummid="000CxI210X8WwI" data-albumid="1504543">MD2000 ~ReLIFE Ending Songs~</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="000CxI210X8WwI"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/003Topsy10SOSb.html" tppabs="http://y.qq.com/portal/singer/003Topsy10SOSb.html" class="js_singer" data-singermid="41392" title="日本ACG">日本ACG</a>
                                </div>
                        </div>
                    </li>
		    
                    <li class="playlist__item slide__item  playlist__item--even " onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-albummid="002J7XNt2m9sNc" data-albumid="1607880">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="portal/album/002J7XNt2m9sNc.html" tppabs="http://y.qq.com/portal/album/002J7XNt2m9sNc.html" class="js_album" data-albummid="002J7XNt2m9sNc" data-albumid="1607880"><img src="../y.gtimg.cn/music/photo_new/T002R300x300M000002J7XNt2m9sNc.jpg-max_age=2592000.jpg" tppabs="http://y.gtimg.cn/music/photo_new/T002R300x300M000002J7XNt2m9sNc.jpg?max_age=2592000" alt="青い図書室" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/album_300.png?max_age=31536000';this.onerror=null;" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play"></i></a></div>
                            <h4 class="playlist__title">
				    <span class="playlist__title_txt"><a href="portal/album/002J7XNt2m9sNc.html" tppabs="http://y.qq.com/portal/album/002J7XNt2m9sNc.html" class="js_album" data-albummid="002J7XNt2m9sNc" data-albumid="1607880">青い図書室</a></span>
				    <a href="javascript:;" class="btn_operate_menu js_albumlist_more" data-type="2" data-mid="002J7XNt2m9sNc"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__author">
                                    <a href="portal/singer/004bzYYO0qUNXI.html" tppabs="http://y.qq.com/portal/singer/004bzYYO0qUNXI.html" class="js_singer" data-singermid="6936" title="手嶌葵">手嶌葵</a>
                                </div>
                        </div>
                    </li>
		    
                </ul>
            </div>
            <div class="mod_slide_switch js_switch" data-stat="y_new.index.album.pager">
            </div>
        </div>
        <div class="mod_slide_action">
            <div class="slide_action slide_action--left">
                <a href="javascript:;" class="slide_action__btn slide_action__btn--left js_jump" data-p="prev" data-stat="y_new.index.album.pager" tabindex="-1"><i class="icon_txt">上一页</i><i class="slide_action__arrow slide_action__arrow--left"></i></a>
            </div>
            <div class="slide_action slide_action--right">
                <a href="javascript:;" class="slide_action__btn slide_action__btn--right js_jump" data-p="next" data-stat="y_new.index.album.pager" tabindex="-1"><i class="icon_txt">下一页</i><i class="slide_action__arrow slide_action__arrow--right"></i></a>
            </div>
        </div>
    </div>
    <!-- 热门歌单 -->
    <div id="taogelist_box">
    <div class="mod_index mod_index--hot mod_slide_box">
        <div class="section_inner">
            <div class="index__hd">
                <h2 class="index__tit"><i class="index__tit_sprite"></i><i class="icon_txt">热门歌单</i></h2>
                <i class="index__line index__line--left"></i>
                <i class="index__line index__line--right"></i>
            </div>
            <div class="mod_playlist mod_slide">
                <!-- 偶数加 playlist__item--even -->
                <ul class="playlist__list slide__list" style="left: 0px;">
			   
                    <li class="playlist__item  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="839120869">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/839120869.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="839120869"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_006.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="新歌声丨十首你不得不听的新歌声live！" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/839120869.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="839120869" title="新歌声丨十首你不得不听的新歌声live！">新歌声丨十首你不得不听的新歌声live！</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="839120869"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：325.3万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  playlist__item--even  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="2030609468">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/2030609468.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="2030609468"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_010.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="编辑推荐｜听华人演绎中式英文歌曲" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/2030609468.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="2030609468" title="编辑推荐｜听华人演绎中式英文歌曲">编辑推荐｜听华人演绎中式英文歌曲</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="2030609468"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：304.0万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="1732926786">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/1732926786.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="1732926786"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_003.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="晚安各位｜舒缓钢琴，清新的治愈" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/1732926786.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="1732926786" title="晚安各位｜舒缓钢琴，清新的治愈">晚安各位｜舒缓钢琴，清新的治愈</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="1732926786"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：278.6万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  playlist__item--even  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="839112168">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/839112168.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="839112168"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_004.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="欧美｜全美音乐奖提名名单，Drake入围13项" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/839112168.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="839112168" title="欧美｜全美音乐奖提名名单，Drake入围13项">欧美｜全美音乐奖提名名单，Drake入围13项</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="839112168"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：317.2万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="2030328131">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/2030328131.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="2030328131"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_012.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="纯音 | 极简主义 循复之美" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/2030328131.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="2030328131" title="纯音 | 极简主义 循复之美">纯音 | 极简主义 循复之美</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="2030328131"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：154.5万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  playlist__item--even  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="2927942400">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/2927942400.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="2927942400"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_002.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="听到心酸的孤独情歌" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/2927942400.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="2927942400" title="听到心酸的孤独情歌">听到心酸的孤独情歌</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="2927942400"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：442.0万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="3534876492">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/3534876492.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="3534876492"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_009.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="国语｜展翅飞翔 微笑着面对梦想" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/3534876492.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="3534876492" title="国语｜展翅飞翔 微笑着面对梦想">国语｜展翅飞翔 微笑着面对梦想</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="3534876492"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：315.0万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  playlist__item--even  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="3534343870">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/3534343870.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="3534343870"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_008.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="欧美｜曾让你热血沸腾的影视配乐" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/3534343870.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="3534343870" title="欧美｜曾让你热血沸腾的影视配乐">欧美｜曾让你热血沸腾的影视配乐</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="3534343870"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：308.0万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="2032138424">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/2032138424.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="2032138424"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_005.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="俏皮曲调赶走寒冷与烦恼" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/2032138424.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="2032138424" title="俏皮曲调赶走寒冷与烦恼">俏皮曲调赶走寒冷与烦恼</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="2032138424"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：294.0万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  playlist__item--even  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="2933354433">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/2933354433.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="2933354433"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_007.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="民谣｜用南方的青荇编一顶北方的草帽" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/2933354433.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="2933354433" title="民谣｜用南方的青荇编一顶北方的草帽">民谣｜用南方的青荇编一顶北方的草帽</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="2933354433"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：301.9万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="2032151327">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/2032151327.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="2032151327"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300_011.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="最重磅期待 你是这个深秋的温暖慰藉" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/2032151327.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="2032151327" title="最重磅期待 你是这个深秋的温暖慰藉">最重磅期待 你是这个深秋的温暖慰藉</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="2032151327"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：219.7万
                            </div>
                        </div>
                    </li>
			   
                    <li class="playlist__item  playlist__item--even  slide__item" onmouseover="this.className=(this.className+' playlist__item--hover')" onmouseout="this.className=this.className.replace(/ playlist__item--hover/, '')" data-disstid="3230003308">
                        <div class="playlist__item_box">
                            <div class="playlist__cover mod_cover"><a href="http://y.qq.com/portal/playlist/3230003308.html#stat=y_new.index.playlist.pic" class="js_playlist" data-stat="y_new.index.playlist.pic" data-disstid="3230003308"><img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/300.jpg" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/playlist_300.png?max_age=31536000';this.onerror=null;" alt="日系｜节奏女声，动次打次出美感" class="playlist__pic"><i class="mod_cover__mask"></i><i class="mod_cover__icon_play js_play" data-stat="y_new.index.playlist.play_btn"></i></a></div>
                            <h4 class="playlist__title"><span class="playlist__title_txt"><a href="http://y.qq.com/portal/playlist/3230003308.html#stat=y_new.index.playlist.name" class="js_playlist" data-stat="y_new.index.playlist.name" data-disstid="3230003308" title="日系｜节奏女声，动次打次出美感">日系｜节奏女声，动次打次出美感</a></span>
                            <a href="javascript:;" class="btn_operate_menu js_playlist_more" data-stat="y_new.index.playlist.more" data-type="3" data-mid="3230003308"><span class="icon_txt">更多</span></a>
			    </h4>
                            
                            <div class="playlist__other">
                                播放量：152.9万
                            </div>
                        </div>
                    </li>
			
                </ul>
            </div>
            <div class="mod_slide_switch js_switch" data-stat="y_new.index.playlist.pager"><a href="javascript:;" tabindex="-1" class="js_jump slide_switch__item slide_switch__item--current" data-stat="y_new.index.playlist.pager" data-p="0"><i class="slide_switch__bg"></i><i class="icon_txt">1</i></a><a href="javascript:;" tabindex="-1" class="js_jump slide_switch__item" data-stat="y_new.index.playlist.pager" data-p="1"><i class="slide_switch__bg"></i><i class="icon_txt">2</i></a><a href="javascript:;" tabindex="-1" class="js_jump slide_switch__item" data-stat="y_new.index.playlist.pager" data-p="2"><i class="slide_switch__bg"></i><i class="icon_txt">3</i></a></div>
        </div>
        <div class="mod_slide_action">
            <div class="slide_action slide_action--left">
                <a href="javascript:;" class="slide_action__btn slide_action__btn--left js_jump" data-p="prev" tabindex="-1" data-stat="y_new.index.playlist.pager"><i class="icon_txt">上一页</i><i class="slide_action__arrow slide_action__arrow--left"></i></a>
            </div>
            <div class="slide_action slide_action--right">
                <a href="javascript:;" class="slide_action__btn slide_action__btn--right js_jump" data-p="next" tabindex="-1" data-stat="y_new.index.playlist.pager"><i class="icon_txt">下一页</i><i class="slide_action__arrow slide_action__arrow--right"></i></a>
            </div>
        </div>
    </div>
    </div>
    <!-- 排行榜 -->
    <div id="toplist_box">
    <div class="mod_index mod_index--top mod_slide_box">
        <div class="section_inner">
            <div class="index__hd">
                <h2 class="index__tit"><i class="index__tit_sprite"></i><i class="icon_txt">排行榜</i></h2>
                <i class="index__line index__line--left"></i>
                <i class="index__line index__line--right"></i>
            </div>
	    <a href="http://y.qq.com/portal/toplist/4.html#stat=y_new.index.toplist.more" class="index__more index__more--white">全部<i class="icon_index_arrow"></i></a>

            <div class="mod_toplist">
                <ul class="toplist__list">
		
                    <li class="toplist__item toplist__item--pop mod_cover">
                        <div class="toplist__bg"></div>
                        <i class="mod_cover__mask"></i>
                        <i class="mod_cover__icon_play js_play_toplist" data-stat="y_new.index.toplist.play1" data-id="4" data-type="0" data-date="2016-10-11"></i>
                        <i class="toplist__line"></i>
                        <h3 class="toplist__hd"><a href="http://y.qq.com/portal/toplist/4.html?stat=y_new.index.toplist.detail1" data-id="4" class="toplist__tit js_toplist" data-stat="y_new.index.toplist.detail1"><i class="toplist__tit_top"><i class="icon_txt">巅峰榜</i></i><div class="toplist__tit_pop">流行指数</div></a></h3>
                        <ul class="toplist__songlist">
			
                            <li class="toplist__song">
                                <div class="toplist__number">1</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108782123_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108782123" data-stat="y_new.index.toplist.songname">丑八怪 + 给我一个吻 (Live)</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/5062_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="5062" data-stat="y_new.index.toplist.singername">薛之谦/万妮达</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">2</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108782126_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108782126" data-stat="y_new.index.toplist.songname">爱上你等于爱上寂寞 (Live)</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/137_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="137" data-stat="y_new.index.toplist.singername">那英/李佩玲/汪晨蕊</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">3</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108782144_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108782144" data-stat="y_new.index.toplist.songname">满 (Live)</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/4604_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="4604" data-stat="y_new.index.toplist.singername">汪峰/徐歌阳/蒋敦豪</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">4</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108784387_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108784387" data-stat="y_new.index.toplist.songname">呵护</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/44_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="44" data-stat="y_new.index.toplist.singername">梁静茹</a>
                                </div>
                            </li>
			    
                        </ul>
                    </li>
		
                    <li class="toplist__item toplist__item--new mod_cover">
                        <div class="toplist__bg"></div>
                        <i class="mod_cover__mask"></i>
                        <i class="mod_cover__icon_play js_play_toplist" data-stat="y_new.index.toplist.play2" data-id="26" data-type="0" data-date="2016_40"></i>
                        <i class="toplist__line"></i>
                        <h3 class="toplist__hd"><a href="http://y.qq.com/portal/toplist/26.html?stat=y_new.index.toplist.detail2" data-id="26" class="toplist__tit js_toplist" data-stat="y_new.index.toplist.detail2"><i class="toplist__tit_top"><i class="icon_txt">巅峰榜</i></i><div class="toplist__tit_pop">热歌</div></a></h3>
                        <ul class="toplist__songlist">
			
                            <li class="toplist__song">
                                <div class="toplist__number">1</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/5106429_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="5106429" data-stat="y_new.index.toplist.songname">丑八怪</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/5062_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="5062" data-stat="y_new.index.toplist.singername">薛之谦</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">2</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/102636799_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="102636799" data-stat="y_new.index.toplist.songname">演员</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/5062_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="5062" data-stat="y_new.index.toplist.singername">薛之谦</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">3</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/107192078_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="107192078" data-stat="y_new.index.toplist.songname">告白气球</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/4558_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="4558" data-stat="y_new.index.toplist.singername">周杰伦</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">4</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/102793935_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="102793935" data-stat="y_new.index.toplist.songname">IF YOU</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/11733_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="11733" data-stat="y_new.index.toplist.singername">BIGBANG (빅뱅)</a>
                                </div>
                            </li>
			    
                        </ul>
                    </li>
		
                    <li class="toplist__item toplist__item--hot mod_cover">
                        <div class="toplist__bg"></div>
                        <i class="mod_cover__mask"></i>
                        <i class="mod_cover__icon_play js_play_toplist" data-stat="y_new.index.toplist.play3" data-id="27" data-type="0" data-date="2016-10-11"></i>
                        <i class="toplist__line"></i>
                        <h3 class="toplist__hd"><a href="http://y.qq.com/portal/toplist/27.html?stat=y_new.index.toplist.detail3" data-id="27" class="toplist__tit js_toplist" data-stat="y_new.index.toplist.detail3"><i class="toplist__tit_top"><i class="icon_txt">巅峰榜</i></i><div class="toplist__tit_pop">新歌</div></a></h3>
                        <ul class="toplist__songlist">
			
                            <li class="toplist__song">
                                <div class="toplist__number">1</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108708182_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108708182" data-stat="y_new.index.toplist.songname">全世界谁倾听你</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/11606_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="11606" data-stat="y_new.index.toplist.singername">林宥嘉</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">2</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108784387_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108784387" data-stat="y_new.index.toplist.songname">呵护</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/44_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="44" data-stat="y_new.index.toplist.singername">梁静茹</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">3</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108808209_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108808209" data-stat="y_new.index.toplist.songname">你的美丽</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/164158_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="164158" data-stat="y_new.index.toplist.singername">李琦</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">4</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108787445_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108787445" data-stat="y_new.index.toplist.songname">球球</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/11447_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="11447" data-stat="y_new.index.toplist.singername">王铮亮/球球</a>
                                </div>
                            </li>
			    
                        </ul>
                    </li>
		
                    <li class="toplist__item toplist__item--high mod_cover">
                        <div class="toplist__bg"></div>
                        <i class="mod_cover__mask"></i>
                        <i class="mod_cover__icon_play js_play_toplist" data-stat="y_new.index.toplist.play4" data-id="3" data-type="0" data-date="2016_40"></i>
                        <i class="toplist__line"></i>
                        <h3 class="toplist__hd"><a href="http://y.qq.com/portal/toplist/3.html?stat=y_new.index.toplist.detail4" data-id="3" class="toplist__tit js_toplist" data-stat="y_new.index.toplist.detail4"><i class="toplist__tit_top"><i class="icon_txt">巅峰榜</i></i><div class="toplist__tit_pop">欧美</div></a></h3>
                        <ul class="toplist__songlist">
			
                            <li class="toplist__song">
                                <div class="toplist__number">1</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108278705_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108278705" data-stat="y_new.index.toplist.songname">Hard II Love</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/4762_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="4762" data-stat="y_new.index.toplist.singername">Usher</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">2</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108549908_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108549908" data-stat="y_new.index.toplist.songname">My Way</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/13554_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="13554" data-stat="y_new.index.toplist.singername">Calvin Harris</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">3</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108440543_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108440543" data-stat="y_new.index.toplist.songname">Perfect Illusion</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/13769_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="13769" data-stat="y_new.index.toplist.singername">Lady Gaga</a>
                                </div>
                            </li>
			    
                            <li class="toplist__song">
                                <div class="toplist__number">4</div>
                                <div class="toplist__songname">
                                    <a href="http://y.qq.com/portal/song/108278696_num.html#stat=y_new.index.toplist.songname" class="js_song" data-id="108278696" data-stat="y_new.index.toplist.songname">Need U</a>
                                </div>
                                <div class="toplist__artist">
                                    <a href="http://y.qq.com/portal/singer/4762_num.html#stat=y_new.index.toplist.singername" class="js_singer" data-singerid="4762" data-stat="y_new.index.toplist.singername">Usher</a>
                                </div>
                            </li>
			    
                        </ul>
                    </li>
		
                </ul>
            </div>
        </div>
    </div>
    </div>
    
    <!-- 新碟首发 -->
    <div class="mod_index mod_index--mv mod_slide_box" id="mvlist">
    <div class="section_inner">
            <div class="index__hd">
                <h2 class="index__tit"><i class="index__tit_sprite"></i><i class="icon_txt">MV首播</i></h2>
                <i class="index__line index__line--left"></i>
                <i class="index__line index__line--right"></i>
            </div>
	    <a href="http://y.qq.com/portal/mv_lib.html#stat=y_new.index.mv.more" class="index__more js_mvlist_more">全部<i class="icon_index_arrow"></i></a>
            <!-- 切换 -->
            <div class="mod_index_tab">
	    
                <a href="http://y.qq.com/portal/mv_lib.html" data-type="0" data-box="mv" class="js_tab index_tab__item index_tab__item--current" data-stat="y_new.index.mv.0">全部</a>
	    
                <a href="http://y.qq.com/portal/mv_lib.html#t2=1" data-type="1" data-box="mv" class="js_tab index_tab__item" data-stat="y_new.index.mv.1">内地</a>
	    
                <a href="http://y.qq.com/portal/mv_lib.html#t2=2" data-type="2" data-box="mv" class="js_tab index_tab__item" data-stat="y_new.index.mv.2">港台</a>
	    
                <a href="http://y.qq.com/portal/mv_lib.html#t2=3" data-type="3" data-box="mv" class="js_tab index_tab__item" data-stat="y_new.index.mv.3">欧美</a>
	    
                <a href="http://y.qq.com/portal/mv_lib.html#t2=4" data-type="4" data-box="mv" class="js_tab index_tab__item" data-stat="y_new.index.mv.4">韩国</a>
	    
                <a href="http://y.qq.com/portal/mv_lib.html#t2=5" data-type="5" data-box="mv" class="js_tab index_tab__item" data-stat="y_new.index.mv.5">日本</a>
	    
            </div>
            <div class="mod_mv">
                <ul class="mv_list__list">
		
		    
                            <li class="mv_list__item" data-vid="p0021cuc13j" data-id="1047249">
                                <div class="mv_list__item_box">
                                    <a href="http://y.qq.com/portal/mv/v/p0021cuc13j.html#stat=y_new.index.mv.play_btn" class="mv_list__cover mod_cover js_mv" data-stat="y_new.index.mv.play_btn" data-vid="p0021cuc13j" data-id="1047249" hidefocus="true">
                                        <img class="mv_list__pic" src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/mv_300.png" data-original="//shp.qpic.cn/qqvideo_ori/0/p0021cuc13j_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="I Wanna Know">
                                        <i class="mod_cover__mask"></i><i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="http://y.qq.com/portal/mv/v/p0021cuc13j.html#stat=y_new.index.mv.mvname" class="js_mv" data-stat="y_new.index.mv.mvname" data-vid="p0021cuc13j" data-id="1047249" title="I Wanna Know">I Wanna Know</a></h3>
                                    <p class="mv_list__singer">
				    <a href="http://y.qq.com/portal/singer/000A2sU04KmYmJ.html#stat=y_new.index.mv.singername" class="js_singer" data-singermid="000A2sU04KmYmJ" data-stat="y_new.index.mv.singername" data-singerid="48285" title="Alesso">Alesso</a>
				    <!--div class="mv_list__info">2016-10-10</div-->
				    </p><div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>4.6万</span></div>
				    <p></p>
                                </div>
                            </li>
		
		    
                            <li class="mv_list__item" data-vid="e0021z5afaa" data-id="1047545">
                                <div class="mv_list__item_box">
                                    <a href="http://y.qq.com/portal/mv/v/e0021z5afaa.html#stat=y_new.index.mv.play_btn" class="mv_list__cover mod_cover js_mv" data-stat="y_new.index.mv.play_btn" data-vid="e0021z5afaa" data-id="1047545" hidefocus="true">
                                        <img class="mv_list__pic" src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/mv_300.png" data-original="//shp.qpic.cn/qqvideo_ori/0/e0021z5afaa_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="이불 밖은 위험해">
                                        <i class="mod_cover__mask"></i><i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="http://y.qq.com/portal/mv/v/e0021z5afaa.html#stat=y_new.index.mv.mvname" class="js_mv" data-stat="y_new.index.mv.mvname" data-vid="e0021z5afaa" data-id="1047545" title="이불 밖은 위험해">이불 밖은 위험해</a></h3>
                                    <p class="mv_list__singer">
				    <a href="http://y.qq.com/portal/singer/003TPSnk4L6vNw.html#stat=y_new.index.mv.singername" class="js_singer" data-singermid="003TPSnk4L6vNw" data-stat="y_new.index.mv.singername" data-singerid="965828" title="MC그리">MC그리</a>
				    <!--div class="mv_list__info">2016-10-11</div-->
				    </p><div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>225</span></div>
				    <p></p>
                                </div>
                            </li>
		
		    
                            <li class="mv_list__item" data-vid="e0021e9lt9l" data-id="1046956">
                                <div class="mv_list__item_box">
                                    <a href="http://y.qq.com/portal/mv/v/e0021e9lt9l.html#stat=y_new.index.mv.play_btn" class="mv_list__cover mod_cover js_mv" data-stat="y_new.index.mv.play_btn" data-vid="e0021e9lt9l" data-id="1046956" hidefocus="true">
                                        <img class="mv_list__pic" src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/mv_300.png" data-original="//shp.qpic.cn/qqvideo_ori/0/e0021e9lt9l_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="Freedom! 90">
                                        <i class="mod_cover__mask"></i><i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="http://y.qq.com/portal/mv/v/e0021e9lt9l.html#stat=y_new.index.mv.mvname" class="js_mv" data-stat="y_new.index.mv.mvname" data-vid="e0021e9lt9l" data-id="1046956" title="Freedom! 90">Freedom! 90</a></h3>
                                    <p class="mv_list__singer">
				    <a href="http://y.qq.com/portal/singer/004D6XjL1fY4ud.html#stat=y_new.index.mv.singername" class="js_singer" data-singermid="004D6XjL1fY4ud" data-stat="y_new.index.mv.singername" data-singerid="4760" title="George Michael">George Michael</a>
				    <!--div class="mv_list__info">2016-10-05</div-->
				    </p><div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>1684</span></div>
				    <p></p>
                                </div>
                            </li>
		
		    
                            <li class="mv_list__item" data-vid="b0021j7hnut" data-id="1047498">
                                <div class="mv_list__item_box">
                                    <a href="http://y.qq.com/portal/mv/v/b0021j7hnut.html#stat=y_new.index.mv.play_btn" class="mv_list__cover mod_cover js_mv" data-stat="y_new.index.mv.play_btn" data-vid="b0021j7hnut" data-id="1047498" hidefocus="true">
                                        <img class="mv_list__pic" src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/mv_300.png" data-original="//shp.qpic.cn/qqvideo_ori/0/b0021j7hnut_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="カガミヨカガミ">
                                        <i class="mod_cover__mask"></i><i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="http://y.qq.com/portal/mv/v/b0021j7hnut.html#stat=y_new.index.mv.mvname" class="js_mv" data-stat="y_new.index.mv.mvname" data-vid="b0021j7hnut" data-id="1047498" title="カガミヨカガミ">カガミヨカガミ</a></h3>
                                    <p class="mv_list__singer">
				    <a href="http://y.qq.com/portal/singer/001AUUn00WiHXx.html#stat=y_new.index.mv.singername" class="js_singer" data-singermid="001AUUn00WiHXx" data-stat="y_new.index.mv.singername" data-singerid="158665" title="高橋みなみ">高橋みなみ</a>
				    <!--div class="mv_list__info">2016-10-12</div-->
				    </p><div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>1691</span></div>
				    <p></p>
                                </div>
                            </li>
		
		    
                            <li class="mv_list__item" data-vid="u0021jhexti" data-id="1047481">
                                <div class="mv_list__item_box">
                                    <a href="http://y.qq.com/portal/mv/v/u0021jhexti.html#stat=y_new.index.mv.play_btn" class="mv_list__cover mod_cover js_mv" data-stat="y_new.index.mv.play_btn" data-vid="u0021jhexti" data-id="1047481" hidefocus="true">
                                        <img class="mv_list__pic" src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/mv_300.png" data-original="//shp.qpic.cn/qqvideo_ori/0/u0021jhexti_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="쥬시시크릿(JUICY SECRET)">
                                        <i class="mod_cover__mask"></i><i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="http://y.qq.com/portal/mv/v/u0021jhexti.html#stat=y_new.index.mv.mvname" class="js_mv" data-stat="y_new.index.mv.mvname" data-vid="u0021jhexti" data-id="1047481" title="쥬시시크릿(JUICY SECRET)">쥬시시크릿(JUICY SECRET)</a></h3>
                                    <p class="mv_list__singer">
				    <a href="http://y.qq.com/portal/singer/002MjxTH1dSTtN.html#stat=y_new.index.mv.singername" class="js_singer" data-singermid="002MjxTH1dSTtN" data-stat="y_new.index.mv.singername" data-singerid="1082904" title="여자여자">여자여자</a>
				    <!--div class="mv_list__info">2016-10-11</div-->
				    </p><div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>5656</span></div>
				    <p></p>
                                </div>
                            </li>
		
		    
                            <li class="mv_list__item" data-vid="m0021ljh7pw" data-id="1047483">
                                <div class="mv_list__item_box">
                                    <a href="http://y.qq.com/portal/mv/v/m0021ljh7pw.html#stat=y_new.index.mv.play_btn" class="mv_list__cover mod_cover js_mv" data-stat="y_new.index.mv.play_btn" data-vid="m0021ljh7pw" data-id="1047483" hidefocus="true">
                                        <img class="mv_list__pic" src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/mv_300.png" data-original="//shp.qpic.cn/qqvideo_ori/0/m0021ljh7pw_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="梦话">
                                        <i class="mod_cover__mask"></i><i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="http://y.qq.com/portal/mv/v/m0021ljh7pw.html#stat=y_new.index.mv.mvname" class="js_mv" data-stat="y_new.index.mv.mvname" data-vid="m0021ljh7pw" data-id="1047483" title="梦话">梦话</a></h3>
                                    <p class="mv_list__singer">
				    <a href="http://y.qq.com/portal/singer/003ArN8Z0WpjTz.html#stat=y_new.index.mv.singername" class="js_singer" data-singermid="003ArN8Z0WpjTz" data-stat="y_new.index.mv.singername" data-singerid="6028" title="A-Lin">A-Lin</a>
				    <!--div class="mv_list__info">2016-10-12</div-->
				    </p><div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>6652</span></div>
				    <p></p>
                                </div>
                            </li>
		
		    
                            <li class="mv_list__item" data-vid="l00211xe8aj" data-id="1047464">
                                <div class="mv_list__item_box">
                                    <a href="http://y.qq.com/portal/mv/v/l00211xe8aj.html#stat=y_new.index.mv.play_btn" class="mv_list__cover mod_cover js_mv" data-stat="y_new.index.mv.play_btn" data-vid="l00211xe8aj" data-id="1047464" hidefocus="true">
                                        <img class="mv_list__pic" src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/mv_300.png" data-original="//shp.qpic.cn/qqvideo_ori/0/l00211xe8aj_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="翻篇">
                                        <i class="mod_cover__mask"></i><i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="http://y.qq.com/portal/mv/v/l00211xe8aj.html#stat=y_new.index.mv.mvname" class="js_mv" data-stat="y_new.index.mv.mvname" data-vid="l00211xe8aj" data-id="1047464" title="翻篇">翻篇</a></h3>
                                    <p class="mv_list__singer">
				    <a href="http://y.qq.com/portal/singer/003LaMHm42u7qS.html#stat=y_new.index.mv.singername" class="js_singer" data-singermid="003LaMHm42u7qS" data-stat="y_new.index.mv.singername" data-singerid="4545" title="本兮">本兮</a>
				    <!--div class="mv_list__info">2016-10-12</div-->
				    </p><div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>1.6万</span></div>
				    <p></p>
                                </div>
                            </li>
		
		    
                            <li class="mv_list__item" data-vid="y0021o43ztz" data-id="1047447">
                                <div class="mv_list__item_box">
                                    <a href="http://y.qq.com/portal/mv/v/y0021o43ztz.html#stat=y_new.index.mv.play_btn" class="mv_list__cover mod_cover js_mv" data-stat="y_new.index.mv.play_btn" data-vid="y0021o43ztz" data-id="1047447" hidefocus="true">
                                        <img class="mv_list__pic" src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/mv_300.png" data-original="//shp.qpic.cn/qqvideo_ori/0/y0021o43ztz_360_204/0" onerror="this.src='//y.gtimg.cn/mediastyle/global/img/mv_300.png?max_age=31536000';this.onerror=null;" alt="반딧불이(Firefly)">
                                        <i class="mod_cover__mask"></i><i class="mod_cover__icon_play"></i>
                                    </a>
                                    <h3 class="mv_list__title"><a href="http://y.qq.com/portal/mv/v/y0021o43ztz.html#stat=y_new.index.mv.mvname" class="js_mv" data-stat="y_new.index.mv.mvname" data-vid="y0021o43ztz" data-id="1047447" title="반딧불이(Firefly)">반딧불이(Firefly)</a></h3>
                                    <p class="mv_list__singer">
				    <a href="http://y.qq.com/portal/singer/000sPQ451zFEOV.html#stat=y_new.index.mv.singername" class="js_singer" data-singermid="000sPQ451zFEOV" data-stat="y_new.index.mv.singername" data-singerid="968203" title="황치열">황치열</a>
				    <!--div class="mv_list__info">2016-10-12</div-->
				    </p><div class="mv_list__info"><span class="mv_list__listen"><i class="mv_list__listen_icon sprite"></i>1.3万</span></div>
				    <p></p>
                                </div>
                            </li>
		
		</ul>
            </div>
        </div>
    </div>
    
    <!-- 精彩推荐 -->
    <div class="mod_index mod_index--event mod_slide_box" id="focus">
        <div class="section_inner">
            <div class="index__hd">
                <h2 class="index__tit"><i class="index__tit_sprite"></i><i class="icon_txt">精彩推荐</i></h2>
                <i class="index__line index__line--left"></i>
                <i class="index__line index__line--right"></i>
            </div>

            <div class="mod_event mod_slide">
                <ul class="event_list slide__list" style="left: 0px;">
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="3002" data-stat="y_new.index.focus.click" data-id="http://share.y.qq.com/l?g=2766&amp;id=1636635&amp;g_f=yqqjiaodian">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/40693.jpg" class="event_list__pic" alt="YQQ-黄致列正售">
                        </a>
                    </li>
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="10002" data-stat="y_new.index.focus.click" data-id="001o5qc80KGMyn">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/40700.jpg" class="event_list__pic" alt="PC+YQQ：单曲首发：TFBOYS《不息之河》">
                        </a>
                    </li>
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="3002" data-stat="y_new.index.focus.click" data-id="http://share.y.qq.com/l?g=2782&amp;id=1636365&amp;g_f=yqqjiaodian">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/39941.jpg" class="event_list__pic" alt="YQQ-张靓颖预售">
                        </a>
                    </li>
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="3002" data-stat="y_new.index.focus.click" data-id="http://y.qq.com/live/170/zuoxiaozuzhoulive.html">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/40486.jpg" class="event_list__pic" alt="YQQ-左小祖咒直播预约">
                        </a>
                    </li>
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="10014" data-stat="y_new.index.focus.click" data-id="839112168">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/40678.jpg" class="event_list__pic" alt="PC 全美音乐奖">
                        </a>
                    </li>
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="3002" data-stat="y_new.index.focus.click" data-id="http://y.qq.com/vip/ZZXGS12/index.html">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/40470.jpg" class="event_list__pic" alt="PC：追踪新歌声十佳金曲">
                        </a>
                    </li>
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="3002" data-stat="y_new.index.focus.click" data-id="http://share.y.qq.com/l?g=2804&amp;id=1576988&amp;g_f=yqqjiaodian">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/40691.jpg" class="event_list__pic" alt="YQQ-步步惊心OST13">
                        </a>
                    </li>
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="3002" data-stat="y_new.index.focus.click" data-id="http://share.y.qq.com/l?g=2766&amp;id=1632988&amp;g_f=yqqjiaodian">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/39326.jpg" class="event_list__pic" alt="YQQ-防弹少年团正售">
                        </a>
                    </li>
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="10002" data-stat="y_new.index.focus.click" data-id="0001xt3Z1qD1jT">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/38016.jpg" class="event_list__pic" alt="10.7 华纳A独家版权专辑 Green Day《Revolution Radio》 （物料到齐后上三端）">
                        </a>
                    </li>
		
                    <li class="event_list__item slide__item">
                        <a href="javascript:;" class="event_list__link js_focus_jump" data-type="10014" data-stat="y_new.index.focus.click" data-id="2636348302">
                            <img src="QQ%E9%9F%B3%E4%B9%90%20-%20%E4%B8%AD%E5%9B%BD%E6%9C%80%E6%96%B0%E6%9C%80%E5%85%A8%E5%85%8D%E8%B4%B9%E6%AD%A3%E7%89%88%E9%AB%98%E5%93%81%E8%B4%A8%E9%9F%B3%E4%B9%90%E5%B9%B3%E5%8F%B0%EF%BC%81_files/40028.jpg" class="event_list__pic" alt="罗志祥演唱会">
                        </a>
                    </li>
		
                </ul>
            </div>
            <div class="mod_slide_switch js_switch" data-stat="y_new.index.focus.pager"><a href="javascript:;" tabindex="-1" class="js_jump slide_switch__item slide_switch__item--current" data-stat="y_new.index.focus.pager" data-p="0"><i class="slide_switch__bg"></i><i class="icon_txt">1</i></a><a href="javascript:;" tabindex="-1" class="js_jump slide_switch__item" data-stat="y_new.index.focus.pager" data-p="1"><i class="slide_switch__bg"></i><i class="icon_txt">2</i></a><a href="javascript:;" tabindex="-1" class="js_jump slide_switch__item" data-stat="y_new.index.focus.pager" data-p="2"><i class="slide_switch__bg"></i><i class="icon_txt">3</i></a><a href="javascript:;" tabindex="-1" class="js_jump slide_switch__item" data-stat="y_new.index.focus.pager" data-p="3"><i class="slide_switch__bg"></i><i class="icon_txt">4</i></a><a href="javascript:;" tabindex="-1" class="js_jump slide_switch__item" data-stat="y_new.index.focus.pager" data-p="4"><i class="slide_switch__bg"></i><i class="icon_txt">5</i></a></div>
        </div>
        <div class="mod_slide_action">
            <div class="slide_action slide_action--left">
                <a href="javascript:;" class="slide_action__btn slide_action__btn--left js_jump" data-p="prev" tabindex="-1" data-stat="y_new.index.focus.pager"><i class="icon_txt">上一页</i><i class="slide_action__arrow slide_action__arrow--left"></i></a>
            </div>
            <div class="slide_action slide_action--right">
                <a href="javascript:;" class="slide_action__btn slide_action__btn--right js_jump" data-p="next" tabindex="-1" data-stat="y_new.index.focus.pager"><i class="icon_txt">下一页</i><i class="slide_action__arrow slide_action__arrow--right"></i></a>
            </div>
        </div>
    </div>

    <div class="footer" role="footer">
    <div class="section_inner">
        <div class="footer_info">

            <div class="footer_download">
                <h3 class="footer_tit">下载QQ音乐客户端</h3>
                <ul class="footer_download_list">
                    <li class="footer_download_list__item"><a href="download/index.htm" tppabs="http://y.qq.com/download/" class="js_footer_down" data-type="pc" data-stat="y_new.footer.download.pc"><i class="icon_qm_pc"><span class="icon_txt">QQ音乐</span></i>PC版</a></li>
                    <li class="footer_download_list__item"><a href="download/index.htm" tppabs="http://y.qq.com/download/" class="js_footer_down" data-type="mac" data-stat="y_new.footer.download.mac"><i class="icon_qm_mac"><span class="icon_txt">QQ音乐</span></i>Mac版</a></li>
                    <li class="footer_download_list__item"><a href="download/index.htm" tppabs="http://y.qq.com/download/" class="js_footer_down" data-type="andriod" data-stat="y_new.footer.download.andriod"><i class="icon_qm_android"><span class="icon_txt">QQ音乐</span></i>Android版</a></li>
                    <li class="footer_download_list__item"><a href="download/index.htm" tppabs="http://y.qq.com/download/" class="js_footer_down" data-type="iphone" data-stat="y_new.footer.download.iphone"><i class="icon_qm_iphone"><span class="icon_txt">QQ音乐</span></i>iPhone版</a></li>
                </ul>
            </div>

            <div class="footer_product">
                <h3 class="footer_tit">特色产品</h3>
                <ul class="footer_product_list">
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="javascript:if(confirm('http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu'" tppabs="http://kg.qq.com/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.k"><i class="icon_qm_kg"></i>全民K歌</a></li>
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="vip/voice_intro/index.html" tppabs="http://y.qq.com/vip/voice_intro/index.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.supersound"><i class="icon_qm_ss"></i>Super Sound</a></li>
                    <li class="footer_product_list__item footer_product_list__item--pic"><a href="y/static/down/qplay.html-pgv_ref=qqmusic.y.topmenu.htm" tppabs="http://y.qq.com/y/static/down/qplay.html?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.qplay"><i class="icon_qm_qp"></i>QPlay</a></li>
                    <li class="footer_product_list__item"><a href="cp/homepage.html#/home?from=yqq" tppabs="http://y.qq.com/cp/homepage.html#/home?from=yqq" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.cp">QQ音乐原创音乐平台</a></li>
                    <li class="footer_product_list__item"><a href="y/static/down/car_introduce.html" tppabs="http://y.qq.com/y/static/down/car_introduce.html" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.car_play">车载互联</a></li>
                    <li class="footer_product_list__item"><a href="yanchu/-pgv_ref=qqmusic.y.topmenu.htm" tppabs="http://y.qq.com/yanchu/?pgv_ref=qqmusic.y.topmenu" target="_blank" class="js_other_link" data-stat="y_new.footer.other_music.yanchu">QQ演出</a></li>
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
			<a href="y/static/tips/service_tips.html" tppabs="http://y.qq.com/y/static/tips/service_tips.html" rel="nofollow" target="_blank" title="用户服务协议">用户服务协议</a> | 
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
<script type="text/javascript">require.resourceMap({"res":{"js/v4/album.js"/*tpa=http://y.qq.com/js/v4/album.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/album_81c0596.js?max_age=31536000","m":"81c0596"},"js/v4/album_lib.js"/*tpa=http://y.qq.com/js/v4/album_lib.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/album_lib_42ae192.js?max_age=31536000","m":"42ae192"},"js/v4/index.js"/*tpa=http://y.qq.com/js/v4/index.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/index_c4eb2d7.js?max_age=31536000","m":"c4eb2d7"},"js/v4/mv.js"/*tpa=http://y.qq.com/js/v4/mv.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mv_28b6275.js?max_age=31536000","m":"28b6275"},"js/v4/mvToplist.js"/*tpa=http://y.qq.com/js/v4/mvToplist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mvToplist_5a97428.js?max_age=31536000","m":"5a97428"},"js/v4/mv_lib.js"/*tpa=http://y.qq.com/js/v4/mv_lib.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mv_lib_397139d.js?max_age=31536000","m":"397139d"},"js/v4/mymusic.js"/*tpa=http://y.qq.com/js/v4/mymusic.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mymusic_47250ee.js?max_age=31536000","m":"47250ee"},"js/v4/mymusic_edit.js"/*tpa=http://y.qq.com/js/v4/mymusic_edit.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/mymusic_edit_a67c28c.js?max_age=31536000","m":"a67c28c"},"js/v4/player.js"/*tpa=http://y.qq.com/js/v4/player.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/,"js/common/music/scroller.js"/*tpa=http://y.qq.com/js/common/music/scroller.js*/,"js/common/module/webplayer.js"/*tpa=http://y.qq.com/js/common/module/webplayer.js*/,"js/common/module/lrcHandler.js"/*tpa=http://y.qq.com/js/common/module/lrcHandler.js*/,"js/common/module/qrcHandler.js"/*tpa=http://y.qq.com/js/common/module/qrcHandler.js*/,"js/common/music/txtpl.js"/*tpa=http://y.qq.com/js/common/music/txtpl.js*/,"js/common/music/storage.js"/*tpa=http://y.qq.com/js/common/music/storage.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/player_b4eb8b9.js?max_age=31536000","m":"b4eb8b9"},"js/v4/playlist.js"/*tpa=http://y.qq.com/js/v4/playlist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/playlist_11793de.js?max_age=31536000","m":"11793de"},"js/v4/playlist_detail.js"/*tpa=http://y.qq.com/js/v4/playlist_detail.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/playlist_detail_ce9050c.js?max_age=31536000","m":"ce9050c"},"js/v4/profile.js"/*tpa=http://y.qq.com/js/v4/profile.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/,"js/common/music/storage.js"/*tpa=http://y.qq.com/js/common/music/storage.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/profile_0b03fbb.js?max_age=31536000","m":"0b03fbb"},"js/v4/search.js"/*tpa=http://y.qq.com/js/v4/search.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/,"js/common/music/storage.js"/*tpa=http://y.qq.com/js/common/music/storage.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/search_6c6ee5b.js?max_age=31536000","m":"6c6ee5b"},"js/v4/singer.js"/*tpa=http://y.qq.com/js/v4/singer.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/,"js/common/music/lib/base.js"/*tpa=http://y.qq.com/js/common/music/lib/base.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/singer_cb03d36.js?max_age=31536000","m":"cb03d36"},"js/v4/singerlist.js"/*tpa=http://y.qq.com/js/v4/singerlist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/singerlist_b530ffa.js?max_age=31536000","m":"b530ffa"},"js/v4/song_detail.js"/*tpa=http://y.qq.com/js/v4/song_detail.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/song_detail_1db6650.js?max_age=31536000","m":"1db6650"},"js/v4/toplist.js"/*tpa=http://y.qq.com/js/v4/toplist.js*/:{"deps":["js/common/music.js"/*tpa=http://y.qq.com/js/common/music.js*/],"url":"http://y.gtimg.cn/music/portal/js/v4/toplist_64c1e5e.js?max_age=31536000","m":"64c1e5e"}},"pkg":{}});</script>
<script type="text/javascript"> 
	window.onload = function () {
		SPD.mark(35);	
	};
;(function () {
	require.async("js/v4/index.js"/*tpa=http://y.qq.com/js/v4/index.js*/, function( index ){
		index.init({
		albumlist : {"all":[{"Falbum_id":"1621878","Falbum_mid":"003Zeqez3rd07L","Falbum_name":"FLIGHT LOG : TURBULENCE","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"177189","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"002SfPHq3JCBJQ","Fsinger_name":"GOT7","count":"0","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1620470","Falbum_mid":"001xRWE82ideg7","Falbum_name":"跳到太阳升起来","Fape_type":"0","Farea":"1","Fattribute_3":"0","Flanguage":"0","Fsinger_id1":"22874","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001oXbjs29oPul","Fsinger_name":"孙子涵","count":"103411","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1621165","Falbum_mid":"001OJpLE3rIBWv","Falbum_name":"Pink Revolution","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"27090","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"002ACw3Q2Jwd5j","Fsinger_name":"에이핑크","count":"3206","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1621167","Falbum_mid":"000NZAdw2thoaT","Falbum_name":"Evolution Pop_Vol.1","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"57782","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001CbbK32AWGYx","Fsinger_name":"크레용팝","count":"133","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1621166","Falbum_mid":"002XE7N348IrMx","Falbum_name":"Erica","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"51304","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0009OYVz1mMDXS","Fsinger_name":"프롬","count":"10","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1620940","Falbum_mid":"0001kHQ70NL99g","Falbum_name":"你在终点等我","Fape_type":"2","Farea":"1","Fattribute_3":"1","Flanguage":"0","Fsinger_id1":"264","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"000GDDuQ3sGQiT","Fsinger_name":"王菲","count":"1824686","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1609263","Falbum_mid":"002o2LhS38VHhc","Falbum_name":"新声有范第二季 第6期","Fape_type":"2","Farea":"1","Fattribute_3":"0","Flanguage":"0","Fsinger_id1":"1221674","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"000akPE42BKtQf","Fsinger_name":"新声有范","count":"152","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1620670","Falbum_mid":"000Dd1dT1cRDE7","Falbum_name":"中国新歌声 第12期","Fape_type":"2","Farea":"1","Fattribute_3":"1","Flanguage":"0","Fsinger_id1":"1194922","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001zisHA2DYkt3","Fsinger_name":"中国新歌声","count":"1612633","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1509881","Falbum_mid":"002omcya2uFH4M","Falbum_name":"Illuminate (Deluxe)","Fape_type":"1","Farea":"3","Fattribute_3":"1","Flanguage":"5","Fsinger_id1":"196676","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001NODJ71LGPD5","Fsinger_name":"Shawn Mendes","count":"1021540","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1570919","Falbum_mid":"002wS9tA16g5iu","Falbum_name":"daydream","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"33716","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0039EKtl4ec7wv","Fsinger_name":"Aimer","count":"58761","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1504543","Falbum_mid":"000CxI210X8WwI","Falbum_name":"MD2000 ~ReLIFE Ending Songs~","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"41392","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003Topsy10SOSb","Fsinger_name":"日本ACG","count":"25226","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1607880","Falbum_mid":"002J7XNt2m9sNc","Falbum_name":"青い図書室","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"6936","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004bzYYO0qUNXI","Fsinger_name":"手嶌葵","count":"6656","score":"10","shoufa":0,"xq":"0"}],"cn":[{"Falbum_id":"1620470","Falbum_mid":"001xRWE82ideg7","Falbum_name":"跳到太阳升起来","Fape_type":"0","Farea":"1","Fattribute_3":"0","Flanguage":"0","Fsinger_id1":"22874","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001oXbjs29oPul","Fsinger_name":"孙子涵","count":"103411","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1609263","Falbum_mid":"002o2LhS38VHhc","Falbum_name":"新声有范第二季 第6期","Fape_type":"2","Farea":"1","Fattribute_3":"0","Flanguage":"0","Fsinger_id1":"1221674","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"000akPE42BKtQf","Fsinger_name":"新声有范","count":"152","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1620940","Falbum_mid":"0001kHQ70NL99g","Falbum_name":"你在终点等我","Fape_type":"2","Farea":"1","Fattribute_3":"1","Flanguage":"0","Fsinger_id1":"264","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"000GDDuQ3sGQiT","Fsinger_name":"王菲","count":"1824686","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1620670","Falbum_mid":"000Dd1dT1cRDE7","Falbum_name":"中国新歌声 第12期","Fape_type":"2","Farea":"1","Fattribute_3":"1","Flanguage":"0","Fsinger_id1":"1194922","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001zisHA2DYkt3","Fsinger_name":"中国新歌声","count":"1612633","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1620368","Falbum_mid":"000e7QMp2jn74i","Falbum_name":"叮咯咙咚呛第二季 第2期","Fape_type":"2","Farea":"1","Fattribute_3":"1","Flanguage":"0","Fsinger_id1":"1228264","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"002OH63P40rI08","Fsinger_name":"叮咯咙咚呛","count":"246809","score":"6","shoufa":0,"xq":"0"},{"Falbum_id":"1615176","Falbum_mid":"001DgPsZ2OSKRI","Falbum_name":"习惯了寂寞","Fape_type":"0","Farea":"1","Fattribute_3":"0","Flanguage":"0","Fsinger_id1":"4422","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0012bj8d36Xkw1","Fsinger_name":"牛奶咖啡","count":"614145","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1608571","Falbum_mid":"002yDOMG21WNrj","Falbum_name":"藏雨","Fape_type":"2","Farea":"1","Fattribute_3":"1","Flanguage":"0","Fsinger_id1":"1009433","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003L2FDd2ts5Hk","Fsinger_name":"长宇","count":"282812","score":"7","shoufa":0,"xq":"0"},{"Falbum_id":"1607856","Falbum_mid":"003dFvsn3DvBzM","Falbum_name":"LION","Fape_type":"0","Farea":"0","Fattribute_3":"0","Flanguage":"0","Fsinger_id1":"1155766","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"00421lyh1OAXIx","Fsinger_name":"狮子合唱团","count":"409954","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1601453","Falbum_mid":"000JEiwP0Te5Os","Falbum_name":"不同班同学","Fape_type":"0","Farea":"0","Fattribute_3":"0","Flanguage":"1","Fsinger_id1":"219","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003AfDK34H82GU","Fsinger_name":"张敬轩","count":"1569797","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1601715","Falbum_mid":"0017PV7Q0xng2C","Falbum_name":"笑一笑","Fape_type":"2","Farea":"0","Fattribute_3":"1","Flanguage":"0","Fsinger_id1":"163","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003aQYLo2x8izP","Fsinger_name":"刘德华","count":"955198","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1601573","Falbum_mid":"001HcQD23lrUGN","Falbum_name":"Dear Leslie","Fape_type":"0","Farea":"0","Fattribute_3":"0","Flanguage":"1","Fsinger_id1":"3347","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"000NFT2p1GbnPB","Fsinger_name":"古巨基","count":"47412","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1600702","Falbum_mid":"001lxKbm4W2Trs","Falbum_name":"小精灵","Fape_type":"0","Farea":"1","Fattribute_3":"0","Flanguage":"0","Fsinger_id1":"34412","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"000zmpju02bEBm","Fsinger_name":"TFBOYS","count":"8053752","score":"9","shoufa":0,"xq":"0"}],"eu":[{"Falbum_id":"1509881","Falbum_mid":"002omcya2uFH4M","Falbum_name":"Illuminate (Deluxe)","Fape_type":"1","Farea":"3","Fattribute_3":"1","Flanguage":"5","Fsinger_id1":"196676","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001NODJ71LGPD5","Fsinger_name":"Shawn Mendes","count":"1021540","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1582315","Falbum_mid":"003M0OAg1wPzhd","Falbum_name":"Hard II Love","Fape_type":"0","Farea":"3","Fattribute_3":"0","Flanguage":"5","Fsinger_id1":"4762","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"002U3frd3qx69a","Fsinger_name":"Usher","count":"338535","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1543270","Falbum_mid":"0039pCvB1NlQUf","Falbum_name":"Glory (Deluxe Version)","Fape_type":"0","Farea":"3","Fattribute_3":"0","Flanguage":"5","Fsinger_id1":"4708","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"002EYdg22Ts0BV","Fsinger_name":"Britney Spears","count":"2729268","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1389068","Falbum_mid":"002jgpoY3lr8Hs","Falbum_name":"Encore un soir (Deluxe Edition)","Fape_type":"1","Farea":"3","Fattribute_3":"1","Flanguage":"6","Fsinger_id1":"4709","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003IWVh42ClFnB","Fsinger_name":"Céline Dion","count":"1166721","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1577453","Falbum_mid":"0011fjyh3RJGwZ","Falbum_name":"Emotion Side B","Fape_type":"1","Farea":"3","Fattribute_3":"1","Flanguage":"5","Fsinger_id1":"34782","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004cnBXB1OBN7m","Fsinger_name":"Carly Rae Jepsen","count":"2131593","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1532728","Falbum_mid":"000gpDBH0kqFhl","Falbum_name":"Major Key","Fape_type":"0","Farea":"3","Fattribute_3":"0","Flanguage":"5","Fsinger_id1":"13981","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0007q8Dp1YGgtA","Fsinger_name":"DJ Khaled","count":"249098","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1597763","Falbum_mid":"0019HLwR0Fuoes","Falbum_name":"Perfect Illusion","Fape_type":"1","Farea":"3","Fattribute_3":"1","Flanguage":"5","Fsinger_id1":"13769","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001D3C3T2wxP74","Fsinger_name":"Lady Gaga","count":"963517","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1596936","Falbum_mid":"003jpPE73xCLOa","Falbum_name":"The Greatest","Fape_type":"0","Farea":"3","Fattribute_3":"0","Flanguage":"5","Fsinger_id1":"7015","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004ItgA32BhfdC","Fsinger_name":"Sia","count":"823191","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1589918","Falbum_mid":"002FyqfA3OBIFq","Falbum_name":"#Wheresthelove","Fape_type":"1","Farea":"3","Fattribute_3":"1","Flanguage":"5","Fsinger_id1":"4586","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0039PNMH4AdYZd","Fsinger_name":"Black Eyed Peas","count":"170172","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1589917","Falbum_mid":"004F65OX2hi2CU","Falbum_name":"Freedun","Fape_type":"1","Farea":"3","Fattribute_3":"1","Flanguage":"5","Fsinger_id1":"11902","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001IU9n73ht7bE","Fsinger_name":"M.I.A.","count":"108725","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1515201","Falbum_mid":"000R5FAB2o8TR1","Falbum_name":"Encore","Fape_type":"0","Farea":"3","Fattribute_3":"0","Flanguage":"5","Fsinger_id1":"174185","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003hyJQg0Mc80t","Fsinger_name":"DJ Snake","count":"4952522","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1517851","Falbum_mid":"001yFTOu0LmaPN","Falbum_name":"Platinum Hits","Fape_type":"0","Farea":"3","Fattribute_3":"0","Flanguage":"5","Fsinger_id1":"19921","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004TfAHg2stYrs","Fsinger_name":"Jason Derulo","count":"1812326","score":"9","shoufa":0,"xq":"0"}],"j":[{"Falbum_id":"1619897","Falbum_mid":"001JRA2d1QOjBn","Falbum_name":"恋をしたのは","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"5454","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0020mcjz1pIRWs","Fsinger_name":"aiko","count":"5548","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1570919","Falbum_mid":"002wS9tA16g5iu","Falbum_name":"daydream","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"33716","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0039EKtl4ec7wv","Fsinger_name":"Aimer","count":"58761","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1607880","Falbum_mid":"002J7XNt2m9sNc","Falbum_name":"青い図書室","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"6936","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004bzYYO0qUNXI","Fsinger_name":"手嶌葵","count":"6656","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1609274","Falbum_mid":"001lDPG62Nm44F","Falbum_name":"love letter","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"171188","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"000Hyj9P4IqYYk","Fsinger_name":"MACO","count":"3749","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1504543","Falbum_mid":"000CxI210X8WwI","Falbum_name":"MD2000 ~ReLIFE Ending Songs~","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"41392","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003Topsy10SOSb","Fsinger_name":"日本ACG","count":"25226","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1604285","Falbum_mid":"000UBncc4gVzSW","Falbum_name":"Power of the Paradise","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"5705","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003I3fpP3RZC13","Fsinger_name":"嵐","count":"34268","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1596982","Falbum_mid":"001n4DTB0TacaJ","Falbum_name":"clever","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"24069","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"00480ZOx2bAOwm","Fsinger_name":"ClariS","count":"69226","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1588144","Falbum_mid":"003taWL82O6MN9","Falbum_name":"THIS IS Flower THIS IS BEST","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"41965","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003pp5253P1mUF","Fsinger_name":"Flower","count":"15504","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1588314","Falbum_mid":"003hyMYF0bYGX4","Falbum_name":"夢で夜空を照らしたい/未熟DREAMER","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"1039375","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004G6Xfd4LTXw7","Fsinger_name":"Aqours","count":"31759","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1517998","Falbum_mid":"0043j6Pk4NXBxq","Falbum_name":"Signal","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"181157","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0006c3Oz12Ipwq","Fsinger_name":"TK from 凛として時雨","count":"84001","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1597488","Falbum_mid":"002LOBUV4REupV","Falbum_name":"Various BLUE","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"165909","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004gbK7Y0nL8I8","Fsinger_name":"雨宮天","count":"13746","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1597271","Falbum_mid":"004S6BIV1FjKyR","Falbum_name":"Toyful Basket","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"3","Fsinger_id1":"71160","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"002MXoIC3DSMHf","Fsinger_name":"三森すずこ","count":"2399","score":"10","shoufa":0,"xq":"0"}],"k":[{"Falbum_id":"1621878","Falbum_mid":"003Zeqez3rd07L","Falbum_name":"FLIGHT LOG : TURBULENCE","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"177189","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"002SfPHq3JCBJQ","Fsinger_name":"GOT7","count":"0","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1621167","Falbum_mid":"000NZAdw2thoaT","Falbum_name":"Evolution Pop_Vol.1","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"57782","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001CbbK32AWGYx","Fsinger_name":"크레용팝","count":"133","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1621165","Falbum_mid":"001OJpLE3rIBWv","Falbum_name":"Pink Revolution","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"27090","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"002ACw3Q2Jwd5j","Fsinger_name":"에이핑크","count":"3206","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1621166","Falbum_mid":"002XE7N348IrMx","Falbum_name":"Erica","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"51304","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0009OYVz1mMDXS","Fsinger_name":"프롬","count":"10","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1620314","Falbum_mid":"00005L3o08HGar","Falbum_name":"The Life is 82 (0.5)","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"1009889","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"003yDOkz2Zot82","Fsinger_name":"슈퍼비","count":"28010","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1619861","Falbum_mid":"0012tPjM3zgNAT","Falbum_name":"unnoticed","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"1242231","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004X8M6Q2Hs9tu","Fsinger_name":"임혜민","count":"3740","score":"5","shoufa":0,"xq":"0"},{"Falbum_id":"1615179","Falbum_mid":"0005D7p805aUrD","Falbum_name":"아이돌보컬리그 - 걸스피릿 EPISODE 10","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"1203272","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004bWRK10jj3Gq","Fsinger_name":"걸스피릿","count":"4648","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1610036","Falbum_mid":"003LvuPw1hyCUC","Falbum_name":"Travellers","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"6963","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004P8jJx0BI3lN","Fsinger_name":"클래지콰이","count":"3702","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1609294","Falbum_mid":"002Tgmaq3GI2FV","Falbum_name":"Bobby Doll","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"18019","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"001N1oha1Lv3Xr","Fsinger_name":"송지은","count":"55764","score":"9","shoufa":0,"xq":"0"},{"Falbum_id":"1608742","Falbum_mid":"004gIOWa4SFH5a","Falbum_name":"Infinite Only","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"21422","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"0012USbZ2rxfCS","Fsinger_name":"인피니트","count":"231645","score":"8","shoufa":0,"xq":"0"},{"Falbum_id":"1608134","Falbum_mid":"000ie3mV0lFouN","Falbum_name":"언프리티 랩스타 3 1차 공연","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"949669","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"002jgJun3ShvJ1","Fsinger_name":"언프리티 랩스타","count":"8653","score":"10","shoufa":0,"xq":"0"},{"Falbum_id":"1604357","Falbum_mid":"000PPyNC4JsPcm","Falbum_name":"아이돌보컬리그 - 걸스피릿 EPISODE 09","Fape_type":"0","Farea":"2","Fattribute_3":"0","Flanguage":"4","Fsinger_id1":"1203272","Fsinger_id2":null,"Fsinger_id3":null,"Fsinger_id4":null,"Fsinger_mid":"004bWRK10jj3Gq","Fsinger_name":"걸스피릿","count":"37544","score":"8","shoufa":0,"xq":"0"}]}
		});
	});
})(); 
</script> 

</body>
</html>
