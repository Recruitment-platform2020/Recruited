<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <link rel="stylesheet" href="resources/css/logincss.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>拉勾网登录</title>
        <script type="text/javascript">
        <!--tab切换-->
        var myclick = function(v) {
        var llis = document.getElementsByTagName("li");
        for(var i = 0; i < llis.length; i++) {
          var lli = llis[i];
          if(lli == document.getElementById("tab" + v)) {
            lli.style.backgroundColor = "rgb(128,200,183)";
          } else {
            lli.style.backgroundColor = "rgb(0,144,111)";
          }
        }
        var divs = document.getElementsByClassName("tab_css");
        for(var i = 0; i < divs.length; i++) {
          var divv = divs[i];
          if(divv == document.getElementById("tab" + v+ "_content")) {
            divv.style.display = "block";
          } else {
            divv.style.display = "none";
          }
        }
      }
    </script>
    
    </head>
    <body>
        <div class="head" >
            <div class="head_left">
                <img src ="resources/images/login_head.png" class="login_head" />
            </div>
            <div class="head_right">
            <table>
                <tr><td>拉勾APP</td>
                    <td><a href="manager/toManager">我是管理员</a></td></tr>
              </table>
            </div>
        </div>
        <div class="body">
            <div class="body_left_top">
                <img class="login_body_left_top" src="resources/images/login_body_left_top.png"/>
            </div>
            <div class="body_left_top1">
                <input type="text" name="search" placeholder="搜索职位名称，查看本月高薪招聘信息">
                <div id="search">搜索</div> 
            </div>
            
            <div id="content">
                <div id="tab_bar">
                    <ul>
                      <li id="tab1" onclick="myclick(1)" >
                        技术
                      </li>
                      <li id="tab2" onclick="myclick(2)">
                        产品
                      </li>
                      <li id="tab3" onclick="myclick(3)">
                        设计
                      </li>
                      <li id="tab4" onclick="myclick(4)">
                        市场
                      </li>
                      <li id="tab5" onclick="myclick(5)">
                        运营
                      </li>
                      <li id="tab6" onclick="myclick(6)">
                        销售
                      </li>
                    </ul>
                </div>
                <div class="tab_css" id="tab1_content" style="display: block">
                    <div>
                        <img src="resources/images/技术-1-1.png" class="img"/>
                        <img src="resources/images/技术-1-2.png" class="img"/>
                        <img src="resources/images/技术-1-3.png" class="img"/>
                        <img src="resources/images/技术-1-4.png" class="img"/>
                        <img src="resources/images/技术-2-1.png" class="img"/>
                        <img src="resources/images/技术-2-2.png" class="img"/>
                        <img src="resources/images/技术-2-3.png" class="img"/>
                        <img src="resources/images/技术-3-1.png" class="img"/>
                        <img src="resources/images/技术-3-2.png" class="img"/>
                        <img src="resources/images/技术-3-3.png" class="img"/>
                        <img src="resources/images/技术-4-1.png" class="img"/>
                        <img src="resources/images/技术-4-2.png" class="img"/>
                        <img src="resources/images/技术-4-3.png" class="img"/>
                    </div>
                </div>
                <div class="tab_css" id="tab2_content">
                    <div>
                        <img src="resources/images/产品-1-1.png" class="img"/>
                        <img src="resources/images/产品-1-2.png" class="img"/>
                        <img src="resources/images/产品-1-3.png" class="img"/>
                        <img src="resources/images/产品-1-4.png" class="img"/>
                        <img src="resources/images/产品-2-1.png" class="img"/>
                        <img src="resources/images/产品-2-2.png" class="img"/>
                        <img src="resources/images/产品-2-3.png" class="img"/>
                        <img src="resources/images/产品-3-1.png" class="img"/>
                        <img src="resources/images/产品-3-2.png" class="img"/>
                        <img src="resources/images/产品-3-3.png" class="img"/>
                        <img src="resources/images/产品-3-4.png" class="img"/>
                        <img src="resources/images/产品-4-1.png" class="img"/>
                        <img src="resources/images/产品-4-2.png" class="img"/>
                    </div>
                </div>
                <div class="tab_css" id="tab3_content">
                    <div>
                        <img src="resources/images/设计-1-1.png" class="img"/>
                        <img src="resources/images/设计-1-2.png" class="img"/>
                        <img src="resources/images/设计-1-3.png" class="img"/>
                        <img src="resources/images/设计-1-4.png" class="img"/>
                        <img src="resources/images/设计-2-1.png" class="img"/>
                        <img src="resources/images/设计-2-2.png" class="img"/>
                        <img src="resources/images/设计-2-3.png" class="img"/>
                        <img src="resources/images/设计-3-1.png" class="img"/>
                        <img src="resources/images/设计-3-2.png" class="img"/>
                        <img src="resources/images/设计-3-3.png" class="img"/>
                        <img src="resources/images/设计-4-1.png" class="img"/>
                        <img src="resources/images/设计-4-2.png" class="img"/>
                        <img src="resources/images/设计-4-3.png" class="img"/>
                    </div>
                </div>
                <div class="tab_css" id="tab4_content">
                    <div>
                        <img src="resources/images/市场-1-1.png" class="img"/>
                        <img src="resources/images/市场-1-2.png" class="img"/>
                        <img src="resources/images/市场-1-3.png" class="img"/>
                        <img src="resources/images/市场-1-4.png" class="img"/>
                        <img src="resources/images/市场-2-1.png" class="img"/>
                        <img src="resources/images/市场-2-2.png" class="img"/>
                        <img src="resources/images/市场-2-3.png" class="img"/>
                        <img src="resources/images/市场-3-1.png" class="img"/>
                        <img src="resources/images/市场-3-2.png" class="img"/>
                        <img src="resources/images/市场-3-3.png" class="img"/>
                        <img src="resources/images/市场-4-1.png" class="img"/>
                        <img src="resources/images/市场-4-2.png" class="img"/>
                        <img src="resources/images/市场-4-3.png" class="img"/>
                    </div>
                </div>
                <div class="tab_css" id="tab5_content">
                    <div>
                        <img src="resources/images/运营-1-1.png" class="img"/>
                        <img src="resources/images/运营-1-2.png" class="img"/>
                        <img src="resources/images/运营-1-3.png" class="img"/>
                        <img src="resources/images/运营-1-4.png" class="img"/>
                        <img src="resources/images/运营-2-1.png" class="img"/>
                        <img src="resources/images/运营-2-2.png" class="img"/>
                        <img src="resources/images/运营-2-3.png" class="img"/>
                        <img src="resources/images/运营-3-1.png" class="img"/>
                        <img src="resources/images/运营-3-2.png" class="img"/>
                        <img src="resources/images/运营-3-3.png" class="img"/>
                        <img src="resources/images/运营-4-1.png" class="img"/>
                        <img src="resources/images/运营-4-2.png" class="img"/>
                        <img src="resources/images/运营-4-3.png" class="img"/>
                    </div>
                </div>
                <div class="tab_css" id="tab6_content">
                    <div>
                        <img src="resources/images/销售-1-1.png" class="img"/>
                        <img src="resources/images/销售-1-2.png" class="img"/>
                        <img src="resources/images/销售-1-3.png" class="img"/>
                        <img src="resources/images/销售-1-4.png" class="img"/>
                        <img src="resources/images/销售-2-1.png" class="img"/>
                        <img src="resources/images/销售-2-2.png" class="img"/>
                        <img src="resources/images/销售-2-3.png" class="img"/>
                        <img src="resources/images/销售-3-1.png" class="img"/>
                        <img src="resources/images/销售-3-2.png" class="img"/>
                        <img src="resources/images/销售-3-3.png" class="img"/>
                        <img src="resources/images/销售-4-1.png" class="img"/>
                        <img src="resources/images/销售-4-2.png" class="img"/>
                        <img src="resources/images/销售-4-3.png" class="img"/>
                    </div>
                </div>
            </div>
            <div class="body_right">
                <ul class="body_right_ul">
                    <li class="body_right_li">
                        <input class="body_right_input" id="tabb1" type="radio" name="tabb" checked>
                        <label class="body_right_label" for="tabb1">用户</label>
                        <div class="contentt">
                            <form action="users/login">
                                <table class="content_table">
                                    <h3 style="text-align: center;">两秒登录&nbsp;轻松获高薪</h3>
                                    <br>
                                    <tr><input class="content_input" id="tabb1" type="text" name="umessage" placeholder="用户昵称"/></tr>
                                    <br><br><br>
                                    <tr><input class="content_input" id="tabb1" type="password" name="upwd" placeholder="密码"/></tr>
                                    <br><br>
                                    <tr class="content_tr"><td class="content_tr_td"><a href=""><input class="content_button" id="tabb1" type="submit" value="登录"/></a></td></tr>
                                    <br><br><br><br><br>
                                    <tr><a href="users/toRegister" style="color: rgb(0,179,138); "><p style="text-align: center;font-size: 14px;">没有账号，立即注册</p></a></tr>
                                </table>
                            </form>
                        </div>
                    </li>
                    <li class="body_right_li">
                        <input class="body_right_input" id="tabb2" type="radio" name="tabb">
                        <label class="body_right_label" for="tabb2">招聘人员</label>
                        <div class="contentt">
                            <form action="recruiter/login">
                                <table class="content_table">
                                    <h3 style="text-align: center;">两秒登录&nbsp;轻松获高薪</h3>
                                    <br>
                                    <tr><input class="content_input" id="tabb2" type="text" name="rname" placeholder="招聘员姓名"/></tr>
                                    <br><br><br>
                                    <tr><input class="content_input" id="tabb2" type="password"  name="rpwd" placeholder="密码" /></tr>
                                    <br><br>
                                    <tr class="content_tr"><td class="content_tr_td"><a href=""><input class="content_button" id="tabb2" type="submit" value="登录"/></a></td></tr>
                                    <br><br><br><br><br>
                                    <tr><a href="recruiter/toAdd" style="color: rgb(0,179,138); "><p style="text-align: center;font-size: 14px;">没有账号，立即注册</p></a></tr>
                                </table>
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
            
        
        <div class="body1">
            <img class="body_bg" src="resources/images/body_bg.png"/>
        </div>
        </div>    
    </body>
</html>

