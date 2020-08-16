init();
function init() {
   // console.log(listGson.length);
    if (listGson.length==0) {
	    pname="";
	    sn = ""; 
		pos1 = ""; 
		pos2 = ""; 
		pos3 = ""; 
		pos="//";
		ip1 = ""; 
		ip2 = ""; 
		ip3 = ""; 
		ip="//";
		styp1="";
		styp2 = "";
		styp="";
		sname="";
		sid = ""; 
		did = ""; 
		stdate = ""; 
		use = ""; 
		ownname1 = "";
		ownname2 = "";
		ownname3 = ""; 
		ownname4 = ""; 
		ownname="///";
		proname1 = ""; 
		proname2 = ""; 
		proname3 = ""; 
		proname="//";
		manname1 = ""; 
		manname2 = ""; 
		manname3 = "";
		manname="//";
		agename1 = ""; 
		agename2 = ""; 
		agename3 = ""; 
		agename="//";
		mantyp="";
		port1 = ""; 
					port2 = ""; 
					port3 = ""; 
					port="//";
					cpu1 = ""; 
					cpu2 = "";
					cpu="/";
					memory = ""; 
					disk = ""; 
					syn1 = "";
					syn2 = ""; 
					syn="/";
						oracle = ""; 
						oth = "";
    }
    else {
	 pname=listGson[0].pname;
	//    console.log(pname);
	    sn = listGson[0].sn; 
	    	
	    	pos=listGson[0].pos;
	    	pos1=pos.substring(0,pos.indexOf("/"));
	        pos2=pos.substring(pos.indexOf("/")+1,pos.lastIndexOf("/"));
	        pos3=pos.substring(pos.lastIndexOf("/")+1);
	        
	        ip=listGson[0].ip;
	        ip1=ip.substring(0,ip.indexOf("/"));
	        ip2=ip.substring(ip.indexOf("/")+1,ip.lastIndexOf("/"));
	        ip3=ip.substring(ip.lastIndexOf("/")+1);
	    	
	    	styp=listGson[0].styp;
	    	 styp1=styp.substring(0,styp.indexOf("/"));
	    	styp2=styp.substring(styp.lastIndexOf("/")+1);
	    	
	    	sname=listGson[0].sname;
	    //	console.log(sname);
	    	sid = listGson[0].sid; 
	    	did = listGson[0].did; 
	    			stdate = listGson[0].stdate; 
	    	use = listGson[0].use; 
	    		
	    					ownname=listGson[0].ownname;
	    					ownname1=ownname.substring(0,ownname.indexOf("/"));
	    				    ownname2=ownname.substring(ownname.indexOf("/")+1,ownname.indexOf("/",ownname.indexOf("/")+1));
	    				    ownname3=ownname.substring(ownname.indexOf("/",ownname.indexOf("/")+1)+1,ownname.lastIndexOf("/"));
	    				    ownname4=ownname.substring(ownname.lastIndexOf("/")+1);
	    						proname=listGson[0].proname;
	    						proname1=proname.substring(0,proname.indexOf("/"));
	    					    proname2=proname.substring(proname.indexOf("/")+1,proname.lastIndexOf("/"));
	    					    proname3=proname.substring(proname.lastIndexOf("/")+1);
	    					manname=listGson[0].manname;
	    					
	    					 manname1=manname.substring(0,manname.indexOf("/"));
	    					    manname2=manname.substring(manname.indexOf("/")+1,manname.lastIndexOf("/"));
	    					    manname3=manname.substring(manname.lastIndexOf("/")+1); 
	    					    
	    				//	    console.log(manname1); console.log(manname2); console.log(manname3);
	    					agename=listGson[0].agename;   
	    					 agename1=agename.substring(0,agename.indexOf("/"));
	    					    agename2=agename.substring(agename.indexOf("/")+1,agename.lastIndexOf("/"));
	    					    agename3=agename.substring(agename.lastIndexOf("/")+1); 
	    					
	    					mantyp=listGson[0].mantyp;
	    					
	    				port=listGson[0].port;
	    				port1=port.substring(0,port.indexOf("/"));
	    			    port2=port.substring(port.indexOf("/")+1,port.lastIndexOf("/"));
	    			    port3=port.substring(port.lastIndexOf("/")+1);
	    				
	    				cpu=listGson[0].cpu;
	    				 cpu1=cpu.substring(0,cpu.indexOf("/"));
	    				    cpu2=cpu.substring(cpu.indexOf("/")+1);
	    				
	    				memory = listGson[0].memory; 
	    				disk = listGson[0].disk; 
	    				syn=listGson[0].syn;
	    				syn1=syn.substring(0,syn.indexOf("/"));
	    			    syn2=syn.substring(syn.indexOf("/")+1);
	    					oracle = listGson[0].oracle; 
	    					oth = listGson[0].oth;
    }
   
    					if (pname==null) {
    					document.getElementById("pname").value="";
					}else {
					    document.getElementById("pname").value=pname;
					}
    					
    					if (sn==null) {
        					document.getElementById("sn").value="";
    					}else {
    					    document.getElementById("sn").value=sn;
    					}
    					selectinit("pos1",pos1);
    					document.getElementById("pos2").value=pos2;
    					document.getElementById("pos3").value=pos3;
    					document.getElementById("ip1").value=ip1;
    					document.getElementById("ip2").value=ip2;
    					document.getElementById("ip3").value=ip3;
    					document.getElementById("styp1input").style.display="inline";
    					document.getElementById("styp1").style.display="none";
    					document.getElementById("styp1input").value=styp1;
    					document.getElementById("styp2").value=styp2;
    					if(sname!=null){initCheck("sname","input",2,sname);}
    					
    					if (sid==null) {
    					document.getElementById("sid").value="";
					}else {
					    document.getElementById("sid").value=sid;
					}
    					if (did==null) {
        					document.getElementById("did").value="";
    					}else {
    					    document.getElementById("did").value=did;
    					}
    					if (stdate==null) {
    					document.getElementById("stdate").value="";
					}else {
					    document.getElementById("stdate").value=stdate;
					}
    					if (use==null) {
        					document.getElementById("use").value="";
    					}else {
    					    document.getElementById("use").value=use;
    					}
    					selectinit("ownname1",ownname1);
    					selectinit("ownname2",ownname2);
    					document.getElementById("ownname3").value=ownname3;
    					document.getElementById("ownname4").value=ownname4;
    					document.getElementById("proname1").value=proname1;
    					document.getElementById("proname2").value=proname2;
    					document.getElementById("proname3").value=proname3;
    					document.getElementById("agename1").value=agename1;
    					document.getElementById("agename2").value=agename2;
    					document.getElementById("agename3").value=agename3;
    					document.getElementById("manname1").value=manname1;
    					document.getElementById("manname2").value=manname2;
    					document.getElementById("manname3").value=manname3;
    					if(mantyp!=null){initCheck("mantyp","input",5,mantyp);}
    					document.getElementById("port1").value=port1;
    					document.getElementById("port2").value=port2;
    					document.getElementById("port3").value=port3;
    					document.getElementById("cpu1").value=cpu1;
    					document.getElementById("cpu2").value=cpu2;
    					if (memory==null) {
    					document.getElementById("memory").value="";
					}else {
					    document.getElementById("memory").value=memory;
					}
    					if (disk==null) {
    					document.getElementById("disk").value="";
					}else {
					    document.getElementById("disk").value=disk;
					}
    					selectinit("syn1",syn1);
    					document.getElementById("syn2").value=syn2;
    					
    					if (oracle==null) {
        					document.getElementById("oracle").value="";
    					}else {
    					    document.getElementById("oracle").value=oracle;
    					}
    					if (oth==null) {
    					document.getElementById("oth").value="";
					}else {
					    document.getElementById("oth").value=oth;
					}
}

//console.log(id);


function selectinit(selectId, checkValue){  
                         var select = document.getElementById(selectId);  
                         for (var i = 0; i < select.options.length; i++){  
                         if (select.options[i].value == checkValue){  
                         select.options[i].selected = true;  
                         break;  }  }  }

function selecta(selectx) {

    var index = selectx.length;
//     console.log(index);
    var s = false;
    var dd = "0";
    for (i = 0; i < index; i++) {
	s = selectx[i].selected;
// 	console.log(s);
	if (s) {
	    dd = selectx[i].text;
	    return dd;
	   
	}
    }
}

function checkboxa(checkboxName){
	var box = document.getElementsByName(checkboxName);
	var bb=[];
	var cc="";
	for(i=0;i<box.length;i++){
		if(box[i].checked){
			bb.push(box[i].value);
		}
	}
	if(bb.length==0){}else{cc=bb.toString()}
	return cc;
}

function check(x){
    Item();
	if (confirm("是否提交？点击确认提交录入信息")) {
	    var url = "AddTestServlet1";
	    var data = "pname=" + pname+"&sn="+sn+"&pos="+pos+"&ip="+ip+"&styp="+styp+"&sname="+sname+"&sid="+sid+"&did="+did+"&stdate="+stdate+"&use="+use+"&ownname="+ownname+"&proname="+proname+"&manname="+manname+"&agename="+agename+"&mantyp="+mantyp+"&port="+port+"&CPU="+CPU+"&memory="+memory+"&disk="+disk+"&syn="+syn+"&oracle="+oracle+"&oth="+oth+"&x="+x;
	    getPost(data, url);
	
	
//	    local.href="Testform.jsp";
	} else {
	    return;// 取消执行时的代码 
	}
}




function initCheck(id,tagName,len,val) {
    var dd=document.getElementById(id);
  // console.log(dd);
    var dd=dd.getElementsByTagName(tagName);
 //   console.log(dd);
    for (i=0;i<len;i++){
      var dd0=  dd[i].value;
     if(val==null){dd[i].checked=false;}
     else {
	 if(val.indexOf(dd0)!=-1){dd[i].checked=true;}else{ dd[i].checked=false;} 
    }
      
    }
}


function checkall() {
    Item();
       
    if (pname == null || pname == "") {
	alert("请输入系统名称！");
	return false;
    } else if (sn == null || sn == "") {
	alert("请输入设备序列号！");
	return false;
    } else {
	if (confirm("是否提交？点击确认提交录入信息")) {
	    var url = "AddTestReturnServlet";
	    var data = "pname=" + pname+"&sn="+sn+"&pos="+pos+"&ip="+ip+"&styp="+styp+"&sname="+sname+"&sid="+sid+"&did="+did+"&stdate="+stdate+"&use="+use+"&ownname="+ownname+"&proname="+proname+"&manname="+manname+"&agename="+agename+"&mantyp="+mantyp+"&port="+port+"&CPU="+CPU+"&memory="+memory+"&disk="+disk+"&syn="+syn+"&oracle="+oracle+"&oth="+oth;
	    getPost(data, url);
 		/*alert("录入成功！");
 	    location.href = "Testform.jsp";*/
	} else {
	    return;// 取消执行时的代码
	}
}}


function getPost(data, url) {
    var httpRequest = new XMLHttpRequest(); // 第一步：创建需要的对象
    httpRequest.open('POST', url, true); // 第二步：打开连接
    httpRequest.setRequestHeader("Content-type",  "application/x-www-form-urlencoded"); // 设置请求头
    // 注：post方式必须设置请求头（在建立连接后设置请求头）
    httpRequest.send(data); // 发送请求 将情头体写在send中
    var json = null;
    httpRequest.onreadystatechange = function() { // 请求后的回调接口，可将请求成功后要执行的程序写在其中
          if (httpRequest.readyState == 4 && httpRequest.status == 200) { //  验证请求是否发送成功
                 var json = httpRequest.responseText; // 获取到服务端返回的数据
          //       console.log(json);
       	   if(json==1){alert('已经录入过相同的设备序列号!');return;}
       	   else if(json==2){alert('录入设备成功!');window.location.href='Testform.jsp';}
       	   else if(json=="check"){alert('暂存成功!');window.location.href='Testform.jsp';}
          }
    };
}


function Item() {

    pname = document.getElementById("pname").value; 
    sn = document.getElementById("sn").value;
    pos1= selecta( document.getElementById("pos1"))
    	    pos2 =  document.getElementById("pos2").value;
    	    pos3 = document.getElementById("pos3").value;
    	    pos = pos1 + "/" + pos2 + "/" + pos3;
    	    ip1 = document.getElementById("ip1").value;
    	    ip2 = document.getElementById("ip2").value;
    	    ip3 = document.getElementById("ip3").value; 
    	    ip = ip1 + "/" + ip2 + "/" + ip3;
    	     if (document.getElementById("styp1").style.display=="inline") {
    		 styp1= selecta( document.getElementById("styp1"));
    //		console.log(styp1);
    	    }else {
    		styp1=	document.getElementById("styp1input").value;
    	//	console.log(styp1);
    	    }
    	    
    	    styp2 = document.getElementById("styp2").value;
    	//     console.log(styp2);
    	    styp = styp1 + "/" + styp2; 
    	    sname = checkboxa("checkbox2");
    	    sid = document.getElementById("sid").value;
    	    did = document.getElementById("did").value;
    	    stdate = document.getElementById("stdate").value;
    	    use =document.getElementById("use").value;
    	    ownname1 = selecta(document.getElementById("ownname1"));
    	    ownname2 = selecta(document.getElementById("ownname2"));
    	    ownname3 = document.getElementById("ownname3").value; 
    	    ownname4 = document.getElementById("ownname4").value;
    	    ownname = ownname1 + "/" + ownname2 + "/" + ownname3 + "/"+ ownname4, 
    	    proname1 = document.getElementById("proname1").value;
    	    proname2 = document.getElementById("proname2").value; 
    	    proname3 = document.getElementById("proname3").value;
    	    proname = proname1 + "/" + proname2 + "/" + proname3;
    	    manname1 = document.getElementById("manname1").value; 
    	//    console.log(manname1);
    	    manname2 = document.getElementById("manname2").value;
    	    manname3 =  document.getElementById("manname3").value;
    	    manname = manname1 + "/" + manname2+ "/" + manname3, 
    //	 console.log(manname);
    	    agename1 = document.getElementById("agename1").value;
    	    agename2 = document.getElementById("agename2").value;
    	    agename3 = document.getElementById("agename3").value;
    	    agename = agename1 + "/" + agename2 + "/" + agename3;
    	    mantyp = checkboxa("checkbox1"); 
    	    port1 = document.getElementById("port1").value;
    	    port2 = document.getElementById("port2").value; 
    	    port3 = document.getElementById("port3").value; 
    	    port = port1+ "/" + port2 + "/" + port3; 
    	//    console.log(port);
    	    cpu1 = document.getElementById("cpu1").value;
    	    cpu2 = document.getElementById("cpu2").value; 
    	    CPU = cpu1 + "/" + cpu2;
    	    memory =  document.getElementById("memory").value; 
    	    disk =  document.getElementById("disk").value; 
    	    
    	    syn1 = selecta(document.getElementById("syn1")); 
    	    syn2 = document.getElementById("syn2").value; 
    	    syn = syn1 + "/"+ syn2; 
    	    oracle = document.getElementById("oracle").value; 
    	    oth = document.getElementById("oth").value;
    }



