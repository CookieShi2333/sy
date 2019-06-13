
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body bgcolor="CCCFFF">
        <br><br><br>
        <br><br><br>
        <p>
             <%out.println("welcome："); %>
             <s:property value="#session.username"/>
        </p>
        <br>
        <p>
            <a href="../OperationAction_selectOneClass.action" target="main">显示班级成绩单</a>
        </p>
        <br>
        <p>
            <a href="../operation/addStudent.jsp" target="main">录入成绩</a>
        </p>
        <br>
        <p>
            <a href="../OperationAction_selectOneClassId.action" target="main">删除成绩</a>
        </p>
        <br>
        <p>
            <a href="../OperationAction_selectOneClassToUpdate.action" target="main">修改成绩</a> 
        </p>
        <br>
     
    </body>
</html>
