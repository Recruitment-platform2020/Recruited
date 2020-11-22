<%-- 
    Document   : search
    Created on : 2020-11-13, 10:49:22
    Author     : 李文昊
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>招聘求职信息-拉勾网</title>
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
                height: 2687px;

            }
            .main .container{
                width: 1518px;
                height: 2568px;
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
                width: 790px;
                height: 58px;
                float: left
            }
            .main .footer .footer-bottom .copyright .other{
                width: 500px;
                height: 58px;
                float: left;
            }
            .main .footer .footer-bottom .copyright .border{
                width: 207px;
                height: 58px;
                float: left;
                border: 1px solid rgb(213,218,223);
            }
            .main .footer .footer-bottom .copyright .border .word-left{
                float: left;
            }
            .main .footer .footer-bottom .copyright .word{
                width: 160px;
                height: 58px;
                float: right;
                font-size: 13px;
            }
            .main .footer .footer-bottom .copyright .copyright-right{
                float: right;
            }
            .main .footer .footer-bottom .copyright .copyright-right .blank{
                height:18px;
            }
            .main .search{
                width: 1518px;
                height: 173px;
                background-color: rgb(242,245,244);
            }
            .main .search .search-content{
                width: 950px;
                height: 66px;
                margin-left: 155px;
            }
            .main .search .search-content form{
                width: 990px;
                height: 46px;
                padding-top: 11px;
            }
            .main .search .search-content .text{
                width: 799px;
                height: 44px;
                font-size: 15px;
                border: 1px solid rgb(232,232,232);
                text-indent: 16px;
            }
            .main .search .search-content .submit{
                width: 150px;
                height: 47px;
                background-color: rgb(0,179,138);
                border: none;
                font-size: 17px;
                color: white;
                margin-left: -5px;
            }
            .main .search .search-hot{
                width: 500px;
                height: 20px;
                margin-left: 156px;
                font-size: 14px;
                color: rgb(153,153,153);
            }
            .main .search .search-hot ul li{
                list-style: none;
                float:left;
            }
            .main .search .position{
                width: 600px;
                height: 30px;
                padding-top: 30px;
            }
            .main .search .position .position-left{
                width: 116px;
                height: 30px;
                border-radius: 4px;
                color: white;
                background-color: rgb(0,179,138);
                cursor: pointer;
                text-align: center;
                line-height: 30px;
                float: left;
                margin-left: 156px;
            }
            .main .search .position .position-right{
                width: 116px;
                height: 30px;
                color: rgb(153,153,153);
                cursor: pointer;
                text-align: center;
                line-height: 30px;
                float: left;
            }
            .main .container .container-all{
                width: 1201px;
                height: 2687px;
                margin: 25px auto;
            }
            .main .container .container-all .container-left{
                width: 950px;
                height: 2600px;
                float: left;
            }
            .main .container .container-all .container-right{
                width: 210px;
                height: 411px;
                float: right;
                margin-right: 15px;
            }
            .main .container .container-all .container-right .img{
                margin-top: 10px;
            }
            .main .container .container-all .container-left .filterBox{
                width: 950px;
                height: 230px;
                background-color: rgb(250,250,250);
            }
            .main .container .container-all .container-left .filterBox .position-head{
                width: 948px;
                height: 40px;
                line-height: 40px;
            }
            .main .container .container-all .container-left .filterBox .head1{
                width: 948px;
                height: 36px;
                line-height: 36px;
            }
            .main .container .container-all .container-left .filterBox .position-head .position-title{
                width: 77px;
                height: 36px;
                font-weight: 600;
                font-size: 14px;
                float: left;
                margin-left: 24px;
            }
            .main .container .container-all .container-left .filterBox .position-head .aa{
                width: 44px;
                height: 24px;
                float: left;
                background-color: #fff;
                color: #555;
                font-size: 14px;
                border: 1px solid #ebebeb;
                margin-top: 7px;
                text-align: center;
                vertical-align: middle;
                line-height: 24px;
            }
            .main .container .container-all .container-left .filterBox .position-head .cc{
                width: 44px;
                height: 24px;
                float: left;
                background-color: rgb(0,179,138);
                color: white;
                font-size: 14px;
                border: 1px solid #ebebeb;
                margin-top: 7px;
                text-align: center;
                vertical-align: middle;
                line-height: 24px;
            }
            .main .container .container-all .container-left .filterBox .position-head .bb{
                width: 789px;
                height: 40px;
                line-height: 40px;
            }
            .main .container .container-all .container-left .filterBox .position-head .bb a{
                text-decoration: none;
                width: 44px;
                height: 24px;
                display: block;
                float: left;
                line-height: 24px;
                font-size: 14px;
                text-align: center;
                margin-left: 5px;
                margin-top: 7px;
                color: rgb(85,85,85);
                /*background-color: white;*/
            }
            .main .container .container-all .container-left .filterBox .position-head .bb a:hover{
                cursor: pointer;
                background-color: rgb(0,179,138);
                color: white;
            }
            .main .container .container-all .container-left .filterBox .position-head .dd{
                width: 789px;
                height: 36px;
                line-height: 36px;
                float: left;
            }
            .main .container .container-all .container-left .filterBox .position-head .dd a{
                text-decoration: none;
                width: 78px;
                height: 26px;
                display: block;
                float: left;
                line-height: 26px;
                font-size: 14px;
                text-align: center;
                margin-left: 5px;
                margin-top: 7px;
                color: rgb(85,85,85);
                /*background-color: white;*/
            }
            .main .container .container-all .container-left .filterBox .position-head .dd a:hover{
                cursor: pointer;
                background-color: rgb(0,179,138);
                color: white;
            }
            .main .container .container-all .container-left .order{
                width: 950px;
                height: 45px;
                margin-top: 20px;
                background-color: rgb(250,250,250);
                line-height: 45px;
            }
            .main .container .container-all .container-left .order .check .check-word{
                width: 77px;
                height: 36px;
                font-weight: 600;
                font-size: 14px;
                float: left;
                margin-left: 24px;
            }
            .main .container .container-all .container-left .order .check .condition{
                width: 50px;
                height: 26px;
            }
            .main .container .container-all .container-left .order .check .text{
                width: 200px;
                height: 22px;
            }
            .main .container .container-all .container-left .position-list{
                width: 950px;
                height: 150px;
                margin-top: 20px;
                overflow: hidden;
            }
            .main .container .container-all .container-left .position-list .list{
                width: 948px;
                height: 124px;
                border: 1px solid rgb(237,237,237);
            }
            .main .container .container-all .container-left .position-list .list .list-top{
                width: 950px;
                height: 82px;
            }
            .main .container .container-all .container-left .position-list .list .list-bottom{
                width: 950px;
                height: 40px;
                background-color: rgb(250,250,250);
            }
            .main .container .container-all .container-left .position-list .list .list-top .top-left{
                width: 518px;
                height: 82px;
                float: left;
            }
            .main .container .container-all .container-left .position-list .list .list-top .top-left .left-one{
                width: 518px;
                height: 33px;
                font-size: 16px;
                color: #00b38a;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                word-wrap: normal;
                margin-top: 10px;
                padding-left: 20px;
                line-height: 33px;
            }
            .main .container .container-all .container-left .position-list .list .list-top .top-left .left-two{
                width: 518px;
                height: 25px;
            }
            .main .container .container-all .container-left .position-list .list .list-top .top-left .left-two .a{
                width: 80px;
                height: 25px;
                line-height: 25px;
                float: left;
                color: #fd5f39;
                font-size: 15px;
                margin-left: 29px;
                font-weight: 500;
            }
            .main .container .container-all .container-left .position-list .list .list-top .top-left .left-two .b{
                width: 150px;
                height: 25px;
                line-height: 25px;
                float: left;
                margin-left: 20px;
                font-size: 14px;
                color: rgb(85,85,85);
            }
            .main .container .container-all .container-left .position-list .list .list-top .top-midst{
                width: 293px;
                height: 82px;
                float: left;
            }
            .main .container .container-all .container-left .position-list .list .list-top .top-midst .one{
                width: 293px;
                height: 33px;
                font-size: 16px;
                color: #00b38a;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                word-wrap: normal;
                margin-top: 10px;
                line-height: 33px;
            }
            .main .container .container-all .container-left .position-list .list .list-top .top-midst .two{
                width: 263px;
                height: 25px;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                word-wrap: normal;
                line-height: 25px;
                font-size: 14px;
                color: rgb(85,85,85);
            }
            .main .container .container-all .container-left .position-list .list .list-top .top-logo{
                width: 62px;
                height: 62px;
                float: left;
                margin-top: 10px;
                margin-left: 10px;
            }
            .main .container .container-all .container-left .position-list .list .list-bottom .type{
                width: 300px;
                height: 40px;
                font-size: 13px;
                line-height: 40px;
                padding-left: 28px;
            }
        </style>
         <script src="resources/js/jquery-3.4.1.min.js"></script>
<!--        <script>
            
                      $(document).ready(function(){
              $("#search").click(function(){
                  $.ajax({
                      url:"job/getJobs",
                      type:"GET",
                      success:function(list){  //服务器返回一个列表
                          //ajax提供append函数向选中的元素里面追加内容
                          $("#position").empty();//清空表格中的内容
                          $("#position").append("<tr><th>学号</th><th>姓名</th><th>性别</th><th>操作</th></tr>");
                              //ajax提供each函数用于遍历集合中的元素
                               //each可提供两个参数
                               //1.表示要遍历的集合
                               //2.一个函数,表示要对集合中的每个元素执行的操作
                               //1)第一个参数表示当前遍历的元素的索引
                               //2)第二个参数表示当前的对象
                          $.each(list,function(index,student){
                              
                              var str="<tr id=>"+student.stuId+"><td>"+student.stuId+"</td><td>"
                                      +student.stuName+"</td><td>"+student.stuGender
                                      +"</td><td><a href=\"javascript:deleteStudent('"+student.stuId+"');\">删除</a></td></tr>";
                              $("#studentTable").append(str);
                        });
                      },
                      error:function(request,status,error){
                          alert("Ajax请求失败！"+error);
                      }
                  });
              });
          });
        </script>-->
    </head>
    <body>
        <div class="main">
            <div class="main-top">
                <div class="top-all">
                    <div class="top-all-left">
                        <h2 class="lagou">拉勾</h2>
                        <ul>
                            <li style="width: 140px;">
                                <span>全国站</span>
                                <em>[切换城市]</em>
                            </li>
                            <li>
                                <a href="">首页</a>
                            </li>
                            <li>
                                <a href="">公司</a>
                            </li>
                            <li style="width: 98px;">
                                <a href="">校园招聘</a>
                            </li>
                            <li>
                                <a href="">言职</a>
                            </li>
                            <li>
                                <a href="">课程</a>
                            </li>
                        </ul>

                    </div>
                    <div class="top-all-right">
                        <ul>
                            <li>
                                <a href="">消息</a>
                            </li>
                            <li>
                                <a href="">简历</a>
                            </li>
                            <li>投递箱</li>
                            <li class="length" style="width: 90px;">${name}用户</li>
                            <li style="width: 20px;height: 40px;margin-top: 5px;margin-left: 10px;"><img src="resources/images/shouji.png" alt="" width="19px" height="19px"/></li>
                            <li class="length" style="color: rgb(1,176,136);width: 100px;">拉勾APP</li>
                            <li class="length" style="width: 100px;">
                                <a href="">进入企业版</a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="search">
                <div class="position">
                    <div class="position-left">
                        职位( 500+ )
                    </div>
                    <div class="position-right">
                        公司( 0 )
                    </div>
                </div>
                <div class="search-content">
                    <form action="job/getJobs">
                        <input type="text" name="jname" value="" placeholder="搜索职位、公司或地点" class="text"/>
                        <input type="submit" value="搜索" class="submit" id="search">
                    </form>
                </div>
                <div class="search-hot">
                    <ul>
                        <li style="color: rgb(118,118,118);">相关搜索：&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>java后端&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>java web&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>java实习&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>java后端实习&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>java大数据</li>
                    </ul>
                </div>
            </div>
            <div class="container">
                <div class="container-all">
                    <div class="container-left">
                        <div class="filterBox">
                            <div class="position-head">
                                <div class="position-title">工作地点:</div>
                                <div class="aa">全国</div>
                                <div class="bb">
                                    <a href="">北京</a>
                                    <a href="">上海</a>
                                    <a href="">深圳</a>
                                    <a href="">广州</a>
                                    <a href="">杭州</a>
                                    <a href="">成都</a>
                                    <a href="">南京</a>
                                    <a href="">武汉</a>
                                    <a href="">西安</a>
                                    <a href="">厦门</a>
                                    <a href="">长沙</a>
                                    <a href="">苏州</a>
                                    <a href="">天津</a>
                                </div>
                            </div>
                            <div class="head1 position-head ">
                                <div class="position-title">工作经验:</div>
                                <div class="cc">不限</div>
                                <div class="dd">
                                    <a href="job/edu?jedu=应届毕业生">应届毕业生</a>
                                    <a href="job/edu?jedu=3年及以下">3年及以下</a>
                                    <a href="" style="width: 50px;">3-5年</a>
                                    <a href="" style="width: 60px;">5-10年</a>
                                    <a href="">10年以上</a>
                                    <a href=""  style="width: 60px;">不要求</a>
                                </div>
                            </div>
                            <div class="head1 position-head ">
                                <div class="position-title">学历要求:</div>
                                <div class="cc">不限</div>
                                <div class="dd">
                                    <a href="" style="width: 40px;">大专</a>
                                    <a href="" style="width: 40px;">本科</a>
                                    <a href="" style="width: 40px;">硕士</a>
                                    <a href="" style="width: 40px;">博士</a>
                                    <a href="" style="width: 60px;">不要求</a>
                                </div>
                            </div>
                            <div class="head1 position-head ">
                                <div class="position-title">融资阶段:</div>
                                <div class="cc">不限</div>
                                <div class="dd">
                                    <a href="" style="width: 60px;">未融资</a>
                                    <a href="" style="width: 60px;">天使轮</a>
                                    <a href="" style="width: 40px;">A轮</a>
                                    <a href="" style="width: 40px;">B轮</a>
                                    <a href="" style="width: 40px;">C轮</a>
                                    <a href="" style="width: 60px;">D轮以上</a>
                                    <a href="" style="width: 60px;">上市工资</a>
                                    <a href="" style="width: 80px;">不需要融资</a>
                                </div>
                            </div>
                            <div class="head1 position-head ">
                                <div class="position-title">公司规模:</div>
                                <div class="cc">不限</div>
                                <div class="dd">
                                    <a href="" style="width: 70px;">少于15人</a>
                                    <a href="" style="width: 70px;">15-50人</a>
                                    <a href="" style="width: 70px;">50-150人</a>
                                    <a href="" style="width: 80px;">150-500人</a>
                                    <a href="" style="width: 90px;">500-2000人</a>
                                    <a href="" style="width: 100px;">2000人以上</a>
                                </div>
                            </div>
                            <div class="head1 position-head ">
                                <div class="position-title">公司规模:</div>
                                <div class="cc">不限</div>
                                <div class="dd">
                                    <a href="job/type?jtype=移动互联网" style="width: 70px;">移动互联网</a>
                                    <a href="" style="width: 40px;">电商</a>
                                    <a href="" style="width: 40px;">金融</a>
                                    <a href="" style="width: 70px;">企业服务</a>
                                    <a href="" style="width: 40px;">教育</a>
                                    <a href="job/type?jtype=文娱|内容" style="width: 80px;">文娱|内容</a>
                                    <a href="" style="width: 40px;">游戏</a>
                                    <a href="" style="width: 70px;">消费生活</a>
                                    <a href="" style="width: 40px;">硬件</a>
                                </div>
                            </div>
                        </div>

                        <!--搜索职位-->
<!--                        <div class="order">
                            <div class="check">
                                <div class="check-word">搜索职位：</div>
                                <form action="">
                                    <input type="text" class="text">
                                    <input type="submit" value="搜索" class="condition">
                                </form>
                            </div>
                        </div>-->

                        <!--职位列表-->
                        <c:forEach items="${jobs}" var="j">
                            <div class="position-list" id="position">
                            <div class="list">
                                <div class="list-top">
                                    <div class="top-left">
                                        <div class="left-one"><a href="job/oneJobRequire/${j.jid}" style="text-decoration: none;color: #00b38a;">（职位名称）${j.jname}</a></div>
                                        <div class="left-two">
                                            <div class="a">(招聘人数)${j.jnumber}</div>
                                            <div class="b">(工作经验)/(学历)本科${j.jedu}</div>
                                            <!--<div class="b" style="margin-left: 0;"></div>-->
                                        </div>
                                    </div>
                                    <div class="top-midst">
                                        <div class="one">招聘者姓名${j.rname}</div>
                                        <div class="two" >职位描述直招岗位：${j.jdescriptiont}（EHR项目）
                                工作时间：朝九晚六，周末双休
                                岗位要求：。。。。。。。</div>
                                    </div>
                                    <div class="top-logo">
                                        <img src="resources/images/logo1.jpg" alt="" width="62px" height="62px">
                                    </div>
                                </div>
                                <div class="list-bottom">
                                    <div class="type">工作类型${j.jtype}</div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>           
                    </div>
                    <div class="container-right">
                        <img src="resources/images/a1.jpg" alt=""/>
                        <img src="resources/images/a2.jpg" alt=""  class="img"/>
                        <img src="resources/images/a3.jpg" alt=""  class="img"/>
                    </div>
                </div>
            </div>

            <div class="footer">
                <div class="footer-top">
                    <div class="footer-column">
                        <div class="column">
                            下载拉勾APP
                        </div>
                        <div class="column">
                            微信小程序
                        </div>
                        <div class="footer-link">
                            <a href="">拉勾微信</a>
                            <a href="">拉勾微博</a>
                        </div>
                    </div>
                    <div class="footer-right">
                        <div class="module">
                            <p class="module-title">
                                企业服务
                            </p>
                            <div class="module-content">
                                招聘抢人宝典
                            </div>
                            <div class="module-content">
                                p公司搜索
                            </div>
                            <div class="module-content">
                                拉勾APP
                            </div>
                        </div>
                        <div class="module" style="margin-left: 150px">
                            <p class="module-title">
                                用户帮助
                            </p>
                            <div class="module-content">
                                帮助中心
                            </div>
                            <div class="module-content">
                                用户服务协议
                            </div>
                            <div class="module-content">
                                隐私政策
                            </div>
                            <div class="module-content">
                                在线提问
                            </div>
                        </div>

                        <div class="module1" style="margin-left: 150px">
                            <p class="module-title">
                                联系方式
                            </p>
                            <div class="module-content">
                                服务热线： 4006 2828 35(9:00-18:00)
                            </div>
                            <div class="module-content">
                                企业服务邮箱：cc@lagou.com
                            </div>
                            <div class="module-content">
                                联系我们
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="blank"></div>
                    <div class="copyright">
                        <div class="copyright-left">
                            <div class="other">
                                <a>@2018 拉勾网 京ICP备14023790号-2
                                    <img src="resources/images/警徽.png" alt="" width="26px" height="26px"/>
                                    京公网安备 1010802024043号
                                </a>
                            </div>
                            <div class="border">      
                                <img class="word-left" src="resources/images/警徽2.png" alt="" width="40px" height="47px">
                                <div class="word">违法和不良信息<br>举报电话: 4006 2828 <br>邮箱: cc@lagou.com</div>
                            </div>
                        </div>
                        <div class="copyright-right">
                            <div class="blank"></div>
                            <img src="resources/images/icon.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
