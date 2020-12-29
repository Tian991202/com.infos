<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.ClientBean" %>
<%@ page import="com.mysql.fabric.xmlrpc.Client" %><%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/26
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>修改客户信息</title>
</head>
<body>
    <form action="/com_infos_war/UpdateClientServlet" method="post">
        <table align="center" width="500">
            <%
                ArrayList al=(ArrayList) session.getAttribute("al");
            if(al==null || al.size()==0) {
            }else {
                    for(int i=0;i<al.size();i++){
                    ClientBean st=(ClientBean) al.get(i);

            %>
            <tr>
                <th colspan="2" align="center">修改客户信息</th>
            </tr>

            <tr>
                <td>客户姓名</td>
                <td><input type="text" name="clientName" value="<%=st.getClientName()%>"/></td>
            </tr>

            <tr>
                <td>客户电话</td>
                <td><input type="text" name="clientTelephone" value="<%=st.getClientTelephone()%>"/></td>
            </tr>

            <tr>
                <td>客户住址</td>
                <td><input type="text" name="clientAddress" value="<%=st.getClientAddress()%>"/></td>
            </tr>

            <tr>
                <td>客户邮箱</td>
                <td><input type="text" name="clientEmail" value="<%=st.getClientEmail()%>"/></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input name="sure" type="submit" value="确认">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <input name="clear" type="reset" value="取消">
                </td>
            </tr>
            <%
                }
                }
            %>
        </table>
    </form>
</body>
</html>
