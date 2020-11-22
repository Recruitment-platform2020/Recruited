<%-- 
    Document   : 简历
    Author     : 吕少琳
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin</title>
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <script src="resources/js/jquery-3.2.1.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script>
//            //横排导航栏
//            $('#adminTab a').click(function (e) {
//                e.preventDefault();
//                $('#adminTab a[href="#hr"]').tab('show');
//            });
//
//            //竖排导航栏1：招聘管理
//            $('#adminTab1 a').click(function (e) {
//                e.preventDefault();
//                $('#adminTab1 a:first').tab('show');
//            });
//
//            //竖排导航栏2：用户管理
//            $('#adminTab2 a').click(function (e) {
//                e.preventDefault();
//                $('#adminTab2 a:first').tab('show');
//            });

            function checkID() {
                var userID = document.getElementById("userID").value;
                var userReg = /^[0-9a-zA-Z]{1,16}$/;
                if (!userReg.test(userID)) {
                    span_ID.innerHTML = "请输入字母、数字或者其组合"; //输入不合法，则显示提示信息
                    return false;
                } else {
                    span_ID.innerHTML = "格式正确"; //验证通过后提示
                    return true;
                }

            }

            function Email() {
                //邮箱验证
                var pemail = document.getElementById("pemail").value;
                var emailReg = /^[\w\d]{1,12}@[\w\d]{1,9}\.[\w]{2,3}$/;
                if (!emailReg.test(pemail)) {
                    span_pemail.innerHTML = "错误！正确示例：Noah@qdu.com";
                    return false;
                } else {
                    span_pemail.innerHTML = "";
                    return true;
                }

            }

            function Password() {
                //密码
                var pwd = document.getElementById("Password").value;
                var pwdReg = /^[\d\w]{6,12}$/;
                if (!pwdReg.test(pwd)) {
                    span_pwd.innerHTML = "请输入6~12以内数字、字母或组合密码";
                } else {
                    span_pwd.innerHTML = "密码格式输入正确";
                }

            }

            function Password2() {
                //确认密码
                var pwd = document.getElementById("Password").value;
                var pwd2 = document.getElementById("rePassword").value;
                if (pwd !== pwd2) {
                    span_pwd2.innerHTML = "前后密码输入不一致";
                } else {
                    span_pwd2.innerHTML = "密码输入正确";
                }

            }
            
            function deleteRecruiter(rname){
                $.ajax({
                    url:"recruiter/delete",
                    type:"GET",
                    data:{"rname":rname},//发送学号给服务器删除学生
                    success:function(){
                        //服务器删除学生的同时从表格删除当前行
                        //需要在打印tr的时候给每个tr一个id用于区分当前元素和其内容
                        $("#tr"+rname).remove();
                    },
                    error:function(){
                        alert("Ajax请求失败！");
                    }
                });
            }
            
            function deleteJob(jid){
                $.ajax({
                    url:"job/delete",
                    type:"GET",
                    data:{"id":jid},//发送学号给服务器删除学生
                    success:function(){
                        //服务器删除学生的同时从表格删除当前行
                        //需要在打印tr的时候给每个tr一个id用于区分当前元素和其内容
                        $("#tr"+jid).remove();
                    },
                    error:function(){
                        alert("Ajax请求失败！");
                    }
                });
            }
            
            function deleteUser(uname){
                $.ajax({
                    url:"users/delete",
                    type:"GET",
                    data:{"uname":uname},//发送学号给服务器删除学生
                    success:function(){
                        //服务器删除学生的同时从表格删除当前行
                        //需要在打印tr的时候给每个tr一个id用于区分当前元素和其内容
                        $("#tr"+uname).remove();
                    },
                    error:function(){
                        alert("Ajax请求失败！");
                    }
                });
            }
            
            function updateRecruiter(rname){
                $.ajax({
                    url:"recruiter/update",
                    type:"GET",
                    data:{"rname":rname},//发送学号给服务器删除学生
                    success:function(){
                        //服务器删除学生的同时从表格删除当前行
                        //需要在打印tr的时候给每个tr一个id用于区分当前元素和其内容
//                        $("#tr"+rname).remove();
                    },
                    error:function(){
                        alert("Ajax请求失败！");
                    }
                });
            }
            
            function updateUser(uname){
                $.ajax({
                    url:"users/toupdate",
                    type:"GET",
                    data:{"uname":uname},//发送学号给服务器删除学生
                    success:function(data){
                        
                    },
                    error:function(){
                        alert("Ajax请求失败！");
                    }
                });
            }
            
            
            $(document).ready(function () {
                $("#aa").click(function () {
                    $.ajax({
                        url: "recruiter/showAllRecruiter",
                        type: "GET",
                        success: function (list) {  
                            $(".moduletable1").remove();
                            $.each(list, function (index, r) {

                                var str = "<tr class='moduletable1' id='tr"+r.rname+"'>" 
                                        +"<td>" +r.rname+"</td>"
                                        +"<td>" +r.rtel+"</td>"
                                        +"<td>" +r.remail+"</td>" 
                                        + "<td>" + r.fname + "</td>"
                                        +"<td>"+ r.rgender + "</td>"
                                        +"<td>" + r.rposition+ "</td>"
                                        +"<td><a href=\"javascript:updateRecruiter('"+r.rname+"');\">"+r.rstatus+"</a></td>"
                                        +"<td><a href=\"javascript:deleteRecruiter('"+r.rname+"');\">删除</a></td></tr>";
                                $("#moduletable1").append(str);
                            });
                        },
                        error: function (request, status, error) {
                            alert("Ajax请求失败！" + error);
                        }
                    });
                });
            });
            
            $(document).ready(function () {
                $("#ee").click(function () {
                    $.ajax({
                        url: "job/getAllJob",
                        type: "GET",
                        success: function (list) {  //服务器返回一个列表
                            //ajax提供append函数向选中的元素里面追加内容
                            $(".moduletable2").remove();//清空表格中的内容
//                            $("#moduletable2").append("<tr><th>学号</th><th>姓名</th><th>性别</th><th>操作</th></tr>");
//                            ajax提供each函数用于遍历集合中的元素
                            //each可提供两个参数
                            //1.表示要遍历的集合
                            //2.一个函数,表示要对集合中的每个元素执行的操作
                            //1)第一个参数表示当前遍历的元素的索引
                            //2)第二个参数表示当前的对象
                            $.each(list, function (index, j) {

                                var str = "<tr class='moduletable2' id='tr"+j.jid+"'>" 
                                        +"<td>" +j.jname+"</td>"
                                        +"<td>" +j.jtype+"</td>" 
                                        + "<td>" + j.rname + "</td>"
                                        +"<td>"+ j.jnumber + "</td>"
                                        +"<td>" + j.jedu+ "</td>"
                                        +"<td><a href=\"javascript:deleteJob('"+j.jid+"');\">删除</a></td></tr>";
                                $("#moduletable2").append(str);
                            });
                        },
                        error: function (request, status, error) {
                            alert("Ajax请求失败！" + error);
                        }
                    });
                });
            });
            
            $(document).ready(function () {
                $("#uu").click(function () {
                    $.ajax({
                        url: "users/getall",
                        type: "GET",
                        success: function (list) {  //服务器返回一个列表
                            //ajax提供append函数向选中的元素里面追加内容
                            $(".moduletable3").remove();//清空表格中的内容
//                            $("#moduletable2").append("<tr><th>学号</th><th>姓名</th><th>性别</th><th>操作</th></tr>");
//                            ajax提供each函数用于遍历集合中的元素
                            //each可提供两个参数
                            //1.表示要遍历的集合
                            //2.一个函数,表示要对集合中的每个元素执行的操作
                            //1)第一个参数表示当前遍历的元素的索引
                            //2)第二个参数表示当前的对象
                            $.each(list, function (index, user) {

                                var str = "<tr class='moduletable3' id='tr"+user.uname+"'>" 
                                        +"<td>" +user.uname+"</td>"
                                        +"<td>" +user.utel+"</td>" 
                                        + "<td>" +user.uemail + "</td>"
                                        +"<td>"+ user.ubirth + "</td>"
                                        +"<td>" +user.ugender +"</td>"
                                        +"<td>" +user.upwd+"</td>"
//                                        +"<td><a href=\"javascript:updateUser('"+user.uname+"');\">更新</a></td>"
                                        +"<td><a href=\"javascript:deleteUser('"+user.uname+"');\">删除</a></td></tr>";
                                $("#moduletable3").append(str);
                            });
                        },
                        
                        error: function (request, status, error) {
                            alert("Ajax请求失败！" + error);
                        }
                    });
                });
            });
    
            
            $(document).ready(function () {
                $("#searchuser").click(function () {
                    $.ajax({
                        url: "users/getbyname",
                        type: "GET",
                        data: {"uname": $("#search1").val()},
                        success: function (list) { 
                            $(".moduletable3").remove();
                            $.each(list, function (index, user) {

                                var str = "<tr class='moduletable3' id='tr"+user.uname+"'>" 
                                        +"<td>" +user.uname+"</td>"
                                        +"<td>" +user.utel+"</td>" 
                                        + "<td>" +user.uemail + "</td>"
                                        +"<td>"+ user.ubirth + "</td>"
                                        +"<td>" +user.ugender +"</td>"
                                        +"<td>" +user.upwd+"</td>"
                                        +"<td><a href=\"javascript:deleteUser('"+user.uname+"');\">删除</a></td></tr>";
                                $("#moduletable3").append(str);
                            });
                        },
                        error: function (request, status, error) {
                            alert("Ajax请求失败！" + error);
                        }
                    });
                });
            });
            
            $(document).ready(function () {
                $("#searchuser").click(function () {
                    $.ajax({
                        url: "users/getbytel",
                        type: "GET",
                        data: {"utel": $("#search1").val()},
                        success: function (list) { 
                            $(".moduletable3").remove();
                            $.each(list, function (index, user) {

                                var str = "<tr class='moduletable3' id='tr"+user.uname+"'>" 
                                        +"<td>" +user.uname+"</td>"
                                        +"<td>" +user.utel+"</td>" 
                                        + "<td>" +user.uemail + "</td>"
                                        +"<td>"+ user.ubirth + "</td>"
                                        +"<td>" +user.ugender +"</td>"
                                        +"<td>" +user.upwd+"</td>"
                                        +"<td><a href=\"javascript:deleteUser('"+user.uname+"');\">删除</a></td></tr>";
                                $("#moduletable3").append(str);
                            });
                        },
                        error: function (request, status, error) {
                            alert("Ajax请求失败！" + error);
                        }
                    });
                });
            });
            
            $(document).ready(function () {
                $("#searchuser").click(function () {
                    $.ajax({
                        url: "users/getbyemail",
                        type: "GET",
                        data: {"uemail": $("#search1").val()},
                        success: function (list) { 
                            $(".moduletable3").remove();
                            $.each(list, function (index, user) {

                                var str = "<tr class='moduletable3' id='tr"+user.uname+"'>" 
                                        +"<td>" +user.uname+"</td>"
                                        +"<td>" +user.utel+"</td>" 
                                        + "<td>" +user.uemail + "</td>"
                                        +"<td>"+ user.ubirth + "</td>"
                                        +"<td>" +user.ugender +"</td>"
                                        +"<td>" +user.upwd+"</td>"
                                        +"<td><a href=\"javascript:deleteUser('"+user.uname+"');\">删除</a></td></tr>";
                                $("#moduletable3").append(str);
                            });
                        },
                        error: function (request, status, error) {
                            alert("Ajax请求失败！" + error);
                        }
                    });
                });
            });
            
            $(document).ready(function () {
                $("#searchuser").click(function () {
                    $.ajax({
                        url: "users/getbygender",
                        type: "GET",
                        data: {"ugender": $("#search1").val()},
                        success: function (list) { 
                            $(".moduletable3").remove();
                            $.each(list, function (index, user) {

                                var str = "<tr class='moduletable3' id='tr"+user.uname+"'>" 
                                        +"<td>" +user.uname+"</td>"
                                        +"<td>" +user.utel+"</td>" 
                                        + "<td>" +user.uemail + "</td>"
                                        +"<td>"+ user.ubirth + "</td>"
                                        +"<td>" +user.ugender +"</td>"
                                        +"<td>" +user.upwd+"</td>"
                                        +"<td><a href=\"javascript:deleteUser('"+user.uname+"');\">删除</a></td></tr>";
                                $("#moduletable3").append(str);
                            });
                        },
                        error: function (request, status, error) {
                            alert("Ajax请求失败！" + error);
                        }
                    });
                });
            });
            
             $(document).ready(function () {
                $("#searchrecruiter").click(function () {
                    $.ajax({
                        url: "recruiter/getbyname",
                        type: "GET",
                        data: {"rname": $("#search2").val()},
                        success: function (list) {  
                            $(".moduletable1").remove();
                            $.each(list, function (index, r) {
                                var str = "<tr class='moduletable1' id='tr"+r.rname+"'>" 
                                        +"<td>" +r.rname+"</td>"
                                        +"<td>" +r.rtel+"</td>"
                                        +"<td>" +r.remail+"</td>" 
                                        +"<td>" + r.fname + "</td>"
                                        +"<td>"+ r.rgender + "</td>"
                                        +"<td>" + r.rposition+ "</td>"
                                        +"<td><a href=\"javascript:updateRecruiter('"+r.rname+"');\">"+r.rstatus+"</a></td>"
                                        +"<td><a href=\"javascript:deleteRecruiter('"+r.rname+"');\">删除</a></td></tr>";
                                $("#moduletable1").append(str);
                            });
                        },
                        error: function (request, status, error) {
                            alert("Ajax请求失败！" + error);
                        }
                    });
                });
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

            .img1{
                max-width: 65px;
                height: auto;
                display: block;
            }

            .img2 {
                position: relative;
                top: -5px;
            }

            .img3{
                max-width: 75px;
                height: auto;
                display: block;
            }

            th{
                text-align: center;
            }
            
            /*            .green{
                            z-index: 2;
                            color: #fff;
                            background-color: #337ab7;
                            border-color: #337ab7;
                        }*/

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
                    <ul id="adminTab" class="nav navbar-nav">
                        <li class="active"><a href="#hr" data-toggle="tab">招聘人员管理</a>
                        </li>
                        <li><a href="#user" data-toggle="tab">用户管理</a>
                        </li>
                        <li><a href="#work" data-toggle="tab" id="ee">招聘信息管理</a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>欢迎您,${name}</a>
                        </li>
                        <li><a href="manager/toregister">注册管理员</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div id="adminTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="hr">
                <div class="container-fluid">
                    <div class="row">
                        <div id="adminTab1" class="col-sm-2">
                            <a href="#hr1" id="aa" data-toggle="tab" class="list-group-item active" style="background-color: #00b38a; border-color: #00b38a;">
                                <span class="glyphicon glyphicon-home">    
                                </span>&nbsp;招聘人员列表</a>
<!--                            <a href="#hr2" id="bb" data-toggle="tab" class="list-group-item">
                                <span class="glyphicon glyphicon-plus" aria-hidden="true">
                                </span>&nbsp;申请列表</a>-->
                        </div>
                        <div id="adminTabContent1" class="col-sm-8 tab-content">
                            <div class="tab-pane fade in active" id="hr1">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        搜索栏
                                    </div>
                                    <div class="panel-body">
                                        <form role="form" class="form-inline">
                                            <div class="form-group">
                                                <label for="name">关键词</label>
                                                <input type="text" class="form-control" id="search2" name="name" placeholder="请输入名称">
                                            </div>
                                            <!--                                        <div class="form-group">
                                                                                        <label for="name">范围</label>
                                                                                        <select class="form-control">
                                                                                            <option>全部</option>
                                            
                                                                                        </select>
                                                                                    </div>-->
                                            <div class="form-group">
                                                <input id="searchrecruiter" type="button" class="btn btn-default" value="搜索">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-hover table-striped text-center" id="moduletable1">
                                        <tr>
                                            <th>姓名</th>
                                            <th>电话号码</th>
                                            <th>Email</th>
                                            <th>所属公司</th>
                                            <th>性别</th>
                                            <th>职务</th>
                                            <th>审核状态</th>
                                            <th>操作</th>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="hr2">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        申请人
                                    </div>
                                    <div class="panel-body">

                                        <table class="table table-hover table-bordered text-center" id="moduletable">
                                            <tr>
                                                <th>编号</th>
                                                <th>类型</th>
                                                <th>品牌</th>
                                                <th>型号</th>
                                                <th>详情</th>
                                                <th>价格</th>
                                                <th>操作</th>
                                            </tr>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="panel panel-default ">
                                <div class="panel-heading">
                                    <h3 class="panel-title">管理员</h3>
                                </div>
                                <div class="panel-body">
                                    <img src="resources/images/default_boy_headpic1.png" class="img1 center-block" alt="用户头像" class="img-circle">
                                    <br/>
                                    <div class="text-center">${name}</div>
                                    <br/>
                                    <div class="text-center">${email}</div>
                                    <br/>
                                    <img src="resources/images/QR.png" class="img3 img-rounded center-block">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="tab-pane fade" id="user">
                <div class="container-fluid">
                    <div class="row">
                        <div id="adminTab2" class="col-sm-2">
                            <a href="#first" id="uu" data-toggle="tab" class="list-group-item active" style="background-color: #00b38a; border-color: #00b38a;">
                                <span class="glyphicon glyphicon-home">    
                                </span>&nbsp;用户列表</a>

                        </div>

                        <div id="adminTabContent2" class="col-sm-8 tab-content">
                            <div class="tab-pane fade in active" id="first">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        搜索栏
                                    </div>
                                    <div class="panel-body">
                                        <form role="form" id="getone" class="form-inline" action="">
                                            <!--<form role="form" id="getone" class="form-inline" action="users/getuserbyname">-->
                                            <div class="form-group">
                                                <label for="search">关键词</label>
                                                <input type="text" class="form-control" id="search1" name="name" placeholder="请输入名称">
                                            </div>
                                            
                                            <div class="form-group">
                                                <input id="searchuser" type="button" class="btn btn-default" value="搜索">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-hover table-striped text-center" id="moduletable3">
                                        <tr>
                                            <th>用户名</th>
                                            <th>电话</th>
                                            <th>邮箱</th>
                                            <th>出生日期</th>
                                            <th>性别</th>
                                            <th>密码</th>
                                            <th>删除</th>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="last">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        &nbsp;
                                    </div>
                                    <div class="panel-body">
                                        <form class="form-horizontal" method="post" style="width: 270px;margin:0px auto;" action="#">
                                            <div class="form-group">
                                                <label for="inputAdmin" class="col-sm-10">管理员账号：</label>
                                                <div class="col-sm-10">
                                                    <input type="text" class="form-control" name="inputAdmin" id="inputAdmin" placeholder="AdminID">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail" class="col-sm-10">管理员邮箱：</label>
                                                <div class="col-sm-10">
                                                    <input type="email" class="form-control" name="pemail" id="pemail" placeholder="Email" onblur="Email()">
                                                    <span id="span_pemail"></span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="inputPassword" class="col-sm-10">密码：</label>
                                                <div class="col-sm-10">
                                                    <input type="password" class="form-control" id="Password"  placeholder="Password" onblur="Password()">
                                                    <span id="span_pwd"></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="rePassword" class="col-sm-10">确认密码：</label>
                                                <div class="col-sm-10">
                                                    <input type="password" class="form-control" id="rePassword" name="rePassword" placeholder="rePassword" onblur="Password2()">
                                                    <span id="span_pwd2"></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="oops"></div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-offset-2 col-sm-10">
                                                    <button type="submit" class="btn btn-default">创建账号</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="panel panel-default ">
                                <div class="panel-heading">
                                    <h3 class="panel-title">管理员</h3>
                                </div>
                                <div class="panel-body">
                                    <img src="resources/images/default_boy_headpic1.png" class="img1 center-block" alt="用户头像" class="img-circle">
                                    <br/>
                                    <div class="text-center">${name}</div>
                                    <br/>
                                    <div class="text-center">${email}</div>
                                    <br/>
                                    <img src="resources/images/QR.png" class="img3 img-rounded center-block">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="work">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-2">
                            <a href="#" id="ee" class="list-group-item active" style="background-color: #00b38a; border-color: #00b38a;">
                                <span class="glyphicon glyphicon-home">    
                                </span>&nbsp;工作列表</a>
                        </div>
                        <div class="col-sm-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    招聘信息
                                </div>
                                <div class="panel-body">
                                    <table class="table table-hover table-bordered text-center" id="moduletable2">
                                        <tr>
                                            <th>职位名称</th>
                                            <th>类型</th>
                                            <th>招聘人</th>
                                            <th>人数</th>
                                            <th>学历要求</th>
                                            <th>操作</th>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="panel panel-default ">
                                <div class="panel-heading">
                                    <h3 class="panel-title">管理员</h3>
                                </div>
                                <div class="panel-body">
                                    <img src="resources/images/default_boy_headpic1.png" class="img1 center-block" alt="用户头像" class="img-circle">
                                    <br/>
                                    <div class="text-center">${name}</div>
                                    <br/>
                                    <div class="text-center">${email}</div>
                                    <br/>
                                    <img src="resources/images/QR.png" class="img3 img-rounded center-block">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>  
    </div>

    <footer class="footer">
        <br/>
        <p class="text-muted text-center">2019 &copy; Noah.</p>
        <br/>
    </footer>
</body>
</html>
