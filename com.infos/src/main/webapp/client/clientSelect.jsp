<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/26
  Time: 16:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.ClientBean" %>
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
        <td height="30">客户姓名</td>
        <td height="30">客户电话</td>
        <td height="30">客户地址</td>
        <td height="30">客户邮箱</td>
    </tr>
    <%
        if(al==null || al.size()==0){

        }else{
            for(int i=0;i<al.size();i++){
                ClientBean st=(ClientBean) al.get(i);
    %>
    <tr>
        <td><%=st.getClientName() %></td>
        <td><%=st.getClientTelephone() %></td>
        <td><%=st.getClientAddress()%></td>
        <td><%=st.getClientEmail()%></td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>