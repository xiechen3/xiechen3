function login(){
    var username = document.getElementById("ID").value;
    var password = document.getElementById("PASSWORD").value;
    if(username==""){
        $.jGrowl("用户名不能为空！", { header: '提醒' });
        return false
    }else if(password==""){
        $.jGrowl("密码不能为空！", { header: '提醒' });
        return false
    }else{
        return true
    }
}
function AjaxFunc()
{
    var name = document.getElementById("ID").value;
    var password = document.getElementById("PASSWORD").value;
    $.ajax({
        type: 'post',
        url: "",
        dataType: "json",
        data: {"name": name,"password": password},
        success: function (data) {
            
        },
        error: function (xhr, type) {
            console.log(xhr);
        }
    });
}