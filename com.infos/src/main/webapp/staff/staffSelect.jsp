<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/26
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.Staff" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>查询员工信息</title>
</head>
<body>
    <br><br><br><br>
    <%
        ArrayList al=(ArrayList)session.getAttribute("al");
    %>
    <table border="2" cellpadding="0" cellspacing="0" width="60%" align="center">
    <tr>
        <td height="30">员工姓名</td>
        <td height="30">员工性别</td>
        <td height="30">员工年龄</td>
        <td height="30">员工职务</td>
        <td height="30">员工工资</td>
    </tr>
    <%
        if(al==null || al.size()==0){

        }else{
            for(int i=0;i<al.size();i++){
                Staff st=(Staff) al.get(i);
    %>
    <tr>
        <td><%=st.getStaffName() %></td>
        <td><%=st.getStaffSex() %></td>
        <td><%=st.getStaffAge()%></td>
        <td><%=st.getStaffDuty()%></td>
        <td><%=st.getStaffWage()%></td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
