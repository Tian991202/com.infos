<%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/27
  Time: 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../title.jsp"%>
<html>
<head>
    <title>查看要修改的客户信息</title>
    <style type="text/css">
        .title1 {
            text-align: center;
            /* padding-top: 200px; */
            margin-top: 1px;;
            font-family: "楷体";
            color: rgb(168, 161, 146);
        }

        .biaodan {
            width: 600px;
            height: 400px;
            background: url(../image/formbg.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            opacity: 0.9;
            /* background-color: rgba(241, 151, 151, 0.4); */
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            border-radius: 10px;
            padding: 50px 0;
            box-sizing: border-box;
            /* 设置阴影 */
            box-shadow: 0 0 10px 10px rgba(0, 0, 0, 0.8);
            font-weight: bold;
        }

        .biaodan .lie1{
            width: 300px;
            height: 40px;
            color: black;
            margin: 40px auto;
            /* margin-right: 200px; */
            font-weight: bold;
        }

        .biaodan>div input {
            width: 100%;
            height: 30px;
            background: transparent;
            border: none;
            border-bottom: 2px solid rgb(223, 178, 121);
            color: black;
            font-weight: bold;
            /* outline: none; */
        }

        input::-moz-placeholder {
            color: black;
            font-size: 25px;
            font-family: "楷体";
            font-weight: bolder;
        }

        .sure {
            margin-left: 35%;
            height: 30px;
            width: 50px;
            border-radius: 20%;
            color: black;
            background-color: rgb(139, 185, 236);
            font-size: 15px;
            font-family: "楷体";
        }

        .reset {
            margin-left: 10%;
            height: 30px;
            width: 50px;
            border-radius: 20%;
            color: black;
            background-color: rgb(139, 185, 236);
            font-size: 15px;
            font-family: "楷体";
        }
    </style>
</head>
<body>
    <form action="/com_infos_war/LookUpdateServlet" method="post">
        <h1 class="title1">请输入要修改的客户信息的姓名：</h1>
        <div class="biaodan">
            <div class="lie1">
        <input type="text" name="clientName">
            </div>

            <input type="submit"  value="确定" class="sure">&nbsp;
            <input  type="button"  value="返回" class="reset">
        </div>
    </form>
</body>
</html>
