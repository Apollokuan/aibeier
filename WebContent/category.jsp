<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>童车分类</title>
<meta name="keywords" content="aibeier,aibeier.cn,爱贝儿童车,专卖" />
<meta name="description" content="爱贝儿童车专卖店" />
<meta name="author" content="DeathGhost"/>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>
<script type="text/javascript">
 $(function(){
	 var ch="";
	 var brand="";
	 var genre="";
	 var size="";
	 var material="";
	 var age="";
	 var price="";
	$("dd").click(function(){
	var v = $(this).children("a").text();
	var vs = $(this).children("a").attr("value");
	var va = $(this).prevAll().text();
	var name=va.slice(-3,-1);
	ch=ch+v+"&";
//	alert(v);
//	alert(va);
//	alert(name);
    alert(vs);
	switch (name) {
	case "品牌":
		brand=v;
		break;
	case "分类":
		genre=v;
		break;
	case "尺寸":
		size=v;
	break;
	case "材质":
		material=v;
	break;
	case "年龄":
		age=v;
	break;
	case "价格":
		price=vs;
	break;
	default:
		break;
	}
	alert(brand+genre+size+material+age+price);
		 //使用$.ajax发送ajax请求
	    $.ajax({
	        type: "POST",                          //请求的方式  可选 post get
	        url: "car/ajaxtest",                   //请求的地址
	        data: {                                //要发送的数据
	        	brand:brand,     //参数名：参数值   如果有多个参数，中间用逗号隔开
	        	genre:genre,
	        	size:size,
	        	material:material,
	        	age:age,
	        	price:price,
	        },
	        success: function(msg){               //请求发送成功后执行一个匿名函数,msg指的是请求成功之后后台响应的数据
	        	alert(msg);
	        	console.log(msg);
	            //$("#showmsg").html(msg);
	            //分割响应的数据
	            var msgs=msg.split("%%");
	            $("#showmsg").html(msgs[0]+"<br/>"+msgs[1]+"<br/>"+msgs[2]+"<br/>"+msgs[3]+"<br/>");

	        }
	    });
	
	
    }); 

}); 

</script>
<script type="text/javascript">
function select() {
	 //使用$.ajax发送ajax请求
    $.ajax({
        type: "POST",                          //请求的方式  可选 post get
        url: "car/ajaxtest",                   //请求的地址
        data: {                                //要发送的数据
        	ceshi:"测试数据",     //参数名：参数值   如果有多个参数，中间用逗号隔开
        },
        success: function(msg){               //请求发送成功后执行一个匿名函数,msg指的是请求成功之后后台响应的数据
            console.log(msg);
            //$("#showmsg").html(msg);
            //分割响应的数据
            var msgs=msg.split("%%");
            $("#showmsg").html(msgs[0]+"<br/>"+msgs[1]+"<br/>"+msgs[2]+"<br/>"+msgs[3]+"<br/>");

        }
    });

}
</script>
</head>
<body>
<header>
 <section class="Topmenubg">
  <div class="Topnav">
   <div class="LeftNav">
    <a href="register.html">注册</a>/<a href="login.html">登录</a><a href="#">QQ客服</a><a href="#">微信客服</a><a href="#">手机客户端</a>
   </div>
   <div class="RightNav">
    <a href="user_center.html">用户中心</a> <a href="user_orderlist.html" target="_blank" title="我的订单">我的订单</a> <a href="cart.html">购物车（0）</a> <a href="user_favorites.html" target="_blank" title="我的收藏">我的收藏</a> <a href="#">商家入驻</a>
   </div>
  </div>
 </section>
 <div class="Logo_search">
  <div class="Logo">
   <img src="images/aibeier.png" title="DeathGhost" alt="ç±è´å¿">
   <i></i>
   <span>安阳 [ <a href="#">内黄</a> ]</span>
  </div>
  <div class="Search"> 
   <form method="get" id="main_a_serach" onsubmit="return check_search(this)">
   <div class="Search_nav" id="selectsearch">
    <a href="javascript:;" onClick="selectsearch(this,'restaurant_name')" class="choose">餐厅</a>
    <a href="javascript:;" onClick="selectsearch(this,'food_name')">食物名</a>
   </div>
   <div class="Search_area"> 
   <input type="search" id="fkeyword" name="keyword" placeholder="请输入您所需查找的餐厅名称或食物名称..." class="searchbox" />
   <input type="submit" class="searchbutton" value="搜 索" />
   </div>
   </form>
   <p class="hotkeywords"><a href="#" title="酸辣土豆丝">酸辣土豆丝</a><a href="#" title="这里是产品名称">螃蟹炒年糕</a><a href="#" title="这里是产品名称">牛奶炖蛋</a><a href="#" title="这里是产品名称">芝麻酱凉面</a><a href="#" title="这里是产品名称">滑蛋虾仁</a><a href="#" title="这里是产品名称">蒜汁茄子</a></p>
  </div>
 </div>
 <nav class="menu_bg">
  <ul class="menu">
   <li><a href="index.html">用户中心首页</a></li>
   <li><a href="list.html">产品分类页面</a></li>
   <li><a href="category.html">童车分类</a></li>
   <li><a href="article_read.html">文章详情页</a></li>
  </ul>
 </nav>
</header>
<!--Start content-->
<section class="Psection">
 <section class="fslist_navtree">
  <ul class="select">
		<!-- <li class="select-list">
			<dl id="select1">
				<dt name="brand">品牌:</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:" value="">1</a></dd>
                <dd><a href="javascript:" value="">2</a></dd>
                <dd><a href="javascript:" value="">3</a></dd>
                <dd><a href="javascript:" value="">4</a></dd>
                <dd><a href="javascript:" value="">5</a></dd>
                <dd><a href="javascript:" value="">6</a></dd>
                <dd><a href="javascript:" value="">7</a></dd>
                <dd><a href="javascript:" value="">8</a></dd>
                <dd><a href="javascript:" value="">9</a></dd>
			</dl>
</script>
		</li> -->
		<li class="select-list">
			<dl id="select2">
			<dt name="genre">分类:</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:" value="">学步车</a></dd>
                <dd><a href="javascript:" value="">自行车</a></dd>
                <dd><a href="javascript:" value="">三轮车</a></dd>
                <dd><a href="javascript:" value="">娃娃推车</a></dd>
                <dd><a href="javascript:" value="">电动车</a></dd>
                <dd><a href="javascript:" value="">蛙式剪刀车</a></dd>
                <dd><a href="javascript:" value="">滑板车</a></dd>
                <dd><a href="javascript:" value="">平衡车</a></dd>
                <dd><a href="javascript:" value="">助步车</a></dd>
                <dd><a href="javascript:" value="">四轮车</a></dd>
                <dd><a href="javascript:" value="">三轮推车</a></dd>
                <dd><input ></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select3">
			<dt name="size">尺寸:</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:" value="10">10寸</a></dd>
				<dd><a href="javascript:" value="12">12寸</a></dd>
				<dd><a href="javascript:" value="14">14寸</a></dd>
				<dd><a href="javascript:" value="16">16寸</a></dd>
				<dd><a href="javascript:" value="18">18寸</a></dd>
				<dd><a href="javascript:" value="19">18寸以上</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select4">
			<dt name="material">材质:</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:" value="">木质</a></dd>
				<dd><a href="javascript:" value="">布艺</a></dd>
				<dd><a href="javascript:" value="">塑料</a></dd>
				<dd><a href="javascript:" value="">纸质</a></dd>
				<dd><a href="javascript:" value="">金属</a></dd>
				<dd><a href="javascript:" value="">其他</a></dd>
			</dl>
		</li>
        <li class="select-list">
			<dl id="select5">
			<dt name="age">年龄:</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:" value="">0~2岁</a></dd>
                <dd><a href="javascript:" value="">2~4岁</a></dd>
                <dd><a href="javascript:" value="">4~7岁</a></dd>
                <dd><a href="javascript:" value="">7~10岁</a></dd>
                <dd><a href="javascript:" value="">10岁以上</a></dd>
			</dl>
		</li>
		<li class="select-list">
			<dl id="select6">
			<dt name="price">价格:</dt>
				<dd class="select-all selected"><a href="javascript:">全部</a></dd>
				<dd><a href="javascript:" value="50">50元以下</a></dd>
                <dd><a href="javascript:" value="100">50-100元</a></dd>
                <dd><a href="javascript:" value="150">100-150元</a></dd>
                <dd><a href="javascript:" value="200">150-200元</a></dd>
                <dd><a href="javascript:" value="300">200元以上</a></dd>
			</dl>
		</li>
		<li class="select-result" >
			<dl >
			<dt name="genre" >已选择:</dt>
			 <dd><a href="javascript:" onclick="select()">提交</a></dd>
			 <dd class="select-no" id="sel">条件</dd>
			</dl>
		</li>
	</ul>
 </section>
 <section class="CateL Overflow">
  <ul>
   <li> 
   <a href="detailsp.html" target="_blank" title="酸辣土豆丝">
   <img src="upload/05.jpg">
   <p class="Overflow">酸辣土豆丝</p>
   <p class="Overflow">赠送：<span class="CorRed Font16">2</span>积分<i></i></p>
   <p class="Overflow">好味来快餐连锁店</p>
   <p class="Overflow">地址：莲湖区土门十字往西100米</p>
   </a>
   </li>
   <li> 
   <a href="detailsp.html" target="_blank" title="酸辣土豆丝">
   <img src="upload/06.jpg">
   <p class="Overflow">酸辣土豆丝</p>
   <p class="Overflow">赠送：<span class="CorRed Font16">2</span>积分<i></i></p>
   <p class="Overflow">好味来快餐连锁店</p>
   <p class="Overflow">地址：莲湖区土门十字往西100米</p>
   </a>
   </li>
   <li> 
   <a href="detailsp.html" target="_blank" title="酸辣土豆丝">
   <img src="upload/04.jpg">
   <p class="Overflow">酸辣土豆丝</p>
   <p class="Overflow">赠送：<span class="CorRed Font16">2</span>积分<i></i></p>
   <p class="Overflow">好味来快餐连锁店</p>
   <p class="Overflow">地址：莲湖区土门十字往西100米</p>
   </a>
   </li>
   <li> 
   <a href="detailsp.html" target="_blank" title="酸辣土豆丝">
   <img src="upload/02.jpg">
   <p class="Overflow">酸辣土豆丝</p>
   <p class="Overflow">赠送：<span class="CorRed Font16">2</span>积分<i></i></p>
   <p class="Overflow">好味来快餐连锁店</p>
   <p class="Overflow">地址：莲湖区土门十字往西100米</p>
   </a>
   </li>
   <li> 
   <a href="detailsp.html" target="_blank" title="酸辣土豆丝">
   <img src="upload/02.jpg">
   <p class="Overflow">酸辣土豆丝</p>
   <p class="Overflow">赠送：<span class="CorRed Font16">2</span>积分<i></i></p>
   <p class="Overflow">好味来快餐连锁店</p>
   <p class="Overflow">地址：莲湖区土门十字往西100米</p>
   </a>
   </li>
   <li> 
   <a href="detailsp.html" target="_blank" title="酸辣土豆丝">
   <img src="upload/01.jpg">
   <p class="Overflow">酸辣土豆丝</p>
   <p class="Overflow">赠送：<span class="CorRed Font16">2</span>积分<i></i></p>
   <p class="Overflow">好味来快餐连锁店</p>
   <p class="Overflow">地址：莲湖区土门十字往西100米</p>
   </a>
   </li>
   <li> 
   <a href="detailsp.html" target="_blank" title="酸辣土豆丝">
   <img src="upload/03.jpg">
   <p class="Overflow">酸辣土豆丝</p>
   <p class="Overflow">赠送：<span class="CorRed Font16">2</span>积分<i></i></p>
   <p class="Overflow">好味来快餐连锁店</p>
   <p class="Overflow">地址：莲湖区土门十字往西100米</p>
   </a>
   </li>
   <li> 
   <a href="detailsp.html" target="_blank" title="酸辣土豆丝">
   <img src="upload/02.jpg">
   <p class="Overflow">酸辣土豆丝</p>
   <p class="Overflow">赠送：<span class="CorRed Font16">2</span>积分<i></i></p>
   <p class="Overflow">好味来快餐连锁店</p>
   <p class="Overflow">地址：莲湖区土门十字往西100米</p>
   </a>
   </li>
  </ul>
  <div class="TurnPage">
         <a href="#">
          <span class="Prev"><i></i>首页</span>
         </a>
         <a href="#"><span class="PNumber">1</span></a>
         <a href="#"><span class="PNumber">2</span></a>
         <a href="#">
         <span class="Next">最后一页<i></i></span>
        </a>
       </div>
 </section>
 <aside class="CateR">
 <!--广告位或推荐位-->
  <div>
   <a href="#" target="_blank"><img src="upload/ad.jpg"></a>
  </div>
  <div class="Hot_shop">
   <span class="Hshoptile Font14 FontW Block">热门商家</span>
   <ul>
    <li>
     <a href="shop.html" target="_blank" title="好味来快餐连锁店"><img src="upload/cc.jpg"></a>
     <p class="Font14 FontW Overflow Lineheight35"><a href="shop.html" target="_blank" title="好味来快餐连锁店">好味来快餐连锁店</a></p>
     <p class="Lineheight35 Overflow"><span title="通过动态控制地址的字符数量...">地址：西安市莲湖区土门新市场斜对面...</span></p>
    </li>
    <li>
     <a href="shop.html" target="_blank" title="好味来快餐连锁店"><img src="upload/dd.jpg"></a>
     <p class="Font14 FontW Overflow Lineheight35"><a href="shop.html" target="_blank" title="好味来快餐连锁店">好味来快餐连锁店</a></p>
     <p class="Lineheight35 Overflow"><span title="通过动态控制地址的字符数量...">地址：西安市莲湖区土门新市场斜对面...</span></p>
    </li>
    <li>
     <a href="shop.html" target="_blank" title="好味来快餐连锁店"><img src="upload/ee.jpg"></a>
     <p class="Font14 FontW Overflow Lineheight35"><a href="shop.html" target="_blank" title="好味来快餐连锁店">好味来快餐连锁店</a></p>
     <p class="Lineheight35 Overflow"><span title="通过动态控制地址的字符数量...">地址：西安市莲湖区土门新市场斜对面...</span></p>
    </li>
    <li>
     <a href="shop.html" target="_blank" title="好味来快餐连锁店"><img src="upload/cc.jpg"></a>
     <p class="Font14 FontW Overflow Lineheight35"><a href="shop.html" target="_blank" title="好味来快餐连锁店">好味来快餐连锁店</a></p>
     <p class="Lineheight35 Overflow"><span title="通过动态控制地址的字符数量...">地址：西安市莲湖区土门新市场斜对面...</span></p>
    </li>
   </ul>
  </div>
 </aside>
</section>
<!--End content-->
<div class="F-link">
  <span>友情链接：</span>
  <a href="http://www.deathghost.cn" target="_blank" title="DeathGhost">DeathGhost</a>
  <a href="http://www.17sucai.com/pins/15966.html" target="_blank" title="免费后台管理模板">绿色清爽版通用型后台管理模板免费下载</a>
  <a href="http://www.17sucai.com/pins/17567.html" target="_blank" title="果蔬菜类模板源码">HTML5果蔬菜类模板源码</a>
  <a href="http://www.17sucai.com/pins/14931.html" target="_blank" title="黑色的cms商城网站后台管理模板">黑色的cms商城网站后台管理模板</a>
 </div>
<footer>
 <section class="Otherlink">
  <aside>
   <div class="ewm-left">
    <p>手机扫描二维码：</p>
    <img src="images/Android_ico_d.gif">
    <img src="images/iphone_ico_d.gif">
   </div>
   <div class="tips">
    <p>客服热线</p>
    <p><i>1830927**73</i></p>
    <p>配送时间</p>
    <p><time>09：00</time>~<time>22:00</time></p>
    <p>网站公告</p>
   </div>
  </aside>
  <section>
    <div>
    <span><i class="i1"></i>配送支付</span>
    <ul>
     <li><a href="article_read.html" target="_blank" title="标题">支付方式</a></li>
     <li><a href="article_read.html" target="_blank" title="标题">配送方式</a></li>
     <li><a href="article_read.html" target="_blank" title="标题">配送效率</a></li>
     <li><a href="article_read.html" target="_blank" title="标题">服务费用</a></li>
    </ul>
    </div>
    <div>
    <span><i class="i2"></i>关于我们</span>
    <ul>
     <li><a href="article_read.html" target="_blank" title="标题">招贤纳士</a></li>
     <li><a href="article_read.html" target="_blank" title="标题">网站介绍</a></li>
     <li><a href="article_read.html" target="_blank" title="标题">配送效率</a></li>
     <li><a href="article_read.html" target="_blank" title="标题">商家加盟</a></li>
    </ul>
    </div>
    <div>
    <span><i class="i3"></i>帮助中心</span>
    <ul>
     <li><a href="article_read.html" target="_blank" title="标题">服务内容</a></li>
     <li><a href="article_read.html" target="_blank" title="标题">服务介绍</a></li>
     <li><a href="article_read.html" target="_blank" title="标题">常见问题</a></li>
     <li><a href="article_read.html" target="_blank" title="标题">网站地图</a></li>
    </ul>
    </div>
  </section>
 </section>
<div class="copyright">© 版权所有 2016 DeathGhost 技术支持：<a href="http://www.deathghost.cn" title="DeathGhost">DeathGhost</a></div>
</footer>
</body>
</html>