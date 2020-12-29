<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>框架</title>
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


        .navhou{
            background: url(http://pic.rmb.bdstatic.com/9619bd4b6f54160c5c81c6525f35f88b.jpeg);
            background-repeat: no-repeat;
            background-size: 100%;
            background-attachment: scroll;
            position: relative;
            width: 100%;
            height: 700px;
            position: relative;
            -webkit-background-size: 100%;
        }
        .header .navqian{
            height: 180px;
            color: white;
            /* opacity: 0.7; */
            text-align: center;
            height: 700px;
            /* background: rgba(16, 30, 98, 0.6); */
        }
        .header .navqian h1{
            color: white;
            float: left;
            padding-left: 150px;
            padding-top: 250px;
            font-size: 45px;
        }




        .lefthou{
            background:url(image/ZHONG1.jpg);
            color:white;
            width: 50%;
            height: 200px;
        }
        .leftqian{
            background-color:black;
            color: white;
            opacity: 0.7;
            width: 100%;
            height: 200px;
        }
        .lefthou h1{
            text-align: center;
            padding-top: 50px;
        }
        .righthou{
            background:url(image/ZHONG2.jpg);
            color:white;
            width: 50%;
            height: 200px;
            float: right;

        }
        .rightqian{
            background-color:black;
            color: white;
            opacity: 0.7;
            width: 100%;
            height: 200px;

        }
        .righthou h1{
            text-align: center;
            padding-top: 50px;
        }
        .zhonghou{
            background-color: rgb(7, 55, 99);
            width: 100%;
            height: 540px;
        }
        .code{
            color:white;
            height: 200px;
        }
        .zhongqian h1{
            color:white;
            font-size: 40px;
            text-align: center;
            font-weight: normal;
            /* 插入一张图片后再设置padding-top */
        }
        .zhongqian p{
            padding-left: 43%;
        }
        .zhongqian h2{
            text-align: center;
            color:white;
        }
        .xiahou{
            background: url(image/XIA.jpg);
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: cover;
            height: 900px;
        }
        .xiaqian{
            background-color:rgb(204, 159, 92);
            opacity: 0.7;
            width: 100%;
            height: 180px;
        }
        .xiaqian h1{
            text-align: center;
            background-color: rgb(204, 159, 92);
            color:white;
            padding-top: 2%;
        }
        .xiaqian h2{
            text-align: center;
            color:white;
            font-size: 18px;
            font-weight: bold;
        }
        .footerhou{
            background: url(image/SHANG.jpg);
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: cover;

            height: 600px;

        }
        .footerqian{
            background-color:rgb(204, 159, 92);
            opacity: 0.7;
            width: 100%;
            height: 600px;
        }
        .footerqian h6{
            opacity: 0.7;
            color:white;
            font-size:18px;
            text-align: left;
            padding-left: 600px;
            padding-top: 100px;
            font-family: 仿宋，hairline serif;
            /* background-color: red; */
            width: 200px;
            /* background-color: red; */
        }
        .footerqian h5{
            color:white;
            font-size:18px;
            text-align: left;
            padding-left: 1000px;
            margin-top: -60px;
            font-family: 仿宋，hairline serif;
            /* background-color: red; */
            width: 200px;
            /* background-color: red; */
        }
        .footerqian h4{
            color:white;
            font-size:18px;
            text-align: left;
            padding-left: 1500px;
            margin-top: -80px;
            font-family: 仿宋，hairline serif;
            /* background-color: red; */
            width: 200px;
            /* background-color: red; */
        }
        .footerqian h3{
            color:white;
            font-size:18px;
            text-align: center;
            /* padding-left: 1500px; */
            margin-top: 420px;
            font-family: 仿宋，hairline serif;
            /* background-color: black; */
            /* width: 200px; */
            /* background-color: red; */

        }
        .footerqian h1{
            color: white;
            padding-left: 200px;
            margin-top:-50px;
            /* background-color: black; */
            font-size: 18px;
            font-family: 仿宋，hairline serif;
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
            <li class="context2"><a href="contact/contactAdd.jsp">合同添加</a> </li>
            <li class="context2"><a href="contact/contactDelete.jsp">合同删除</a></li>

        </ul>
        <ul class="list3">
            <li class="context3"><a href="/com_infos_war/SelectCsServlet"> 售后查询</a></li>
            <li class="context3"><a href="cs/csAdd.jsp"> 售后添加</a></li>
            <li class="context3"><a href="cs/lookUpdateCs.jsp"> 售后修改</a></li>
            <li class="context3"><a href="/com_infos_war/LookDeleteCsServlet">售后删除</a> </li>
        </ul>
        <ul class="list4">
            <li class="context4"><a href="/com_infos_war/SelectproductServlet">产品查询</a> </li>
            <li class="context4"><a href="product/productAdd.jsp">产品添加</a> </li>
            <li class="context4"><a href="product/productlookUpdate.jsp">产品修改</a></li>
            <li class="context4"><a href="/com_infos_war/lookDelectproductServlet">产品删除</a></li>
        </ul>
        <ul class="list5">
            <li class="context5">
                <a href="/com_infos_war/SelectStaffServlet">员工查询</a> </li>
            <li class="context5">
                <a href="staff/staffAdd.jsp">员工添加</a> </li>
            <li class="context5">
                <a href="staff/lookUpdate.jsp">员工修改</a> </li>
            <li class="context5">
                <a href="/com_infos_war/LookDeleteStaffServlet">员工删除</a></li>
        </ul>
        <ul class="list6">
            <li class="context6">
                <a href="/com_infos_war/SelectAdminServlet">个人查询</a></li>
            <li class="context6">
                <a href="/com_infos_war/LookUpdateAdminServlet">个人修改</a></li>
        </ul>
    </ul>
</nav>

<div class="header">
    <div class="navhou">
        <div class="navqian">
            <h1>企业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                信息管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                系统<br>
                ENTERPRISE<br>MESSAGE<br>SYSTEM
            </h1>
        </div>
    </div>
</div>









<div class="lefthou">
    <div class="leftqian">
        <h1>责任+<br>LIABILITY</h1>
    </div>
</div>
<div class="righthou">
    <div class="rightqian">
        <h1>专业+<br>PROFESSIONAL</h1>
    </div>
</div>
<div class="code">we</div>
<div class="zhonghou">
    <div class="zhongqian">
        <p><img src="image/navig4.png" alt="图片"></p>
        <h1>我不知道将去往何方，但我已在路上</h1><br>
        <h2>I don't konw where to go,but I have been on the road<br><br>
            ----宫崎骏
        </h2>
    </div>
</div>
<div class="xiahou">
    <div class="xiaqian">
        <h1>不悔梦归处，只恨太匆匆</h1><br>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---绿川幸</h2>
    </div>
</div>
<div class="footerhou">
    <div class="footerqian">
        <h6>成员：<br>
            韩&nbsp;&nbsp;淑&nbsp;&nbsp;媛<br>
            孙&nbsp;&nbsp;湄&nbsp;&nbsp;琪<br>
            木&nbsp;&nbsp;妮&nbsp;&nbsp;娜<br>
            黄&nbsp;&nbsp;雅&nbsp;&nbsp;莹<br>
            田&nbsp;&nbsp;娥<br>
        </h6>
        <h1>Contant US<br>
            QQ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;953890011</h1>
        <h5>企业信息管理系统<br>
            ENTERPRISE<br>
            INFORMATION
            MANAGE
            System<br>
        </h5>
        <h4>系统改进意见<br>
            请发送邮箱至：<br>
            953890093@QQ.com<br>
        </h4>
        <h3>@copyright &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            若有疑问请咨询email:sunemiqi@tom.com</h3>
    </div>
</div>
</body>
</html>