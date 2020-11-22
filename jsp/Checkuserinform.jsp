<%-- 
    Document   : Checkuserinform
    Created on : 2020-10-29, 10:44:18
    Author     : xyq
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <link href="resources/css/Checkuserinformcss.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>查看求职记录</title>
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
                                首页
                            </li>
                            <li>
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
                                <a href="resume/toAdd">写简历</a>
                            </li>
                            <li style="width: 80px;">
                                <a href="resume/onesresumelist">个人简历</a>
                            </li>
                            <li style="background-color: rgb(36,40,44); color: white;width: 70px;"><a href="resume/oneresumelist">投递箱</a></li>
                            <li class="length" style="width: 60px;">${name}</li>
                            <li style="width: 20px;height: 40px;margin-top: 5px;margin-left: 10px;"><img src="resources/images/shouji.png" alt="" width="19px" height="19px"/></li>
                            <li class="length" style="color: rgb(1,176,136);width: 100px;">拉勾APP</li>
                            <li class="length" style="width: 100px;">
                                进入企业版
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
            <div class="body_top1">
                <span style="color: #666666;font-size: 25px;font-weight: 500;">已投递简历状态</span>
            </div>
            <div class="body_top2">
                <span style="color:#bbb;font-size: 20px;font-weight: 400;">刷新</span>&nbsp;&nbsp;&nbsp;&nbsp;
                <span style=""><img src="resources/images/书角.png"/></span>
            </div>
            <br>
            <div class="body_top3"><hr style="color: rgb(235,235,235);"></div>
            <div class="content">
                <form>
                    <br>
                    查看求职进度：<input type="text" name="uname" value="${name}" readonly=""/>
                    &nbsp;&nbsp;
                    <input type="submit" value="查询"/>
                </form><br/>
                <form action="resume/oneresumelist">
                    <table style="border-color: #e2e2e2;width:672px;margin-top: 10px;border:0; cellspacing:0; cellpadding:0 ;">
                        <tr>
                            <td style="width: 119px;height: 40px;text-align: center;background-color: #e2e2e2;">求职工作编号</td>
                            <td style="width: 123px;height: 40px;text-align: center;background-color: #e2e2e2;">申请时间</td>
                            <td style="width: 119px;height: 40px;text-align: center;background-color: #e2e2e2;">取消申请原因</td>
                            <td style="width: 123px;height: 40px;text-align: center;background-color: #e2e2e2;">申请状况</td>
                        </tr>
                        <c:forEach items="${resume}" var="p" varStatus="vs" >
                            <tr>
                                <td style="height: 50px;text-align: center;">${p.jid}</td>
                                <td style="height: 50px;text-align: center;">${p.atime}</td>
                                <td style="height: 50px;text-align: center;">${p.areason}</td>
                                <td style="height: 50px;text-align: center;">${p.astatus}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </form>
            </div>
        </div>
        <div class="body_right">
            <img style="border: 1px solid #ccc;" src="resources/images/投递箱.png"/>&nbsp;
            <img style="border: 1px solid #ccc;" src="resources/images/邀请函.png"/>&nbsp;
            <img style="border: 1px solid #ccc;" src="resources/images/收藏夹.png"/>&nbsp;
            <img style="border: 1px solid #ccc;" src="resources/images/订阅栏.png"/>
        </div>

    </body>
</html>
