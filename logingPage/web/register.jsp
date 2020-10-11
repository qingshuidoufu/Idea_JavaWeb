<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>便利驿站_注册</title>
    <script type="text/javascript" src="jq_source/jquery-3.5.1.js"></script>
    <script type="text/javascript " src="jq_script/register_jq.js"></script>
    <style><%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        #license1{
            margin-left: 13%;
        }
        #license2{
            margin-left: 20%;
        }
        #other{
            margin-left: 15%;
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
        #down_box{
            font-size: 20px;
            color: lightgray;
            position: relative;
            background-color: white;
            margin-top: 20%;
            margin-bottom: 0%;
            height: 300px;
            width: 100%;

        }
        body{
            font-size: 12px;
            background-color: #f5f5dc;
        }
        #naviga_box{
            background-color: white;
            height: 15%;
            position: relative;
            width: 100%;

        }
        #logo_box{
            margin-left: 17%;
            vertical-align: middle;
        }
        #text_box{
            position: absolute;
            top: 40%;
            margin-left: 20px;
            font-size: 20px;
        }
        #regist_box{
            background-color: white;
            box-shadow:2px 2px 10px #000;
            position: absolute;
            position: relative;
            top: 10%;
            margin-top: 5%;
            margin-left: 17%;
            border-style: solid;
            width: 60%;
            height: 100%;
            border-color: lightgray;
        }
        .form_naviga0{
            text-align: right;
            margin-top: 3%;
            margin-right: 65%;
        }

        .form_naviga2{
            vertical-align: middle;
            text-align: right;
            padding-top: 15px;
            margin-right: 45%;

        }
        #form_checkbox{
            vertical-align: bottom;
            text-align: right;
            padding-top: 25px;
            margin-right: 45%;
        }

        #hyper_link_license{
            text-decoration: none;
            color:gray;

        }
        #register_submit{
            width:100px ;
            height: 40px;
            margin-top: 20px;
            margin-left: 40%;
            margin-right: 20%;
            background-color:#EF6D2F;
        }
        .hyper_link_forget{
            color:gray;
        }
        input{
            height: 25px;
            color: lightgray;
            margin-left: 20px;
            border:2px solid;
            border-color: lightgray;
            border-radius:5px 5px 5px 5px;
        }
        #license_font{
            font-size: 16px;
            color: lightgray;
        }
        #hyper_link1{ color:deepskyblue;text-decoration: none}
        #hyper_link2{ color:mediumpurple;text-decoration: none}
        select{
            width: 14%;
            font-size: 8px;
        }
        #special_address{
            position: absolute;
            left:53%;
        }
        #password_note{
            color: red;
            position: absolute;
            left:58%;
        }
        #rePassword_note{
            color: red;
            position: absolute;
            left:58%;
        }
        #email_note{
            color: red;
            position: absolute;
            left:58%;
        }
        #phone_note{
            color: red;
            position: absolute;
            left:58%;
        }
        #btn{
            visibility: hidden;
            color: red;
            position: absolute;
            left:75%;
        }
        #corret_num_note{
            color: red;
            position: absolute;
            left:58%;
        }


    </style>
</head>
<body>

    <div  align="right"> <font class="text_font">欢迎光临本店请<a  id="hyper_link1" href="http://www.baidu.com" >登录</a>,新用户?<a id="hyper_link2" href="http://www.baidu.com">免费注册</a></font>
        我的订单 | 查看购物车 | 帮助中心 | 在线客服</div><br>
    <div id="naviga_box">
        <img id="logo_box" src="./img/logo.png"><span id="text_box">注册</span>
    </div>
    <div id="regist_box">
        <div class="form_naviga0" >
            <b><span  >填写账户信息,以下信息均为必填:</span><br></b>
        </div>
           <div class="form_naviga2" >
               登录账号:
               <input type="text">
           </div>
        <div class="form_naviga2" >
            登录密码:
            <input id=pwd type="password" onblur="checkPwd()">
            <span id="password_note">
                *由6-20位字母和数字组成
            </span>
        </div>
        <div class="form_naviga2" >
           确认密码:
            <input id=repwd type="password" onblur="reCheckPwd()">
            <span id="rePassword_note"></span>
        </div>
        <div class="form_naviga2" >
            商业名称:
            <input type="text">
        </div>
        <div class="form_naviga2" >
            商业地址:
            <select>
                <option>霍格沃茨</option>
                <option>加勒比</option>
                <option>非洲</option>
                <option>哥谭</option>

            </select>
            <select >
                <option>霍格沃茨</option>
                <option>加勒比</option>
                <option>非洲</option>
                <option>哥谭</option>

            </select>
            <select>
                <option>霍格沃茨</option>
                <option>加勒比</option>
                <option>非洲</option>
                <option>哥谭</option>

            </select>
            <span id="special_address">
            <input type="text"value="你心里">
        </span>

        </div>

        <div class="form_naviga2" >
            负责人姓名:
            <input type="text">
        </div>

        <div class="form_naviga2" >
            电子邮箱:
            <input id =email type="text" onblur="checkEmail()">
            <span id="email_note"></span>
        </div>
        <div class="form_naviga2" >
            QQ:
            <input type="text">
        </div>
        <div class="form_naviga2" >
            手机:
            <input id="phone"  type="text" onblur="checkPhone()">
            <span id="phone_note"></span>
            <input id='btn'type="button" value='点击获取验证码' onclick='btn_onclick()' >
        </div>
        <div class="form_naviga2" >
            手机验证码:
            <input id="corret_num" type="text"onblur="checkCorretNum()">
            <span id="corret_num_note"></span>
        </div>
        <div id="form_checkbox">
            <input type="checkbox" checked >我已阅读并同意<a id="hyper_link_license" href="http://www.baidu.com">《用户注册协议》</a>
        </div>
        <div class="form_naviga2">
            <input id="register_submit" type="submit">
        </div>
        <div class="form_naviga2">
            <a class="hyper_link_forget" href="https://www.baidu.com">你忘记密码了吗?</a>我已有账号,我要 <a class="hyper_link_forget" href="loging.jsp">登录</a>
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