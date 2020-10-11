function checkPwd(){
    var myPwd= document.getElementById("pwd").value;
   var warningText=document.getElementById("password_note");
    if(!/\w{6,20}/.test(myPwd)){
        warningText.innerHTML="*密码不合法";
    }
    else{
        warningText.innerHTML="";
    }

}
function reCheckPwd() {
    var myPwd= document.getElementById("pwd").value;
    var reMyPwd= document.getElementById("repwd").value;
    var reWarningText=document.getElementById("rePassword_note");

        if(reMyPwd!=myPwd){
            reWarningText.innerHTML="*两次输入密码不一致";

        }
        else{
            reWarningText.innerHTML="";
        }
}
function checkEmail() {
    var myEmail=document.getElementById("email").value;
    var email_note=document.getElementById("email_note");
    if(!/^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/.test(myEmail)){

        email_note.innerText="邮箱地址不正确";
    }
    else{
        email_note.innerText="";
    }
}
function checkPhone() {
    var myPhone=document.getElementById("phone").value;
    const phone_note = document.getElementById("phone_note");
    if(!/1\d{10}/.test(myPhone)){
        phone_note.innerHTML="手机号码不正确";
    }
    else{
        phone_note.innerHTML="<input id='btn' type='button' value='点击获取验证码' onclick='btn_onclick()' >";
    }

}
var wait=60;
var random_num;
function btn_onclick() {
    var myBtn=document.getElementById("btn");

    if(myBtn.disabled!=true){
        random_num=parseInt(Math.random()*9999);
        alert(random_num);
    }

   if(wait==0){
        myBtn.removeAttribute("disabled");
        myBtn.value="获取验证码"
        wait=60;

    }
   else{
        myBtn.setAttribute("disabled", true);
        myBtn.value=wait+"秒后重新发送验证码";
        wait--;
    }
   if(wait<60&&wait>=0){
       setTimeout(function (){btn_onclick()},1000);
   }


}

function checkCorretNum() {
    var myNum=document.getElementById("corret_num").value;
    var corretNum_note= document.getElementById("corret_num_note");
    var s1=myNum.toString();
    var s2=random_num.toString();
    if(s1!=s2){
        corretNum_note.innerHTML="验证码错误"
    }
}

