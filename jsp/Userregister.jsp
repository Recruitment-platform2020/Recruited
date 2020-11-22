<%-- 
    Document   : Userregister
    Created on : 2020-10-01, 13:38:45
    Author     : song
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/Userregistercss.css" rel="stylesheet">
        <title>用户注册</title>
        <script type="text/javascript">
            function imgPreview(fileDom){
            //判断是否支持FileReader
            if (window.FileReader) {
                var reader = new FileReader();
            } else {
                alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
            }
            //获取文件
            var file = fileDom.files[0];
            var imageType = /^image\//;
            //是否是图片
            if (!imageType.test(file.type)) {
                alert("请选择图片！");
                return;
            }
            //读取完成
            reader.onload = function(e) {
                //获取图片dom
                var img = document.getElementById("preview");
                //图片路径设置为读取的图片
                img.src = e.target.result;
            };
            reader.readAsDataURL(file);
        }
        
        //注册成功
//        function fun(){
//            alert('注册成功！');
//        }
        </script>
    </head>
    <body style="background-image: url(resources/images/注册背景.png);background-color:rgb(0,179,138);">
        <div class="body">
            <form action="users/register">
                <h2 style="margin-left: 30px;">请填写基本信息</h2>
                <div class="body2">
                    <input name="uname" value="" placeholder="&nbsp;&nbsp;&nbsp;请输入你的姓名" type="text"/>
                </div>
                <br><br>
                <div class="body1">
                    <img id="preview"  src="resources/images/头像背景.png" width="60" height="60" style="border-radius:100%;" />
                    <br>
                    <input type="file" value="hh" name="upic" onchange="imgPreview(this)" class="file">
                </div>
                <br><br>
                <div class="body5">
                    <input name="utel" value="" placeholder="&nbsp;&nbsp;&nbsp;请输入你的手机号" type="text"/>
                </div>
                <br><br>
                <div class="body7">
                    <input name="uemail" value="" placeholder="&nbsp;&nbsp;&nbsp;请输入电子邮箱地址" type="text"/>
                </div>
                <br><br>
                 <div class="body6">
                    <input name="ubirth" value="" placeholder="&nbsp;&nbsp;&nbsp;请输入你的出生日期" type="text"/>
                </div>
                <br><br>
                
                
                <div class="body4">
                    <table style="text-align: left;width: 100%;height: 100%;">
                        <tr>
                            <td style="width: 48%;height: 100%;border-color: rgb(248,248,248);">
                                <ul class="body41">
                                    <li>男</li>&nbsp;<input class="body42" name="ugender" value="男" type="radio"/>
                                </ul>
                            </td>
                            <td style="width: 4%; height:100%;background-color: white;"></td>
                            <td style="width: 48%; border-color: rgb(248,248,248);">
                                <ul class="body41">
                                    <li>女</li>&nbsp;<input class="body42" name="ugender" value="女" type="radio"/>
                                </ul>
                            </td>
                        </tr>
                    </table>
                </div>
                <br><br>
                <div class="body3">
                    <input name="upwd" value="" placeholder="&nbsp;&nbsp;&nbsp;请输入所设置的密码" type="password"/>
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
