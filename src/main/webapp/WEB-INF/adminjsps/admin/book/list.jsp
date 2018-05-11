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
  <form action="${pageContext.request.contextPath }/bookManage/getBookManage" method="post">
  <input type="hidden" name="method" value="find">
  	分类查询:<select style="width: 150px; height: 20px;" name="cid">
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
    	书名查询:<input type="text" name="bname"  >
    	作者查询:<input type="text" name="author" >
    	<input type="submit" value="查询">
	 &nbsp;   &nbsp;  &nbsp;<a href="${pageContext.request.contextPath}/bookManage/getBookManage">图片模式</a>  &nbsp;  	
	<a href="${pageContext.request.contextPath}/bookManage/goBookList">列表模式</a>    	
  </form>
	 <c:forEach items="${map.list}" var="book">
	   <div class="icon">
	    <a href="${pageContext.request.contextPath }/bookManage/getBookManage?bid=${book.bid}"><img src="${pageContext.request.contextPath }/${book.image}" width="130" height="150" border="0"/></a>
	      <br/>
	   	<a href="${pageContext.request.contextPath }/bookManage/getBookManage?bid=${book.bid}">${book.bname }</a>
	  </div>
  </c:forEach>
  </body>
 
</html>

