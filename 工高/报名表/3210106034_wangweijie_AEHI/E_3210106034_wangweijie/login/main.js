function login() {
    var user=document.getElementById("username").value;
    var pst=document.getElementById("password").value;
   if(user=="admin"&&pst=="123456")
   {
      window.location.href = "todolist/index1.html";
   }//因为后端还没有完成所以暂时先用简单的if-else语句实现登录
   
   else
   {
      alert("登陆失败");
    }
}