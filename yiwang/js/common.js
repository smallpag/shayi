function $(id){
    return document.getElementById(id);
}
function createxhr(){
	var xhr=null;
	if(window.XMLHttpRequest){
		 //标准创建
		xhr=new XMLHttpRequest();
	}else{
		//IE8以下创建
		xhr=new ActiveXObject("Microsoft.XMLHttp");
	}
     return xhr;
}