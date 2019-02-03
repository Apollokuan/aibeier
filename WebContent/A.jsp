<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery.js"></script>
<title>Insert title here</title>
</head>
<body>
<body>
<dl>
<dt><a href="#">基本设置</a></dt>
<dd>网站名称</dd>
<dd>缓存清理</dd>
<dt><a href="#">会员管理</a></dt>
<dd>添加会员</dd>
<dt><a href="#">产品管理</a></dt>
<dd>产品添加</dd>
<dt><a href="#">友情链接</a></dt>
<dd>添加链接</dd>
<dt><a href="#">联系方式</a></dt>
<dd>修改联系方式</dd>
<dt><a href="#">其它设置</a></dt>
<dd>网站样式设置</dd>
</dl>
<dl>
<dt><a href="#">基本设置2</a></dt>
<dd>网站名称</dd>
<dd>缓存清理</dd>
<dt><a href="#">会员管理2</a></dt>
<dd>添加会员</dd>
<dt><a href="#">产品管理2</a></dt>
<dd>产品添加</dd>
<dt><a href="#">友情链接2</a></dt>
<dd>添加链接</dd>
<dt><a href="#">联系方式2</a></dt>
<dd>修改联系方式</dd>
<dt><a href="#">其它设置2</a></dt>
<dd>网站样式设置</dd>
</dl>
<script>
$(function(){
$("dt").click(function(){
var v = $(this).children("a").text();
alert(v);
});
});
</script>
</body>
</html> 
