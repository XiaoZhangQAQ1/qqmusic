<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/layout0927.css">
<link rel="stylesheet" href="../css/profile.css">
<script type="text/javascript" src="../js/jquery-1.8.3.js" ></script>
<script type="text/javascript" src="../js/pager.js" ></script>
<title>分页器</title>
</head>
<body>

<script type="text/javascript">
	window.onload=function(){
		//$('.none').remove();
	};
	
</script>
<div><input type="button" id="clear" value="clear"></div>
<script type="text/javascript">
	$('#clear').click(function(){
		$('#dickson').children().remove();
		
	});
</script>
<div><input type="button" id="test" value="build"></div>
<script type="text/javascript">
	var max=9;
  	var current=0;
	var url="../pager";
  	$('#test').click(function(){
  		
  		current++;
  		$('#dickson').children().remove();
  		pageButtonBulider(max,current);
  		
  	
  	});

		
</script>
<!-- 5 to max -->

<div id="dickson" class="mod_page_nav js_pager" ></div>
<!-- <audio src="http://m5.file.xiami.com/454/10454/56353/2053304_51341_l.mp3?auth_key=2e1a0e1b2b3bf1e4f3598d5f164b0bae-1477191600-0-null" controls="controls">
Your browser does not support the audio element.
</audio> -->

	<div class="mod_page_nav js_pager">
		
		<a href="javascript:;" class="prev js_pageindex"  title="上一页" hidefocus="">
			<span>&lt;</span>
		</a>
		<a href="javascript:;" class="js_pageindex" >1</a>
		<strong class="more">...</strong>
		<a href="javascript:;" class="js_pageindex" >3</a>
		<a href="javascript:;" class="js_pageindex" >4</a>
			<strong class="current">5</strong>
		<a href="javascript:;" class="js_pageindex" >6</a>
		<a href="javascript:;" class="js_pageindex" >7</a>
		<strong class="more">...</strong>
		<a href="javascript:;" class="js_pageindex" >5022</a>
		<a href="javascript:;" class="next js_pageindex"  title="下一页" hidefocus="">
			<span>&gt;</span>
		</a>
	</div>
<!-- <script type="text/javascript">
	$('.next').click(function(){
		console.log('selector work');
		$(this).empty();
	});
	
	$('.next').dbclick(function(){
		console.log('selector work');
		$(this).remove();
	});
	
</script> -->


	<!-- 1 -->

	<div   class="mod_page_nav js_pager none">
		<strong class="current">1</strong>
		<a href="javascript:;" class="js_pageindex" data-index="2" hidefocus="">2</a>
		<a href="javascript:;" class="js_pageindex" data-index="3" hidefocus="">3</a>
		<a href="javascript:;" class="js_pageindex" data-index="4" hidefocus="">4</a>
		<strong class="more">...</strong>
		<a href="javascript:;" class="js_pageindex" data-index="5022" hidefocus="">5022</a>
		<a href="javascript:;" class="next js_pageindex" data-index="2" title="下一页" hidefocus="">
			<span>&gt;</span>
		</a>
	</div>


	<!-- 2 -->

	<div class="mod_page_nav js_pager none">
		<a href="javascript:;" class="prev js_pageindex" data-index="1" title="上一页" hidefocus="">
			<span>&lt;</span> 
		</a>
		
		<a href="javascript:;"class="js_pageindex" data-index="1" hidefocus="">1</a>
		
		<strong class="current">2</strong>
		
		<a href="javascript:;" class="js_pageindex" data-index="3" hidefocus="">3</a>
		<a href="javascript:;" class="js_pageindex" data-index="4" hidefocus="">4</a>
		
		<strong class="more">...</strong>
		
		<a href="javascript:;" class="js_pageindex" data-index="5022" hidefocus="">5022</a>
		
		<a href="javascript:;" class="next js_pageindex" data-index="3" title="下一页" hidefocus="">
			<span>&gt;</span>
		</a>
	</div>

	<!-- 3 -->

	<div class="mod_page_nav js_pager none">
		<a href="javascript:;" class="prev js_pageindex" data-index="2" title="上一页" hidefocus="">
			<span>&lt;</span> 
		</a>
		<a href="javascript:;" class="js_pageindex" data-index="1" hidefocus="">1</a>
		<a href="javascript:;" class="js_pageindex" data-index="2" hidefocus="">2</a>
		<strong class="current">3</strong>
		<a href="javascript:;" class="js_pageindex" data-index="4" hidefocus="">4</a>
		<a href="javascript:;" class="js_pageindex" data-index="5" hidefocus="">5</a>
		<strong class="more">...</strong>
		<a href="javascript:;" class="js_pageindex" data-index="5022" hidefocus="">5022</a>
		<a href="javascript:;" class="next js_pageindex" data-index="4" title="下一页" hidefocus="">
			<span>&gt;</span>
		</a>
	</div>

	<!-- 4 -->

	<div class="mod_page_nav js_pager none ">
		<a href="javascript:;" class="prev js_pageindex" data-index="3" title="上一页" hidefocus="">
			<span>&lt;</span> </a>
		<a href="javascript:;" class="js_pageindex" data-index="1" hidefocus="">1</a>
		<a href="javascript:;" class="js_pageindex" data-index="2" hidefocus="">2</a>
		<a href="javascript:;" class="js_pageindex" data-index="3" hidefocus="">3</a>
		<strong class="current">4</strong>
		<a href="javascript:;" class="js_pageindex" data-index="5" hidefocus="">5</a>
		<a href="javascript:;" class="js_pageindex" data-index="6" hidefocus="">6</a>
		<strong class="more">...</strong>
		<a href="javascript:;" class="js_pageindex" data-index="5022" hidefocus="">5022</a>
		<a href="javascript:;" class="next js_pageindex" data-index="5" title="下一页" hidefocus="">
			<span>&gt;</span>
		</a>
	</div>
	

<!-- max -->
	<div class="mod_page_nav js_pager none">
		<a href="javascript:;" class="prev js_pageindex" data-index="5021" title="上一页" hidefocus="">
			<span>&lt;</span> 
		</a>
		<a href="javascript:;" class="js_pageindex" data-index="1" hidefocus="">1</a>
		<strong class="more">...</strong>
		<a href="javascript:;" class="js_pageindex" data-index="5019" hidefocus="">5019</a>
		<a href="javascript:;" class="js_pageindex" data-index="5020" hidefocus="">5020</a>
		<a href="javascript:;" class="js_pageindex" data-index="5021" hidefocus="">5021</a>
		<strong class="current">5022</strong>
	</div>



















</body>
</html>