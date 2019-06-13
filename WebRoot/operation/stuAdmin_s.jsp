

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生信息管理系统</title>
    </head>
    <frameset rows="90,*">
        <frame src="../../Homework4/frame/top.jsp" scrolling="no">
        <frameset cols="126,*">
             <frame src="../../Homework4/operation/student_left.jsp" scrolling="no">
             <frame src="../../Homework4/frame/bottom.jsp" name="main" scrolling="no">
    < /frameset>
    </frameset>
</html>

