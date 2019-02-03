<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> 
<base href="<%=basePath%>">
<meta charset="utf-8" />
<title>商品管理中心</title>
<meta name="keywords" content="aibeier,aibeier.cn,爱贝儿童车,专卖" />
<meta name="description" content="爱贝儿童车专卖店" />
<meta name="author" content="DeathGhost"/>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jqpublic.js"></script>

<script type="text/javascript">

	function upload() {
		var aa=<%=request.getSession().getAttribute("save")%>;
		alert("2222")
	
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
   <img src="images/aibeier.png" title="DeathGhost" alt="模板">
   <i></i>
   <span>内黄县 [ <a href="#">大张龙</a> ]</span>
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
 
</header>
<!--Start content-->
<section class="Psection MT20">
<nav class="U-nav Font14 FontW">
  <ul>
   <li><i></i><a href="index.jsp">用户中心首页</a></li>
   <li><i></i><a href="user_orderlist.html">我的订单</a></li>
   <li><i></i><a href="user_address.html">收货地址</a></li>
   <li><i></i><a href="user_message.html">我的留言</a></li>
   <li><i></i><a href="user_coupon.html">我的优惠券</a></li>
   <li><i></i><a href="user_favorites.html">我的收藏</a></li>
   <li><i></i><a href="user_account.html">账户管理</a></li>
   <li><i></i><a href="#">安全退出</a></li>
  </ul>
 </nav>
 <article class="U-article Overflow">
  <!--user Account-->
  <section class="AccManage Overflow">
  <!--  <span class="AMTitle Block Font14 FontW Lineheight35">商品管理</span>
   <p>登陆邮箱：232***413@qq.com ( <a href="#" target="_blank">更换手机号码</a> )</p>
   <p>手机号码：183****5673 ( <a href="#" target="_blank">更换手机号码</a> ) ( <a href="#" target="_blank">解绑手机</a> )</p>
   <p>上次登陆：2014年09月22日 11:40:36( *如非本人登陆，请立即<a href="#" target="_blank">修改您的密码</a>！ )</p> -->
   <form action="admin/add.do" method="post" enctype ="multipart/form-data" >
    <table>
    <tr>
    <td width="30%" align="right">*品牌：</td>
    <td ><input type="text" name="brand"></td>
    </tr>
     
    <tr>
    <td width="30%" align="right">*分类：</td>
    <td><input type="text" name="genre"></td>
    </tr>
    
    <tr>
    <td width="30%" align="right">*尺寸：</td>
    <td><select name="sizeSel">
 		<option value="10寸" >10寸</option>
  		<option value="12寸" >12寸</option>
 		<option value="14寸" >14寸</option>
 		<option value="16寸" >16寸</option>
  		<option value="18寸" >18寸</option>
 		<option value="18寸以上" >18寸以上</option>
    </select></td>
    </tr>
    
    <tr>
    <td width="30%" align="right">*材质：</td>
    <td><select name="materialSel">
 		<option value="木质" >木质</option>
  		<option value="布艺" >布艺</option>
 		<option value="塑料" >塑料</option>
 		<option value="纸质" >纸质</option>
  		<option value="金属" >金属</option>
 		<option value="其他" >其他</option>
    </select></td>
    </tr>
    
    <tr>
    <td width="30%" align="right">*年龄：</td>
    <td><select name="ageSel">
 		<option value="0~2岁" >0~2岁</option>
  		<option value="2~4岁" >2~4岁</option>
 		<option value="4~7岁" >4~7岁</option>
 		<option value="7~10岁" >7~10岁</option>
  		<option value="10岁以上" >10岁以上</option>
    </select></td>
    </tr>
    
    <tr>
    <td width="30%" align="right">*价格：</td>
    <td><input type="text" name="price" ></td>
    </tr>
    
    <tr>
    <td width="30%" align="right">*上传图片：</td>
    <td><input name="photo" type="file" multiple><input type="text" ></td>
    </tr>
    <tr>
    <td></td>
    <td><input name="" type="submit" value="保 存" onclick="upload()"></td>
    </tr>    
    </table>
   </form>
  </section>
 </article>
</section>
<!--End content-->

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
