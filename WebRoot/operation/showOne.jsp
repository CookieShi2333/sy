<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生信息修改</title>
    </head>
    <body bgcolor="CCCFFF">
  
        <center>
   
            <br> <br> <br> <br> <br>

           <h2>成绩</h2>
           <table border="2" bgcolor= "CCCEEE" width="600">
        
                <tr bgcolor="CCCCCC" align="center">
<!--                    <th>计数</th>-->
                    <th>学号</th>
                    <th>课程名</th>
                    <th>成绩</th>
                   
                </tr>
                
	<s:iterator value="#session.oneList"  > 
	  <tr align="center">
        <td><s:property value="stuId"/> </td>
        <td><s:property value="stuCourse"/></td>
        <td><s:property value="stuGrade"/> </td>
      </tr>
   </s:iterator> 
			
            </table>
        </center>
    </body>
</html>
