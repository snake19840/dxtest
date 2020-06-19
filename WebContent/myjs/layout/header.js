
		 function getCookie(name) {
		     var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
		     if(arr != null)
     {
   let ll=arr[2].indexOf("/")==-1?  arr[2].length:arr[2].indexOf("/");
     return  unescape(arr[2].substr(0,ll));
   }
  return null;
		     }
		//  console.log(getCookie("listusGson") ); 
		//  console.log(getCookie("loginId") );   
	 listusGson =JSON.parse(getCookie("listusGson"));
	 loginId=JSON.parse(getCookie("loginId"));
	console.log(listusGson);
	console.log(loginId);
	if (loginId=="n") {
	    location.href = "loginTest.jsp";
	}
	if (listusGson[0].con==1){
	    document.getElementById("contract-management-TestHeader").style.display="block";
// 	    document.getElementById("contract-management-TestMainMenu").style.display="block";
	}
	if (listusGson[0].levela==1) {
	  document.getElementById("perm").style.display="block";
	}
// 	var user= document.getElementById("user1").innerText;
// 	console.log(user);
// 	console.log(listusGson[0].userid);
// 	user=listusGson[0].userid;
	
	var text = "";
text += "&nbsp;&nbsp;<i class=\"halflings-icon white user\"></i>";
text += "<span class=\"caret\"></span>";
	document.getElementById("user1").innerHTML = listusGson[0].userid+text;
	function logout() {
	    location.href="LogoutServlet";
	}	
