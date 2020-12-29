<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.ClientBean" %><%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/26
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="bean.ClientBean" %>
<%@ page import="java.util.ArrayList" %>

<html>
<head>
    <title>删除客户信息</title>
</head>

<body>
<center>
    <tr>
        <th colspan="2">删除客户信息</th>
    </tr>
    <%
        ArrayList al=(ArrayList) session.getAttribute("al");
    %>
    <form action="/com_infos_war/DeleteClientServlet" method="post">


            <p>请输入要删除的客户信息的姓名：      </p>
            <select name="clientName">
                <%
                    if(al==null || al.size()==0){

                    }else{
                        for(int i=0;i<al.size();i++){
                            ClientBean st=(ClientBean) al.get(i);
                %>
                <option value="<%=st.getClientName()  %>">
                    <%=st.getClientName()%>
                </option>
                <%
                        }
                    }
                %>
            </select>

            <p>
                <input type="submit" name="sure" value="确认">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input name="clear" type="reset" value="取消">
            </p>

    </form>
</center>
</body>
</html>
