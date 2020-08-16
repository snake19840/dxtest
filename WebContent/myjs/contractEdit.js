
		initlist();
		
		function codeA(a) {
		    var codeA = encodeURIComponent(encodeURIComponent(a));
		    return codeA;
		}

		function Item() {
// 		    contractid = document.getElementById("contractid").value;
// 		    oppu= document.getElementById("oppu").value;
// 		     document.getElementById("oppa").innerHTML="123";
// 		     oppa=document.getElementById("oppa").textContent;
		    
		     contractid= document.getElementById("contractid").value;
		     contractname= document.getElementById("contractname").value;
		     markdate= document.getElementById("markdate").value;
		     contractnlife= document.getElementById("contractnlife").value;
		     myname= document.getElementById("myname").value;
		     oppname= document.getElementById("oppname").value;
		     oppu= document.getElementById("oppu").value;
		     myu= document.getElementById("myu").value;
		     oppid= document.getElementById("oppid").value;
		     myid= document.getElementById("myid").value;
		     camount=document.getElementById("camount").value;
		     
		     if (oppid==null||oppid=="") {
			 oppp= document.getElementById("oppp1").value;
			     oppa= document.getElementById("oppa1").value;
			     oppn= document.getElementById("oppn1").value;
			     oppe= document.getElementById("oppe1").value;
			     oppx= document.getElementById("oppx1").value;
			     oppmail= document.getElementById("oppmail1").value;

			     oppe2= document.getElementById("oppe21").value;
			     oppad= document.getElementById("oppad1").value;
			     opppayb= document.getElementById("opppayb1").value;
			     opppaya= document.getElementById("opppaya1").value;
			     opppayz= document.getElementById("opppayz1").value;
			     opppayh= document.getElementById("opppayh1").value;
			     opppaye= document.getElementById("opppaye1").value;
			     opppaya2= document.getElementById("opppaya21").value;
			     opppaym= document.getElementById("opppaym1").value;
// 			     console.log(opppaym);
// 			     console.log(oppu);
// 			     console.log(oppn);
			     opppayid= oppid;
		    }else {
			oppp= document.getElementById("oppp").textContent;
			     oppa= document.getElementById("oppa").textContent;
			     oppn= document.getElementById("oppn").textContent;
			     oppe= document.getElementById("oppe").textContent;
			     oppx= document.getElementById("oppx").textContent;
			     oppmail= document.getElementById("oppmail").textContent;

			     oppe2= document.getElementById("oppe2").textContent;
			     oppad= document.getElementById("oppad").textContent;
			     opppayb= document.getElementById("opppayb").textContent;
			     opppaya= document.getElementById("opppaya").textContent;
			     opppayz= document.getElementById("opppayz").textContent;
			     opppayh= document.getElementById("opppayh").textContent;
			     opppaye= document.getElementById("opppaye").textContent;
			     opppaya2= document.getElementById("opppaya2").textContent;
			     opppaym= document.getElementById("opppaym").textContent;
			     opppayid= oppid;
		    }
		     
			if (myid==null||myid=="") {
			    mya= document.getElementById("mya1").value;
			     myp= document.getElementById("myp1").value;
			     myn= document.getElementById("myn1").value;
			     mye= document.getElementById("mye1").value;
			     myad= document.getElementById("myad1").value;
			     mye2= document.getElementById("mye21").value;
			     myx= document.getElementById("myx1").value;
			     myemail= document.getElementById("myemail1").value;

			     mypayb= document.getElementById("mypayb1").value;
			     mypaya= document.getElementById("mypaya1").value;
			     mypayz= document.getElementById("mypayz1").value;
			     mypayh= document.getElementById("mypayh1").value;
			     mypaye= document.getElementById("mypaye1").value;
			     mypaya2= document.getElementById("mypaya21").value;
			     mypaym= document.getElementById("mypaym1").value;
			     mypayid= myid; 
			}else {
			    mya= document.getElementById("mya").textContent;
			     myp= document.getElementById("myp").textContent;
			     myn= document.getElementById("myn").textContent;
			     mye= document.getElementById("mye").textContent;
			     myad= document.getElementById("myad").textContent;
			     mye2= document.getElementById("mye2").textContent;
			     myx= document.getElementById("myx").textContent;
			     myemail= document.getElementById("myemail").textContent;

			     mypayb= document.getElementById("mypayb").textContent;
			     mypaya= document.getElementById("mypaya").textContent;
			     mypayz= document.getElementById("mypayz").textContent;
			     mypayh= document.getElementById("mypayh").textContent;
			     mypaye= document.getElementById("mypaye").textContent;
			     mypaya2= document.getElementById("mypaya2").textContent;
			     mypaym= document.getElementById("mypaym").textContent;
			     mypayid= myid;
			}
		     
		     
		     classf=document.getElementById("CB_class_s1");
		     plan2=document.getElementById("plan2");
		    classf= selecta(classf);
		    plan2=selecta(plan2);
 			if (classf=="选择大类"){classf="";}
		     paycount=document.getElementById("lin").value;
		     payplan0=document.getElementById("li1");
		     payplan1=payplan0.getElementsByTagName("li");
		     payname=document.getElementsByName("payname");
		     paydate=document.getElementsByName("paydate");
		     paypor=document.getElementsByName("paypor");
		     classson=document.getElementsByName("classson");
		     plan3= document.getElementById("plan3").value;
		}
		
		
		
		function upd() {
		   Item();
		  /*  console.log(plan2);
		   console.log(plan3); */
		
		  
		     if (contractid.length<1) {alert("请输入合同编号!");return;}
		    else if (contractname.length<1) {alert("请输入合同名称!");return;}
		    else if (markdate.length<1) {alert("请输入合同签订日期!");return;}
		    else if (contractnlife.length<1) {alert("请输入合同有效日期!");return;}
		    else if (myname.length<1) {alert("请输入甲方签署人!");return;}
		    else if (oppname.length<1) {alert("请输入乙方签署人!");return;}
		    else if (oppu.length<1) {alert("请输入乙方单位!");return;}
		    else if (opppaym.length<1) {alert("请输入乙方统一社会信用码!");return;}
		    else if (myu.length<1) {alert("请输入甲方单位!");return;}
		    else if (mypaym.length<1) {alert("请输入甲方统一社会信用码!");return;}
		    else if (classf=="选择大类") {alert("请选择项目类别!");return;}
		    else if (camount.length<1) {alert("请输入付款金额!");return;}
		    else if (paycount.length<1) {alert("请输入付款次数!");return;}
		    
		     else {
			if (confirm("是否提交？点击确认提交合同信息")) {
			  // console.log(paypor);
				 var  arr=[];  
				 var f=null;
		if (paypor.length>0){ 
		 for (var i = 0; i < paycount; i++) {
		 	var obj=new Object();
					//	console.log(i);
						    obj.payname=selecta( payname[i]);
						//    console.log(selecta( payname[i]));
						    obj.paypor=paypor[i].value;
						  //  console.log(paypor[i].value);
						    obj.paydate=paydate[i].value;
						    obj.classson=selecta( classson[i]);
						    obj.statu="0";
						    arr.push(obj);
						    if(i>0){
						   d1=paydate[Number(i)-Number(1)].value;
						   d2=paydate[i].value;
						   d1=new Date(d1).valueOf();
						    d2=new Date(d2).valueOf();
						    if(d1<d2){
						    f=1;
						    }else{
						    f=0;
						    	break;
						    }	
						    }else{
						    f=1;
						    }
					    }
		 arr1=   JSON.stringify(arr);
		}
			  //  console.log(arr);
			
		//	 console.log(arr1);
			    var url = "UpDataContract";
				var data = "plan1=" + arr1+"&contractid=" + contractid+"&plan4=" + classf+"&plan2=" + plan2+"&plan3=" + plan3+"&oppid="+oppid+"&myid="+myid+"&camount="+camount+"&contractname=" + contractname+"&markdate=" + markdate+"&contractnlife=" + contractnlife+"&myname=" + myname+"&oppname=" + oppname+"&oppunit=" + oppu+"&myu=" + myu+ "&mya=" + mya + "&myp=" + myp + "&myn=" + myn + "&mye=" + mye + "&myad=" + myad + "&mye2=" + mye2 + "&myx=" + myx + "&myemail=" + myemail + "&mypayb=" + mypayb + "&mypaya=" + mypaya + "&mypayz=" + mypayz + "&mypayh=" + mypayh + "&mypaye=" + mypaye + "&mypaya2=" + mypaya2 + "&mypaym=" + mypaym+ "&oppp=" + oppp + "&oppa=" + oppa + "&oppn=" + oppn + "&oppe=" + oppe + "&oppx=" + oppx + "&oppmail=" + oppmail + "&oppe2=" + oppe2 + "&oppad=" + oppad + "&opppayb=" + opppayb + "&opppaya=" + opppaya + "&opppayz=" + opppayz + "&opppayh=" + opppayh + "&opppaye=" + opppaye + "&opppaya2=" + opppaya2 + "&opppaym=" + opppaym;
			if(f==1){
				getPost(data, url);
			}else{
				alert("时间顺序错误!");
			 return;
			}
			} else {
			    return;// 取消执行时的代码
			}
		   }
		}
		
		function dbclick(inputId,myModalId) {
		    var timer = null;
			document.getElementById(inputId).addEventListener('click', function(e) {
			    clearTimeout(timer);
			    timer = setTimeout(function() {// 初始化一个延时
			//	console.log("1");
				// console.log(e);
			    }, 250)
			}, false);
			
			document.getElementById(inputId).addEventListener('dblclick', function(e) {// 双击事件会先触发两次单击事件，然后再执行双击事件，使用清除定时器来达到双击只执行双击事件的目的
			    clearTimeout(timer);
			 //   console.log("2");
			    e.preventDefault();
			document.getElementById(myModalId).style.display="block";
			document.getElementById(myModalId).classList.add("in");
		//	  $('#myModal').modal('show');
			}, false);
		}
		
		function closelist(myModalId) {
		    document.getElementById(myModalId).style.display="none";
			document.getElementById(myModalId).classList.remove("in");
		}

		function showSon(id) {
		    // console.log(id);
		    var state = document.getElementById(id).style.display;

		    if (state == "none") {
			document.getElementById(id).style.display = "inline";
		    } else {
			document.getElementById(id).style.display = "none";
		    }
		}

		function showClassText(id1, id2) {
		    var state = document.getElementById(id1).style.display;
		    console.log(state);
		    if (state == "none") {
			document.getElementById(id1).style.display = "inline";
			document.getElementById(id2).style.display = "none";
		    } else {
			document.getElementById(id1).style.display = "none";
			document.getElementById(id2).style.display = "inline";
		    }
		}
		
		function selectfamily() {
		   var selectx= document.getElementById("plan2");
		  var x= selecta( selectx);
// 		  console.log(x);
			if (x=="是") {
			    document.getElementById("plan31").style.display = "inline"; 
			}else  {
			    document.getElementById("plan31").style.display = "none"; 
			}
		}
		

		
		function showList() {
		    var lin = document.getElementById("lin").value;
		    if (lin > 10) {
			alert("请输入1~10以内的数字");
		    } else if (lin <= 0) {
			alert("请输入1~10以内的数字");
		    }

		   var text = "";
			text += "	<table style=\"width:70%;\" >";
							
						
				text += "	<tr>";
				text += "		<th>";
				text += "			<b>";
				text += "				序号";
				text += "			</b>";
				text += "		</th>";
				text += "		<th>";
				text += "			<b>";
				text += "				付款名称";
				text += "			</b>";
				text += "		</th>";
				text += "		<th>";
				text += "			<b>";
				text += "				付款比例";
				text += "			</b>";
				text += "		</th>";
				text += "		<th>";
				text += "			<b>";
				text += "				付款日期";
				text += "			</b>";
				text += "		</th>";
				text += "	</tr>";
		    
		    
		    
		    for (var i = 0; i < lin; i++) {
			text += "	<tr style=\"text-align: center;\">";
			text += "		<td>";
			text += "			<b>";
			text += "				"+(Number(i)+Number(1));
			text += "			</b>";
			text += "		</td>";
			text += "		<td>";
			text += "			<select id=\"payname"+i+"\" name=\"payname\" style=\"width:130px;\">";
			text += "				<option value=\"0\">";
			text += "					选择付款名称";
			text += "				</option>";
			text += "			</select>";
			text += "		</td>";
			text += "		<td>";
			text += "			<input id=\"paypor"+i+"\" name=\"paypor\" style=\"width: 130px;\" type=\"number\">";
			text += "			<b style=\"font-size: 18px;padding-left: 5px;\">";
			text += "				%";
			text += "			</b>";
			text += "		</td>";
			text += "		<td>";
			text += "			<input id=\"paydate"+i+"\" name=\"paydate\" style=\"width: 130px;\" type=\"date\">";
			text += "		</td>";
			text += "	</tr>";
		    }
		   	text += "</table>";
		 document.getElementById("li1").style.display="block";
		    document.getElementById("li1").innerHTML = text;
		   
		   // console.log(text);
		    listson();
		}
		  
		
		function listson() {
		    var flist= document.getElementById("CB_class_s1");
		   // console.log(flist.getElementsByTagName("option"));
		   var selectx=flist.getElementsByTagName("option");
		   var lin= document.getElementById("lin").value;
		  var f= selecta(selectx);
		    //console.log(f);
		    if(f=="请选择项目大类"){return;}
		    else {
			 var url = "Son1";
				var data = "classfamily=" + f+"&lin="+lin;
				getPostSon1(data, url);
		    }
		    
		    function getPostSon1(data, url) {
			var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
			httpRequest.open('POST', url, true); // 第二步：打开连接
			httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); // 设置请求头
			// 注：post方式必须设置请求头（在建立连接后设置请求头）
			httpRequest.send(data); // 发送请求 将情头体写在send中
			var json = null;
			httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
				if (httpRequest.readyState == 4 && httpRequest.status == 200) { // 验证请求是否发送成功
					var json = httpRequest.responseText; // 获取到服务端返回的数据
					console.log(json);
				//	if (json == "oppSame") {alert('已经有相同的乙方单位信息请双击选择!');return;}
			var json1=json.substr(0,json.indexOf("]")+1);
			var json2=json.substring(json.indexOf("]")+1,json.indexOf("&&"));
			var lin=json.substr(json.indexOf("&&")+2);
// 			console.log(json1);
// 			console.log(json2);
// 			console.log(lin);
				 listsonGson = JSON.parse(json1);	
				 listpaynameGson = JSON.parse(json2);
//					console.log(listsonGson);
//					console.log(listpaynameGson);
					
					var text = "";
					var text2 = "";
					if(listpaynameGson=="[]"){
					    text += "<option value=\"0\">选择付款名称</option> ";
					}else {
					    text += "<option value=\"0\">选择付款名称</option> ";
						for (var i in listpaynameGson) {
							text += "<option value=\"" + (Number(i)+ 1) + "\">" + listpaynameGson[i].payname + "</option> ";
						}
					}
// 					console.log(text);
					if (listsonGson=="[]") {
					    text2 += "<option value=\"0\">选择子类</option> ";
					}else {
					    text2 += "<option value=\"0\">选择子类</option> ";
						for (var i in listsonGson) {
							text2 += "<option value=\"" + (Number(i)+ 1) + "\">" + listsonGson[i].classson + "</option> ";
						}  
					}
 			document.getElementById("classson").innerHTML = text2;
					
 			if(text!=null){
 			for (var i=0;i<lin;i++) {
					//    console.log(i);
					    document.getElementById("payname"+i).innerHTML = text;
					}
 			}
					
					
				}
			};
		}
		    
		}
		

		function selecta( selectx) {
		    var s = false;
		    var dd = "0";
//		    console.log(selectx);
		    if (selectx==""||selectx==null){return dd;}
		    else if (selectx=="undefined") {
			return dd;
		    }
		    else {
			var index = selectx.length;
		    }
//		     console.log(index);
		    
		    for (i = 0; i < index; i++) {
		       s = selectx[i].selected;
//		     console.log(s);
		       if (s) {
		           dd = selectx[i].text;
		           return dd;
		       }
		    }
		}
		
		
		
		
		
		function set_city(province, city) {
		     console.log(province);
		    var city = document.getElementById(city);
		     console.log(city);
		    var pv, cv;
		    var i, ii;

		    pv = province.value;
		    cv = city.value;

		    city.length = 1;

		    if (pv == '0') {
			return;
		    }
		    if (typeofcities[pv] == 'undefined') {
			return;
		    }

		    for (i = 0; i < cities[pv].length; i++) {
			ii = i + 1;
			city.options[ii] = new Option();
			city.options[ii].text = cities[pv][i];
			city.options[ii].value = cities[pv][i];
		    }
		}
		

		
		
		
		function initlist() {
		    var text = ""; 
		  for(i in list1Gson){
		      var oppid=list1Gson[i].oppid;
		      var oppu=list1Gson[i].oppu;
		      var oppp=list1Gson[i].oppp;
		      var oppn=list1Gson[i].oppn;
		      var opppaym=list1Gson[i].opppaym;

		      text += "<tr>";
			    text += "<td name=\"list1\">"+oppu+"</td>";
			    text += "<td name=\"list1\" class=\"center\">"+oppp+"</td>";
			    text += "<td name=\"list1\" class=\"center\">"+oppn+"</td>";
			    text += "<td name=\"list1\" class=\"center\">"+opppaym+"</td>";
			    text += "<td name=\"list1\" class=\"center\">";
			    text += "<button class=\"label label-success\" onclick=\"list1s('"+oppid+"')\">选择</span>";
			    text += "<input type=\"hidden\" value=\""+oppid+"\">";
			    text += "</td>";
			    text += "</tr>";
		  }
		  var text2 = ""; 
		  for(i in list2Gson){
		      var myid=list2Gson[i].myid;
		      var myu=list2Gson[i].myu;
		      var myp=list2Gson[i].myp;
		      var myn=list2Gson[i].myn;
		      var mypaym=list2Gson[i].mypaym;

		      text2 += "<tr>";
			    text2 += "<td name=\"list1\">"+myu+"</td>";
			    text2 += "<td name=\"list1\" class=\"center\">"+myp+"</td>";
			    text2 += "<td name=\"list1\" class=\"center\">"+myn+"</td>";
			    text2 += "<td name=\"list1\" class=\"center\">"+mypaym+"</td>";
			    text2 += "<td name=\"list1\" class=\"center\">";
			    text2 += "<button class=\"label label-success\" onclick=\"list2s('"+myid+"')\">选择</span>";
			    text2 += "<input type=\"hidden\" value=\""+myid+"\">";
			    text2 += "</td>";
			    text2 += "</tr>";
		  }
		  
		  var text33 = ""; 
 		  
		  
		   for(i in list3Gson){
		      var contractid=list3Gson[i].contractid;
		      var contractname=list3Gson[i].contractname;
		      var oppp=list3Gson[i].oppp;
		      var oppn=list3Gson[i].oppn;
		      var camount=list3Gson[i].camount;

		      text33 += "<tr>";
			    text33 += "<td name=\"list1\">"+contractid+"</td>";
			    text33 += "<td name=\"list1\" class=\"center\">"+contractname+"</td>";
			    text33 += "<td name=\"list1\" class=\"center\">"+oppp+"</td>";
			    text33 += "<td name=\"list1\" class=\"center\">"+oppn+"</td>";
			    text33 += "<td name=\"list1\" class=\"center\">"+camount+"</td>";
			    text33 += "<td name=\"list1\" class=\"center\">";
			    text33 += "<button class=\"label label-success\" onclick=\"list3s('"+contractid+"')\">选择</span>";
			    text33 += "<input type=\"hidden\" value=\""+contractid+"\">";
			    text33 += "</td>";
			    text33 += "</tr>";
		  } 
		  
		 
		//  console.log(classflistGson);
		  var text3 = "";
			text3 += "<option value=\"0\">请选择项目大类</option> ";
			for (var i in classflistGson) {
				text3 += "<option value=\"" + (Number(i)+ 1) + "\">" + classflistGson[i].classfamily + "</option> ";
			}
		  
		    document.getElementById("list1").innerHTML = text;
		    document.getElementById("list2").innerHTML = text2;
		    document.getElementById("list3").innerHTML = text33;
		    document.getElementById("list3").innerHTML = text33;
		    document.getElementById("CB_class_s1").innerHTML = text3;
// 		    双击事件
		    dbclick("oppu","myModal");
		    dbclick("myu","myModal1");
		    dbclick("plan31","myModal3");
		   
		    
		}
		
		function list1s(id) {
		    var url = "List1";
			var data = "oppid=" + id;
			postlist1(data, url);
			
			function postlist1(data, url) {
				var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
				httpRequest.open('POST', url, true); // 第二步：打开连接
				httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); // 设置请求头
				// 注：post方式必须设置请求头（在建立连接后设置请求头）
				httpRequest.send(data); // 发送请求 将情头体写在send中
				var json = null;
				httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
					if (httpRequest.readyState == 4 && httpRequest.status == 200) { // 验证请求是否发送成功
						var json = httpRequest.responseText; // 获取到服务端返回的数据
						
						document.getElementById("myModal").style.display="none" ;
						   document.getElementById("myModal").classList.remove("in") ;
					var opplayoutGson = JSON.parse(json);	
					console.log(opplayoutGson);
// 					console.log(document.getElementById("oppu"));
// 					console.log(opplayoutGson[0].oppu);
					document.getElementById("oppaDisplaylayout").style.display="block";
					document.getElementById("oppaDisplayinput").style.display="none";
					document.getElementById("oppMainDisplaylayout").style.display="block";
					document.getElementById("oppMainDisplayinput").style.display="none";
					document.getElementById("oppu").value = opplayoutGson[0].oppu;
					document.getElementById("oppid").value = opplayoutGson[0].oppid;
					 document.getElementById("oppp").textContent= opplayoutGson[0].oppp;
					   document.getElementById("oppa").textContent= opplayoutGson[0].oppa;
					  document.getElementById("oppn").textContent= opplayoutGson[0].oppn;
					     document.getElementById("oppe").textContent= opplayoutGson[0].oppe;
					    document.getElementById("oppx").textContent= opplayoutGson[0].oppx;
					     document.getElementById("oppmail").textContent= opplayoutGson[0].oppmail;

					     document.getElementById("oppe2").textContent= opplayoutGson[0].oppe2;
					      document.getElementById("oppad").textContent= opplayoutGson[0].oppad;
					     document.getElementById("opppayb").textContent= opplayoutGson[0].opppayb;
					      document.getElementById("opppaya").textContent= opplayoutGson[0].opppaya;
					      document.getElementById("opppayz").textContent= opplayoutGson[0].opppayz;
					     document.getElementById("opppayh").textContent= opplayoutGson[0].opppayh;
					     document.getElementById("opppaye").textContent= opplayoutGson[0].opppaye;
					     document.getElementById("opppaya2").textContent= opplayoutGson[0].opppaya2;
					      document.getElementById("opppaym").textContent= opplayoutGson[0].opppaym;
					}
				};
			}
		}
		
		function list3s(contractid) {
		    var plan3=contractid;
		    document.getElementById("myModal3").style.display="none";
			document.getElementById("myModal3").classList.remove("in");
			document.getElementById("plan3").value = plan3;
		}
		
		function list2s(id) {
		    var url = "List2";
			var data = "myid=" + id;
			postlist2(data, url);
			
			function postlist2(data, url) {
				var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
				httpRequest.open('POST', url, true); // 第二步：打开连接
				httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); // 设置请求头
				// 注：post方式必须设置请求头（在建立连接后设置请求头）
				httpRequest.send(data); // 发送请求 将情头体写在send中
				var json = null;
				httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
					if (httpRequest.readyState == 4 && httpRequest.status == 200) { // 验证请求是否发送成功
						var json = httpRequest.responseText; // 获取到服务端返回的数据
						
						document.getElementById("myModal1").style.display="none" ;
						   document.getElementById("myModal1").classList.remove("in") ;
					var mylayoutGson = JSON.parse(json);	
// 					console.log(opplayoutGson);
// 					console.log(document.getElementById("oppu"));
// 					console.log(opplayoutGson[0].oppu);
					document.getElementById("myaDisplaylayout").style.display="block";
					document.getElementById("myaDisplayinput").style.display="none";
					document.getElementById("myMainDisplaylayout").style.display="block";
					document.getElementById("myMainDisplayinput").style.display="none";
					document.getElementById("myu").value = mylayoutGson[0].myu;
					document.getElementById("myid").value = mylayoutGson[0].myid;
					 document.getElementById("myp").textContent= mylayoutGson[0].myp;
					   document.getElementById("mya").textContent= mylayoutGson[0].mya;
					  document.getElementById("myn").textContent= mylayoutGson[0].myn;
					     document.getElementById("mye").textContent= mylayoutGson[0].mye;
					    document.getElementById("myx").textContent= mylayoutGson[0].myx;
					     document.getElementById("myemail").textContent= mylayoutGson[0].myemail;

					     document.getElementById("mye2").textContent= mylayoutGson[0].mye2;
					      document.getElementById("myad").textContent= mylayoutGson[0].myad;
					     document.getElementById("mypayb").textContent= mylayoutGson[0].mypayb;
					      document.getElementById("mypaya").textContent= mylayoutGson[0].mypaya;
					      document.getElementById("mypayz").textContent= mylayoutGson[0].mypayz;
					     document.getElementById("mypayh").textContent= mylayoutGson[0].mypayh;
					     document.getElementById("mypaye").textContent= mylayoutGson[0].mypaye;
					     document.getElementById("mypaya2").textContent= mylayoutGson[0].mypaya2;
					      document.getElementById("mypaym").textContent= mylayoutGson[0].mypaym;
					}
				};
			}
		}
		
		function clear() {
		    document.getElementById("form1").reset();
		}
		
		function getPost(data, url) {
			var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
			httpRequest.open('POST', url, true); // 第二步：打开连接
			httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); // 设置请求头
			// 注：post方式必须设置请求头（在建立连接后设置请求头）
			httpRequest.send(data); // 发送请求 将情头体写在send中
			var json = null;
			httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
				if (httpRequest.readyState == 4 && httpRequest.status == 200) { // 验证请求是否发送成功
					var json = httpRequest.responseText; // 获取到服务端返回的数据
//					console.log(json);
					if (json == "oppSame") {alert('已经有相同的乙方单位信息请双击选择!');return;}
					if (json == "mySame") {alert('已经有相同的甲方单位信息请双击选择!');return;}
					if (json == "dataContractSame") {alert('已经有相同的合同编号!');return;}
					if (json == "dataContractSuccess") {alert('合同录入成功!');document.getElementById("form1").reset();location.href = "TestContract.jsp";}
					if (json == "dataContractfail") {alert('合同录入失败，请联系管理员!');return;}
										
				}
			};
		}
	