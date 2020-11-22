<%-- 
    Document   : Admin
    Author     : 吕少琳
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <base href="${pageContext.request.contextPath}/">
        <title>管理员登陆</title>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/adminLogin.css"/>
        <script src="resources/js/jquery-3.2.1.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>

        <style>
            * {
                -webkit-border-radius: 0 !important;
                -moz-border-radius: 0 !important;
                border-radius: 0 !important;
            }

        </style>

    </head>
    <body>
        <form class="form-signin" action="manager/login" method="get">
            <h1 class="h3 mb-3 font-weight-normal" align="center" style="color: #000">后台管理登陆</h1>
            <label for="stuId">管理员</label>
            <input id="name" type="text" name="mname" class="form-control" value="武则天" required autofocus/>
            <br/>
            <label for="stuId">密码</label>
            <input id="pwd" type="password" name="mpwd" class="form-control" value="123456" required/>
            <div class="checkbox mb-3">
                <label for="oops">&nbsp;</label>
            </div>
            <input class="btn btn-lg btn-primary" style="float:right" type="submit" value="登录"/>
        </form>

    </body>
</html>
