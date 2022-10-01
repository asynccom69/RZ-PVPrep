$(document).ready(function(){
    window.addEventListener("message",function(event) {
        const data = event.data
        $(".rz-notif-kr").fadeIn(250);
        document.getElementsByClassName("rz-notif-title")[0].innerHTML = data.title
        document.getElementsByClassName("rz-notif-text")[0].innerHTML = data.text
        setTimeout(() => {
            $(".rz-notif-kr").fadeOut(250);
        }, data.duration);
        if (data.color) {
            $(".rz-notif-title").css("background-color", data.color);
        }
    })
})