        <%@ page import="java.util.ArrayList" %>
<%@ page import="bean.ContactBean" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/27
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList al = (ArrayList) session.getAttribute("al");
%>
<div class="contantframe">
    <div class="contantlist1">
        <p>客户名称</p>
        <p>客户名称</p>
        <p>客户名称</p>
        <p>客户名称</p>
    </div>
    <%
        ContactBean CB = null;
        for (int i = 0; i < al.size(); i++) {
            CB = (ContactBean) al.get(i);
        }
    %>
    <div class="contantlist2">
     <p><%=CB.getStaffName()%></p>
        <p><%=CB.getStaffName()%></p>
        <p><%=CB.getStaffName()%></p>
        <p><%=CB.getStaffName()%></p>
    </div>

</div>
</body>
</html>
