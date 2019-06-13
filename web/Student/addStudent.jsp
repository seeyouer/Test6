<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2019/6/6
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="studentMenu.jsp"%>
<s:form action="AddStudent" method="post">
    <table border="1" bgcolor="#ccceee" align="center">
        <tr>
            <s:textfield  name="student.sno" label="学号"/>
        </tr>
        <tr>
            <s:textfield  name="student.name" label="姓名"/>
        </tr>
        <tr>
            <td>性别:</td>
            <td>
            <select id="sex_tag" style="width: 175px" name="student.sex" >
                <option value="男" >男</option>
                <option value="女" >女</option>
            </select>
            </td>
        </tr>
        <tr >
            <td>学院:</td>
            <td>
                <select id="department_tag" style="width: 175px" name="student.department" >
                    <option value="信息与电气工程学院" >信息与电气工程学院</option>
                    <option value="土木工程学院" >土木工程学院</option>
                    <option value="交通学院" >交通学院</option>
                    <option value="文学院" >文学院</option>
                    <option value="体育学院" >体育学院</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>年级:</td>
            <td>
                <select id="grade_tag" style="width: 175px" name="student.grade" >
                    <option value="2016" >2016</option>
                    <option value="2017" >2017</option>
                    <option value="2018" >2018</option>
                    <option value="2019" >2019</option>
                </select>
            </td>
        </tr>
        <tr>
            <s:textfield name="student.tel" label="电话"/>
        </tr>
        <tr >
            <th><input type="submit"/></th>
            <th ><input type="reset" value="还原"/></th>
        </tr>
    </table>
</s:form>
</body>
</html>
