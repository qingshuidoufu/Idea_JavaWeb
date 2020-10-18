$(function () {


    var wait=10;
    const wrongInterval= setInterval(function () {
        $("#second_num").text(wait);
        if(wait==0){
            window.location.href="loging.jsp"
            clearInterval(wrongInterval);
        }
        wait--;
    },1000)


})