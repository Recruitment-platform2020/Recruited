<%-- 
    Document   : 简历
    Created on : 2020-10-22, 14:20:19
    Author     : xyq
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${pageContext.request.contextPath}/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/jquery-labelauty.css">
        <title>个人简历</title>

        <script src="resources/js/jquery-3.2.1.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/jquery-labelauty.js"></script>

        <script>
            $(function () {
                $(':input').labelauty();
            });

            function Name() {
                //姓名验证
                var pname = document.getElementById("pname").value;
                var nameReg = /^[\u4e00-\u9fa5]{2,6}$/;
                if (!nameReg.test(pname)) {
                    var t = span_pname.innerHTML = "请输入2~6个汉字"; //输入不合法，提示信息
                    return false;
                } else {
                    span_pname.innerHTML = ""; //验证通过后去除提示
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

            .container{
                display:table;
                height:100%;
            }

            .row{
                display: table-cell;
                vertical-align: middle;
            }

            .row-centered {
                text-align:center;
            }

            .col-centered {
                display:inline-block;
                float:none;
                text-align:left;
                margin-right:-4px;
            }

            .img1{
                max-width: 75px;
                height: auto;
                display: block;
            }
            
            .img2 {
                position: relative;
                top: -3px;
            }

            ul { list-style-type: none;}
            li { display: inline-block;}
            li { margin: 3px 20px;}
            input.labelauty + label { font: 12px "Microsoft Yahei";}

        </style>

    </head>
    <body style="background-color: #00cc99">
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
                    <ul class="nav navbar-nav navbar-right">
                        <li><a>欢迎您,${name}</a>
                        </li>
                        <li><a href="javascript:history.go(-1)">返回</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row row-centered">
                <div class="well col-md-6 col-centered">
                    <h3>请填写信息</h3>
                    <br/>
                    <form action="resume/Add" method="get">
                        <div class="input-group-md">
                            <input type="text" class="form-control" name="uname" id="pname" placeholder="个人姓名" onblur="Name()"/>
                            <span id="span_pname"></span>
                        </div>
                        <br/>
                        
                        <div class="body1" style="text-align: center;">
                            <img id="preview"  src="resources/images/头像背景.png" width="60" height="60" style="border-radius:100%;text-align: center;" />
                            <br>
                            <input type="file" value="hh" name="ppic" onchange="imgPreview(this)" class="file" style="margin-left: 180px;margin-top: 10px;" >
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <span id="span_pbirth"><strong>个人姓名：</strong></span>
                            <input type="text" class="form-control" name="pname" id="pbirth" placeholder="个人姓名"/>
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <!--                            <select class="form-control input-lg" name="pgender" id="pgender">
                                                            <option>男</option>
                                                            <option>女</option>
                                                        </select>-->

                            <ul class="dowebok">
                                <li><input type="radio" name="pgender" value="男" data-labelauty="男"></li>
                                <li><input type="radio" name="pgender" value="女" data-labelauty="女"></li>
                            </ul>
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <span id="span_pbirth"><strong>出生日期：</strong></span>
                            <input type="text" class="form-control" name="pbirth" id="pbirth" placeholder="出生日期"/>
                        </div>
                        <br/>
                        

                        <!--                        <div class="input-group-md">
                                                    <input type="text" class="form-control" name="country" id="country" placeholder="国籍"/>
                                                </div>
                                                <br/>-->
                        
                        <div class="input-group-md">
                            <input type="email" class="form-control" name="pemail" id="pemail" placeholder="个人邮箱" onblur="Email()"/>
                            <span id="span_pemail"></span>

                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <input type="text" class="form-control" name="country" id="location" placeholder="国家"/>
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <!--<span id="span_nation col-xs-11"><strong>Foreigners please write "none" directly.</strong></span>-->
                            <input type="text" class="form-control" name="nation" id="nation" placeholder="民族" onblur="nation()"/><br/>
                        </div>
                        <br/>
                        <div class="input-group-md">
                            <input type="text" class="form-control" name="location" id="location" placeholder="所在地（精确到市）"/>
                        </div>
                        <br/>
                        <div class="input-group-md">
                            <!--                        <select class="form-control" name="marriage" id="marriage">
                                                        <option>未婚</option>
                                                        <option>已婚</option>
                                                    </select>-->
                            <span id="span_marriage"><strong>请选择婚姻状况：</strong></span>
                            <ul class="dowebok">
                                <li><input type="radio" name="marriage" value="已婚" data-labelauty="已婚"></li>
                                <li><input type="radio" name="marriage" value="未婚" data-labelauty="未婚"></li>
                            </ul>
                        </div>
                        
                        <div class="input-group-md">
                            <span id="span_education"><strong>请选择个人学历：</strong></span>
                            <ul class="dowebok">
                                <li><input type="radio" name="education" value="大专" data-labelauty="大专"></li>
                                <li><input type="radio" name="education" value="本科" data-labelauty="本科"></li>
                                <li><input type="radio" name="education" value="硕士" data-labelauty="硕士"></li>
                                <li><input type="radio" name="education" value="博士" data-labelauty="博士"></li>
                            </ul>
                        </div>

                        <div class="input-group-md">
                            <span id="span_school"><strong>毕业院校：</strong></span>
                            <input type="text" class="form-control" name="school" id="school" placeholder="学生请填写就读院校" />
                        </div>
                        <br/>
                        <div class="input-group-md">
                            <span id="span_gtime"><strong>毕业时间：</strong></span>
                            <input type="text" class="form-control" name="gtime" id="gtime"/>
                        </div>
                        <br/>
                        <div class="input-group-md">
                            <input type="text" class="form-control" name="majora" id="majora" placeholder="专业" />
                        </div>
                        <br/>
                        <div class="input-group-md">
                            <input type="text" class="form-control" name="majorb" id="majorb" placeholder="二专（没有则不填）" />
                        </div>
                        <br/>
                        <div class="input-group-md">
                            <textarea class="form-control" rows="3" maxlength="100" name="honor" id="honor" placeholder="大学所获荣誉奖项" ></textarea>
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <textarea class="form-control" rows="3" maxlength="200" name="course" id="course" placeholder="大学所学课程" ></textarea>
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <span id="span_workyear"><strong>参加工作年限：</strong></span>
                            <input type="number" class="form-control" name="workyear" id="workyear" placeholder="未参加工作填数字“0”" />
                        </div>
                        <br/>
                        <div class="input-group-md">
                            <textarea class="form-control" rows="4" maxlength="200" name="workdetail" id="workdetail" placeholder="工作经历（曾任职公司、职位等）" ></textarea>
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <textarea class="form-control" rows="4" maxlength="200" name="advantage" id="advantage" placeholder="个人优势" ></textarea>
                        </div>
                        <br/>
                        
                        
                        <div class="input-group-md">
                            <textarea class="form-control" rows="3" maxlength="200" name="skillcertificates" id="skillcertificates" placeholder="技能证书" ></textarea>
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <input type="text" class="form-control" name="salary" id="salary" placeholder="薪资要求" />
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <input type="text" class="form-control" name="jobinten" id="jobinten" placeholder="求职意向" />
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <textarea class="form-control" maxlength="400" name="other" id="other" placeholder="想要补充的信息" ></textarea>
                        </div>
                        <br/>
                        
                        <div class="input-group-md">
                            <textarea class="form-control" maxlength="400" name="jid" id="jid" placeholder="要投递的工作id" ></textarea>
                        </div>
                        <br/>
                        
                        <div class="input-group-md" align="left" style="float:left">
                            <input type="reset" value="重置" class="btn btn-danger"/>
                        </div>
                        <div class="input-group-md" align="right">
                            <input type="submit" value="保存" class="btn btn-success"/>
                        </div>


                    </form>
                </div>
            </div>            
        </div>
        
    </body>
</html>
