
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
