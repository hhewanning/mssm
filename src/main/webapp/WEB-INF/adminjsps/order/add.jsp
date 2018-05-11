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
	<script type="text/javascript">
	function checkBname(){
		var bname = document.getElementById("bname").value;
		var span2 = document.getElementById("span2");
		var sub = document.getElementById("sub");
		var xhr = createXMLHttpRequest();
		xhr.onreadystatechange=function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					if(bname==null||bname.trim().length==0){
						span2.innerHTML="<font color='red'>图书名不能为空</font>";
						sub.style.display="none";
					}else{
						var data = xhr.responseText;
						if (data==-1){
							span2.innerHTML="<font color='red'>该图书不存在</font>";
							sub.style.display="none";
						}else{
							span2.innerHTML="<font color='green'>剩余"+data+"本</font>";
							sub.style.display="block";
						}
					}
				}	
			}
		}
		xhr.open("get","${pageContext.request.contextPath}/bookServlet?method=checkBname&bname="+bname,true);
		xhr.send(null);
	
	}
	function checkUid(){
		var uid = document.getElementById("uid").value;
		var span1 = document.getElementById("span1");
		var sub = document.getElementById("sub");
		var xhr = createXMLHttpRequest();
		xhr.onreadystatechange=function(){
			if(xhr.readyState==4){
				if(xhr.status==200){
					if(uid==null||uid.trim().length==0){
						span1.innerHTML="<font color='red'>会员号不能为空</font>";
						sub.style.display="none";
					}else{
						var data = xhr.responseText;
						if(data==2){
							span1.innerHTML="<font color='green'>该会员可以借书</font>";
							sub.style.display="block";
						}else if (data==1){
							span1.innerHTML="<font color='red'>该会员不存在</font>";
							sub.style.display="none";
						
						}
					}
				}	
			}
		}
		xhr.open("get","${pageContext.request.contextPath}/userServlet?method=checkUid&uid="+uid,true);
		xhr.send(null);
	
	}
		
	 function createXMLHttpRequest(){
	   var xmlHttp;
	   try{ // Firefox, Opera 8.0+, Safari
	        xmlHttp=new XMLHttpRequest();
	    } catch (e){
		   try{// Internet Explorer
		         xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		      }
		    catch (e){
		      try{
		         xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		      }
		      catch (e){}
		      }
	    }
		return xmlHttp;
	 }
	
	</script>
	
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
    
    <p style="font-weight: 900; color: red">${msg }</p>
    <form action="${pageContext.request.contextPath }/orderServlet" method="post" target="body">
    	<input type="hidden" name="method" value="save">
    	<table align="center" border="1" cellpadding="0" cellspacing="0" width="40%">
    	<tr align="center">
    		<td colspan="2"><h1>图书借阅</h1></td>
    	</tr>
    	<tr align="center">
    		<td width="17%">会员卡号：</td>
    		<td width="23%" align="left">&nbsp;<input style="width: 150px; height: 20px;" type="text" id="uid" name="uid" onblur="checkUid()"/>
    		<span id="span1"></span>
    		</td>
    	</tr>
    	<tr align="center">
    		<td>图书名称：</td>
    		<td align="left">&nbsp;<input style="width: 150px; height: 20px;" type="text" id="bname" name="bname" onblur="checkBname()"/>
    		<span id="span2"></span>
    		</td>
    	</tr>
    	<tr align="center">
    		<td>图书数量：</td>
    		<td align="left">&nbsp;<input style="width: 150px; height: 20px;" type="text" name="count"/></td>
    	</tr>
    	<tr align="center">
    		<td colspan="2"><input type="submit" id="sub" value="确定借阅"/></td>
    	</tr>
    </table>
    </form>
  </body>
</html>
