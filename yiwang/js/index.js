$("#header").load("header.php",function(){
    $("#header").find("div.nav").children("a:first").addClass("active");
});
$("#foot").load("footer.php");
$("div.go").hover(function(){
    $("div.goback").attr("style","width:100%");
    $("div.text").attr("style","left:50px;");
  },function(){
    $("div.goback").attr("style",function(){return this.style});
    $("div.text").attr("style",function(){return this.style});
});

function aaa(str){
    var arr=str.split("");
    var res="";
    var len=arr.length;
    for(var i=0;i<len-3;i++){
        res+=arr[i];
    }
    res+=",";
    for(var i=len-3;i<len;i++){
        res+=arr[i];
    }
    return (res);
};
//轮播图自写插件！
$(function(){
    var $lun=$("ul.bannerbox");
    var $dot=$("div.dot");
    var int=500,wait=5000,timer=null;
    $.ajax({
        type:"get",
        url:"php/lunbo.php",
        dataType:"json",
        success:function(lb){
            var html="";
            lb.forEach((p)=>{
                var {lbid,lburl}=p;
                html+=`<li><a href=""><div class="lunbodiv"  style="background-image: url(${lburl})"></div></a></li>`;
            });

            $lun.html(html).children(":first-child").attr("style","display: list-item;opacity:1");
            $dot.html("<b></b>".repeat(lb.length))
            .on("click","b",function(){
                var $b=$(this);
                var i=$b.index();
                var $li=$lun.children(":eq("+i+")");

                // $lun.children(":eq("+i+")").fadeIn(int).siblings().fadeOut(int);

                $li.attr("style","display:list-item").animate({
                    opacity : 1
                },int).siblings(":visible").animate({
                    opacity:0
                },int,function(){
                    $li.siblings(":visible").attr("style","display:none");
                });

                $b.addClass("cur").siblings().removeClass("cur");
            })
            .children(":first-child").addClass("cur");

            function moved(){
                //  -------方法1-------
                // var $li=$lun.children(":visible");
                // var  i=$li.index()==lb.length-1?0:$li.index()+1;
                // if($li.index()==lb.length-1)
                //     $li.fadeOut(int).parent().children(":first-child").fadeIn(int);
                // else
                //     $li.fadeOut(int).next().fadeIn(int);
                // $dot.children(":eq("+i+")").addClass("cur").siblings().removeClass("cur");

                // --------方法2---------
                // var $b=$("b.cur");
                // var i=$b.index();
                // i=i==lb.length-1?0:i+1;
                // $lun.children(":eq("+i+")").fadeIn(int).siblings().fadeOut(int);
                // $dot.children(":eq("+i+")").addClass("cur").siblings().removeClass("cur");

                //-------方法3-----------
                var $b=$("b.cur");
                var i=$b.index();
                i=i==lb.length-1?0:i+1;
                var $li=$lun.children(":eq("+i+")");
                $li.attr("style","display:list-item").animate({
                    opacity : 1
                },int).siblings(":visible").animate({
                    opacity:0
                },int,function(){
                    $li.siblings(":visible").attr("style","display:none");
                });
                $dot.children(":eq("+i+")").addClass("cur").siblings().removeClass("cur");
            }
            function autoMoved(){
                timer=setInterval(function(){
                    moved();
                },int+wait);
            };
            autoMoved();
            $("#banner").hover(function(){
                    clearInterval(timer);
                    timer=null;
                },function(){
                    autoMoved();
                }
            );
        }
    });
});

$(function(){
    $.ajax({
        type:"get",
        url:"php/category.php?num=油画",
        dataType:"json",
        success:function(ca){
            var	html="";
            ca.forEach((p)=>{
                var {title,artist,time,type,size,url,price}=p;
                html+=`
                <div class="categoryimg_box">
                    <a href="" class="category_a">
                        <img src="${url}" alt="" class="img_box">
                    </a>
                    <div class="img_footer">
                        <h4>${artist}</h4>
                        <p>${title}&nbsp;，&nbsp;${time}</p>
                        <p>${type}&nbsp;&nbsp;${size}</p>
                        <h4>￥${aaa(price)}</h4>
                    </div>
                </div>
                `;
            });
            $(".category_box").html(html);
        }
    });
    $("div.category>div.tittle").on("click",".CName",function(){
        if(!$(this).hasClass("xz")){
            $(this).addClass("xz").siblings().removeClass("xz");
            var num=$(this).attr("data-ajax");
            $.ajax({
                type:"get",
                url:"php/category.php?num="+num,
                dataType:"json",
                success:function(ca){
                    var	html="";
                    ca.forEach((p)=>{
                        var {title,artist,time,type,size,url,price}=p;
                        html+=`
                        <div class="categoryimg_box">
                            <a href="" class="category_a">
                                <img src="${url}" alt="" class="img_box">
                            </a>
                            <div class="img_footer">
                                <h4>${artist}</h4>
                                <p>${title}&nbsp;，&nbsp;${time}</p>
                                <p>${type}&nbsp;&nbsp;${size}</p>
                                <h4>￥${aaa(price)}</h4>
                            </div>
                        </div>
                        `;
                    });
                    $(".category_box").html(html);
                }
            }); 
        };
    });
});

//new 加载 与 变化
$(function(){
    $.ajax({
        type:"get",
        url:"php/new.php",
        dataType:"json",
        success:function(ne){
            var html="";
            ne.forEach((p,i)=>{
                var {title,artist,time,type,size,url,price}=p;
                if(i<2){
                    html+=`
                        <div class="newsbox">
                            <img src="${url}" alt="">
                            <div class="info_box">
                                <h3>${artist}</h3>
                                <h4>${title}</h4>
                                <span class="infoe">
                                    ，${time}<br>${type} &nbsp;${size}cm<br>
                                </span>
                                <p class="year"  style="display: none">${time}</p>
                                <p class="price">¥${aaa(price)}</p>
                            </div>
                        </div>
                    `;
                }else{
                    html+=`
                        <div class="newsbox">
					        <img src="${url}" alt="">
					        <div class="info_box">
						        <h3>${artist}</h3>
						        <h4>${title} </h4>
						        <span class="infoe" style="display: none">，${time}<br>${type} &nbsp;${size}cm</span>
						        <p class="year">${time}</p>
						        <p class="price">¥${aaa(price)}</p>
					        </div>
				        </div>
                    `;
                }
            });
            $("div.newbox").html(html);
        }
    });
    var $a=$("a.d3change");
    var $b=$("div.newbox");
    $a.on("click",function(e){
        e.preventDefault();
        $a.addClass("act");
        var a=setTimeout(function(){
            $a.removeClass("act");
            clearTimeout(a);
        },3000);
        var start=10;
        if($a.attr("data-new")==1){
            $a.attr("data-new","0");
        }else{
            start=0;
            $a.attr("data-new","1");
        }
        $b.children().addClass("acc");
        var b=setTimeout(function(){
            $.ajax({
                type:"get",
                url:"php/new.php?start="+start,
                dataType:"json",
                success:function(ne){
                    var html="";
                    ne.forEach((p,i)=>{
                        var {title,artist,time,type,size,url,price}=p;
                        if(i<2){
                            html+=`
                                <div class="newsbox">
                                    <img src="${url}" alt="">
                                    <div class="info_box">
                                        <h3>${artist}</h3>
                                        <h4>${title}</h4>
                                        <span class="infoe">
                                            ，${time}<br>${type} &nbsp;${size}cm<br>
                                        </span>
                                        <p class="year"  style="display: none">${time}</p>
                                        <p class="price">¥${aaa(price)}</p>
                                    </div>
                                </div>
                            `;
                        }else{
                            html+=`
                                <div class="newsbox">
                                    <img src="${url}" alt="">
                                    <div class="info_box">
                                        <h3>${artist}</h3>
                                        <h4>${title} </h4>
                                        <span class="infoe" style="display: none">，${time}<br>${type} &nbsp;${size}cm</span>
                                        <p class="year">${time}</p>
                                        <p class="price">¥${aaa(price)}</p>
                                    </div>
                                </div>
                            `;
                        }
                    });
                    $("div.newbox").html(html);
                }
            });
            clearTimeout(b);
        },2000);
    });
});

//special鼠标悬浮
(function(){
    var i=500;
    var $sp=$(".special");
    $sp.hover(function(){
        var $a=$(this);
        $a.stop(true,false).animate({width:440});
        $a.children("img").stop(true,false).animate({left:0});
        $a.children(".box").stop(true,false).animate({paddingLeft:60});
        $(".specialbox").stop(true,false).animate({marginLeft:-60});
    },function(){
        var $a=$(this);
        $a.stop(true,false).animate({width:320});
        $a.children("img").stop(true,false).animate({left:-60});
        $a.children(".box").stop(true,false).animate({paddingLeft:0});
        $(".specialbox").stop(true,false).animate({marginLeft:0});
    })
})();

$(function(){
    $("div.specials>div.title").on("click",".prev,.next",function(){
        var k=$("div.specialbox");
        if($(this).is(".prev")){
            var n=k.css("left");
            if(n!="0px"){
                k.animate({"left":"0px"},500);}
        }else{
            var n=k.css("left");
            if(n!="-1080px"){
                k.animate({"left":"-1080px"},500);
            }
        }
    });
});
//搜索栏搜索事件   未做
function search(){

}