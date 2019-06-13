<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生信息删除</title>
    </head>
   <body bgcolor="CCCFFF">

        <center>
            <br><br><br>
            <br><br><br>
            <h2>删除学生信息</h2><br>
            <form  action="OperationAction_delete.action" method="post">
                <p>请选择要删除学生的学号:
                    <select name="id">
             		<c:forEach var="item" items="${sessionScope.idList}">
              			<option value="${item.stuId}"> ${item.stuId} </option>
              		</c:forEach>
                    </select>
                </p>
                 <p>
                    <input type="submit"  value="确定">&nbsp;
                    <input  type="button"  value="返回" onClick="javascript:history.go(-1)">
                </p>
            </form>
        </center>
    </body>
</html>

