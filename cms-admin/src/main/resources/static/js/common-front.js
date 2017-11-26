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