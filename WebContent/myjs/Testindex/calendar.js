//setCookie("useridindex",useridindex,"1");
function setCookie(name,value,expires) {
var exp = new Date(); exp.setTime(exp.getTime() + expires*1000); document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString(); }


function codeA(a) {
			var codeA= encodeURIComponent(encodeURIComponent(a));
	         return codeA;
		}
		 function textSub1(statu) {
		    var textSub1;
		     if (statu=="环境") {
			textSub1="icon-bell yellow";
			return textSub1;
		    }else {
			textSub1="icon-exclamation-sign red";
			return textSub1;
		    }
		}
	 var myDate = new Date();

	// console.log(66666);
	
		// var listAllDxtestwork=getCookie("listAllDxtestwork");
		// console.log("111"+listAllDxtestwork);
	//	 var listAllDxtestworkObj=JSON.parse(listAllDxtestwork);
		 j=1;
		 var text="";

	//	 console.log(listAllDxtestworkObj);
		 for(let i  in listAllDxtestworkObj){

		     var username= listAllDxtestworkObj[i]["username"];
		     var nowdate=listAllDxtestworkObj[i]["nowdate"];
		     var s_sdate=listAllDxtestworkObj[i]["sdate"];
		     var s_edate=listAllDxtestworkObj[i]["edate"];
		     var message= listAllDxtestworkObj[i]["message"];
		     var sn= listAllDxtestworkObj[i]["sn"];
			var ip=listAllDxtestworkObj[i]["IP_T2"];
			ip=ip.substring(0,ip.indexOf('/'));
			var pos=listAllDxtestworkObj[i]["POS_T2"];
			var pname=listAllDxtestworkObj[i]["PNAME_T2"];
		     var stno= listAllDxtestworkObj[i]["stno"];
		     var statu= listAllDxtestworkObj[i]["statu"];
		     var userpwd= listAllDxtestworkObj[i]["userpwd"];
		     var sdateL=s_sdate.substr(0,10);
		     var userid=listusGson[0].userid;

		  //   console.log(message);
		   //  console.log(userpwd);
		  //  console.log(message);
		     if (userpwd=="restore") {
		//	 console.log(j++);
			 continue
		    }else {
			if (statu=="环境") {
		//	    console.log(j++);
			    message=line2br(message);

				// console.log(666);
				 text += "<li>";
				 text += "<a target=\"_blank\" href=\"WarningPart?sn="+sn+"&sdate="+codeA(s_sdate)+"&userid="+userid+"&stno="+stno+"&edate="+codeA(s_edate)+"&statu="+codeA("环境")+"\"";
				 text += ">"   ;
				 text += "<i class=\""+textSub1(statu)+"\"></i>";
				 text += ""+pname+"&nbsp;&nbsp;&nbsp;&nbsp;";
				text += "<strong>事件时间:&nbsp;&nbsp;&nbsp;&nbsp;"+sdateL+"</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
				 text += "事件内容:&nbsp;&nbsp;&nbsp;&nbsp; "+message+"                                 ";
				 text += "</a>";
				 text += "</li>";

			    }else if (statu=="故障") {
			//	console.log(j++);
				 message=line2br(message);
				text += "<li>";
				 text += "<a target=\"_blank\" href=\"WarningPart?sn="+sn+"&sdate="+codeA(s_sdate)+"&userid="+userid+"&stno="+stno+"&edate="+codeA(s_edate)+"&TT=ReturnIndex&statu="+codeA("故障")+"\"";
				 text += ">"   ;
				 text += "<i class=\""+textSub1(statu)+"\"></i>";
				 text += ""+pname+"&nbsp;&nbsp;&nbsp;&nbsp;";
				text += "<strong>事件时间:&nbsp;&nbsp;&nbsp;&nbsp;"+sdateL+"</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
				 text += "事件内容:&nbsp;&nbsp;&nbsp;&nbsp; "+message+"                                 ";
				 text += "</a>";
				 text += "</li>";
			    }else {
		//		console.log(j++);
				continue
			    }
		    }

		  }
	//	 console.log(text);
		 document.getElementById("li").innerHTML=text;
		 //console.log(text);
		 
		 var listAllDxtestwork=JSON.stringify(listAllDxtestworkObj);
 				//	console.log(listAllDxtestwork);
 					var listAllDxtestwork2=JSON.stringify(listAllDxtestworkObj2);
					var username = document.getElementById("username").value;
					var userpwd = document.getElementById("userpwd").value;
					var userid = document.getElementById("userid").value;
					var aut =document.getElementById("aut").value;
				//	console.log(listAllDxtestwork2);
				/* 	var edate =document.getElementById("edate").value;
					var sdate =document.getElementById("sdate").value;
					var statu =document.getElementById("statu").value; */

					//console.log(aut);
					setCookie("userid",userid,1);
					setCookie("aut",aut,1);
					setCookie("username",username,1);
					setCookie("listAllDxtestwork",listAllDxtestwork,1);
					setCookie("listAllDxtestwork2",listAllDxtestwork2,1);


					 var s1=getCookie("listAllDxtestwork");
					 var s2=getCookie("aut");
					 var s3=getCookie("username");
					 var s4=getCookie("listAllDxtestwork2");
			//	console.log(s4);
			//	console.log(username);


					function getCookie(name)
					    {
					        var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
					        if(arr != null) 
					        {
					        	let ll=arr[2].indexOf("/")==-1? arr[2].length:arr[2].indexOf("/");
					        	return unescape(arr[2].substr(0,ll));
					        }
					        return null;
					    }

					function setCookie(name,value,Days)
					    {
					    	
					        var exp = new Date();
					        exp.setTime(exp.getTime() + Days*24*60*60*1000);
					        document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
					    }
					    
	function line2br(text){
		var a=text+'';
			     return a.split("<br />").join("&nbsp;&nbsp;");
			     }					    
		 