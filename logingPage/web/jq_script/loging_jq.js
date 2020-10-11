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
})