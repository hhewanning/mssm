<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'bookdesc.jsp' starting page</title>
    
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
	div {
		margin:20px;
		border: solid 2px gray;
		width: 150px;
		height: 150px;
		text-align: center;
	}
	li {
		margin: 10px;
	}
</style>

<script type="text/javascript">
	function updateBook(){
		document.getElementById("form").action="${pageContext.request.contextPath}/updateBookServlet";
		document.getElementById("form").submit();
	}
	
	function pushDown(){
	document.getElementById("form").enctype="application/x-www-form-urlencoded";
		document.getElementById("form").action="${pageContext.request.contextPath}/bookServlet?method=pushDown";
		document.getElementById("form").submit();
	}
</script>

  </head>
  
  <body>

  <form style="margin:20px;" id="form" action="" method="post" enctype="multipart/form-data">
  	<input type="hidden" name="bid" value="${book.bid }">
  	<input type="hidden" name="isdel" value="${book.isdel }">
  	<input type="hidden" name="image" value="${book.image }">
  	   <table align="center" border="1" cellpadding="0" cellspacing="0" width="40%">

    	<tr align="center">
    		<td colspan="2">
    		<div>
   				 <img src="${pageContext.request.contextPath }/${book.image}" height="140" width="130" border="0"/>
 		 	</div>
 			 </td>
    	</tr>
    	<tr align="center">
    		<td width="20%">图书名称：</td>
    		<td width="20%"><input type="text" name="bname" value="${book.bname }"/></td>
    	</tr>
    	<tr align="center">
    		<td>图书图片：</td>
    		<td><input style="width: 150px; height: 20px;" type="file" name="image"/></td>
    	</tr>
    	<tr align="center">
    		<td>图书单价：</td>
    		<td><input type="text" name="price" value="${book.price }"/></td>
    	</tr>
    	<tr align="center">
    		<td>日租单价：</td>
    		<td><input style="width: 150px; height: 20px;" type="text" name="dayprice" value="${book.dayprice }"/></td>
    	</tr>
    	<tr align="center">
    		<td>图书数量：</td>
    		<td><input style="width: 150px; height: 20px;" type="text" name="count" value="${book.count }"/></td>
    	</tr>
    	<tr align="center">
    		<td>图书作者：</td>
    		<td><input type="text" name="author" value="${book.author }"/></td>
    	</tr>
    	<tr align="center">
    		<td>图书分类：</td>
    		<td><select style="width: 150px; height: 20px;" name="cid">
     		<c:forEach items="${list }" var="category">
			<option value="${category.cid }" <c:if test="${category.cid==book.cid }">selected</c:if>>${category.cname }</option>
     		</c:forEach>
     		
    	</select></td>
    	</tr>
    	<tr align="center">
    		<td>出版信息：</td>
    		<td><select style="width: 150px; height: 20px;" name="pid">
   
    		<c:forEach items="${pList }" var="publish">
    		<option value="${publish.pid }" <c:if test="${publish.pid==book.pid }">selected</c:if>>${publish.pname }</option>
    		</c:forEach>
    		
    	</select></td>
    	
    	
    	<tr align="center">
    		<td><input type="button" value="下架图书" onclick="pushDown()" /></td>
    		<td><input type="button" value="修改图书" onclick="updateBook()"/></td>
    	</tr>
    	</table>
  </form>
  
  

  
  </body>
</html>
