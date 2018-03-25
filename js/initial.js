//carousel
/*
(function (){
    var prev = document.getElementsByClassName("slideRect")[0];
    var next = document.getElementsByClassName("slideRect")[1];
    var list = document.getElementsByClassName("list")[0];
    var carousel = document.getElementsByClassName("carousel")[0];
    function animate(offset){

        var list_left = parseInt(list.style.left)+offset;
        list.style.left = list_left+"px";
        if(list_left<-3760){
            list.style.left=-752+"px";
        }
        if(list_left>-752){
            list.style.left = -3760+"px";
        }
    }
    prev.onclick = function(){
        animate(752);
    }
    next.onclick = function(){
        animate(-752);
    }
    var timer = null;
    function play(){
        timer = setInterval(function(){
            next.onclick();
        },1500)
    }
    play();
    function stop(){
        clearInterval(timer);
    }
    carousel.onmouseover = stop;
    carousel.onmouseout = play;
})();

*/