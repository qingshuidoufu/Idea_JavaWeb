
$(function () {
    //密码校验
    $("#pwd").blur(function () {
        if(!/\w{6,20}/.test($("#pwd").val())){

            $("#password_note").text("*密码不合法");
        }
        else{
            $("#password_note").html("");
        }
    })

    //密码重校验
    $("#repwd").blur(function () {
        var myPwd= $("#pwd").val();
        var reMyPwd= $("#repwd").val();
        var reWarningText=$("#rePassword_note");

        if(reMyPwd!=myPwd){
               reWarningText.text("*两次输入密码不一致");

                }
                else{
                    reWarningText.html("");
                }
    })
    //邮箱检查
    $("#email").blur(function () {
        var myEmail=$("#email").val();
        var email_note=$("#email_note");
        if(!/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/.test(myEmail)){

            email_note.text("邮箱地址不正确");
        }
        else{
            email_note.text("");
        }
    })

    //手机号检查
    $("#phone").blur(function () {
        var myPhone=$("#phone").val();
        var phone_note=$("#phone_note");
        if(!/1\d{10}/.test(myPhone)){
            phone_note.html("手机号码不正确");
        }
        else{
            phone_note.html("")
            $("#btn").css("visibility","visible");
        }
    })

    //获取验证码
    var random_num;
    var wait=60;
   $("#btn").click(function () {
       var myBtn=$("#btn");

       if(myBtn.attr("disabled")!=true){
           random_num=parseInt(Math.random()*9999);
           alert(random_num);
          const  myInterval=setInterval(function () {
               myBtn.attr("disabled","true");
               wait--;
               myBtn.val(wait+"秒后重新发送验证码") ;
               if(wait==0){
                   clearInterval(myInterval);
                   myBtn.removeAttr("disabled");
                   wait=60;
                   myBtn.val("点击获取验证码");
               }
           },1000);

       }
   })
    //校验验证码
    $("#corret_num").blur(function () {
        var myNum=$("#corret_num").val();
        var corretNum_note= $("#corret_num_note");
        if(myNum!=random_num){
            corretNum_note.html("验证码错误");
        }
    })




})


//处理跳转
function jump() {
    sessionStorage.setItem("act",$("#act").val())
    sessionStorage.setItem("pwd",$("#pwd").val())
    sessionStorage.setItem("qiyename",$("#qiyename").val())
    sessionStorage.setItem("qiyeaddress",$("#qiyeaddress1").val()+$("#qiyeaddress2").val()+$("#qiyeaddress3").val()+$("#qiyeaddress4").val())
    sessionStorage.setItem("name",$("#name").val())
    sessionStorage.setItem("email",$("#email").val())
    sessionStorage.setItem("qq",$("#qq").val())
    sessionStorage.setItem("phone",$("#phone").val())
    window.open("registerInfo.jsp");
}
