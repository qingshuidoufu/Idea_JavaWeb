$(function () {
    var username=sessionStorage.getItem("username");
    var password=sessionStorage.getItem("password");
    $("#uname").text(username);
    $("#pword").html(password);
    $("#now_time").html((new Date()).toLocaleString());
    $("#now_url").text(window.location.href);
    $("#now_agent").text(navigator.userAgent);

    var wait=10;
  const myInterval= setInterval(function () {
        $("#count").text(wait);
        if(wait==0){
            window.location.href="homePage.jsp"
            clearInterval(myInterval);
        }
        wait--;
    },1000)


})
