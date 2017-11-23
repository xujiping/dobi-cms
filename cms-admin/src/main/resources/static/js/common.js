$(function() {
	// Waves初始化
	Waves.displayEffect();
	// 数据表格动态高度
	$(window).resize(function () {
		$('#table').bootstrapTable('resetView', {
			height: getHeight()
		});
	});
	// 设置input特效
	$(document).on('focus', 'input[type="text"]', function() {
		$(this).parent().find('label').addClass('active');
	}).on('blur', 'input[type="text"]', function() {
		if ($(this).val() == '') {
			$(this).parent().find('label').removeClass('active');
		}
	});
	// select2初始化
	// $('select').select2();
	//轮播大图添加active
    if(typeof(bigImages) != "undefined"){
        $("#bigImage1").addClass("active");
        for(var i = 0; i < bigImages.length; i++){
            $("#myCarousel ol").append('<li data-target="#myCarousel" data-slide-to="' + i + '"></li>');
        }
        $("#myCarousel ol li").eq(0).addClass("active");
    }

});
// 动态高度
function getHeight() {
	return $(window).height() - 20;
}
// 数据表格展开内容
function detailFormatter(index, row) {
	var html = [];
	$.each(row, function (key, value) {
		html.push('<p><b>' + key + ':</b> ' + value + '</p>');
	});
	return html.join('');
}
// 初始化input特效
function initMaterialInput() {
	$('form input[type="text"]').each(function () {
		if ($(this).val() != '') {
			$(this).parent().find('label').addClass('active');
		}
	});
}
//时间戳转日期
function getLocalTime(nS) {
return new Date(parseInt(nS) * 1000).toLocaleString().replace(/:\d{1,2}$/,' ');
}

//激活当前菜单
function setCurrentMenu(){
    var url = window.location.href;
    if(url.indexOf("index") >= 0){
        $(".ivf-menus li a").eq(0).css({"background-color":"#2ecc71"});
        $(".ivf-menus li a").eq(0).css({"color":"#fff"});
    }
    if(url.indexOf("about") >= 0){
        $(".ivf-menus li a").eq(1).css({"background-color":"#2ecc71"});
        $(".ivf-menus li a").eq(1).css({"color":"#fff"});
    }
    if(url.indexOf("service") >= 0){
        $(".ivf-menus li a").eq(2).css({"background-color":"#2ecc71"});
        $(".ivf-menus li a").eq(2).css({"color":"#fff"});
    }
    if(url.indexOf("success") >= 0){
        $(".ivf-menus li a").eq(3).css({"background-color":"#2ecc71"});
        $(".ivf-menus li a").eq(3).css({"color":"#fff"});
    }
    if(url.indexOf("tube") >= 0){
        $(".ivf-menus li a").eq(4).css({"background-color":"#2ecc71"});
        $(".ivf-menus li a").eq(4).css({"color":"#fff"});
    }
    if(url.indexOf("message") >= 0){
        $(".ivf-menus li a").eq(5).css({"background-color":"#2ecc71"});
        $(".ivf-menus li a").eq(5).css({"color":"#fff"});
    }
    if(url.indexOf("contact") >= 0){
        $(".ivf-menus li a").eq(6).css({"background-color":"#2ecc71"});
        $(".ivf-menus li a").eq(6).css({"color":"#fff"});
    }
}

