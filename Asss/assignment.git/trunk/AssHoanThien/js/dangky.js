
function kiemtra(){
	//
	// kiemtra user
	//
	var user= document.getElementById("user").value;
	if(user==""){
		document.getElementById("loiuser").innerHTML="Bạn chưa nhập tên đăng nhập";
	}
	else if(user.length<5){
		document.getElementById("loiuser").innerHTML="Vui lòng nhập ít nhất 5 ký tự"
	}
	else {
		document.getElementById("loiuser").innerHTML="";
	}
	//
	// kiemtra email
	//
	var email= document.getElementById("email").value;
	if(email=="")
		document.getElementById("loiemail").innerHTML="Bạn chưa nhập Email"
	else
		if(email.indexOf("@")<1)
			document.getElementById("loiemail").innerHTML="Email không đúng"
		else
			document.getElementById("loiemail").innerHTML=""
	//
	// kiemtra pass vs repass
	//
	var pass= document.getElementById("pass").value;
	var repass= document.getElementById("repass").value;
	if(pass==""){
		document.getElementById("loipass").innerHTML="Bạn chưa nhập mật khẩu"
	}
	else if(pass!=repass){
		document.getElementById("loipass").innerHTML=""
		document.getElementById("loirepass").innerHTML="Xác nhập mật khẩu không đúng"
	}
	else if(pass==repass){
		document.getElementById("loirepass").innerHTML="";
		document.getElementById("loipass").innerHTML="";
	}
	else{
			document.getElementById("loipass").innerHTML=""
	}
	
	if(repass==""){
		document.getElementById("loirepass").innerHTML="Bạn chưa xác nhập mật khẩu"
	}
	else if(repass!=pass){
		document.getElementById("loirepass").innerHTML="Xác nhập mật khẩu không đúng"
	}
	//
	// kiemtra hoten
	//
	var hoten=document.getElementById("hoten").value;
	if(hoten=="")
		document.getElementById("loihoten").innerHTML="Bạn chưa nhập tên"
	else{
		document.getElementById("loihoten").innerHTML=""
	}
	//
	// kiemtra sdt
	//
	var sdt=document.getElementById("sdt").value;
	if(sdt=="")
		document.getElementById("loisdt").innerHTML="Bạn chưa nhập Mobile"
	else if(isNaN(sdt)==true){
		document.getElementById("loisdt").innerHTML="Vui lòng nhập đúng SĐT"
	}
	else{
		document.getElementById("loisdt").innerHTML=""
	}
	//
	// kiemtra quan huyen
	//
	var quanhuyen=document.getElementById("quanhuyen").value;
	if(quanhuyen=="")
		document.getElementById("loiquanhuyen").innerHTML="Bạn chưa nhập Quận Huyện"
	else{
		document.getElementById("loiquanhuyen").innerHTML=""
	}
	//
	// kiemtra dia chi
	//
	var diachi=document.getElementById("diachi").value;
	if(diachi=="")
		document.getElementById("loidiachi").innerHTML="Bạn chưa nhập địa chỉ"
	else{
		document.getElementById("loidiachi").innerHTML=""
	}
}