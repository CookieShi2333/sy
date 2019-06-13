
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
            <%out.println("welcome：");
            %>
            <s:property value="#session.username"/>
        </p>
        <br>
        <p>
        <a href="../OperationAction_selectOne.action" target="main">成绩查询</a>
            
        </p>
        
        <br>
     
    </body>
</html>
        