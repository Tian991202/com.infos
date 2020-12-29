<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/26
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.Admin" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>查询个人信息</title>
</head>
<body>
<br><br><br><br>
<%
    ArrayList al=(ArrayList)session.getAttribute("al");
%>
<table border="2" cellpadding="0" cellspacing="0" width="60%" align="center">
    <tr>
        <td height="30">ID</td>
        <td height="30">NAME</td>
        <td height="30">密码</td>
    </tr>
    <%
        if(al==null || al.size()==0){

        }else{
            for(int i=0;i<al.size();i++){
                Admin st=(Admin) al.get(i);
    %>
    <tr>
        <td><%=st.getAdminId() %></td>
        <td><%=st.getAdminName() %></td>
        <td><%=st.getAdminPassword()%></td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
