function loadPage(pageNo = 1){
    let pageSize = 9;
    $.ajax({
        type:'GET',
        url:'data/products/xiaomi_all.php',
    }).then(result=>{
        let html = "";
        for (p of result){
            p.img = p.img.substring(1);
            html += `
            <div class="widget item-new tips-hooker height-240 width-240  " data-width='240'>
            <dl class="item-block ">
                <dt>
                    <a class='p-box ctr-track' target="_blank"  href="https://www.lightinthebox.com/p/original-xiaomi-mijia-smart-walkie-talkie-with-fm-radio-smartphone-app-location-share-fast-team-talk-build-8-days-standby-two-way-radios_p5599455.html?category_id=64745&amp;prm=1.2.1.1">
                        <div class="img-box">
                            <img  id="5599455_img" class="prod_img" width="240" height="240" src="${p.img}" title="${p.title}" alt="${p.title}">
                        </div>
                        <em class="litb-icon-lightning-sale">Lightning Sale</em>
                        <span class="countdown-wrap">
                          <i class="litb-icon-countdowm-clock"></i>Ends in 
                            <span class="discount-timer" endTime="2018-05-13 00:00:00" ></span>
                        </span>
                        <div class="prod-descrption-box  has-countdown">
                            <table>
                                <tbody>
                                <tr>
                                    <td class="prod-descrption">
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </a>
                </dt>

                <dd class='prod-name'>
                    <a class='ctr-track' target="_blank">
               <span class="prod-name-title">
                   <span>${p.title}</span>
               </span>
                    </a>
                </dd>
                <dd class='prod-item-price clearfix'>
                    <p class="list-price">$${p.price*1.2}</p>
                    <a class='price ctr-track ' target="_blank"  
                  >
                        USD $${p.price}
                    </a>


                </dd>

                <dd class="clearfix shipping-info">
                <span class="free-shipping">
                    
                </span>
                    <span class="favorite-for-cate tool-info" data-html="true" data-content="User favorites" data-id="5599455" data-active="" ctr="{'area':'Categorypage_Add_to_Fav'}"><i class="litb-icon-heart"></i>(${p.favorite})</span>
                </dd>

            </dl>
        </div>`.split();
        }
        $('.products-list').html(html);
    })
}
loadPage();