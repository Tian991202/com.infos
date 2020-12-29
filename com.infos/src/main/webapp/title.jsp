<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/27
  Time: 8:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }


        nav {
            width: 100%;
            height: 60px;
            background-color: white;
        }
        /* 导航栏字体样式 */

        .Title,
        .text1,
        .text2,
        .text3,
        .text4,
        .text5,
        .text6 {
            line-height: 60px;
            float: left;
            /* 这个可以去掉字前面的点 */
            display: inline-block;
            width: 200px;
            text-align: center;
            color: darkslategray;
            position: relative;
            z-index: 10;

        }
        /* 主题名 */

        .Title {
            /* 这是哪个字的样式 */
            color: rgb(238, 203, 157);;
            width: 120px;
            /* 这是大小写转化 */
            /* text-transform: uppercase; */
            font-family: "宋体";
            font-size: 30px;
            /* font-weight: bold; */
        }
        /* 第一个下拉框 */

        .list1 {
            list-style: none;
            text-align: center;
            background: white;
            width: 120px;
            /* 这个是下拉的文字的距离 */
            line-height: 60px;
            border-radius: 5%;
            z-index: 2;
            position: absolute;
            left: 155px;
            /* 60 */
            top: -240px;
            color:rgb(240, 110, 110);
        }
        .text1:hover~.list1 {
            /* 随值改变+240 */
            top: 60px;
            transition-duration: 0.5s;
        }
        .list1:hover{
            cursor: pointer;
            top:60px;
        }
        .context1:hover{
            background: darkslategray;
            border-radius: 5%;
            cursor: pointer;
        }
        /* 第二个下拉框 */

        .list2 {
            list-style: none;
            text-align: center;
            background: white;
            width: 120px;
            /* 这个是下拉的文字的距离 */
            line-height: 60px;
            border-radius: 5%;
            z-index: 3;
            position: absolute;
            left: 135px;
            /* 随值改变 */
            top: -240px;
            color:rgb(240, 110, 110);
        }

        .list2 {
            /* 随值改变 */
            left: 360px;
        }
        .text2:hover~.list2 {
            /* 随值改变+240 */
            top: 60px;
            transition-duration: 0.5s;
        }
        .list2:hover{
            cursor: pointer;
            top:60px;
        }
        .context2:hover{
            background: darkslategray;
            border-radius: 5%;
            cursor: pointer;
        }
        /* 第三个下拉框 */

        .list3 {
            list-style: none;
            text-align: center;
            background: white;
            width: 120px;
            /* 这个是下拉的文字的距离 */
            line-height: 60px;
            border-radius: 5%;
            z-index: 3;
            position: absolute;
            left: 135px;
            /* 随值改变 */
            top: -490px;
            color:rgb(240, 110, 110);
        }

        .list3 {
            /* 随值改变 */
            left: 560px;
        }
        .text3:hover~.list3 {
            /* 值越小离顶部越近 */
            top: 60px;
            transition-duration: 0.5s;
        }
        .list3:hover{
            cursor: pointer;
            top:60px;
        }
        .context3:hover{
            background: darkslategray;
            border-radius: 5%;
            cursor: pointer;
        }
        /* 第四个下拉框 */

        .list4 {
            list-style: none;
            text-align: center;
            background: white;
            width: 120px;
            /* 这个是下拉的文字的距离 */
            line-height: 60px;
            border-radius: 5%;
            z-index: 5;
            position: absolute;
            left: 135px;
            /* 越小离导航栏越近 */
            top: -670px;
            color:rgb(240, 110, 110);
        }

        .list4 {
            /* 随值改变+200 */
            left: 760px;
        }
        .text4:hover~.list4 {
            /* 随值改变+240 */
            top: 60px;
            transition-duration: 0.5s;
        }
        .list4:hover{
            cursor: pointer;
            top:60px;
        }
        .context4:hover{
            background: darkslategray;
            border-radius: 5%;
            cursor: pointer;
        }
        /* 第五个下拉框 */

        .list5 {
            list-style: none;
            text-align: center;
            background: white;
            width: 120px;
            /* 这个是下拉的文字的距离 */
            line-height: 60px;
            border-radius: 5%;
            z-index: 5;
            position: absolute;
            left: 135px;
            /* 随值改变 +240*/
            top: -910px;
            color:rgb(240, 110, 110);
        }

        .list5 {
            /* 随值改变+200 */
            left: 960px;
        }
        .text5:hover~.list5 {
            /* 随值改变+240 */
            top: 60px;
            transition-duration: 0.5s;
        }
        .list5:hover{
            cursor: pointer;
            top:60px;
        }
        .context5:hover{
            background: darkslategray;
            border-radius: 5%;
            cursor: pointer;
        }
        /* 第六个下拉框 */

        .list6 {
            list-style: none;
            text-align: center;
            background: white;
            width: 120px;
            /* 这个是下拉的文字的距离 */
            line-height: 60px;
            border-radius: 5%;
            z-index: 2;
            position: absolute;
            left: 135px;
            /* 随值改变 +240*/
            top: -1540px;
            color:rgb(240, 110, 110);
        }

        .list6 {
            /* 随值改变+200 */
            left: 1160px;
        }
        .text6:hover~.list6 {
            /* 随值改变+240 */
            top: 60px;
            transition-duration: 0.5s;
        }
        .list6:hover{
            cursor: pointer;
            top:60px;
        }
        .context6:hover{
            background: darkslategray;
            border-radius: 5%;
            cursor: pointer;
        }
        /* 指的是光标移动到位置上是变成小手的形状 */

        .text1:hover,
        .text2:hover {
            color: darkslategray;
            cursor: pointer;
        }

        .text3:hover,
        .text4:hover,
        .text5:hover,
        .text6:hover {
            color: darkslategray;
            cursor: pointer;
        }
    </style>
</head>
<body>
<nav>
    <h1 class="Title">WeClome</h1>
    <ul>
        <!-- 标签 -->
        <li class="text1"><img src="image/navig1.png" alt="图片" width="22px">客户模块</li>
        <li class="text2"><img src="image/navig2.png" alt="图片" width="23px">合同模块</li>
        <li class="text3"><img src="image/navig3.png" alt="图片" width="22px">售后模块</li>
        <li class="text4"><img src="image/navig1.png" alt="图片" width="22px">产品模块</li>
        <li class="text5"><img src="image/navig2.png" alt="图片" width="22px">员工模块</li>
        <li class="text6"><img src="image/navig3.png" alt="图片" width="22px">个人模块</li>
        <ul class="list1">
            <li class="context1"><a href="/com_infos_war/SelectClientServlet"> 客户查询</a></li>
            <li class="context1"><a href="client/clientAdd.jsp"> 客户添加</a></li>
            <li class="context1"><a href="client/lookUpdate.jsp">客户修改</a> </li>
            <li class="context1"><a href="/com_infos_war/LookDeleteServlet">客户删除</a> </li>
        </ul>
        <ul class="list2">
            <li class="context2">
                <a href="/com_infos_war/SelectcontactServlet" >合同查询</a>
            </li>
            <li class="context2"><a href="/com_infos_war/contactAdd.jsp">合同添加</a> </li>
            <li class="context2"><a href="contact/contactDelete.jsp">合同删除</a></li>

        </ul>
        <ul class="list3">
            <li class="context3"><a href="/com_infos_war/SelectCsServlet"> 售后查询</a></li>
            <li class="context3"><a href="/com_infos_war/cs/csAdd.jsp"> 售后添加</a></li>
            <li class="context3"><a href="cs/lookUpdateCs.jsp"> 售后修改</a></li>
            <li class="context3"><a href="/com_infos_war/LookDeleteCsServlet/">售后删除</a> </li>
        </ul>
        <ul class="list4">
            <li class="context4"><a href="/com_infos_war/SelectcontactServlet">产品查询</a> </li>
            <li class="context4"><a href="product/productAdd.jsp">产品添加</a> </li>
            <li class="context4"><a href="product/productlookUpdate.jsp">产品修改</a></li>
            <li class="context4"><a href="/com_infos_war/lookDelectproductServlet">产品删除</a></li>
        </ul>
        <ul class="list5">
            <li class="context5">
                <a href="/webstaff_war/SelectStaffServlet">员工查询</a> </li>
            <li class="context5">
                <a href="staff/staffAdd.jsp">员工添加</a> </li>
            <li class="context5">
                <a href="staff/lookUpdate.jsp">员工修改</a> </li>
            <li class="context5">
                <a href="/webstaff_war/LookDeleteStaffServlet">员工删除</a></li>
        </ul>
        <ul class="list6">
            <li class="context6">个人查询</li>
            <li class="context6">密码修改</li>
        </ul>
    </ul>
</nav>
</body>
</html>
