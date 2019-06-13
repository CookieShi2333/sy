<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modify.jsp' starting page</title>
    
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
            <h3>&nbsp;&nbsp;修改学生成绩</h3>

            <form action= "OperationAction_update.action" method="post">
                <table border="0" width="200">
                   
                    <tr>
                        <td>学号</td>
                        <td><input type="text" name="stuId" value="${se.stuId }" readOnly="true"></td>
                    </tr>
                   
                    <tr>
                        <td>学科</td>
                        <td><input type="text" name="stuCourse" value="${se.stuCourse}" readOnly="true"></td>
                    </tr>
                    <tr>
                        <td>成绩</td>
                        <td><input type="text" name="stuGrade" ></td>
                    </tr>
                   
                    <tr align="center">
                        <td colspan="2">
                            <input name="sure" type="submit" value="提  交">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input name="clear" type="reset" value="取  消">
                        </td>
                    </tr>
                </table>
            </form>
    </center>
  </body>
</html>
