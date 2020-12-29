<%@include file="../title.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>样式</title>
    <style type="text/css">
        .title1 {
            text-align: center;
            /* padding-top: 200px; */
            margin-top: 50px;;
            font-family: "楷体";
            color: rgb(168, 161, 146);
        }

        .biaodan {
            width: 900px;
            height: 600px;
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

        .biaodan .sure {
            margin-left: 35%;
            height: 30px;
            width: 50px;
            border-radius: 20%;
            color: black;
            background-color: rgb(139, 185, 236);
            font-size: 15px;
            font-family: "楷体";
        }

        .biaodan .reset {
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
<form action="/com_infos_war/lookUpdateproductServlet" method="post">
    <table align="center" width="500">
        <h1 class="title1">删除产品信息</h1>
        <div class="biaodan">
            <div class="lie1">
                <!-- <div class="fontlist2">客户名称</div> -->
                <input type="text" name="productName" placeholder="请输入需要修改的产品信息" />
            </div>
            <input name="sure" type="submit" value="确认" class="sure"> &nbsp;&nbsp;&nbsp;&nbsp;
            <input name="clear" type="reset" value="取消" class="reset">
        </div>
    </table>
</form>
</body>
</html>