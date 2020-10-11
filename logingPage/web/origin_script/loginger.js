function checkPwd(){
    var myPwd= document.getElementById("checkPwd").getElementsByTagName("input")[0].value;
    var warningText=document.getElementById("password_note");
    if(!/\w{6,20}/.test(myPwd)){
        warningText.innerHTML="*密码不合法";
    }
    else{
        warningText.innerHTML="";
    }

}

