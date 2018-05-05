//封装适合各种情况的简化版ajax函数
function ajax({//利用解构，获取将来参数对象中每个属性值
    type,
    url,//请求的url地址
    data,//请求携带的参数
    dataType,//服务器端返回值的类型："json/text"
}){
    //只要远程请求，必有延迟，就要用promise等待完成后，再执行后续操作
    return new Promise(callback=>{
        //AJAX
        let xhr = new XMLHttpRequest();//获取xhr对象
        //如果是get请求，且传入了data参数，才需要拼接url和data为get请求的完整地址
        if(type.toLowerCase()=="get" && data!=undefined){
            url+="?"+data;
        }
        xhr.open(type,url,true);
        xhr.onreadystatechange = function(){
            //如果请求完成且成功
            if(xhr.readyState == 4 && xhr.status == 200){
                let resData = xhr.responseText;
                if(dataType !=undefined && dataType.toLowerCase() == "json"){
                    resData = JSON.parse(resData);
                }
                callback(resData)
            }
        }
        //只有type为post时，才需要设置请求头
        if(type.toLowerCase() == "post"){
            xhr.setRequestHeader('Content-Type',"application/x-www-form-urlencoded");
        }
        xhr.send(type.toLowerCase()=="post"?data:null)
    })
}