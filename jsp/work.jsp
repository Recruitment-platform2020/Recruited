<%-- 
    Document   : work
    Created on : 2020-11-1, 13:59:09
    Author     : 李文昊
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>招聘工作详情-拉勾网</title>
        <style type="text/css">
            *{
                margin: 0;
                padding: 0;
            }
            li{
                list-style: none;
            }
            .main{
                width: 1518px;
                height: 1300px;

            }
            .main .main-logo{
                width: 1518px;
                height: 80px;
                margin: 0 auto;
                /*background: url(images/logo.jpg) no-repeat center;*/
            }
            .main .main-top{
                width: 1518px;
                height: 40px;
                background-color: rgb(50,55,62);
            }
            .main .main-top .top-all{
                width: 1201px;
                height: 40px;
                margin: 0 auto;
            }
            .main .main-top .top-all .top-all-left{
                width: 600px;
                height: 40px;
                float: left;
            }
            .main .main-top .top-all .top-all-left .lagou{
                width: 67px;
                height: 40px;
                color: rgb(1,176,136);
                line-height: 40px;
                font-weight: 530;
                font-size: 23px;
                float: left;
            }
            .main .main-top .top-all .top-all-left ul{
                width: 633px;
                height: 40px;
                line-height: 40px;
            }
            .main .main-top .top-all .top-all-left ul li{
                width: 70px;
                height: 40px;
                list-style: none;
                float: left;
                color: rgb(175,181,192);
                text-align: center;
            }
            .main .main-top .top-all .top-all-left ul li span{
                color: rgb(1,176,136);
                font-size: 14px;
                font-weight: 400;
                margin-left: 10px;
            }
            .main .main-top .top-all .top-all-left ul li em{
                margin-left: 8px;
                font-style: normal;
                font-size: 11px;
            }
            .main .main-top .top-all .top-all-left ul li em:hover{
                cursor: pointer;
                color: white;
            }
            .main .main-top .top-all .top-all-left ul li a{
                color: rgb(175,181,192);
                text-decoration: none;
                font-size: 14px;
            }
            .main .main-top .top-all .top-all-left ul li a:hover{
                cursor: pointer;
                color: white;
            }
            .main .main-top .top-all .top-all-right{
                width: 500px;
                height: 40px;
                float: right;
                margin-left: 15px;
            }
            .main .main-top .top-all .top-all-right ul{
                width: 500px;
                height: 40px;
                line-height: 40px;
            }
            .main .main-top .top-all .top-all-right ul li{
                float: left;
                width: 56px;
                height: 40px;
                color: rgb(175,181,192);
                text-align: center;
                font-size: 14px;
            }
            .main .main-top .top-all .top-all-right ul .length{
                width: 79px;
            }
            .main .main-top .top-all .top-all-right ul li a{
                color: rgb(175,181,192);
                text-decoration: none;
                font-size: 14px;
            }
            .main .main-top .top-all .top-all-right ul li a:hover{
                cursor: pointer;
                color: white;
            }
            .main .main-top .top-all .top-all-right ul li:hover{
                cursor: pointer;
                color: white;
            }

            .main .footer{
                width: 1518px;
                height: 334px;
            }
            .main .footer .footer-top{
                width: 1200px;
                height: 178px;
                margin: 60px auto;
            }
            .main .footer .footer-top .footer-column{
                width: 313px;
                height: 178px;
                border-right: 1px solid rgb(232,232,232);
                float: left;
            }
            .main .footer .footer-top .footer-column .column{
                width: 182px;
                height: 41px;   
                line-height: 41px;
                border: 1px solid rgb(0,179,138);
                text-align: center;
                color: rgb(0,179,138);
                margin-bottom: 15px;
                font-size: 14px;
            }
            .main .footer .footer-top .footer-column .column:hover{
                cursor: pointer;
                background-color: rgb(0,179,138);
                color: white;
            }
            .main .footer .footer-top .footer-column .footer-link a{
                text-decoration: none;
                color:rgb(85,85,85);
                font-size: 14px;
                width: 94px;
                display: block;
                float: left;
                text-align: center;
            }
            .main .footer .footer-top .footer-right{
                width: 757px;   
                height: 178px;
                float: left;
                padding-left: 120px;
            }
            .main .footer .footer-top .footer-right .module{
                width: 84px;
                height: 178px;
                float: left;
            }
            .main .footer .footer-top .footer-right .module1{
                width: 250px;
                height: 178px;
                float: left;
            }
            .main .footer .footer-top .footer-right .module-title{
                font-weight: 600;
                color: #555;
                margin-bottom: 30px;
                font-size: 18px;
            }
            .main .footer .footer-top .footer-right .module-content{
                color:rgb(85,85,85);
                font-size: 14px;
                height: 34px;
                width: 250px;
            }
            .main .footer .footer-bottom{
                width: 1518px;
                height: 100px;
                background-color: rgb(250,250,250);
                /*padding-top: 34px;*/
            }
            .main .footer .footer-bottom .blank{
                height: 25px;
            }
            .main .footer .footer-bottom .copyright{
                width: 1200px;
                height: 58px;;
                /*line-height: 58px;*/
                color: rgb(153,153,153);
                font-size: 14px;
                margin: 0 auto;
            }
            .main .footer .footer-bottom .copyright .copyright-left{
                width: 79
