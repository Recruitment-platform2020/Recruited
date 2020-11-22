<%-- 
    Document   : 修改用户信息
    Author     : 吕少琳
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改用户信息</title>

        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/jquery-labelauty.css">

        <script src="resources/js/jquery-3.2.1.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/jquery-labelauty.js"></script>

        <script>
            $(function () {
                $(':input').labelauty();
            });

        </script>

        <style>
            * {
                -webkit-border-radius: 0 !important;
                -moz-border-radius: 0 !important;
                border-radius: 0 !important;
            }

            .navbar-inverse{
                background-color: #32373e;
                border-color: #24282c;
            }

            .container{
                display:table;
                height:100%;
            }

            .row{
                display: table-cell;
                vertical-align: middle;
            }

            .row-centered {
                text-align:center;
            }

            .col-centered {
                display:inline-block;
                float:none;
                text-align:left;
                margin-right:-4px;
            }

            .img2 {
                position: relative;
                top: -3px;
            }

            ul { list-style-type: none;}
            li { display: inline-block;}
            li { margin: 3px 20px;}
            input.labelauty + label { font: 12px "Microsoft Yahei";}

        </style>

    </head>
    <body>
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
                        <span class="sr-only">切换导航</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="resources/images/Logo.png" class="img2" height="150%" />
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="example-navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="javascript:history.go(-1)">返回</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row row-centered">
                <div class="well col-md-6 col-centered">
                    <h3>修改用户信息：</h3>
                    <br/>
                    <form action="user/update" method="post">
                        <p><strong>用户名：</strong><input type="text" class="form-control" name="uname" id="Uname" value="${user.uname}"></p>
                        <br/>
                        <p><strong>手机号：</strong><input type="number" class="form-control" name="utel" id="Utel" value="${user.utel}"></p>
                        <br/>
                        <p><strong>Email：</strong><input type="email" class="form-control" name="uemail" id="Uemail" value="${user.uemail}"></p>
                        <br/>
                        <p><strong>出生日期：</strong><input type="date" class="form-control" name="ubirth" id="Ubirth" value="${user.ubirth}"></p>
                        <br/>
                        <!--<p><strong>性别：</strong><input type="" class="form-control" name="" id="" value=""></p>-->
                        <ul class="dowebok">
                            <li><input type="radio" name="ugender" value="男" data-labelauty="男" value="${user.ugender}"></li>
                            <li><input type="radio" name="ugender" value="女" data-labelauty="女" value="${user.ugender}"></li>
                        </ul>
                        <br/>
                        <p><strong>用户密码：</strong><input type="password" class="form-control" name="upwd" id="Upwd" value="${user.upwd}"></p>
                        <br/>
                        <div align="left" style="float:left">
                            <input type="reset" value="重置" class="btn btn-danger"/>
                        </div>
                        <div align="right">
                        <input type="hidden" name="" value=""/>
                        <input type="submit" value="提交修改" class="btn btn-success"/>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </body>
</html>
