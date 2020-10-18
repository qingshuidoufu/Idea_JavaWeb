$(function () {

    $("#account").text(sessionStorage.getItem("act"));
    $("#password").text(sessionStorage.getItem("pwd"));
    $("#gongsiname").text(sessionStorage.getItem("qiyename"));
    $("#address").text(sessionStorage.getItem("qiyeaddress"));
    $("#name").text(sessionStorage.getItem("name"));
    $("#email").text(sessionStorage.getItem("email"));
    $("#qq").text(sessionStorage.getItem("qq"));
    $("#phone").text(sessionStorage.getItem("phone"));

})