<%@ taglib prefix="s" uri="/struts-tags" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2019/5/30
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body  style="background-image:url('${pageContext.request.contextPath}/Login/gqj.jpg')">
<a href="login.jsp"><-back</a>
<s:form action="UserReg" mode="post">
<table border="1" bgcolor="" align="center">
    <s:textfield name="admin.username" label="登录名"/>
    <s:password name="admin.password" label="密码"/>
    <s:password name="password" label="确认密码" />
    <s:submit value="注册"/>
</table>
</s:form>
</body>
</html>
