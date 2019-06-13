<%@ page import="model.Admin" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Student" %><%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2019/6/7
  Time: 18:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="studentMenu.jsp"%>
<s:form action="UpdateStudent" method="post">
    <table border="1" bgcolor="#ccceee" align="center">

        <%
            int id=Integer.parseInt(request.getParameter("id"));
            System.out.println(id);
            List<Student> studentList;
            studentList=(List<Student>) session.getAttribute("studentList");
            for(int i=0;i<studentList.size();i++) {
                Student stu=studentList.get(i);
                if(stu.getSid()==id){
        %>
        <tr>
            <td width="87" align="center">学号</td>
            <td>
                <input value="<%=stu.getSno()%>" name="student.sno">
                <input value="<%=stu.getSid()%>" name="student.sid" hidden="hidden">
            </td>
        </tr>
        <tr>
            <td width="87" align="center">姓名</td>
            <td><input value="<%=stu.getName()%>" name="student.name">
            </td>
        </tr>
        <tr>
            <td width="87" align="center">性别</td>
            <td>
                <select id="sex_tag" style="width: 175px" name="student.sex" >
                    <option value="男" >男</option>
                    <option value="女" >女</option>
                    <script>
                        var j="<%=stu.getSex()%>"    //选择默认身份
                        var tag=document.getElementById('sex_tag')
                        for(var i=0;i<tag.length;i++)
                            if(tag[i].value==j) tag[i].selected=true;
                    </script>
                </select>
            </td>
        </tr>
        <tr>
            <td width="87" align="center">学院</td>
            <td>
                <select id="department_tag" style="width: 175px" name="student.department" >
                    <option value="信息与电气工程学院" >信息与电气工程学院</option>
                    <option value="土木工程学院" >土木工程学院</option>
                    <option value="交通学院" >交通学院</option>
                    <option value="文学院" >文学院</option>
                    <option value="体育学院" >体育学院</option>
                    <script>
                        var j="<%=stu.getDepartment()%>"    //选择默认身份
                        var tag=document.getElementById('department_tag')
                        for(var i=0;i<tag.length;i++)
                            if(tag[i].value==j) tag[i].selected=true;
                    </script>
                </select>
            </td>
        </tr>
        <tr>
            <td width="87" align="center">年级</td>
            <td>
                <select id="grade_tag" style="width: 175px" name="student.grade" >
                    <option value="2016" >2016</option>
                    <option value="2017" >2017</option>
                    <option value="2018" >2018</option>
                    <option value="2019" >2019</option>
                    <script>
                        var j="<%=stu.getGrade()%>"    //选择默认身份
                        var tag=document.getElementById('grade_tag')
                        for(var i=0;i<tag.length;i++)
                            if(tag[i].value==j) tag[i].selected=true;
                    </script>
                </select>
            </td>
        </tr>
        <tr>
            <td width="87" align="center">电话</td>
            <td><input value="<%=stu.getTel()%>" name="student.tel"></td>
        </tr>
        <tr height="50">
            <th width="100" align="center"><input type="submit"/></th>
            <th ><input type="reset" value="还原"/></th>
        </tr>
        <%
                }}
        %>
    </table>
</s:form>
</body>
</html>
