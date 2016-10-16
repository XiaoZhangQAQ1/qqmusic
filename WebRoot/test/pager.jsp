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
	
	
  	$('#test').click(function(){
		console.log('init json test');
		$('#dickson').children().remove();
		$.getJSON("../pager",function(data){
		console.log('maxPage:'+data.maxPage+' currentPage:'+data.currentPage);
		var max=data.maxPage;var current=data.currentPage;
		//var max=4;var current=1;
		if(max!=1){
			/* 上一页按钮 */
			if(current!=1){
				$('#dickson').append("<a href='javascript:;' class='prev js_pageindex'  title='上一页' hidefocus=''><span>&lt;</span></a>");
		
			}
			/* 中间选页按钮 (当前页<5)  包含  [1] [2] [3] [4] [5]  */
			if(current<=5){
				if(max<=5){
					for(i=1;i<=max;i++){
						if(i==current){
								$('#dickson').append("<strong class='current'>"+current+"</strong>");
						}
						else{
							$('#dickson').append("<a href='javascript:;' class='js_pageindex' >"+i+"</a>");
						}
					}
				}
				else{
					for(i=1;i<=5;i++){
						if(i==current){
							$('#dickson').append("<strong class='current'>"+current+"</strong>");
						}
						else{
							$('#dickson').append("<a href='javascript:;' class='js_pageindex' >"+i+"</a>");
						}
					}
				}
			}
			/* 中间选页按钮 (当前页>5)  包含 ...  [x-2] [x-1] [x] [x+1] [x+2]  */
			else if(current>5){
				$('#dickson').append("<a href='javascript:;' class='js_pageindex' >1</a>");
				$('#dickson').append("<strong class='more'>...</strong>");
				for(i=current-2;i<=current+2;i++){
					if(i==current){
						$('#dickson').append("<strong class='current'>"+current+"</strong>");
					}
					else if(i<=max){
						$('#dickson').append("<a href='javascript:;' class='js_pageindex' >"+i+"</a>");
					}
				}
			}
			/* ... max  */
			if(current<=(max-3)&&max>5){
				if((max-current)>3){
					$('#dickson').append("<strong class='more'>...</strong>");
				}
				$('#dickson').append("<a href='javascript:;' class='js_pageindex' >"+max+"</a>");
			}
			/* 下一页按钮 */
			if(current!=max){
				$('#dickson').append("<a href='javascript:;' class='next js_pageindex'  title='下一页' hidefocus=''><span>&gt;</span></a>");
			}
		
		}
		});
	});

		
</script>
<!-- 5 to max -->

<div id="dickson" class="mod_page_nav js_pager" ></div>


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