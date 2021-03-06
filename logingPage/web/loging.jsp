
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head><script type="text/javascript" src="jq_source/jquery-3.5.1.js"></script>
    <script type="text/javascript" src="jq_script/loging_jq.js"></script>
    <title>便利驿站_登录</title>
    <meta charset="utf-8">
    <META HTTP-EQUIV="pragma" CONTENT="no-cache">
    <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate">
    <META HTTP-EQUIV="expires" CONTENT="0">

    <style type="text/css">
      .text_font{font-size: 14px}
      #hyper_link1{ color:deepskyblue;text-decoration: none}
      #hyper_link2{ color:mediumpurple;text-decoration: none}
      #box{
        box-shadow:2px 2px 10px #000;
        position: relative;
        background-color: white;
        height: 150px;
        width: 100%;
      }
      #logo_location{
        padding-left: 10%;
        padding-top: 30px;
      }
      #text_border{
        position: absolute;
        top: 40%;
        margin-left: 20px;
        font-size: 20px;
        color: black ;
        text-decoration: none;
        border-color: gray;
        border-left-style:solid;

      }

      #big_loging_box{
        position: relative;
        height: 500px;
        width: 100%;
        background-color: #D30140;
      }
      #small_loging_box{

        position: absolute;
        top: 25%;
        left:75%;
        border:2px solid;
        border-radius:10px 10px 0px 0px;
        border-color: white;
        border-bottom: dotted;
        background-color: white;
        height: 250px;
        width: 250px;
        box-shadow: 0 2px 0 gray;
      }
      .input_box {
        margin-left: 5%;
        margin-top: 20px;
        width: 170px;
        height: 25px;
        border:2px solid;
        border-radius:5px;
        border-color: lightgray;
      }
      #submit{
        margin-left: 14%;
        margin-top: 20px;
        width: 180px;
        height: 32px;
        border:2px solid;
        border-radius:5px;
        border-color: lightgray;
        background-color: dodgerblue;
      }
      #check{
        margin-left: 15%;


      }
      #lost_pw{
        margin-left: 12%;
      }
      #down_box{
        font-size: 20px;
        color: lightgray;
        position: relative;
        background-color: white;
        margin-top: 15%;
        margin-bottom: 0;
        height: 300px;
        width: 100%;

      }
      #img_assur1{
        margin-top: 20px;
        margin-left: 20%;
      }
      .img_assur2{
        margin-top: 20px;
        margin-left: 20%;
      }
      .assurance{
        position: absolute;
        top: 20px;
        margin-left: 20px;
        padding-right: 50px;
       padding-top: 10px;
        padding-bottom: 10px;
        border-color: lightgray;
        border-right-style:solid;
      }
      #assurance1{
        position: absolute;
        top: 20px;
        margin-left: 20px;
        padding-right: 50px;
        padding-top: 10px;
        padding-bottom: 10px;
      }
      #other{
        margin-left: 15%;
      }
      #license1{
        margin-left: 13%;
      }
      #license2{
        margin-left: 20%;
      }
      #image_box1{
        border:2px solid;
        border-radius:3px 3px 3px 3px;
        border-color: gray;
        padding-top: 3px;
        padding-bottom: 3px;
      }
      #image_box2{
        border:2px solid;
        border-radius:3px 3px 3px 3px;
        border-color: gray;
      }
      #big_image_box{
        position: absolute;
        left: 67%;
        border-left-style: solid;
        border-left-color: lightgray;
        top: 40%;
        padding-left: 20px;
        padding-top: 10px;
        padding-bottom: 40px;
      }
      #license_font{
        font-size: 16px;
        color: lightgray;
      }
      #checkPwd{

      }
      #username_note{
        color: green;
        position: absolute;
        left:53%;
      }
      #password_note{
        color: green;
        position: absolute;
        left:53%;
      }
      #log_pwd{
          margin-left: 7%;
      }

    </style>
  </head>

  <body bgcolor="#f5f5dc">
      <div  align="right"> <font class="text_font">欢迎光临本店请<a  id="hyper_link1" href="http://www.baidu.com" >登录</a>,新用户?<a id="hyper_link2" href="http://www.baidu.com">免费注册</a></font>
      我的订单 | 查看购物车 | 帮助中心 | 在线客服</div><br>
      <div id="box">
       <a href="loging.jsp"><img id="logo_location"src="./img/logo.png"  alt="can't load image"></a>
        <span id="text_border">&ensp;登录</span>
      </div>
      <br><br><br><br><br><br>
    <div id="big_loging_box">
      <img src="./img/login_red_bg.png">
      <div id="small_loging_box">
        <form action="loginServlet" method="post">
          <br>
          <span>账号</span>
          <input id="username" name="username" class="input_box" type="text" ><span id="username_note"></span>
          <div id="checkPwd"><span>密码</span><input name="password" class="input_box" id="log_pwd" type="password" onblur="checkPwd()"><span id="password_note"></span></div>
          <input  id="submit" type="submit" value="登录" >
          <input id="check" type="checkbox"checked>自动登录<br>
          <a id="lost_pw" href="http://www.baidu.com">忘记密码?</a> | <a href="register.jsp">注册</a>
        </form>

      </div>
    </div>

      <div id="down_box">
        <img id="img_assur1" src="./img/Quality_assurance.gif"><span class="assurance">正品保障</span>
        <img class="img_assur2" src="./img/Seven_days.gif"><span class="assurance">七天包退</span>
        <img class="img_assur2" src="./img/Fake_a_lose_three.gif"><span id="assurance1">假一赔三</span>
        <br>
        <br>
        <div id="license_font">
          <div id="other">
            免责条款&ensp;|&ensp;隐私保护&ensp;|&ensp;联系我们&ensp;|&ensp;公司简介&ensp;|&ensp;配送方式<br>
          </div>
          <br>
          <div id="license1">
            @2005-2016&ensp;便利驿站&ensp;版权所有,并保留所有权利.凌塘12号大院三区一号&ensp;tel:3292315&ensp;E-
          </div >
          <br>
          <div id="license2" >
            mail:&ensp;1165221562@qq.com&ensp;技术支持:&ensp;琪云科技
          </div>

        </div>


        <div id="big_image_box">
          <img id="image_box1" src="./img/unionpay_ico.gif">
          <img id="image_box2" src="./img/alipay_ico.gif">
        </div>

      </div>



  </body>
</html>



