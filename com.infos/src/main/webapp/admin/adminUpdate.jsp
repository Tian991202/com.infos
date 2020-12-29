<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.Admin" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/28
  Time: 18:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>更新我的管理员</title>
</head>
<body bgcolor="CCCFFF">

<br> <br> <br>
<h3>请修改员工的信息！</h3>
<form action="/com_infos_war/UpdateAdminServlet">
    <table border="2" bgcolor= "CCCEEE" width="600">
        <%
            ArrayList al=(ArrayList)session.getAttribute("al");
            for(int i=0;i<al.size();i++){
                Admin st=(Admin) al.get(i);//实体类
        %>
        <tr>
            <td>ID:</td>
            <td><input type="text" name="adminId" value="<%=st.getAdminId()%>"/></td>
        </tr>
        <tr>
            <td>NAME:</td>
            <td><input type="text" name="adminName" value="<%=st.getAdminName()%>"/></td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input type="text" name="adminPassword" value="<%=st.getAdminPassword()%>"/></td>
        </tr>


        <tr align="center">
            <td colspan="2">
                <input name="sure" type="submit" value="修  改"/>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input name="clear" type="reset" value="取  消"/>
            </td>
        </tr>
        <%
            }

        %>
    </table>
</form>
</body>
</html>