//页面左边导航栏，悬浮显示
$(()=> {
    let $nav_li = $(".nav-bar-all .nav-menu .nav-list .line-13 li");
    $nav_li.hover(function () {
        let curItem = $(this);
        curItem.children('.nav-s-ca').toggle();
    });
})
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
);

$(()=>{
    $.get('data/index/flash_sales.php').then(resData=>{
        let html = "";
        let Liwidth = 992;
        let $slidepage = $('.slide_page');
        for(item of resData){
            html+= `<li class="slide_section">
                    <em class="hotsale icon">HOT</em>
                    <a href=""><img src="${item.img1}" alt=""></a>
                    <a href=""><img src="${item.img2}" alt=""></a>
                    <a href=""><img src="${item.img3}" alt=""></a>
                    <a href=""><img src="${item.img4}" alt=""></a>
                    <a href="">
                        <div class="brand_title">${item.title}</div>
                    </a>
                    <a href="">
                        <div class="brand_price">${item.price}</div>
                    </a>
                    <a href="">
                        <div class="timer"><i class="iconfont">&#xe6bb;</i><span class="timer-count"></span></div>
                    </a>
                </li>`
        }
        $slidepage.html(html).css('width',Liwidth*resData.length);
        let countdown = resData[0].countdown;
        setInterval(function(){
            countdown--;
            let day = Math.floor(countdown/86400);
            let hour = Math.floor((countdown/3600)%24);
            let min = Math.floor(countdown/60)%60;
            let sec = countdown%60;
            if(hour<10)hour='0'+hour;
            if(min<10)min = "0"+min;
            if(sec<10)sec = '0'+sec;
            $('.timer .timer-count').html(`Ends in ${day} Days ${hour}:${min}:${sec}`);
        },1000);
    });

});
$(()=>{
    let Liwidth = 992;
    let moved = 0;
    let timer = null;
    let duration = 500;
    let wait = 3000;
    setInterval(()=>{
        moved++;
        $('.slide_page').animate({
            left:-Liwidth*moved
        },duration,function(){
            if(moved==4){
                moved = 0;
                $('.slide_page').css("left",0)
            }
        })
    },wait+duration)
})




