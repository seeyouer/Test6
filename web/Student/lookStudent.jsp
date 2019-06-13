<%@ page import="model.Student" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2019/6/6
  Time: 21:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="studentMenu.jsp"%>
<table border="1" bgcolor="#ccceee" align="center">
    <tr>
        <th width="87" align="center">学号</th>
        <th width="87" align="center">姓名</th>
        <th width="87" align="center">性别</th>
        <th width="87" align="center">学院</th>
        <th width="87" align="center">年级</th>
        <th width="87" align="center">电话</th>
        <th width="87" align="center">操作</th>
    </tr>
    <%
        List<Student> studentList;
        studentList=(List<Student>) session.getAttribute("studentList");
        for(int i=0;i<studentList.size();i++){
            Student stu=studentList.get(i);
    %>
    <tr>
        <td><%=stu.getSno()%></td>
        <td><%=stu.getName()%></td>
        <td><%=stu.getSex()%></td>
        <td><%=stu.getDepartment()%></td>
        <td><%=stu.getGrade()%></td>
        <td><%=stu.getTel()%></td>
        <td>
            <a href="../Student/updateStudent.jsp?id=<%=stu.getSid()%>">修改|</a>
            <a href="DeleteStudent?id=<%=stu.getSid()%>">删除</a>
        </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
