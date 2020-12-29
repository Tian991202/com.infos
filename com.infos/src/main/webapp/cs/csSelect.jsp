<%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/26
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.CsBean" %>
<html>
<head>
    <title>查看售后信息</title>
</head>
<body>
<%
    ArrayList al=(ArrayList)session.getAttribute("al");
%>
<table border="2" cellpadding="0" cellspacing="0" width="60%" align="center">
    <br><br><br><br>
    <%

        if(al==null || al.size()==0){

        }else{
            for(int i=0;i<al.size();i++){
                CsBean st=(CsBean) al.get(i);%>
    <tr>
        <td height="30">客户姓名</td>
        <td height="30">客户意见</td>
        <td height="30">员工姓名</td>
    </tr>

    <tr>

        <td><%=st.getClientName() %></td>
        <td><%=st.getClientOpinion() %></td>
        <td><%=st.getStaffName()%></td>
    </tr>


    <%
            }
        }
    %>
</table>
</body>
</html>
