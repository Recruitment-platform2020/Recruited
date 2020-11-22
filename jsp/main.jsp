<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>拉勾网-专业的互联网招聘平台</title>
        <!--<link rel="stylesheet" href="resources/css/main.css"/>-->
        <script src="js/jquery-3.2.1.min.js"></script>
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
                height: 1800px;
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
                color: rgb(175,181,192);
                text-decoration: none;
                font-size: 14px;
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
            .main .main-top .top-all .top-all-left ul li:hover{
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
                width: 540px;
                height: 40px;
                float: right;
                margin-left: 15px;
            }
            .main .main-top .top-all .top-all-right ul{
                width: 540px;
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
            .main .search{
                width: 1518px;
                height: 133px;
                background-color: rgb(242,245,244);
            }
            .main .search .search-content{
                width: 950px;
                height: 89px;
                margin: 0 auto;
            }
            .main .search .search-content form{
                width: 940px;
                height: 46px;
                padding-top: 32px;
            }
            .main .search .search-content .text{
                width: 769px;
                height: 44px;
                font-size: 15px;
                border: 1px solid rgb(232,232,232);
                text-indent: 16px;
            }
            .main .search .search-content .submit{
                width: 150px;
                height: 44px;
                background-color: rgb(0,179,138);
                border: none;
                font-size: 18px;
                color: white;
                margin-left: -5px;
            }
            .main .search .search-hot{
                width: 500px;
                height: 20px;
                margin-left: 300px;
                font-size: 13px;
                color: rgb(0,179,138);
            }
            .main .search .search-hot ul li{
                list-style: none;
                float:left;
            }
            .main .container{
                width: 1518px;
                height: 1150px;
                background-color: rgb(250,250,250);
            }
            .main .container .container-top{
                width: 1195px;
                height: 345px;
                margin: 0 auto;
                padding-top: 40px;
            }
            .main .container .container-top .container-top-left{
                width: 210px;
                height: 314px;
                background-color: white;
                float: left;
            }
            .main .container .container-top .container-top-left .navs-border{
                width: 210px;
                height: 52px;
            }
            .main .container .container-top .container-top-left .navs-border:hover{
                box-shadow: 0px 0px 3px #888888;
            }
            .main .container .container-top .container-top-left .navs{
                width: 164px;
                height: 52px;
                color: rgb(100,85,85);
                font-size: 12px;
                line-height: 52px;
                margin-left: 20px;
            }
            .main .container .container-top .container-top-left .navs .bigger{
                color: rgb(51,51,51);
                width: 32px;
                height: 52px;
                font-size: 16px;
                margin-right: 8px;
            }
            .main .container .container-top .container-top-left .navs .h:hover{
                cursor: pointer;
                color: rgb(1,176,136);
                text-decoration: underline;
            }
            .main .container .container-top .container-top-left .navs .symbol{
                width: 6px;
                height: 10px;
                font-size: 15px;
                float:right;
            }
            .main .container .container-top #main{
                width: 762px;
                height: 314px;
                background-color: white;
                float: left;
                margin-left: 15px;
                overflow:hidden;
            }
            .main .container .container-top #main #banner{
                width: 762px;
                height: 314px;
                z-index: 80;
            }
            .main .container .container-top #main #banner .banner-slide{
                width: 762px;
                height: 314px;
                background-repeat: no-repeat;
                display: none;
            }
            .main .container .container-top #main #banner a{
                list-style: none;
            }
            .main .container .container-top #main #banner .slide1{
                background-size: 100% auto;
                background-image: url(resources/images/Roll1.jpg);
            }
            .main .container .container-top #main #banner .slide2{
                background-size: 100% auto;
                background-image: url(resources/images/Roll2.jpg);
            }
            .main .container .container-top #main #banner .slide3{
                background-size: 100% auto;
                background-image: url(resources/images/Roll3.jpg);
            }
            .main .container .container-top #main #banner .slide-active{
                display: block;
            }
            .main .container .container-top .container-top-right{
                width: 190px;
                height: 310px;
                float: right;
                background-color: white;
                border: 1px solid rgb(240,240,240);
            }
            .main .container .container-top .container-top-right .User{
                width: 56px;
                height: 56px;
                border-radius: 50px;
                margin: 0 auto;
                margin-top: 20px;
            }
            .main .container .container-top .container-top-right .User-name{
                width: 148px;
                height: 16px;
                text-align: center;
                margin: 10px auto;
                font-size: 14px;
                font-weight: 600;
            }
            .main .container .container-top .container-top-right .message{
                width: 120px;
                height: 42px;
                margin: 0 auto;
                margin-top: 20px;
                color: rgb(153,153,153);
                font-size: 14px;
            }
            .main .container .container-top .container-top-right .message .message-left{
                width: 60px;
                height: 42px;
                float: left;
            }
            .main .container .container-top .container-top-right .message .message-right{
                width: 60px;
                height: 42px;
                float: right;
            }
            .main .container .container-top .container-top-right .message .word{
                width: 60px;
                height: 20px;
                text-align: center;
            }
            .main .container .container-top .container-top-right .message .number{
                width: 30px;
                height: 20px;
                margin: 4px auto;
                text-align: center;
            }
            .main .container .container-top .container-top-right .code{
                width: 150px;
                height: 125px;
                margin: 13px auto;
                border-top: 1px dashed rgb(224,224,224);
                font-size: 14px;
                color: rgb(153,153,153);
                text-align: center;
            }
            .main .container .container-top .container-top-right .code p{
                height: 36px;
                line-height: 36px;
            }
            .main .container .container-medium{
                width: 1195px;
                height: 640px;
                margin: 0 auto;
            }
            .main .container .container-medium .title{
                height:78px;
                line-height: 78px;
            }
            .main .container .container-medium .frame{
                width: 380px;
                height: 560px;
                float: left;
                background-color: rgb(255,255,255);
                border: 1px solid rgb(240,240,240);
                margin-right: 9px;
                margin-left: 7px;
            }
            .main .container .container-medium .frame .frame-title{
                width: 380px;
                height: 74px;
                /*float: left;*/
                line-height: 74px;
            }
            .main .container .container-medium .frame .frame-title .title-left{
                width: 90px;
                height: 74px;
                float: left;
                margin-left: 30px;
                font-size: 18px;
                font-weight: 600;
                color: rgb(0,168,255);
            }
            .main .container .container-medium .frame .frame-title .title-right{
                width: 200px;
                height: 74px;
                text-align: right;
                float: right;
                font-size: 14px;
                color: rgb(153,153,179);
                margin-right: 30px;
            }
            .main .container .container-medium .frame .frame-content{
                width: 380px;
                height: 466px;
                /*clear: both;*/
            }
            .main .container .container-medium .frame .frame-content .list-bg{
                width: 380px;
                height: 94px;
            }
            .main .container .container-medium .frame .frame-content .list{
                width: 324px;
                height: 90px;
                margin: 0 auto;
                border-top: 1px dashed rgb(235,235,235);
            }
            .main .container .container-medium .frame .frame-content .list-bg:hover{
                cursor: pointer;
                background-color: rgb(250,250,250);
            }
            .main .container .container-medium .frame .frame-content .list .list-left{
                width: 54px;
                height: 54px;
                border: 1px solid rgb(240,240,240);
                /*border-radius: 10px;*/
                float: left;
                margin-top: 20px;
            }
            .main .container .container-medium .frame .frame-content .list .list-right{
                width: 227px;
                height: 90px;
                float: left;
            }
            .main .container .container-medium .frame .frame-content .list .list-right1{
                width: 180px;
            }
            .main .container .container-medium .frame .frame-content .list .list-right .name{
                margin-top: 25px;
                margin-left: 15px;
            }
            .main .container .container-medium .frame .frame-content .list .list-right .description{
                margin-left: 15px;
                margin-top: 6px;
                font-size: 14px;
                color: rgb(153,153,153);
                letter-spacing: 1px;
                width: 250px;
            }
            .main .container .container-medium .frame .frame-content .list .price{
                color: rgb(255,107,71);
                line-height: 90px;
                text-align: right;
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
        </style>
    </head>

    <body>
        <div class="main">
            <div class="main-logo">
                <img src="resources/images/标头.png" alt="标头" width="100%" height="100%"/>
            </div>
            <div class="main-top">
                <div class="top-all">
                    <div class="top-all-left">
                        <h2 class="lagou">拉勾</h2>
                        <ul>
                            <li style="width: 140px;">
                                <span>全国站</span>
                                <em>[切换城市]</em>
                            </li>
                            <li style="margin-left: 10px;background-color: rgb(36,40,44);">
                                <a href="" style="color: white;">首页</a>
                            </li>
                            <li>
                                <!--<a href="">公司</a>-->
                                公司
                            </li>
                            <li style="width: 98px;">
                                校园招聘
                            </li>
                            <li>
                                言职
                            </li>
                            <li>
                                课程
                            </li>
                        </ul>

                    </div>
                    <div class="top-all-right">
                        <ul>
                            <li>
                                消息
                            </li>
                            <li style="width: 60px;">
                                <a href="resume/oneresumelist" >投递箱</a>
                            </li>
                            <li style="width: 70px;">
                                <a href="resume/toAdd">写简历</a>
                            </li>
                            <li style="width:70px;">
                                <a href="resume/onesresumelist">个人简历</a>
                            </li>
                            <li class="length" style="width: 60px;">${name}</li>
                            <li style="width: 20px;height: 40px;margin-top: 5px;margin-left: 10px;"><img src="resources/images/shouji.png" alt="" width="19px" height="19px"/></li>
                            <li class="length" style="color: rgb(1,176,136);width: 90px;">拉勾APP</li>
                            <li class="length" style="width: 100px;">
                                进入企业版
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="search">
                <div class="search-content">
                    <form action="job/search">
                        <input type="text" name="jname" value="" placeholder="搜索职位、公司或地点" class="text"/>
                        <input type="submit" value="搜索" class="submit">
                    </form>
                </div>
                <div class="search-hot">
                    <ul>
                        <li style="color: rgb(118,118,118);">热门搜索：&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>iOS&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>java面试&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>架构设计&nbsp;&nbsp;&nbsp;&nbsp;</li>
                        <li>C++</li>
                    </ul>
                </div>
            </div>
            <div class="container">
                <div class="container-top">
                    <div class="container-top-left">
                        <div class="navs-border">
                            <div class="navs">
                                <span class="bigger">技术</span>
                                <a href="search.jsp" style="text-decoration: none;color: rgb(85,85,85)"><span class="h">Java&nbsp;&nbsp;</span></a>
                                <span class="h">Web前端</span>
                                <span class="symbol">＞</span>
                            </div>
                        </div>
                        <div class="navs-border">
                            <div class="navs">
                                <span class="bigger">产品</span>
                                <span class="h">产品经理&nbsp;&nbsp;</span>
                                <span class="h">产品助理</span>
                                <span class="symbol">＞</span>
                            </div>
                        </div>
                        <div class="navs-border">
                            <div class="navs">
                                <span class="bigger">设计</span>
                                <span class="h">UI设计&nbsp;&nbsp;</span>
                                <span class="h">视觉设计</span>
                                <span class="symbol">＞</span>
                            </div>
                        </div>

                        <div class="navs-border">
                            <div class="navs">
                                <span class="bigger">运营</span>
                                <span class="h">运营专员&nbsp;&nbsp;</span>
                                <span class="symbol">＞</span>
                            </div>
                        </div>

                        <div class="navs-border">
                            <div class="navs">
                                <span class="bigger">市场</span>
                                <span class="h">市场&nbsp;&nbsp;</span>
                                <span class="h">商务</span>
                                <span class="symbol">＞</span>
                            </div>
                        </div>

                        <div class="navs-border">
                            <div class="navs">
                                <span class="bigger">职能</span>
                                <span class="h">管培生&nbsp;&nbsp;</span>
                                <span class="h">人事</span>
                                <span class="symbol">＞</span>
                            </div>
                        </div>
                    </div>
                    <div id="main">
                        <div class="banner" id="banner">
                            <a href="">
                                <div class="banner-slide slide1 slide-active">
                                </div>
                            </a>
                            <a href="">
                                <div class="banner-slide slide2">
                                </div>
                            </a>
                            <a href="">
                                <div class="banner-slide slide3">
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="container-top-right">
                        <div class="User">
                            <img src="resources/images/${u.upic}" alt="" width="56px" height="56px" style="border-radius: 50px"/>
                        </div>
                        <div class="User-name">
                            <p><a>${name}</a></p>
                        </div>
                        <div class="message">
                            <div class="message-left">
                                <div class="word">已投递</div>
                                <div class="number">0</div>
                            </div>
                            <div class="message-right">
                                <div class="word">收藏夹</div>
                                <div class="number">0</div>
                            </div>
                        </div>
                        <div class="code">
                            <p>职业信息随时查!</p>
                            <img src="resources/images/二维码.png" alt="" width="86px" height="86px">
                        </div>
                    </div>
                </div>
                <div class="container-medium">
                    <h3 class="title" style="font-size: 20px;">热门推荐</h3>
                    <div class="frame" style="border-top:2px solid rgb(141,210,255);">
                        <div class="frame-title">
                            <div class="title-left">大家都在投</div>
                            <div class="title-right">选择好公司，助力好未来</div>
                        </div>
                        <div class="frame-content">
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/f1.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right">
                                        <div class="name">字节跳动</div>
                                        <div class="description">北京/文娱|内容/C轮</div>
                                    </div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/f2.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right">
                                        <div class="name">快手</div>
                                        <div class="description">北京/文娱|内容/D轮及以上</div>
                                    </div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/f3.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right">
                                        <div class="name">拉勾网</div>
                                        <div class="description">北京/企业服务/D轮以上</div>
                                    </div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/f4.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right">
                                        <div class="name">腾讯</div>
                                        <div class="description">深圳/社交/上市公司</div>
                                    </div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/f5.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right">
                                        <div class="name">探探</div>
                                        <div class="description">北京/移动互联网,社交/D轮及以上</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="frame" style="border-top:2px solid rgb(250,194,170);" >
                        <div class="frame-title">
                            <div class="title-left" style="color: rgb(245,133,86)">投递热门榜</div>
                            <div class="title-right">精选热门职位，值得一投</div>
                        </div>
                        <div class="frame-content">
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/g1.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right list-right1">
                                        <div class="name">产品运营(北京)</div>
                                        <div class="description">斗鱼直播/文娱|内容</div>
                                    </div>
                                    <div class="price">10k-18k</div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/f1.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right list-right1 ">
                                        <div class="name">流量运营主管/专员</div>
                                        <div class="description">字节跳动/文娱|内容</div>
                                    </div>
                                    <div class="price">8k-15k</div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/g3.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right1 list-right">
                                        <div class="name">Java/Python</div>
                                        <div class="description">石云科技/企业服务,金融</div>
                                    </div>
                                    <div class="price">8k-16k</div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/g4.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right1 list-right">
                                        <div class="name">Java实习</div>
                                        <div class="description">寺库/电商,消费生活</div>
                                    </div>
                                    <div class="price">3k-4k</div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/g5.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right1 list-right">
                                        <div class="name">产品经理</div>
                                        <div class="description">爱奇艺/文娱|内容</div>
                                    </div>
                                    <div class="price">10k-20k</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="frame"  style="border-top:2px solid rgb(127,217,196);margin-right: 0px;">
                        <div class="frame-title">
                            <div class="title-left" style="color: rgb(0,179,138)">极速反馈榜</div>
                            <div class="title-right">高效HR top 5,一触即达</div>
                        </div>
                        <div class="frame-content">
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/h1.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right1 list-right">
                                        <div class="name">游戏界面设计师</div>
                                        <div class="description">智友网络/移动互联网,电商</div>
                                    </div>
                                    <div class="price">4k-8k</div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/h2.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right1 list-right">
                                        <div class="name">兼职抖音模特演员</div>
                                        <div class="description">广州6KW游戏/游戏</div>
                                    </div>
                                    <div class="price">3k-5k</div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/h3.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right1 list-right">
                                        <div class="name">产品助理</div>
                                        <div class="description">易度网络/企业服务</div>
                                    </div>
                                    <div class="price">6k-10k</div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/h4.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right1 list-right">
                                        <div class="name">税务经理助理</div>
                                        <div class="description">安心财税/企业服务,金融</div>
                                    </div>
                                    <div class="price">2k-4k</div>
                                </div>
                            </div>
                            <div class="list-bg">
                                <div class="list">
                                    <div class="list-left">
                                        <img src="resources/images/h5.jpg" alt="" width="54px" height="54px">
                                    </div>
                                    <div class="list-right list-right1">
                                        <div class="name">内容运营实习生</div>
                                        <div class="description">好事成双/移动互联网 企业服务</div>
                                    </div>
                                    <div class="price">1k-2k</div>
                                </div>
                            </div>
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

        <script type="text/javascript">
            //封装一个代替getElementById()的方法
            function byId(id) {
                return typeof (id) === "string" ? document.getElementById(id) : id;
            }
            //全局变量
            var index = 0, timer = null,
                    pics = byId("banner").getElementsByTagName("div"), //数组
                    len = pics.length;  //3

            function slideImg() {
                var main = byId("main");
                //滑过清除定时器，离开继续
                main.onmouseover = function () {
                    //滑过清除定时器
                    if (timer)
                        clearInterval(timer); //鼠标移上去动画停止
                };
                main.onmouseout = function () {
                    timer = setInterval(function () {//间接调用
                        index++;   //0 1 2 3 4
                        if (index >= len) {
                            index = 0;
                        }
                        //切换图片
                        console.log(index);
                        changeImg();
                    }, 2000);
                }
                //自动在main上触发鼠标离开事件
                main.onmouseout();  //方法
            }
            //切换图片
            function changeImg() {
                //遍历banner下所有div将其隐藏
                for (var i = 0; i < len; i++) {
                    pics[i].style.display = 'none';
                }
                //根据index索引找到当前div，将其显示出来
                pics[index].style.display = 'block';
            }
            ;
            slideImg();
        </script>
    </body>
</html>

