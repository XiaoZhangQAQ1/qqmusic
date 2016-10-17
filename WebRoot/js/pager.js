/*分页器:CSS沿用QQMUSIC,使用时在分页按钮的div 加上id="dickson"  */
/*在struts.xml配置相应的获取最大页数和当前页数的action result路径*/
/*action类中的变量要设为maxPage和currentPage					*/
/*PagerAction是用来测试的										*/


	/*url:获得json的路径*/
  	function pager(pagerUrl){
		console.log('pager.js was called');
		$('#dickson').children().remove();
		$.getJSON(pagerUrl,function(data){
		console.log('json captured , maxPage:'+data.maxPage+' currentPage:'+data.currentPage);
		var max=data.maxPage;var current=data.currentPage;
		pageButtonBulider(max,current);
		});
	};
	function pageButtonBulider(max,current){
		console.log('pageButtonBulider was called');
		if(max!=1){
			//先清除之前的按钮内容
			$('#dickson').children().remove();
			/* 上一页按钮 */
			if(current!=1){
				$('#dickson').append("<a href='profile?currentPage="+(current-1)+"' class='prev js_pageindex'  title='上一页' hidefocus=''><span>&lt;</span></a>");
			}
			/* 中间选页按钮 (当前页<5)  包含  [1] [2] [3] [4] [5]  */
			if(current<=5){
				if(max<=5){
					var i;
					for(i=1;i<=max;i++){
						if(i==current){
								$('#dickson').append("<strong class='current'>"+current+"</strong>");
						}
						else{
							$('#dickson').append("<a href='profile?currentPage="+i+"' class='js_pageindex' >"+i+"</a>");
						}
					}
				}
				else{
					var i;
					for(i=1;i<=5;i++){
						if(i==current){
							$('#dickson').append("<strong class='current'>"+current+"</strong>");
						}
						else{
							$('#dickson').append("<a href='profile?currentPage="+i+"' class='js_pageindex' >"+i+"</a>");
						}
					}
				}
			}
			/* 中间选页按钮 (当前页>5)  包含 ...  [x-2] [x-1] [x] [x+1] [x+2]  */
			else if(current>5){
				$('#dickson').append("<a href='profile?currentPage=1' class='js_pageindex' >1</a>");
				$('#dickson').append("<strong class='more'>...</strong>");
				var i;
				for(i=current-2;i<=current+2;i++){
					if(i==current){
						$('#dickson').append("<strong class='current'>"+current+"</strong>");
					}
					else if(i<=max){
						$('#dickson').append("<a href='profile?currentPage="+i+"' class='js_pageindex' >"+i+"</a>");
					}
				}
			}
			/* ... max  */
			if(current<=(max-3)&&max>5||(max==7&&current==5)){
				if((max-current)>=2&&(max-5)>1){
					$('#dickson').append("<strong class='more'>...</strong>");
				}
				$('#dickson').append("<a href='profile?currentPage="+max+"' class='js_pageindex' >"+max+"</a>");
			}
			/* 下一页按钮 */
			if(current!=max){
				
				$('#dickson').append("<a href='profile?currentPage="+(current-(-1))+"' class='next js_pageindex'  title='下一页' hidefocus=''><span>&gt;</span></a>");
			}
		
		}
	}