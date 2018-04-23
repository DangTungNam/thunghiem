// JavaScript Document
function kiemtra(){
	var input= document.getElementsByClassName("input");
	// kiemtra user
	var u = document.getElementById("user");
	var user= u.value;
	if(user==""){
			document.getElementById("loiuser").innerHTML="Bạn chưa nhập tên đăng nhập";
	}
	else if(user.length<5){
			document.getElementById("loiuser").innerHTML="Vui lòng nhập ít nhất 5 ký tự"
		}
	else {
		if(user.indexOf("@")<1)
			document.getElementById("loiuser").innerHTML="Vui lòng nhập đúng email"
		else
			document.getElementById("loiuser").innerHTML="";
	}
	
	// kiemtra pass
	var p=document.getElementById("pass");
	var pass=p.value;
	if(pass==""){
			document.getElementById("loipass").innerHTML="Bạn chưa nhập mật khẩu";
	}
	else {
			document.getElementById("loipass").innerHTML="";
	}
	/*for(var i=0; i<input.length; i++){
		var dl= input[i].value;
		var span= document.getElementsByTagName("span")[i];
		if(user=="")
			span.innerHTML="Bạn chưa nhập tên đăng nhập";
		else if(pass=="")
			span.innerHTML="Bạn chưa nhập mật khẩu";
		else if(isNaN(user)==false){
			span.innerHTML="Họ tên không được bắt đầu bằng số"
		}
		else if(dl.length<5){
			span.innerHTML="Vui lòng nhập ít nhất 5 ký tự"
		}
		else
			span.innerHTML="";
	}*/
}