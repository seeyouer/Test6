<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2019/5/30
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body style="background-image:url('gqj.jpg')">
<table border="0" bgcolor="" align="center">
    <tr><th>登录</th></tr>
</table>
<s:form action="Userlog" mode="post">
    <table border="1" bgcolor="" align="center">
        <tr>
            <s:textfield  name="admin.username" label="userName"/>
        </tr>
        <tr>
            <s:password name="admin.password" label="psw"/>
        </tr>
        <tr>
            <th><input type="submit"  value="登录"/></th>
            <th ><a href="register.jsp">去注册</a></th>
        </tr>
    </table>
</s:form>
</body>
</html>
