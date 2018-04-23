var manganh=[];
manganh[0]="images/slideshow1.jpg"
manganh[1]="images/slideshow2.jpg"
manganh[2]="images/slideshow3.jpg"
manganh[3]="images/slideshow4.jpg"
manganh[4]="images/slideshow5.jpg"
manganh[5]="images/slideshow6.jpg"
var dem=0;
var lui=manganh.length;
var delay;
function auto(){
		document.images["anhslide"].src=manganh[dem];
		dem++;
		if(dem==manganh.length)
			dem=0
		delay= setTimeout("auto()",3000)
	}
	window.onload = function(){	
	}
// next
function next(){
	dem++;
	if(dem==manganh.length)
		dem=0;
	document.images["anhslide"].src=manganh[dem]
}
// pre
function pre(){
	lui--
	if(lui<0){
		lui=manganh.length-1;
	}
	document.images["anhslide"].src=manganh[lui]
}
//hover button
$(function(){
	$(".slideshow").mouseover(function(){
		$("button").show();
	})
	$(".slideshow").mouseout(function(){
		$("button").hide();
	})
})
		//hover ảnh
	var mangKhung = document.getElementsByClassName("khung");
	var mangMua = document.getElementsByClassName("mua");
	function hover(i){
		mangKhung[i].addEventListener("mouseover",function(){
			mangMua[i].style.display="block"
		})
		mangKhung[i].addEventListener("mouseout",function(){
			mangMua[i].style.display="none"
		})
	}
	// onload
	window.onload=function(){
		for(var i=0; i<mangKhung.length; i++){
			mangKhung[i].addEventListener("mouseover",hover(i));
		}
		auto()
	}
