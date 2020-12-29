<%--
  Created by IntelliJ IDEA.
  User: yingjiang
  Date: 2020/12/26
  Time: 23:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../title.jsp"%>
<html>
<head>
    <title>添加售后信息</title>
    <style type="text/css">
        .biaodan {
            width: 700px;
            height: 500px;
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
<form action="/com_infos_war/AddCsServlet" method="post">
    <table border="1" width="230">
        <div class="biaodan">

            <div class="lie1">
            <input type="text" name="clientName" placeholder="客户姓名">
            </div>
            <div class="lie1">
            <input type="text" name="clientOpinion" placeholder="客户意见">
            </div>
            <div class="lie1">
            <input type="text" name="staffName" placeholder="员工姓名">
            </div>
                <input name="sure" type="submit" value="确认" class="sure">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <input name="clear" type="reset" value="取消" class="reset">

        </div>
    </table>
</form>
</body>
</html>
