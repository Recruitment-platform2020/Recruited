<%-- 
    Document   : 简历
    Created on : 2010-11-1, 13:20:10
    Author     : xyq
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            //横排导航栏
            $('#adminTab a').click(function (e) {
                e.preventDefault();
                $('#adminTab a[href="#hr"]').tab('show');
            });

            //竖排导航栏1：招聘管理
            $('#adminTab1 a').click(function (e) {
                e.preventDefault();
                $('#adminTab1 a:first').tab('show');
            });

            //竖排导航栏2：用户管理
            $('#adminTab2 a').click(function (e) {
                e.preventDefault();
                $('#adminTab2 a:first').tab('show');
            });

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
                    span_pwd.innerHTML = "格式正确";
                }

            }

            function Password2() {
                //确认密码
                var pwd = document.getElementById("Password").value;
                var pwd2 = document.getElementById("rePassword").value;
                if (pwd !== pwd2) {
                    span_pwd2.innerHTML = "两次输入不一致";
                } else {
                    span_pwd2.innerHTML = "输入正确";
                }

            }

            $(document).ready(function () {
                $("#aa").click(function () {
                    $.ajax({
                        url: "resume/getResume",
                        type: "GET",
                        data: {"uname": "${uname}"},
                        success: function (user) {
                            $("#uname").html(user.uname);
                            $("#pgender").html(user.pgender);
                            $("#pbirth").html(user.pbirth);
                            $("#pemail").html(user.pemail);
                            $("#location").html(user.location);
                            $("#marriage").html(user.marriage);
                            $("#education").html(user.education);
                            $("#school").html(user.school);
                            $("#majora").html(user.majora);
                            $("#majorb").html(user.majorb);
                            $("#honor").html(user.honor);
                            $("#workyear").html(user.workyear);
                            $("#advantage").html(user.advantage);
                            $("#skillcertificates").html(user.skillcertificates);
                            $("#jobinten").html(user.jobinten);
                            $("#other").html(user.other);
                        },
                        error: function () {
                            alert("Ajax请求失败！");
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
                        <li class="active"><a href="#hr" data-toggle="tab">个人简历管理</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>欢迎您,${name}</a>
                        </li>
                        <li><a href="logout">登出</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div id="adminTabContent" class="tab-content">
            <div class="tab-pane fade in active" id="hr">
                <div class="container-fluid">
                    <div class="row">
                        <!--                        <div id="adminTab1" class="col-sm-2">
                                                    <a href="#hr1" data-toggle="tab" class="list-group-item active" style="background-color: #00b38a; border-color: #00b38a;" id="aa">
                                                        <span class="glyphicon glyphicon-home">    
                                                        </span>&nbsp;个人简历列表</a>
                                                </div>-->
                        <div class="container" style="width: 1518px;height: 1100px;">
                            <div class="blank"></div>
                            <form>
                                查看个人简历：<input type="text" name="uname" value="${name}" readonly=""/>
                                &nbsp;&nbsp;
                                <input type="submit" value="查询"/>
                            </form><br/>
                            <hr>     
                            <c:forEach items="${resume}" var="p" varStatus="vs" >
                                <div class="resume" style="width: 700px;height: 800px;margin: 0 auto;border: 1px solid rgb(230,230,230)">
                                    <div class="basic" style="background-color: white;">
                                        <h4 style="width: 600px;height: 50px;margin-left: 20px;line-height: 50px;font-weight: 600">基本信息</h4>
                                        <div class="basic-information" style="width: 580px;height: 200px;margin: 20px auto;">
                                            <div class="left" style="width: 180px;height: 200px;float: left" >
                                                <p style="width: 180px;height: 21px;line-height: 21px;">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名:&nbsp;&nbsp;<span id="uname">${p.uname}</span></p>
                                                <p style="width: 180px;height: 21px;line-height: 21px;">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:&nbsp;&nbsp;<span id="uname">${p.pgender}</span></p>
                                                <p style="width: 180px;height: 21px;line-height: 21px;">婚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;否:&nbsp;&nbsp;<span id="uname">${p.marriage}</span></p>
                                                <p style="width: 180px;height: 21px;line-height: 21px;">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址:&nbsp;&nbsp;<span id="uname">${p.location}</span></p>
                                                <p style="width: 180px;height: 21px;line-height: 21px;">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历:&nbsp;&nbsp;<span id="uname">${p.education}</span></p>
                                            </div>
                                            <div class="midst" style="width: 230px;height: 200px;float: left">
                                                <p style="width: 200px;height: 21px;line-height: 21px;">出生日期:&nbsp;&nbsp;<span id="uname">${p.pbirth}</span></p>
                                                <p style="width: 230px;height: 21px;line-height: 21px;">电子邮箱:&nbsp;&nbsp;<span id="uname">${p.pemail}</span></p>
                                                <p style="width: 200px;height: 21px;line-height: 21px;">毕业院校:&nbsp;&nbsp;<span id="uname">${p.school}</span></p>
                                                <p style="width: 200px;height: 21px;line-height: 21px;">毕业时间:&nbsp;&nbsp;<span id="uname">${p.uname}</span></p>
                                                <p style="width: 200px;height: 21px;line-height: 21px;">所学专业:&nbsp;&nbsp;<span id="uname">${p.majora}</span></p>
                                                <p style="width: 200px;height: 21px;line-height: 21px;">所修二专:&nbsp;&nbsp;<span id="uname">${p.majorb}</span></p>
                                            </div>
                                            <div class="right" style="width: 120px;height: 150px;float: right;">
                                                <img src="resources/images/${p.ppic}" alt="" width="120px" height="150px">
                                            </div>
                                        </div>
                                        <hr>
                                        <h4 style="width: 600px;height: 20px;margin-left: 20px;line-height: 20px;font-weight: 600">教育背景</h4>
                                        <div style="width: 580px;height: 100px;margin: 20px auto;">
                                            <p style="width: 500px;height: 21px;line-height: 21px;">大学所获得的荣誉奖项:&nbsp;&nbsp;<span id="uname">${p.honor}</span></p>
                                            <p style="width: 500px;height: 21px;line-height: 21px;">技能证书:&nbsp;&nbsp;<span id="uname">${p.skillcertificates}</span></p>
                                            <p style="width: 500px;height: 21px;line-height: 21px;">个人优势:&nbsp;&nbsp;<span id="uname">${p.advantage}</span></p>
                                        </div>
                                        <hr>
                                        <h4 style="width: 600px;height: 20px;margin-left: 20px;line-height: 20px;font-weight: 600">工作经历</h4>
                                        <div style="width: 580px;height: 120px;margin: 20px auto;">
                                            <p style="width: 500px;height: 21px;line-height: 21px;">工作年限:&nbsp;&nbsp;<span id="uname">${p.workyear}</span></p>
                                            <p style="width: 500px;height: 21px;line-height: 21px;">工作经验:&nbsp;&nbsp;<span id="uname">${p.workdetail}</span></p>
                                            <p style="width: 500px;height: 21px;line-height: 21px;">薪资要求:&nbsp;&nbsp;<span id="uname">${p.salary}</span></p>
                                            <p style="width: 500px;height: 21px;line-height: 21px;">工作意向:&nbsp;&nbsp;<span id="uname">${p.jobinten}</span></p>
                                        </div>
                                        <hr>
                                        <h4 style="width: 600px;height: 50px;margin-left: 20px;line-height: 50px;font-weight: 600">补充信息:</h4>
                                        <p style="width: 500px;height: 21px;line-height: 21px;margin-left: 50px">&nbsp;&nbsp;<span id="uname">${p.other}</span></p>
                                    </div>
                                </div>
                                    <hr/>
                            </c:forEach>
                        </div>

                    </div>
                </div>
            </div>

        </div>  
    </div>
</body>
</html>
