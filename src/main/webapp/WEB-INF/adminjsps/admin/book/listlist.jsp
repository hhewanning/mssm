<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>图书分类</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		font-size: 10pt;
		background: rgb(254,238,189);
	}
	.icon {
		margin:10px;
		border: solid 2px gray;
		width: 160px;
		height: 190px;
		text-align: center;
		float: left;
	}
</style>

  </head>
  
  <body>
  <form action="${pageContext.request.contextPath }/bookManage/getCategoryList" method="post">
   <input type="hidden" name="method" value="findList">
  	 	分类查询:
  	 	<select style="width: 150px; height: 20px;" name="cid">
  			<option value="" >--请选择--</option>
			<c:forEach items="${map.cList }" var="category">
			<option value="${category.cid }" >${category.cname }</option>
     		</c:forEach>
    	</select>
    
    	
   	 出版社查询:
   	 <select style="width: 150px; height: 20px;" name="pid">
   	 		<option value="" >--请选择--</option>
			<c:forEach items="${map.pList }" var="publish">
    		<option value="${publish.pid }">${publish.pname }</option>
    		</c:forEach>
    </select>
    	书名查询:<input type="text" name="bname" >
    	作者查询:<input type="text" name="author" >
    	<input type="submit" value="查询">
	 &nbsp;   &nbsp;  &nbsp;<a href="${pageContext.request.contextPath}/bookManage/getBookManage">图片模式</a>  &nbsp;  	
	<a href="${pageContext.request.contextPath}/bookManage/goBookList">列表模式</a>    	
  </form>
    	
    	
  <table border="1" width="100%" cellspacing="0" background="black">
	<tr bgcolor="rgb(78,78,78)" bordercolor="rgb(78,78,78)" style="color: white;" align="center"  width="90%">
		<td width="7%">图片</td>
		<td width="13%">图书名</td>
		<td width="10%">作者</td>
		<td width="8%">数量</td>
		<td width="10%">单价</td>
		<td width="10%">日租价</td>
		<td width="10%">图书分类</td>
		<td width="14%">出版社</td>
		<td width="8%">操作</td>
	</tr>
	 <c:forEach items="${map.list }" var="book">
	<tr bordercolor="rgb(78,78,78)" align="center">
		<td>
			<div><img src="${pageContext.request.contextPath }/${book.image}" height="75" width="60"/></div>
		</td>
		<td>${book.bname}</td>
		<td>${book.author}</td>
		<td>${book.count}</td>
		<td>${book.price}</td>
		<td>${book.dayprice}</td>
		
		<td>
			<c:forEach items="${map.cList }" var="category">
				<c:if test="${category.cid==book.cid }">${category.cname }</c:if>
			</c:forEach>
		</td>
		<td>
			<c:forEach items="${map.pList }" var="publish">
				<c:if test="${publish.pid==book.pid }">${publish.pname }</c:if>
			</c:forEach>
		</td>
		<td>	
		<a href="${pageContext.request.contextPath }/bookServlet?method=edit&bid=${book.bid}">编辑</a>
 		</td>
	</tr>
  </c:forEach>
  

	</table>
  </body>
</html>

