<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.CsBean" %><%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/26
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改售后信息</title>
</head>
<body>
<form action="/com_infos_war/UpdateCsServlet" method="post">
    <table align="center" width="500">

        <%
            ArrayList al=(ArrayList)session.getAttribute("al");
            if(al==null || al.size()==0) {

            }else{
            for(int i=0;i<al.size();i++){
                CsBean st=(CsBean) al.get(i);

        %>
        <tr>
            <th colspan="2" align="center">修改售后信息</th>
        </tr>
        <tr>
            <td>客户姓名</td>
            <td><input type="text" name="clientName" value="<%=st.getClientName()%>"></td>
        </tr>

        <tr>
            <td>客户意见</td>
            <td><input type="text" name="clientOpinion" value="<%=st.getClientOpinion()%>"></td>
        </tr>

        <tr>
            <td>员工姓名</td>
            <td><input type="text" name="staffName" value="<%=st.getStaffName()%>"></td>
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
