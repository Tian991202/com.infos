<%@ page import="java.util.ArrayList" %>
<%@ page import="bean.Staff" %><%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/26
  Time: 16:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改员工信息</title>
</head>
<body bgcolor="CCCFFF">

<br> <br> <br>
<h3>请修改员工的信息！</h3>
<form action="/webstaff_war/UpdataStaffServlet">
    <table border="2" bgcolor= "CCCEEE" width="600">
        <%
            ArrayList al=(ArrayList)session.getAttribute("al");
            if(al==null || al.size()==0){

            }else{
                for(int i=0;i<al.size();i++){
                    Staff st=(Staff)al.get(i);//实体类


        %>
        <tr>
            <td>员工名:</td>
            <td><input type="text" name="staffName" value="<%=st.getStaffName()%>"/></td>
        </tr>
        <tr>
            <td>员工性别:</td>
            <td><input type="text" name="staffSex" value="<%=st.getStaffSex()%>"/></td>
        </tr>
        <tr>
            <td>员工年龄:</td>
            <td><input type="text" name="staffAge" value="<%=st.getStaffAge()%>"/></td>
        </tr>
        <tr>
            <td>员工职务:</td>
            <td><input type="text" name="staffDuty" value="<%=st.getStaffDuty()%>"/></td>
        </tr>
        <tr>
            <td>员工工资:</td>
            <td><input type="text" name="staffWage" value="<%=st.getStaffWage()%>"/></td>
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
            }
        %>
    </table>
</form>
</body>
</html>

