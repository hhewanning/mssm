<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>菜单</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<c:url value='/resources/menu/mymenu.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/resources/menu/mymenu.css'/>" type="text/css" media="all">
<script language="javascript">
var bar1 = new Q6MenuBar("bar1", "图书管理系统");
function load() {
	bar1.colorStyle = 2;
	bar1.config.imgDir = "<c:url value='/resources/menu/img/'/>";
	bar1.config.radioButton=false;
	bar1.add("管理员管理", "查看管理员", "${pageContext.request.contextPath}/adminServlet?method=findAll", "body");
	bar1.add("管理员管理", "添加管理员", "${pageContext.request.contextPath}/adminServlet?method=registUI", "body");
	
	bar1.add("出版社管理", "查看出版社", "${pageContext.request.contextPath}/publish/getPublish", "body");
	bar1.add("出版社管理", "添加出版社", "${pageContext.request.contextPath}/comm/goPage?page=/admin/publish/add", "body");
	
	bar1.add("分类管理", "查看分类", "${pageContext.request.contextPath}/category/getCategory", "body");
	bar1.add("分类管理", "添加分类", "${pageContext.request.contextPath}/comm/goPage?page=/admin/category/add", "body");

	bar1.add("图书管理", "在馆图书", "${pageContext.request.contextPath}/bookManage/getBookManage", "body");
	bar1.add("图书管理", "上架图书", "${pageContext.request.contextPath}/bookServlet?method=pushUpUI", "body");
	bar1.add("图书管理", "添加图书", "${pageContext.request.contextPath}/bookServlet?method=saveUI", "body");
	bar1.add("图书管理", "缺省图书查询", "${pageContext.request.contextPath}/bookServlet?method=findByCountUI", "body");
	
	bar1.add("会员管理", "查看会员", "${pageContext.request.contextPath}/userServlet?method=findAll", "body");
	bar1.add("会员管理", "添加会员", "${pageContext.request.contextPath}/userServlet?method=registUI", "body");
	
	
	bar1.add("借阅管理", "添加借阅", "${pageContext.request.contextPath}/orderServlet?method=saveUI", "body");
	bar1.add("借阅管理", "未归还", "${pageContext.request.contextPath}/orderServlet?method=findAll", "body");
	bar1.add("借阅管理", "已归还", "${pageContext.request.contextPath}/orderServlet?method=findReturn", "body");

	var d = document.getElementById("menu");
	d.innerHTML = bar1.toString();
}
</script>

</head>

<body onload="load()" style="margin: 0px; background: rgb(254,238,189);">
<div id="menu"></div>

</body>
</html>
