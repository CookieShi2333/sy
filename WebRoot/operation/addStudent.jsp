
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生成绩添加</title>
    </head>
    <body bgcolor="CCCFFF">
        <center>

		  
            <h3>&nbsp;&nbsp;添加学生成绩</h3>
            <form action="../OperationAction_Add.action" method="post">
                <table border="0" width="200">
                    <tr>
                    <tr>
                        <td>学号</td>
                        <td><input type="text" name="stuId" ></td>
                    </tr>
                    
                    <tr>
                        <td>学科</td>
                        <td><input type="text" name="stuCourse" value="${stuCourse}" readOnly="true"></td>
                    </tr>
                    <tr>
                        <td>成绩</td>
                        <td><input type="text" name="stuGrade"></td>
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
