<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    
    <title>My JSP 'success.jsp' starting page</title>
    
	

  </head>
  
  <body>
  <table border="2" bgcolor= "CCCEEE" width="600">
  <tr bgcolor="CCCCCC" align="center">
    <th> 用户名为：</th>
    <th> 密码为：</th>
 </tr>
  <tr bgcolor="CCCCCC" align="center">
    <td> <s:property value='username'/></td>
    <td> <s:property value="password1"/></td>
  </tr>
  </table>
  </body>
</html>
