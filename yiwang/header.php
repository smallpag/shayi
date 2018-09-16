<?php
header("content-type:text/html;charset=UTF-8;");
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">；
    <title>异网，页头</title>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/header.css">
    <script src="js/jquery.min.js"></script>
</head>
<body>
    <div class="HH">
		<div class="HH_top">
			<div class="logo">
				<a href="#">
					<img src="img/index/logo.png" alt="">
				</a>
				<p>━━ 原创艺术品电商</p>
			</div>
			<div class="search">
				<div class="search_box">
					<div class="choices">
						<span class="choiced" id="choiced">作品<img src="img/index/select_bg.png" alt=""></span>
						<div class="choicebox">
							<span class="choice active0" onclick="choice1()" id="choice1">作品</span>
							<span class="choice" onclick="choice2()" id="choice2">艺术家</span>
						</div>
					</div>
					<input type="text" id="search" placeholder="搜索感兴趣的关键字">
					<img src="img/index/svg_file.svg" alt="" class="gosearch">
				</div>
			</div>
			<div class="right_header">
				<div class="right_box">
					<div class="loadapp">
						<img src="img/index/app.png" alt="" class="loadimg">
						<a href="" class="a1">下载APP</a>
						<aside class="appimg">
							<h4>使用手机扫一扫</h4>
							<img src="img/index/iosDownQRcode.png" alt="" id="erweiimg">
							<span id="erweiimgspan">购买咨询：400-605-7033</span>
						</aside>
					</div>
					<div class="login" onclick="location.href='login.html'">
						<img src="img/index/login.png" alt="" class="loginimg">
						<a href="login.html" class="a2">登录 / 注册</a>
						<div class="login_hover">
							<i></i>
							<ul>
								<li><a href="">会员中心</a></li>
								<li><a href="">我的珍藏</a></li>
								<li><a href="">我的订单</a></li>
								<li><a href="cart.html">我的购物车</a></li>
								<li><a href="javascript:sessionStorage.clear();location.href='index.html';">退出</a></li>
							</ul>
						</div>
					</div>
					<div class="car" onclick="goshoppingcart()">            <!-- 购物车地址未写 -->
						<img src="img/index/car.png" alt="" class="carimg">
						<a href="javascript:" class="a3">购物车</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="HH_bottom" id="unhappy" >
		<div class="nav">
			<a href="index.html"><span>首页</span></a>
			<a href="buy.html"><span>原创艺术</span></a>
			<a href=""><span>造艺</span></a>
			<a href=""><span>藏艺术</span></a>
			<a href=""><span>艺居生活</span></a>		
		</div>
    </div>
    <script>
	var uid=sessionStorage.getItem("uid");
	if(uid){
		$("div.login").addClass("hhover");
		$("img.loginimg").attr("src","img/common/yonghu.png");
		$("div.login").removeAttr("onclick")
		$("a.a2").remove();
	}
	function goshoppingcart(){
		if(uid){
			location.href="cart.html";
		}else{
			alert("请登录才能查看购物车");
			location.href="login.html";
		}
	}
        	//鼠标滚动导航缩进
	$(window).on("scroll",function() { 
			if($(window).scrollTop()>10){
				$(".HH").attr("style","height:46px");
				$(".HH_bottom").attr("style","height:0;top:46px");
				$(".HH_top").attr("style","position: fixed;top:0;background:#FFF;height:46px;z-index:0");
				$(".logo img").attr("style","height: 28px;margin-top: 11px");
				$(".logo p").attr("style","opacity:0");
				$(".search").attr("style","opacity: 0;margin-top: 4px");
				$(".right_box").attr("style","height:46px");
				$(".right_box>div>a").attr("style","width:0");
				$(".nav").attr("style","transform: translateY(-50px);height:46px;");
				$(".nav a span").attr("style","color: #000");
				$(".right_box>div").attr("style","border-right: 0;margin-top: 11px");
				$(".HH_bottom").attr("id","happy");
				$("#header").css("height","46px");
				$("div.login_hover").attr("style","top:10px;right:36px");
			}else{
			 	$(".HH").attr("style",function(){return this.style});
			 	$(".HH_bottom").attr("style",function(){return this.style});
			 	$(".HH_top").attr("style",function(){return this.style});
				$(".logo img").attr("style",function(){return this.style});
				$(".logo p").attr("style",function(){return this.style});
				$(".search").attr("style",function(){return this.style});
				$(".right_box").attr("style",function(){return this.style});
				$(".right_box>div>a").attr("style",function(){return this.style});
				$(".nav").attr("style",function(){return this.style});
				$(".nav a span").attr("style",function(){return this.style});
				$(".right_box>div").attr("style",function(){return this.style});
				$(".HH_bottom").attr("id","unhappy");
				$("#header").css("height","120px");
				$("div.login_hover").attr("style",function(){return this.style});
			}
		} 
    );
	$(function(){
		if($(window).scrollTop()>200){
				$(".HH").attr("style","height:46px");
				$(".HH_bottom").attr("style","height:0;top:46px");
				$(".HH_top").attr("style","position: fixed;top:0;background:#FFF;height:46px;z-index:0");
				$(".logo img").attr("style","height: 28px;margin-top: 11px");
				$(".logo p").attr("style","opacity:0");
				$(".search").attr("style","opacity: 0;margin-top: 4px");
				$(".right_box").attr("style","height:46px");
				$(".right_box>div>a").attr("style","width:0");
				$(".nav").attr("style","transform: translateY(-50px);height:46px;");
				$(".nav a span").attr("style","color: #000");
				$(".right_box>div").attr("style","border-right: 0;margin-top: 11px");
				$(".HH_bottom").attr("id","happy");
				$("div.login_hover").attr("style","top:10px;right:36px");
			}
	})
    //搜索下拉框点击事件1
    function choice1(){
	    $("#choiced").text("作品");
	    $("#choice1").css("font-weight","bold");
	    $("#choice2").css("font-weight","normal");
    }
    //搜索下拉框点击事件2
    function choice2(){
	    $("#choiced").text("艺术家");
	    $("#choice1").css("font-weight","normal");
	    $("#choice2").css("font-weight","bold");
	}
	$(function(){
		var btn=$("img.gosearch");
		var input=$("#search");
		btn.click(function(){
			var txt=$.trim(input.val());
			console.log(kw);
			var choice=$("span#choiced").text();
			var kw=choice=="作品"?"kw":"ar";
			window.open("buy.html?"+kw+"="+txt,"_self");
		});
		input.bind("keypress",function(e){
			if(e.keyCode==13){
				var txt=$.trim(input.val());
				var choice=$("span#choiced").text();
				var kw=choice=="作品"?"kw":"ar";
				window.open("buy.html?"+kw+"="+txt,"_self");
			}
		});
	})
    </script>
</body>
</html>