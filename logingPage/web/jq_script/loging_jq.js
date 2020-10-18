$(function () {
    //密码检查
    $("#log_pwd").blur(function () {
        var myPwd= $("#log_pwd").val();
        var warningText=$("#password_note");
        if(!/\w{6,20}/.test(myPwd)){
            warningText.text("*密码不合法");
        }
        else{
            warningText.text("");
        }
    })
    //用户名检查
    $("#username").blur(function () {
        var myusername= $("#username").val();
        if(myusername.length==0){
            $("#username_note").text("*账号不能为空");
        }
    })
    //用户名密码比较
    $("#submit").click(function () {

        if($("#username").val()=="admin"&&$("#log_pwd").val()=="12345678"){
            sessionStorage.setItem("username",$("#username").val() );
            sessionStorage.setItem("password",$("#log_pwd").val() );
            window.location.href="LoginInfoRight.jsp";
        }
        else{
            window.location.href="LoginInfoWrong.jsp";

        }
    })
})