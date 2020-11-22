
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/Userregistercss.css" rel="stylesheet">
        <title>用户注册</title>
        
        <script>
            function Email() {
                //邮箱验证
                var memail = document.getElementById("memail").value;
                var emailReg = /^[\w\d]{1,12}@[\w\d]{1,9}\.[\w]{2,3}$/;
                if (!emailReg.test(memail)) {
                    span_memail.innerHTML = "错误！正确示例：Noah@qdu.com";
                    return false;
                } else {
                    span_memail.innerHTML = "";
                    return true;
                }

            }

            function Password() {
                //密码
                var pwd = document.getElementById("mpwd").value;
                var pwdReg = /^[\d\w]{6,12}$/;
                if (!pwdReg.test(pwd)) {
                    span_mpwd.innerHTML = "请输入6~12以内数字、字母或组合密码";
                } else {
                    span_mpwd.innerHTML = "密码格式正确";
                }

            }

            function Password2() {
                //确认密码
                var pwd = document.getElementById("mpwd").value;
                var pwd2 = document.getElementById("rempwd").value;
                if (pwd !== pwd2) {
                    span_mpwd2.innerHTML = "前后输入不一致";
                } else {
                    span_mpwd2.innerHTML = "密码输入输入正确";
                }

            }
            
        </script>
        
    </head>
    <body style="background-image: url(resources/images/注册背景.png);background-color:rgb(0,179,138);">
        <div class="body">
            <form action="manager/register">
                <h2 style="margin-left: 30px;">管理员注册</h2>
                <div class="body2">
                    <input name="mname" value="" placeholder="&nbsp;&nbsp;&nbsp;请输入你的姓名" type="text"/>
                </div>
                <br><br>
                <div class="body5">
                    <input name="mtel" value="" placeholder="&nbsp;&nbsp;&nbsp;请输入你的手机号" type="number"/>
                </div>
                <br><br>
                <div class="body7">
                    <input name="memail" id="memail" placeholder="&nbsp;&nbsp;&nbsp;请输入电子邮箱地址" type="email" onblur="Email()"/>
                    <br/>
                    <span id="span_memail"></span>
                </div>
                <br><br>
                 <div class="body6">
                    <input name="mbirth" value="" placeholder="&nbsp;&nbsp;&nbsp;请输入你的出生日期" type="text"/>
                </div>
                <br><br>
                <div class="body4">
                    <table style="text-align: left;width: 100%;height: 100%;">
                        <tr>
                            <td style="width: 48%;height: 100%;border-color: rgb(248,248,248);">
                                <ul class="body41">
                                    <li>男</li>&nbsp;<input class="body42" name="mgender" value="" type="radio"/>
                                </ul>
                            </td>
                            <td style="width: 4%; height:100%;background-color: white;"></td>
                            <td style="width: 48%; border-color: rgb(248,248,248);">
                                <ul class="body41">
                                    <li>女</li>&nbsp;<input class="body42" name="mgender" value="" type="radio"/>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
                <br><br>
                <div class="body3">
                    <input name="mpwd" id="mpwd" placeholder="&nbsp;&nbsp;&nbsp;请输入所设置的密码" type="password" onblur="Password()"/>
                    <br/>
                    <span id="span_mpwd"></span>
                </div>
                <br/>
                <div class="body3">
                    <input id="rempwd" placeholder="&nbsp;&nbsp;&nbsp;请确认密码" type="password" onblur="Password2()"/>
                    <br/>
                    <span id="span_mpwd2"></span>
                </div>
                
                <br><br>
                <div class="body8">
                    <input class="body8_input" name="button" value="注册" type="submit"/>
                </div>
                <br><br>
                <div class="body9">
                    <a href=""><p>下载拉钩客户端，HR消息提醒更及时</p></a>
                </div>
            </form>
        </div>
    </body>
</html>
