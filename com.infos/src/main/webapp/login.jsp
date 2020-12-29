<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/25
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>企业信息管理系统</title>
    <style type="text/css">
        *{
            margin:0px;
            padding:0px;
        }
        body{
            background: url(image/login.jpg);
            background-size: cover;
            background-repeat:no-repeat;
        }
        span{
            color:white;
            font-weight:bold;
        }
        .frame {
            width: 700px;
            height: 400px;
            background: rgba(0, 0, 0, 0.3);
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
            box-shadow: 0 0 10px 10px rgba(0, 0, 0, 0.6);
            font-weight:bold;
        }
        .title {
            text-align: center;
            color: white;
            font-size: 60px;
            font-weight:bolder;
            margin-top:5%;
            font-family: "仿宋";
            color: rgba(245, 231, 235, 0.781);
        }
        .frame .user {
            width: 300px;
            height: 20px;
            color: white;
            margin: 40px auto;
            font-weight:bold;
        }

        .frame .password {
            width: 300px;
            height: 20px;
            color: white;
            margin: 40px auto;
            padding-bottom: 40px;
        }

        .frame>div input {
            width: 100%;
            height: 30px;
            background: transparent;
            border: none;
            border-bottom: 1px solid white;
            color: white;
            font-weight:bold;
            /* outline: none; */
        }

        .frame .login {
            width: 80px;
            /* height: 50px; */
            border-radius: 50px;
            background-image: linear-gradient(to right, rgba(230, 126, 157, 0.2), rgb(190, 165, 165));
            text-align: center;
            padding: 15px;
            color: white;

            /* margin-top: 100px; */
            margin-left: -30%;
            /* padding-top: 20px; */
            cursor:pointer;
            font-weight:bold;
        }

        .frame .login a:hover {
            /* color: rgb(228, 18, 49); */
            cursor:pointer;
        }
    </style>
</head>
<body>
<div align="center">
    <div class="title">  企业信息管理系统</div>
    <form action="/com_infos_war/Loginservlet1" method="post">
        <div class="frame">
            <div class="user">
                <span>名字</span>
                <input type="text" name="adminName" placeholder="Number" />
            </div>

            <div class="password">
                <span>密码</span>
                <input type="password" name="adminPassword" placeholder="Username" />
            </div>
            <div class="login"><input name="" type="submit" value="登录" /></div>


        </div>
    </form>
</div>

</body>
</html>

