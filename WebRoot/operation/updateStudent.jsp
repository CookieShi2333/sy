<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生信息修改</title>
    </head>
    <body bgcolor="CCCFFF">

        <center>
          
            <br> <br> <br> <br> <br>
 
            你要查询的学生数据表中共有${fn:length(sessionScope.oneClassList2) } 人
           <table border="2" bgcolor= "CCCEEE" width="600">
                <tr bgcolor="CCCCCC" align="center">
                    <th>成绩排名</th>
                    <th>学号</th>
                    
                    <th>课程名</th>
                    <th>成绩</th>
                    <th>修改</th>
                </tr>
			<c:forEach var="item" items="${sessionScope.oneClassList2}" varStatus="status">
                <tr align="center">
                    <td><c:out value="${status.index+1}"></c:out></td>
                    <td><c:out value="${item.stuId }"></c:out> </td>
                    <td><c:out value="${item.stuCourse}"></c:out></td>
                    <td><c:out value="${item.stuGrade}"></c:out></td>
                    <td><a href="<c:url value='OperationAction_selectOneStudent.action?stuId=${item.stuId }'/>">点击修改</a></td>
                </tr>
			</c:forEach>
            </table>
        </center>
    </body>
</html>
