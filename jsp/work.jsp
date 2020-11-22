<%-- 
    Document   : work
    Created on : 2020-11-1, 13:59:09
    Author     : Administrator
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

            .main .container{
                width: 1518px;
                height: 1080px;
            }
            .main .container .container-all{
                width: 1518px;
                height: 1080px;
                border-bottom:1px solid rgb(230,230,230); 
            }
            .main .container .container-all .container-top{
                width: 1518px;
                height: 200px;
                background-color: rgb(245,245,245);
            }
            .main .container .container-all .container-top .blank{
                width: 1518px;
                height: 27px;
            }
            .main .container .container-all .container-top .position-content{
                width: 1000px;
                height: 181px;
                margin: 0 auto;
            }
            .main .container .container-all .container-top .position-content .content-left{
                width: 393px;
                height: 175px;
                float: left;
            }
            .main .container .container-all .container-top .position-content .content-left .name{
                width: 393px;
                height: 52px;
                font-size: 35px;
                font-weight: 500;
            }
            .main .container .container-all .container-top .position-content .content-left .Jname{
                width: 393px;
                height: 22px;
                line-height: 22px;
                font-size: 14px;
                color: rgb(85,85,85);
                margin-top: 10px;
            }
            .main .container .container-all .container-top .position-content .content-left .a{
                width: 393px;
                height: 22px;
                line-height: 22px;
                font-size: 18px;
                color: rgb(85,85,90);
            }
            .main .container .container-all .container-top .position-content .content-left .type{
                width: 293px;
                height: 29px;
                line-height: 29px;
                font-size: 13px;
                color: rgb(112,121,123);
                background-color: white;
                border-radius: 10px;
                margin-top: 15px;
                text-indent: 2em;
            }

            .main .container .container-all .container-top .position-content .content-right{
                width: 290px;
                height: 181px;
                float: right;
            }
            .main .container .container-all .container-top .position-content .content-right .deliver{
                width: 260px;
                height: 66px;
            }
            .main .container .container-all .container-top .position-content .content-right .deliver .deliver-left{
                display: inline-block;
                height: 44px;
                width: 104px;
                line-height: 44px;
                text-align: center;
                border: 1px solid #00b38a;
                border-radius: 3px;
                background-color: #ebf0ef;
                cursor: pointer;
                font-size: 14px;
                color: #00b38a;
                float: left;
            }
            .main .container .container-all .container-top .position-content .content-right .deliver .blank1{
                height: 20px;
            }
            .main .container .container-all .container-top .position-content .content-right .deliver .deliver-right{
                display: inline-block;
                margin-left: 17px;
                padding: 0 30px;
                border: 1px solid #00b38a;
                border-radius: 3px;
                height: 44px;
                line-height: 44px;
                font-size: 18px;
                background-color: #00b38a;
                color: #fff;
                cursor: pointer;
                float: right;
            }
            .main .container .container-all .container-top .position-content .content-right .deliver .deliver-right:hover{
                cursor: pointer;
                background-color: rgb(0,165,127);
            }
            .main .container .container-all .container-top .position-content .content-right .upload{
                width: 290px;
                height: 38px;
                line-height: 28px;
            }
            .main .container .container-all .container-top .position-content .content-right .upload .upload1{
                width: 116px;
                height: 38px;
                float: left;
                color: rgb(85,85,85);
                font-size: 14px;
                text-decoration: underline;
                margin-top: 10px;
                margin-left: 10px;
            }
            .main .container .container-all .container-top .position-content .content-right .upload .upload1:hover{
                cursor: pointer;
                color: #00b38a;
            }
            .main .container .container-all .pink{
                width: 1518px;
                height: 40px;
                background-color: rgb(255,242,239);
                text-align: left;
            }
            .main .container .container-all .pink .pink-content{
                width: 1000px;
                height: 40px;
                line-height: 40px;
                color: rgb(254,145,57);
                font-size: 12px;
                margin: 0 auto;
            }
            .main .container .container-all .pink .pink-content p{
                width: 400px;
                height: 40px;
                float: left;
            }
            .main .container .container-all .clearfix{
                width: 1000px;
                height: 750px;
                margin: 0 auto;
            }
            .main .container .container-all .clearfix .clearfix-left{
                width: 738px;
                height: 750px;
                float: left;
            }
            .main .container .container-all .clearfix .clearfix-left .lure{
                width: 100px;
                height: 21px;
                font-size: 16px;
                color: #333;
                font-weight: 700;
                margin-top: 40px;
            }
            .main .container .container-all .clearfix .clearfix-left p{
                margin-top: 13px;
                color: #333;
                font-size: 14px;
            }
            .main .container .container-all .clearfix .clearfix-left .description{
                line-height: 2;
                /*                text-overflow: ellipsis;
                                white-space: nowrap;*/
                height: 120px;
                display: -webkit-box;
                overflow: hidden;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 4;
            }
            .main .container .container-all .clearfix .clearfix-left .position{
                width: 700px;
                height: 21px;
                font-size: 14px;
                margin-top: 13px;
            }
            .main .container .container-all .clearfix .clearfix-left .position .position-left{
                width: 400px;
                height: 21px;
                float: left;
            }
            .main .container .container-all .clearfix .clearfix-left .person{
                width: 160px;
                height: 60px;
                margin-top: 13px;
            }
            .main .container .container-all .clearfix .clearfix-left .person .person-img {
                width: 60px;
                height: 60px;
                float: left; 
            }
            .main .container .container-all .clearfix .clearfix-left .person .person-name{
                width: 85px;
                height: 60px;
                float: right;
                font-size: 15px;
                padding-top: 10px;
            }
            .main .container .container-all .clearfix .clearfix-left .position .position-right{
                width: 100px;
                height: 21px;
                float: right;
                color: #00b38a;
            }
            .main .container .container-all .clearfix .clearfix-midst{
                width: 6px;
                height: 750px;
                float: left;
                background-color: rgb(248,248,248);
            }
            .main .container .container-all .clearfix .clearfix-right{
                width:245px;
                height: 750px;
                float: right;
            }
            .main .container .container-all .clearfix .clearfix-right .company{
                width: 245px;
                height: 300px;
                padding-top: 40px;
                padding-left: 20px;
            }
            .main .container .container-all .clearfix .clearfix-right .company .dt1{
                font-size: 18px;
            }
            .main .container .container-all .clearfix .clearfix-right .company ul{
                margin-top: 20px;
                text-overflow: ellipsis;
                white-space: nowrap;
                word-wrap: normal;
                width: 245px;
            }
            .main .container .container-all .clearfix .clearfix-right .company ul li{
                width: 245px;
                height: 40px;
                color: #737373;
                line-height: 40px;
                font-size: 14px;
            }
            .main .container .container-all .clearfix .clearfix-left .interview{
                width: 738px;
                height: 180px;
                margin-top: 50px;
                font-size: 18px;
            }
            .main .container .container-all .clearfix .clearfix-left .interview .content{
                width: 580px;
                height: 150px;
                border-top:1px solid rgb(230,230,230); 
                float: left;
                margin-top: 16px;
                line-height: 150px;
                text-align: center;
                font-size: 14px;
                color: rgb(85,85,85);
            }
            .main .container .container-all .clearfix .clearfix-left .interview .title{
                width: 100px;
                height: 180px;
                float: left;
            }
            .main .container .container-all .clearfix .clearfix-left .popular{
                width: 738px;
                height: 22px;
                margin-top: 10px;
                font-size: 18px;
            }
            .main .container .container-all .clearfix .clearfix-left .popular ul li{
                list-style: none;
                float: left;
                font-size: 14px;
                color: rgb(170,170,170);
                width: 98px;
                text-decoration: underline;
            }
        </style>
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
                            <li >
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

            <div class="container">
                <div class="container-all">
                    <div class="container-top">
                        <div class="blank"></div>

                        <!--职位详情信息-->
                        <div class="position-content">
                            <div class="content-left">
                                <div class="Jname">(招聘人员姓名)${job.rname}招聘</div>
                                <div class="name">高级Java开发工程师${job.jname}</div>
                                <div class="a"><span style="color: #fd5f39;">招聘人数${job.jnumber}&nbsp;/&nbsp;</span>工作经验${job.jedu}&nbsp;/&nbsp;学历</div>
                                <div class="type">工作类型${job.jtype}</div>
                            </div>
                            <div class="content-right">
                                <div class="deliver">
                                    <div class="blank1"></div>
                                    <div class="deliver-left">收藏</div>
                                    <div class="deliver-right"><a href="job/toResume">投个简历</a></div>
                                </div>
                                <div class="upload">
                                    <div class="upload1">完善在线简历</div>
                                    <div class="upload1">上传附件简历</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pink">
                        <div class="pink-content">
                            <p>☎：该职位正在急招，应聘成功率更高</p>
                        </div>
                    </div>
                    <div class="clearfix">
                        <div class="clearfix-left">

                            <!--职位描述-->
                            <div class="lure">职位诱惑：</div>
                            <p>职位发展空间大</p>
                            <div class="lure">职位描述：</div>
                            <p class="description" style="text-indent: 2em;height: 110px;">
                                ${job.jdescriptiont}
                                直招岗位：（EHR项目）

                                工作时间：朝九晚六，周末双休

                                岗位要求：

                                1、精通java基础，熟悉其流行框架开发，5年以上开发经验，有团队管理经验优先；

                                2、熟悉多线程编程，分布式，缓存，消息队列等机制；

                                3、熟悉JVM，包括内存模型、类加载机制以及性能优化；

                                4、掌握SpringMVC、SpringBoot、SpringCloud、MyBatis主流开发框架；
                                岗位要求：

                                1、精通java基础，熟悉其流行框架开发，5年以上开发经验，有团队管理经验优先；

                                2、熟悉多线程编程，分布式，缓存，消息队列等机制；

                                3、熟悉JVM，包括内存模型、类加载机制以及性能优化；

                                4、掌握SpringMVC、SpringBoot、SpringCloud、MyBatis主流开发框架；
                            </p>
                            <div class="lure">工作地址：</div>
                            <div class="position">
                                <div class="position-left">广州 - 天河区 - 珠江新城 - 珠江新城石牌村</div>
                                <div class="position-right">查看地图</div>    
                            </div>

                            <!--职位发布者-->
                            <div class="lure">职位发布者：</div>
                            <div class="person">
                                <div class="person-img">
                                    <img src="resources/images/p1.png" alt="" width="60px" height="60px" style="border-radius: 50px">
                                </div>
                                <div class="person-name">姓名${job.rname}</div>
                            </div>

                            <div class="interview">
                                <div class="title">面试评价</div>
                                <div class="content">
                                    <span>该职位尚未收到面试评价</span>
                                </div>
                            </div>

                            <div class="popular">
                                <ul>
                                    <li style="text-decoration: none;">推荐公司：</li>
                                    <li>中数天成</li>
                                    <li>同致行(中国)</li>
                                    <li>广州橘子</li>
                                    <li>凯卡博</li>
                                    <li>微观学社</li>
                                    <li>圣泰智慧</li>
                                </ul>
                            </div>
                        </div>
                        <div class="clearfix-midst"></div>
                        <div class="clearfix-right">
                            <div class="company">
                                <dl>
                                    <dt class="dt1">
                                        <img src="resources/images/logo1.jpg" alt="" width="100px" height="100px">&nbsp;&nbsp;宇泰行
                                    </dt>
                                    <ul>
                                        <li>数据服务</li>
                                        <li>未融资</li>
                                        <li>15-50人</li>
                                        <li>https://www.lagou.com/gongsi/28...</li>
                                    </ul>
                                </dl>
                            </div>
                            <img src="resources/images/a4.jpg" alt="" style="margin-left: 20px">
                        </div>
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
