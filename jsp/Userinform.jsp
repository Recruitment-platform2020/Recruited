<%-- 
    Document   : Userinform
    Author     : 吕少琳
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/Userinformcss.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>我的消息</title>
        <script type="text/javascript">
            var myclick = function (v) {
                var llis = document.getElementsByTagName("li");
                for (var i = 0; i < llis.length; i++) {
                    var lli = llis[i];
                    if (lli == document.getElementById("tab" + v)) {
                        lli.style.backgroundColor = "rgb(128,200,183)";
                    } else {
                        lli.style.backgroundColor = "rgb(0,144,111)";
                    }
                }
                var divs = document.getElementsByClassName("tab_css");
                for (var i = 0; i < divs.length; i++) {
                    var divv = divs[i];
                    if (divv == document.getElementById("tab" + v + "_content")) {
                        divv.style.display = "block";
                    } else {
                        divv.style.display = "none";
                    }
                }
            }
        </script>
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
                            <li style="margin-left: 10px;">
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
                            <li style="background-color: rgb(36,40,44);">
                                <a href="" style="color: white;">消息</a>
                            </li>
                            <li>
                                <a href="">简历</a>
                            </li>
                            <li>投递箱</li>
                            <li class="length" style="width: 90px;">${name}</li>
                            <li style="width: 20px;height: 40px;margin-top: 5px;margin-left: 10px;"><img src="resources/images/shouji.png" alt="" width="19px" height="19px"/></li>
                            <li class="length" style="color: rgb(1,176,136);width: 100px;">拉勾APP</li>
                            <li class="length" style="width: 100px;">
                                <a href="">进入企业版</a>
                            </li>
                        </ul>
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
        <div class="body">
            <div class="body_title"><h2>我的消息</h2></div>
            <div class="body_hr"><hr style="color: #e2e2e2;"></div>
            <div class="body_hr1"><a href="">设置</a></div>
            <div class="content">
                <ul class="content_ul">
                    <li class="content_li">
                        <input class="content_input" id="tabb1" type="radio" name="tabb" checked>
                        <label class="content_label" for="tabb1">全部</label>
                        <div class="contentt">
                            <form action="">
                                <table style="border-color: #e2e2e2;width:720px;margin-top: 10px;border:0; cellspacing:0; cellpadding:0 ;">
                                    <tr>
                                        <td style="width: 25%;height: 40px;text-align: center;background-color: #e2e2e2;">工作公司</td>
                                        <td style="width: 25%;height: 40px;text-align: center;background-color: #e2e2e2;">工作职位</td>
                                        <td style="width: 25%;height: 40px;text-align: center;background-color: #e2e2e2;">工作申请有无回复</td>
                                        <td style="width: 25%;height: 40px;text-align: center;background-color: #e2e2e2;">是否已被录取</td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                </table>
                            </form>
                        </div>
                    </li>
                    <li class="content_li">
                        <input class="content_input" id="tabb2" type="radio" name="tabb">
                        <label class="content_label" for="tabb2">工作申请</label>
                        <div class="contentt">
                            <form action="">
                                <table style="border-color: #e2e2e2;width:720px;margin-top: 10px;border:0; cellspacing:0; cellpadding:0 ;">
                                    <tr>
                                        <td style="width: 25%;height: 40px;text-align: center;background-color: #e2e2e2;">工作公司</td>
                                        <td style="width: 25%;height: 40px;text-align: center;background-color: #e2e2e2;">工作职位</td>
                                        <td style="width: 25%;height: 40px;text-align: center;background-color: #e2e2e2;">工作申请有无回复</td>
                                        <td style="width: 25%;height: 40px;text-align: center;background-color: #e2e2e2;">是否已被录取</td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                        <td style="height: 50px;"></td>
                                    </tr>
                                </table> 
                            </form>
                        </div>
                    </li>
                    <li class="content_li">
                        <input class="content_input" id="tabb3" type="radio" name="tabb">
                        <label class="content_label" for="tabb3">系统通知</label>
                        <div class="contentt">
                            <form action="">
                                <img src="resources/images/笑脸.png">暂时没有新的消息
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </body>
</html>
