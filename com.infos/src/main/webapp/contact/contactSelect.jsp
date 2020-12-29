


<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.*"%>
<%@ page import="dao.ContactDao" %>
<%@ page import="bean.ContactBean" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>产品信息查询</title>
</head>
<body>
<style type="text/css">
    body{
        background-image: url(../image/qwe.jpg);
        background-size:cover;
    }
</style>
<center>
    <br> <br> <br> <br> <br>
    <%
        ArrayList al=(ArrayList)session.getAttribute("al");
    %>
    需要查询的合同信息为
    <font size="5" color="red">
        <%=al.size()%>
    </font>
    人
    <table border="2" bgcolor= "CCCEEE" width="600">
        <tr bgcolor="CCCCCC" align="center">
            <th>客户姓名</th>
            <th>合同名称</th>
            <th>业务员</th>
            <th>合同内容</th>

        </tr>
        <%
            for(int i=0;i<al.size();i++){
                ContactBean st=(ContactBean) al.get(i);
        %>
        <tr align="center">
            <td><%=st.getClientName()%> </td>
            <td><%=st.getContactName()%> </td>
            <td><%=st.getStaffName()%> </td>
            <td><%=st.getContactContents()%> </td>

        </tr>
        <%
            }
        %>
    </table>
</center>
</body>
</html>
