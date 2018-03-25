//页面左边导航栏，悬浮显示
$(()=>{
    let $nav_h2 = $(".nav-bar-all .nav-menu .nav-list .line-13 h2");
    $nav_h2.hover(()=>{
        $(this).nextElementSibling.css("display","block")
    })
});
//轮播图
$(function(){
    const LiWidth = 752;
    let moved = 0;
    const interval = 500;
    const wait = 2000;
    let timer = null;
    let data = $(".list .carousel-inner");
    let $ul = $(".list");
    let $ulIndex = $(".carousel .slideCircle");
    $ulIndex.children().first().addClass("active");
    function move(dir=1){
        if (moved ==0&&dir==-1){
            moved = data.length;
            $ul.css("left",-LiWidth*data.length);
        }
        moved+=dir;
        $ul.animate({
            left:-LiWidth*moved
        },interval,function(){
            if(moved==data.length-1){
                moved=0;
                $ul.css("left",0)
            }
            $ulIndex.children(":eq("+moved+")").addClass("active").siblings().removeClass("active");
        })
    }
    timer = setInterval(move,interval+wait);
    $(".carousel_wrap").hover(
        ()=>{
            clearInterval(timer);
            timer=null;
        },
        ()=>{
            timer=setInterval(move,interval+wait);
        }
    )
    $ulIndex.on("click","li:not(.active)",function(){
        let i = $(this).index();
        moved=i;
    })
    }
)

