<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2019/6/6
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userName=(String)session.getAttribute("userName");
%>

    <table border="1" bgcolor="#ccceee" align="center">
        <tr>
            <td width="100" height="40" align="center"><a href="../Student/addStudent.jsp" >增加学生</a> </td>
        </tr>
    </table>
    <%@include file="seekMenu.jsp"%>

<hr>
</body>
</html>

