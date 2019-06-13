<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2019/6/6
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="SeekStudent" method="post">
    <table border="1" bgcolor="#FFFFFF" align="center">
        <tr height="50">
            <td>学院:
                <select id="department_tag" style="width: 175px" name="student.department" >
                    <option value="信息与电气工程学院" >信息与电气工程学院</option>
                    <option value="土木工程学院" >土木工程学院</option>
                    <option value="交通学院" >交通学院</option>
                    <option value="文学院" >文学院</option>
                    <option value="体育学院" >体育学院</option>
                </select>
            年级:
                <select id="grade_tag" style="width: 175px" name="student.grade" >
                    <option value="2016" >2016</option>
                    <option value="2017" >2017</option>
                    <option value="2018" >2018</option>
                    <option value="2019" >2019</option>
                </select>
                <input type="submit" value="查找"/>
            </td>
        </tr>
    </table>

</form>
<form action="FuzzySeekStudent" method="post">
<table border="1" bgcolor="#FFFFFF" align="center">
    <tr height="50">
        <td>
            姓名:<input name="student.name">
            <input type="submit" value="查找"/>
        </td>
    </tr>
</table>
</form>
</body>
</html>
