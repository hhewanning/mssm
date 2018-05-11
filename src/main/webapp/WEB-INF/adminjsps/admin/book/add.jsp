<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加图书</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {background: rgb(254,238,189);}
	
	span{
	color:#f40000;
	border:0px solid #ffb8b8;
	display:inline-block;
	background-repeat: no-repeat;
}
</style>
  </head>
  <body>
    <form action="${pageContext.request.contextPath }/addBookServlet" method="post" enctype="multipart/form-data">
		 <table align="center" border="1" cellpadding="0" cellspacing="0" width="40%">
    	<tr align="center">
    		<td colspan="2"> <h1>添加图书</h1></td>
    	</tr>
    	<tr align="center">
    		<td width="17%">图书名称：</td>
    		<td width="23%" align="left"><input style="width: 150px; height: 20px;" type="text" name="bname"/><span>${msg.bname_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>图书图片：</td>
    		<td align="left"><input style="width: 150px; height: 20px;" type="file" name="image"/><span>${mg}</span></td>
    	</tr>
    	<tr align="center">
    		<td>图书单价：</td>
    		<td align="left"><input style="width: 150px; height: 20px;" type="text" name="price"/> <span>${msg.price_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>日租单价：</td>
    		<td align="left"><input style="width: 150px; height: 20px;" type="text" name="dayprice"/><span>${msg.dayprice_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>图书数量：</td>
    		<td align="left"><input style="width: 150px; height: 20px;" type="text" name="count"/><span>${msg.count_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>图书作者：</td>
    		<td align="left"><input style="width: 150px; height: 20px;" type="text" name="author"/><span>${msg.author_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>图书分类：</td>
    		<td align="left"><select style="width: 150px; height: 20px;" name="cid">
    		<c:forEach items="${cList }" var="category">
			<option value="${category.cid }" >${category.cname }</option>
     		</c:forEach>
    	</select><span>${msg.cid_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>出版信息：</td>
    		<td align="left"><select style="width: 150px; height: 20px;" name="pid">
    		<c:forEach items="${pList }" var="publish">
    		<option value="${publish.pid }">${publish.pname }</option>
    		</c:forEach>
    		
    	</select><span>${msg.pid_msg }</span></td>
    	
    	
    	<tr align="center">
    		<td colspan="2"> <input type="submit" value="添加图书"/></td>
    	</tr>
    	</table>

    </form>
    
   
  </body>
</html>
