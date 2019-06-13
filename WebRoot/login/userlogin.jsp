<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userlogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  
  <body bgcolor="CCCFFF">
  
        <center>
            <br><br><br>
            <br><br><br>
            <h2>登录成绩管理系统</h2><br>

           <form  action="LoginAction_userlogin.action" method="post">
       

                <p>
                               用户名：<input type="text" name="username" />    
                               密  码：  <input type="password" name="password"/>
                </p>
            <p>登录身份：
            <input type="radio" name="actor" value="teacher">教师
            <input type="radio" name="actor" value="student">学生
            </p>
                 <p>
                    <input type="submit"  value="确定">&nbsp;
                    <input  type="reset"  value="取消" >
                </p>
            </form>
        </center>
    </body>
</html>
