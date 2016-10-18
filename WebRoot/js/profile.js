/* 控制添加菜单弹出 */

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
			x = e.pageX+5;
			y = e.pageY+5;
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


	function bodyClickOn() {
		clickEvent = "on";
		console.log(clickEvent);

	}

	function bodyClickOff() {
		clickEvent = "off";
		console.log(clickEvent);

	}
	
/*控制页面box切换*/ 
	
function likeTab(){
	console.log('like_box:' + $('#like_box').css('display'));
	if ($('#like_box').css('display') == "none") {
		$('#like_box').css('display', 'block');
		$('#focus_box').css('display', 'none');
		$('#fans_box').css('display', 'none');
		$('#create_box').css('display', 'none');
		console.log('show like_box');
	}
}	
	
function createTab(){
	console.log('create_box:' + $('#create_box').css('display'));
	if ($('#create_box').css('display') == "none") {
		$('#like_box').css('display', 'none');
		$('#focus_box').css('display', 'none');
		$('#fans_box').css('display', 'none');
		$('#create_box').css('display', 'block');
		console.log('show create_box');
	}
}

function focusTab(){
	console.log('focus_box:' + $('#focus_box').css('display'));
	if ($('#focus_box').css('display') == "none") {
		$('#like_box').css('display', 'none');
		$('#focus_box').css('display', 'block');
		$('#fans_box').css('display', 'none');
		$('#create_box').css('display', 'none');
		console.log('show focus_box');
	}
}	
	
function fansTab(){
	console.log('fans_box:' + $('#fans_box').css('display'));
	if ($('#fans_box').css('display') == "none") {
		$('#like_box').css('display', 'none');
		$('#focus_box').css('display', 'none');
		$('#fans_box').css('display', 'block');
		$('#create_box').css('display', 'none');
		console.log('show fans_box');
	}
}	

/*切换控制*/
function sson(obj){
	$(obj).addClass('style_switch__item--select');
	console.log('function sson() was called');
}
function ssoff(other){
	other.removeClass("style_switch__item--select");
	console.log('function ssoff() was called');
}

function UPPT (){
	$('.mod_playlist_text').css('display','none');
	$('.mod_playlist').css('display','block');
	
	
	var other=$('#isList');
	ssoff(other);
	console.log('#upPicDownText was clicked');
	console.log('列表display:'+$('.mod_playlist_text').css('display'));
	console.log('图标display:'+$('.mod_playlist').css('display'));
}
	
function isL(){
	$('.mod_playlist_text').css('display','block');
	$('.mod_playlist').css('display','none');
	
	
	var other=$('#upPicDownText');
	ssoff(other);
	console.log('#isList was clicked');
	console.log('列表display:'+$('.mod_playlist_text').css('display'));
	console.log('图标display:'+$('.mod_playlist').css('display'));
}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	