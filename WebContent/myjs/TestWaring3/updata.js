


/**
 * 分页函数
 * pno--页数
 * psize--每页显示记录数
 * 分页部分是从真实数据行开始，因而存在加减某个常数，以确定真正的记录数
 * 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能
 **/
 goPage(1, 5);

function goPage(pno, psize) {
	var itable = document.getElementById("w_masg");
//	console.log(itable);
	//var num = itable.rows.length;//表格所有行数(所有记录数)
	var num1=itable.getElementsByTagName("li");
	var num=num1.length;
//	console.log(num);
	var totalPage = 0;//总页数
	var pageSize = psize;//每页显示行数
	//总共分几页
	var n1=num / pageSize;
	var n2=parseInt(num / pageSize);
	if (n1> n2) {
		totalPage = n2 + 1;
	} else {
		totalPage = n2;
	}
	
	var currentPage = pno;//当前页数
	var startRow = (currentPage - 1) * pageSize + 1;//开始显示的行 31
	var endRow = currentPage * pageSize;//结束显示的行  40
	endRow = (endRow > num) ? num : endRow;  //40
//	console.log(endRow);
	//遍历显示数据实现分页
	for (var i = 1; i < (num + 1); i++) {
// 		var irow = itable.rows[i - 1];
		var irow =itable.getElementsByTagName("li")[i-1];
		if (i >= startRow && i <= endRow) {
			irow.style.display = "";
		} else {
			irow.style.display = "none";
		}
	}
	var tempStr = "共" + num + "条记录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分" + totalPage + "页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前第" + currentPage + "页";
	if (currentPage > 1) {
		tempStr += "<a href=\"#\" onClick=\"goPage(" + (1) + "," + psize + ")\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页</a>";
		tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage - 1) + "," + psize + ")\"><上一页</a>"
	} else {
		tempStr += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;首页";
		tempStr += "<上一页";
	}
	if (currentPage < totalPage) {
		tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage + 1) + "," + psize + ")\">&nbsp;&nbsp;下一页></a>";
		tempStr += "<a href=\"#\" onClick=\"goPage(" + (totalPage) + "," + psize + ")\">尾页</a>";
	} else {
		tempStr += "&nbsp;&nbsp;下一页>";
		tempStr += "尾页";
	}
	document.getElementById("barcon").innerHTML = tempStr;
}

		 function codeA(a) {
				var codeA= encodeURIComponent(encodeURIComponent(a));
		         return codeA;
			}
		 
		 function searchlist() {
			 var s_sdate=document.getElementById("s_sdate").value;
			
			 var s_edate=document.getElementById("s_edate").value;
			
			 var select_statu_search = document.getElementById("select_statu_search");
			 var index=select_statu_search.selectedIndex ;
			 var statu= select_statu_search.options[index].text;
			
		//	 sn=document.getElementById("snchar").value;
			 var urlrf = window.location.href;
			var flag=urlrf.indexOf("WarningServlet2?sn=");
			if (flag!=-1) {sessionStorage.setItem('urlrf', urlrf);}else {}
			var urlHref=sessionStorage.getItem('urlrf');
			
			
			
			
			search(sn,s_sdate,s_edate,statu);
			 
			 
			 function search(sn,s_sdate,s_edate,statu){
				   location.href="WarningSelect3?sn="+sn+"&sdate="+codeA(s_sdate)+"&edate="+codeA(s_edate)+"&statu="+codeA(statu);	
				    
				}
			 
		}
		 
		 
		  formatDate = function (date) {
			  //date为字符串
			  var date= new Date(Date.parse(date.replace(/-/g,  "/")));      //转换成Data();
			    var y = date.getFullYear();  
			    var m = date.getMonth() + 1;  
			    m = m < 10 ? '0' + m : m;  
			    var d = date.getDate();  
			    d = d < 10 ? ('0' + d) : d;  
			    return y + '-' + m + '-' + d;  
			}
		 
		  
		  
		  
		  
		  function warningchart() {
		    
		      function getCookie(name)
			    {
			        var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
			        if(arr != null)
     {
   let ll=arr[2].indexOf("/")==-1?  arr[2].length:arr[2].indexOf("/");
     return  unescape(arr[2].substr(0,ll));
   }
  return null;
 				 }
		     
		     
		      
		     // console.log(username);
		    //  console.log(edate);
		    //  console.log(sdate);
		    //  console.log(statu);
		      
		      
			  var date = new Date();
			  var w_locale=date.toLocaleString( ); //获取日期与时间
				var w_lodate=date .toLocaleDateString();//获取日期
				 var w_text = document.getElementById("w_text").value;
				 var w_name = document.getElementById("w_name");
				 var select_name=document.getElementById("select_name").text;
				/*  var select_nameobj = document.getElementById("select_name");
				var index=select_nameobj.selectedIndex ;
				 var select_name=select_nameobj.options[index].text; */
				 
				 var select_statu = document.getElementById("select_statu");
				 var index_statu=select_statu.selectedIndex ;
				 var statu= select_statu.options[index_statu].text;
			//	 sn=document.getElementById("snchar").value;
				 w_text=line2br(w_text);
				 
				 
// 				  console.log("===="+w_lodate);
// 				 console.log("===="+w_text);
// 				 console.log("===="+select_name);
				// console.log("===="+statu); 
				 var urlrf = window.location.href;
				// console.log(urlrf);
					var flag=urlrf.indexOf("WarningServlet2?sn=");
					//console.log(flag);
					if (flag!=-1) {sessionStorage.setItem('urlrf', urlrf);}else {}
					var urlHref=sessionStorage.getItem('urlrf');
				//	console.log(1111);
				var useridc=listusGson[0].userid;
					var useridc=codeA(useridc);
					firm_back_state(sn,w_locale,statu,w_text,urlHref,useridc);
 					
				
					if(TT=="Testwork3"){
					c_sdate1=document.getElementById("dateInput").value;
				if(c_sdate1==""||c_sdate1==null){
				alert("巡检时间格式不正确");
				}else{
					c_sdate=c_sdate1.substr(0,10);
//			console.log(c_sdate);
			var e = new Date(c_sdate1);
			var e0 = new Date();
			if(e>e0){
			alert("巡检时间超过当前时间!");
			}else{
			
			time=c_sdate1.substr(c_sdate1.indexOf("T")+1,5);
			console.log(time);
			var c_edate1 = new Date((new Date(c_sdate)).valueOf() + 86400000);
			c_edate=formatDate(c_edate1);
			c_edate=codeA(c_edate);
			c_sdate=codeA(c_sdate);
			console.log(c_edate);
				}	
				}
				}
					
				
			//	console.log("==="+c_edate+"==="+c_sdate+"==="+time);
				
					function firm_back_state(sn,w_locale,statu,w_text,urlHref,useridc){
				    
				      if (w_text==""||w_text==null) {
					    alert("请输入内容!");
					}else if(confirm("确认提交？")){
					  
						location.href="WarningServlet3?sn="+sn+"&nowdate="+codeA(w_locale)+"&message="+codeA(w_text)+"&statu="+codeA(statu)+"&userid="+useridc+"&sdate="+c_sdate+"&edate="+c_edate+"&time="+time;	
					    		
					    //	location.href="WarningServlet3";
					    }
					}
				 							 
		}
		  
		
		  function post(URL, PARAMS) {       
		      var temp = document.createElement("form");       
		      temp.action = URL;       
		      temp.method = "post";       
		      temp.style.display = "none";       
		      for (var x in PARAMS) {       
		          var opt = document.createElement("textarea");       
		          opt.name = x;       
		          opt.value = PARAMS[x];       
		          // alert(opt.name)       
		          temp.appendChild(opt);       
		      }       
		      document.body.appendChild(temp);       
		      temp.submit();       
		      return temp;       
		  } 



function update() {
	    var useridc=c_userid;
		var useridc=codeA(useridc);
		var date = new Date();
		  var w_locale=date.toLocaleString( ); //获取日期与时间
			var w_lodate=date .toLocaleDateString();//获取日期
			 var w_text = document.getElementById("w_text").value;
			 var w_name = document.getElementById("w_name");
			 var select_name=document.getElementById("select_name").text;
			
			 var index=document.getElementById("select_statu").selectedIndex;//获取当前选择项的索引.
			var statu= document.getElementById("select_statu").options[index].text;//获取当前选择项的文本.
// 			 var index_statu=select_statu.selectedIndex ;
			  w_text=line2br(w_text);
			
			  if(TT=="Testwork3"){
					c_sdate1=document.getElementById("dateInput").value;
				if(c_sdate1==""||c_sdate1==null){
				alert("巡检时间格式不正确");
				}else{
					c_sdate=c_sdate1.substr(0,10);
			console.log(c_sdate);
			var e = new Date(c_sdate1);
			var e0 = new Date();
			if(e>e0){
			alert("巡检时间超过当前时间!");
			}else{
			
			time=c_sdate1.substr(c_sdate1.indexOf("T")+1,5);
			console.log(time);
			var c_edate1 = new Date((new Date(c_sdate)).valueOf() + 86400000);
			c_edate=formatDate(c_edate1);
			c_edate=codeA(c_edate);
			c_sdate=codeA(c_sdate);
			console.log(c_edate);
				}	
				}
				}
					
				console.log("==="+c_edate+"==="+c_sdate+"==="+time);
 			// console.log(c_sdate);
//  			 console.log(w_lodate);
//  			 console.log(w_text);
// 			 console.log(w_name);
// 			 console.log(useridc);
// 			 console.log(statu);
//  			 console.log(sn);
			 
			 if(document.getElementById("url").value==""){
				 
				alert("请选择一个文件!");
				 
				  return false; 
			}
			 else if (document.getElementById("w_text").value=="") {
				alert("请输入故障内容!");
				 return false; 
			}else if (statu=="") {
				alert("请选择故障类型!");
				 return false; 
			}else {
// 			    alert("!");
				form4.enctype="multipart/form-data"
			form4.action="UploadPicture?sn="+sn+"&userid="+useridc+"&nowdate="+codeA(w_locale)+"&message="+codeA(w_text)+"&statu="+codeA(statu)+"&sdate="+c_sdate+"&edate="+c_edate+"&time="+time;
				form4.method="post";
				form4.submit(); 
			}
	 
	}
	
	 function line2br(text){
			  var a=text+'';
				return a.split("\n").join("<br />");
			     
			     }
								
								function u() {
								    var useridc=c_userid;
									var useridc=codeA(useridc);
									var date = new Date();
									  var w_locale=date.toLocaleString( ); //获取日期与时间
										var w_lodate=date .toLocaleDateString();//获取日期
										 var w_text = document.getElementById("w_text").value;
										 var w_name = document.getElementById("w_name");
										 var select_nameobj = document.getElementById("select_name");
										 var index=select_nameobj.selectedIndex ;
										 var select_name=select_nameobj.options[index].text;
										 var select_statu = document.getElementById("select_statu");
										 var index_statu=select_statu.selectedIndex ;
										 var statu= select_statu.options[index_statu].text;
									
									
									 var urlrf = window.location.href;
										// console.log(urlrf);
											var flag=urlrf.indexOf("WarningServlet2?sn=");
											//console.log(flag);
											if (flag!=-1) {sessionStorage.setItem('urlrf', urlrf);}else {}
											var urlHref=sessionStorage.getItem('urlrf');
								}