


/**
 * ��ҳ����
 * pno--ҳ��
 * psize--ÿҳ��ʾ��¼��
 * ��ҳ�����Ǵ���ʵ�����п�ʼ��������ڼӼ�ĳ����������ȷ�������ļ�¼��
 * ��js��ҳʵ����������ȫ�����أ�ͨ���Ƿ���ʾ������ɷ�ҳ����
 **/
 goPage(1, 5);

function goPage(pno, psize) {
	var itable = document.getElementById("w_masg");
//	console.log(itable);
	//var num = itable.rows.length;//�����������(���м�¼��)
	var num1=itable.getElementsByTagName("li");
	var num=num1.length;
//	console.log(num);
	var totalPage = 0;//��ҳ��
	var pageSize = psize;//ÿҳ��ʾ����
	//�ܹ��ּ�ҳ
	var n1=num / pageSize;
	var n2=parseInt(num / pageSize);
	if (n1> n2) {
		totalPage = n2 + 1;
	} else {
		totalPage = n2;
	}
	
	var currentPage = pno;//��ǰҳ��
	var startRow = (currentPage - 1) * pageSize + 1;//��ʼ��ʾ���� 31
	var endRow = currentPage * pageSize;//������ʾ����  40
	endRow = (endRow > num) ? num : endRow;  //40
//	console.log(endRow);
	//������ʾ����ʵ�ַ�ҳ
	for (var i = 1; i < (num + 1); i++) {
// 		var irow = itable.rows[i - 1];
		var irow =itable.getElementsByTagName("li")[i-1];
		if (i >= startRow && i <= endRow) {
			irow.style.display = "";
		} else {
			irow.style.display = "none";
		}
	}
	var tempStr = "��" + num + "����¼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��" + totalPage + "ҳ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ǰ��" + currentPage + "ҳ";
	if (currentPage > 1) {
		tempStr += "<a href=\"#\" onClick=\"goPage(" + (1) + "," + psize + ")\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ҳ</a>";
		tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage - 1) + "," + psize + ")\"><��һҳ</a>"
	} else {
		tempStr += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ҳ";
		tempStr += "<��һҳ";
	}
	if (currentPage < totalPage) {
		tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage + 1) + "," + psize + ")\">&nbsp;&nbsp;��һҳ></a>";
		tempStr += "<a href=\"#\" onClick=\"goPage(" + (totalPage) + "," + psize + ")\">βҳ</a>";
	} else {
		tempStr += "&nbsp;&nbsp;��һҳ>";
		tempStr += "βҳ";
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
			  //dateΪ�ַ���
			  var date= new Date(Date.parse(date.replace(/-/g,  "/")));      //ת����Data();
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
			  var w_locale=date.toLocaleString( ); //��ȡ������ʱ��
				var w_lodate=date .toLocaleDateString();//��ȡ����
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
				alert("Ѳ��ʱ���ʽ����ȷ");
				}else{
					c_sdate=c_sdate1.substr(0,10);
//			console.log(c_sdate);
			var e = new Date(c_sdate1);
			var e0 = new Date();
			if(e>e0){
			alert("Ѳ��ʱ�䳬����ǰʱ��!");
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
					    alert("����������!");
					}else if(confirm("ȷ���ύ��")){
					  
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
		  var w_locale=date.toLocaleString( ); //��ȡ������ʱ��
			var w_lodate=date .toLocaleDateString();//��ȡ����
			 var w_text = document.getElementById("w_text").value;
			 var w_name = document.getElementById("w_name");
			 var select_name=document.getElementById("select_name").text;
			
			 var index=document.getElementById("select_statu").selectedIndex;//��ȡ��ǰѡ���������.
			var statu= document.getElementById("select_statu").options[index].text;//��ȡ��ǰѡ������ı�.
// 			 var index_statu=select_statu.selectedIndex ;
			  w_text=line2br(w_text);
			
			  if(TT=="Testwork3"){
					c_sdate1=document.getElementById("dateInput").value;
				if(c_sdate1==""||c_sdate1==null){
				alert("Ѳ��ʱ���ʽ����ȷ");
				}else{
					c_sdate=c_sdate1.substr(0,10);
			console.log(c_sdate);
			var e = new Date(c_sdate1);
			var e0 = new Date();
			if(e>e0){
			alert("Ѳ��ʱ�䳬����ǰʱ��!");
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
				 
				alert("��ѡ��һ���ļ�!");
				 
				  return false; 
			}
			 else if (document.getElementById("w_text").value=="") {
				alert("�������������!");
				 return false; 
			}else if (statu=="") {
				alert("��ѡ���������!");
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
									  var w_locale=date.toLocaleString( ); //��ȡ������ʱ��
										var w_lodate=date .toLocaleDateString();//��ȡ����
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