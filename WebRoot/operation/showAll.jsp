<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生信息查询</title>
    </head>
    <body bgcolor="CCCFFF">
        <center>
          
            <br> <br> <br> <br> <br>
            <br>
      <font size="5" color="red">
                ${stuList.stuClass} }
            </font><br><br>
            你要查询的学生数据表中共有${fn:length(requestScope.stuList) }  人<br><br>
           <table border="2" bgcolor= "CCCEEE" width="600">
                <tr bgcolor="CCCCCC" align="center">
                    <th>记录条数</th>
                    <th>班级</th>
                    <th>学号</th>
                    <th>姓名</th>
                    <th>学科</th>
                    <th>成绩</th>
                    <th>排名</th>
                </tr>
			<c:forEach var="item" items="${requestScope.stuList}" varStatus="status">
                <tr align="center">
                    <td><c:out value="${status.index+1}"></c:out></td>
                    <td><c:out value="${item.stuClass}"></c:out></td>
                    <td><c:out value="${item.stuId }"></c:out> </td>
                    <td><c:out value="${item.stuName}"></c:out> </td>
                    <td><c:out value="${item.stuCourse}"></c:out></td>
                    <td><c:out value="${item.stuGrade}"></c:out></td>
                    <td><c:out value="${item.stuRank}"></c:out></td>
                </tr>
			</c:forEach>
            </table>
        </center>
    </body>
</html>
