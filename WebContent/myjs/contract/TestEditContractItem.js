 init();
	 
	function item() {
	    contractid= document.getElementById("contractid");
	     contractname= document.getElementById("contractname");
	     markdate= document.getElementById("markdate");
	     contractnlife= document.getElementById("contractnlife");
	     myname= document.getElementById("myname");
	     oppname= document.getElementById("oppname");
	     oppu= document.getElementById("oppu");
	     myu= document.getElementById("myu");
	     oppid= document.getElementById("oppid");
	     myid= document.getElementById("myid");
	     camount=document.getElementById("camount");
	    
		 oppp= document.getElementById("oppp1");
		     oppa= document.getElementById("oppa1");
		     oppn= document.getElementById("oppn1");
		     oppe= document.getElementById("oppe1");
		     oppx= document.getElementById("oppx1");
		     oppmail= document.getElementById("oppmail1");

		     oppe2= document.getElementById("oppe21");
		     oppad= document.getElementById("oppad1");
		     opppayb= document.getElementById("opppayb1");
		     opppaya= document.getElementById("opppaya1");
		     opppayz= document.getElementById("opppayz1");
		     opppayh= document.getElementById("opppayh1");
		     opppaye= document.getElementById("opppaye1");
		     opppaya2= document.getElementById("opppaya21");
		     opppaym= document.getElementById("opppaym1");
//		     console.log(opppaym);
//		     console.log(oppu);
//		     console.log(oppn);
		     opppayid= oppid;
		
		    mya= document.getElementById("mya1");
		     myp= document.getElementById("myp1");
		     myn= document.getElementById("myn1");
		     mye= document.getElementById("mye1");
		     myad= document.getElementById("myad1");
		     mye2= document.getElementById("mye21");
		     myx= document.getElementById("myx1");
		     myemail= document.getElementById("myemail1");

		     mypayb= document.getElementById("mypayb1");
		     mypaya= document.getElementById("mypaya1");
		     mypayz= document.getElementById("mypayz1");
		     mypayh= document.getElementById("mypayh1");
		     mypaye= document.getElementById("mypaye1");
		     mypaya2= document.getElementById("mypaya21");
		     mypaym= document.getElementById("mypaym1");
		     mypayid= myid; 
		     plan4= document.getElementById("CB_class_s1");
	     classf=document.getElementById("CB_class_s1");
	     plan2=document.getElementById("plan2");
	     plan21=document.getElementById("plan21");
	  //  classf= selecta(classf);
	 //   plan2=selecta(plan2);
		if (classf=="选择大类"){classf="";}
	     paycount=document.getElementById("lin").value;
	     payplan0=document.getElementById("li1");
//	     payplan1=payplan0.getElementsByTagName("li");
	     payname=document.getElementsByName("payname");
	     paydate=document.getElementsByName("paydate");
	     paypor=document.getElementsByName("paypor");
	     classson=document.getElementsByName("classson");
	     plan3= document.getElementById("plan3");
	     lin= document.getElementById("lin");
	     
	}
	
	function init() {
	    item();
	  //  console.log(contractListItemGson);
	  //  console.log(contractListItemFileGson);
	    for(var i in contractListItemGson){
		 contractid.value=contractListItemGson[0].contractid;
		 contractname.value=contractListItemGson[0].contractname;
		 markdate.value=contractListItemGson[0].markdate;
		 contractnlife.value=contractListItemGson[0].contractnlife;
		 myname.value=contractListItemGson[0].myname;
		 oppname.value=contractListItemGson[0].oppname;
		 oppu.value=contractListItemGson[0].oppu;
		 myu.value=contractListItemGson[0].myu;
		 oppid.value=contractListItemGson[0].oppid;
		 myid.value=contractListItemGson[0].myid;
		 camount.value=contractListItemGson[0].camount;
		 oppu.value=contractListItemGson[0].oppu;
		 oppp.value=contractListItemGson[0].oppp;
		 oppa.value=contractListItemGson[0].oppa;
		 oppn.value=contractListItemGson[0].oppn;
		 oppe.value=contractListItemGson[0].oppe;
		 oppx.value=contractListItemGson[0].oppx;
		 oppmail.value=contractListItemGson[0].oppmail;
		 oppid.value=contractListItemGson[0].oppid;
		 oppe2.value=contractListItemGson[0].oppe2;
		 oppad.value=contractListItemGson[0].oppad;
		 opppayb.value=contractListItemGson[0].opppayb;
		 opppaya.value=contractListItemGson[0].opppaya;
		 opppayz.value=contractListItemGson[0].opppayz;
		 opppayh.value=contractListItemGson[0].opppayh;
		 opppaye.value=contractListItemGson[0].opppaye;
		 opppaya2.value=contractListItemGson[0].opppaya2;
		 opppaym.value=contractListItemGson[0].opppaym;
		 opppayid.value=contractListItemGson[0].opppayid;
		 myu.value=contractListItemGson[0].myu;
		 mya.value=contractListItemGson[0].mya;
		 myp.value=contractListItemGson[0].myp;
		 myn.value=contractListItemGson[0].myn;
		 mye.value=contractListItemGson[0].mye;
		 myad.value=contractListItemGson[0].myad;
		 mye2.value=contractListItemGson[0].mye2;
		 myx.value=contractListItemGson[0].myx;
		 myemail.value=contractListItemGson[0].myemail;
		 myid.value=contractListItemGson[0].myid;
		 mypayb.value=contractListItemGson[0].mypayb;
		 mypaya.value=contractListItemGson[0].mypaya;
		 mypayz.value=contractListItemGson[0].mypayz;
		 mypayh.value=contractListItemGson[0].mypayh;
		 mypaye.value=contractListItemGson[0].mypaye;
		 mypaya2.value=contractListItemGson[0].mypaya2;
		 mypaym.value=contractListItemGson[0].mypaym;
		 mypayid.value=contractListItemGson[0].mypayid;
		 plan4.value=contractListItemGson[0].plan4;
		 plan2.value=contractListItemGson[0].plan2;
		 if (plan2.value=="是") {
		    plan21.style.display="inline";
		    plan3.value=contractListItemGson[0].plan3;
		    }
		
		
		
		 
	    
	    }
		
	}
	
	function upd() {
	    item();
	    contractid=contractid.value;
	     oppid=oppid.value;
	     opppayid=oppid;
	     myid=myid.value;
	     mypayid=myid;
	     oppu=oppu.value;
	     oppp=oppp.value;
	     oppa=oppa.value;
	     oppn=oppn.value;
	     oppe=oppe.value;
	     oppx=oppx.value;
	     oppmail=oppmail.value;
	     oppe2=oppe2.value;
	     oppad=oppad.value;
	     opppayb=opppayb.value;
	     opppaya=opppaya.value;
	     opppayz=opppayz.value;
	     opppayh=opppayh.value;
	     opppaye=opppaye.value;
	     opppaya2=opppaya2.value;
	     opppaym=opppaym.value;
	     myu=myu.value;
	     mya=mya.value;
	     myp=myp.value;
	     myn=myn.value;
	     mye=mye.value;
	     myad=myad.value;
	     mye2=mye2.value;
	     myx=myx.value;
	     myemail=myemail.value;
	     mypayb=mypayb.value;
	     mypaya=mypaya.value;
	     mypayz=mypayz.value;
	     mypayh=mypayh.value;
	     mypaye=mypaye.value;
	     mypaya2=mypaya2.value;
	     mypaym=mypaym.value;
	     contractname=contractname.value;
	     oppunit=oppu;
	     markdate=markdate.value;
	     contractnlife =contractnlife .value;
	     camount=camount.value;
	  var  payname= document.getElementsByName("payname");
	  var  paypor= document.getElementsByName("paypor");
	  var  paydate= document.getElementsByName("paydate");
	   var paydate2= document.getElementsByName("paydate2");
	     var statu= document.getElementsByName("statu");
	    var stNum=0;
	    var statuAll="",
	     PLANDATE2="",
	     PLANM1="",
	    PLANDATE1="";
	    
	    
	     var plan1arr=[],planm2arr=[];
	    for (var i = 0; i < paycount; i++) {
	    	var obj=new Object();
	    	var obj2=new Object();
	    	obj.payname=payname[i].value;
	    	obj2.payname=payname[i].value;
	    	 obj.paypor=paypor[i].value;
	    	  obj2.paypor=paypor[i].value;
	    	  obj.paydate=paydate[i].value;
	    	  obj2.paydate=paydate2[i].value;
	    	  obj.statu="0";
	    	   obj2.statu=statu[i].checked==false? 0:1;
	    	   plan1arr.push(obj);
	    	   planm2arr.push(obj2);
	    	   stNum=statu[i].checked==true? i:0;
	    }
	    if(stNum==paycount){
	    statuAll="end";
	    }else{
	    PLANDATE2=paydate[stNum+1].value;
	    PLANDATE1=paydate2[stNum+1].value;
	    PLANM1=payname[stNum+1].value;
	    }
	    
	     myname=myname.value;
	     oppname=oppname.value;
		var plan1 = JSON.stringify(plan1arr);	
	var planm2 = JSON.stringify(planm2arr);	
		
		 
		  
		     if (contractname.length<1) {alert("请输入合同名称!");return;}
		    else if (markdate.length<1) {alert("请输入合同签订日期!");return;}
		    else if (contractnlife.length<1) {alert("请输入合同有效日期!");return;}
		    else if (myname.length<1) {alert("请输入甲方签署人!");return;}
		    else if (oppname.length<1) {alert("请输入乙方签署人!");return;}
		    else if (oppu.length<1) {alert("请输入乙方单位!");return;}
		    else if (opppaym.length<1) {alert("请输入乙方统一社会信用码!");return;}
		    else if (myu.length<1) {alert("请输入甲方单位!");return;}
		    else if (mypaym.length<1) {alert("请输入甲方统一社会信用码!");return;}
		    else if (camount.length<1) {alert("请输入付款金额!");return;}
		    else if (paycount.length<1) {alert("请输入付款次数!");return;}
		    
		     else {
			if (confirm("是否提交？点击确认提交合同信息")) {
			   console.log(plan1);
			  console.log(planm2);
			    
			    var url = "UpDataTestChakanContractItem";
				var data = "plan1=" + plan1+"&planm2=" + planm2+"&planm1=" + PLANM1+"&statu=" + statuAll+"&plandate2=" + PLANDATE2+"&plandate1=" + PLANDATE1+"&contractid=" + contractid+"&oppid=" + oppid+"&myid=" + myid+"&opppayid=" + opppayid+"&mypayid=" + mypayid+"&oppid="+oppid+"&myid="+myid+"&camount="+camount+"&contractname=" + contractname+"&markdate=" + markdate+"&contractnlife=" + contractnlife+"&myname=" + myname+"&oppname=" + oppname+"&oppunit=" + oppu+"&myu=" + myu+ "&mya=" + mya + "&myp=" + myp + "&myn=" + myn + "&mye=" + mye + "&myad=" + myad + "&mye2=" + mye2 + "&myx=" + myx + "&myemail=" + myemail + "&mypayb=" + mypayb + "&mypaya=" + mypaya + "&mypayz=" + mypayz + "&mypayh=" + mypayh + "&mypaye=" + mypaye + "&mypaya2=" + mypaya2 + "&mypaym=" + mypaym+ "&oppp=" + oppp + "&oppa=" + oppa + "&oppn=" + oppn + "&oppe=" + oppe + "&oppx=" + oppx + "&oppmail=" + oppmail + "&oppe2=" + oppe2 + "&oppad=" + oppad + "&opppayb=" + opppayb + "&opppaya=" + opppaya + "&opppayz=" + opppayz + "&opppayh=" + opppayh + "&opppaye=" + opppaye + "&opppaya2=" + opppaya2 + "&opppaym=" + opppaym;
			getPost(data, url);
			} else {
			    return;// 取消执行时的代码
			}
		}
	}
	
	
	
	function selecta( selectx) {
	    var s = false;
	    var dd = "0";
	 //   console.log(selectx);
	    if (selectx==""||selectx==null){return dd;}
	    else if (selectx=="undefined") {
		return dd;
	    }
	    else {
		var index = selectx.length;
	    }
//	     console.log(index);
	    for (i = 0; i < index; i++) {
	       s = selectx[i].selected;
//	     console.log(s);
	       if (s) {
	           dd = selectx[i].text;
	           return dd;
	       }
	    }
	}
	
	function set_select_checked(selectId, checkValue){  
            var select = document.getElementById(selectId);  
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
				
				var data=JSON.parse(json);
				if (data.statu == "success") {alert('修改成功!'); 
				this.pnamexString=data.pnamexString;
				this.planm2=data.planm2;
				this.contractListItemGson=data.contractListItemGson;
				}
			}
		};
	}