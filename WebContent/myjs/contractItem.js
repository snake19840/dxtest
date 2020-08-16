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
		    
			 oppp= document.getElementById("oppp");
			     oppa= document.getElementById("oppa");
			     oppe= document.getElementById("oppe");
			     oppx= document.getElementById("oppx");
			     oppmail= document.getElementById("oppmail");
			     oppad= document.getElementById("oppad");
			     opppayb= document.getElementById("opppayb");
			     opppaya= document.getElementById("opppaya");
			     opppayz= document.getElementById("opppayz");
			     opppayh= document.getElementById("opppayh");
			     opppaye= document.getElementById("opppaye");
			     opppaya2= document.getElementById("opppaya2");
			     opppaym= document.getElementById("opppaym");
//			     console.log(opppaym);
//			     console.log(oppu);
//			     console.log(oppn);
			     opppayid= oppid;
			
			    mya= document.getElementById("mya");
			     myp= document.getElementById("myp");
			     mye= document.getElementById("mye");
			     myad= document.getElementById("myad");
			     myx= document.getElementById("myx");
			     myemail= document.getElementById("myemail");

			     myn= document.getElementById("myn1");
			     myn1= document.getElementById("myn");
			     mye2= document.getElementById("mye21");
			     mye21= document.getElementById("mye2"); 
			     oppnmain= document.getElementById("oppnmain");
			     oppn= document.getElementById("oppn");
			     oppe2= document.getElementById("oppe21");
			     oppe21= document.getElementById("oppe2"); 
			     
			     mypayb= document.getElementById("mypayb");
			     mypaya= document.getElementById("mypaya");
			     mypayz= document.getElementById("mypayz");
			     mypayh= document.getElementById("mypayh");
			     mypaye= document.getElementById("mypaye");
			     mypaya2= document.getElementById("mypaya2");
			     mypaym= document.getElementById("mypaym");
			     mypayid= myid; 
			     plan4= document.getElementById("CB_class_s1");
		     classf=document.getElementById("CB_class_s1");
		     plan2=document.getElementById("plan2");
		     plan21=document.getElementById("plan21");
		  //  classf= selecta(classf);
		 //   plan2=selecta(plan2);
			if (classf=="选择大类"){classf="";}
// 		     paycount=document.getElementById("lin").value;
// 		     payplan0=document.getElementById("li1");
// 		     payplan1=payplan0.getElementsByTagName("li");
// 		     payname=document.getElementsByName("payname");
// 		     paydate=document.getElementsByName("paydate");
// 		     paypor=document.getElementsByName("paypor");
// 		     classson=document.getElementsByName("classson");
// 		     plan3= document.getElementById("plan3");
// 		     lin= document.getElementById("lin");
		     
		}
		
		function init() {
		    item();
		  myn.textContent=contractListItemGson[0].myn;
		  mye2.textContent=contractListItemGson[0].mye2;
		  myn1.textContent=contractListItemGson[0].myn;
		  mye21.textContent=contractListItemGson[0].mye2;
		  oppnmain.textContent=contractListItemGson[0].oppn;
		  oppe2.textContent=contractListItemGson[0].oppe2;
		  oppn.textContent=contractListItemGson[0].oppn;
		  oppe21.textContent=contractListItemGson[0].oppe2;
		  
		  myu.textContent= contractListItemGson[0].myu;
		  mya.textContent= contractListItemGson[0].mya;
		     myp.textContent= contractListItemGson[0].myp;
		     mye.textContent= contractListItemGson[0].mye;
		     myad.textContent= contractListItemGson[0].myad;
		     myx.textContent= contractListItemGson[0].myx;
		     myemail.textContent= contractListItemGson[0].myemail;
// 		     console.log(contractListItemGson[0].mypayb);
		    mypayb.textContent= contractListItemGson[0].mypayb;
		    mypaya.textContent= contractListItemGson[0].mypaya;
		    mypayz.textContent= contractListItemGson[0].mypayz;
		    mypayh.textContent= contractListItemGson[0].mypayh;
		    mypaye.textContent= contractListItemGson[0].mypaye;
		    mypaya2.textContent= contractListItemGson[0].mypaya2;
		    mypaym.textContent= contractListItemGson[0].mypaym;
		    
		    oppu.textContent= contractListItemGson[0].oppu;
			  oppa.textContent= contractListItemGson[0].oppa;
			     oppp.textContent= contractListItemGson[0].oppp;
			     oppe.textContent= contractListItemGson[0].oppe;
			     oppad.textContent= contractListItemGson[0].oppad;
			     oppx.textContent= contractListItemGson[0].oppx;
			     oppmail.textContent= contractListItemGson[0].oppmail;
			    opppayb.textContent= contractListItemGson[0].opppayb;
			    opppaya.textContent= contractListItemGson[0].opppaya;
			    opppayz.textContent= contractListItemGson[0].opppayz;
			    opppayh.textContent= contractListItemGson[0].opppayh;
			    opppaye.textContent= contractListItemGson[0].opppaye;
			    opppaya2.textContent= contractListItemGson[0].opppaya2;
			    opppaym.textContent= contractListItemGson[0].opppaym;
		    
		  
		  oppe2.textContent=contractListItemGson[0].oppe2;
		  oppn.textContent=contractListItemGson[0].oppn;
		  
		//    myn.innerHTML = "1";
		dbclick("myd","myModal");
		dbclick("oppd","myModal2");
		}
		
		function closelist(myModalId) {
		    document.getElementById(myModalId).style.display="none";
			document.getElementById(myModalId).classList.remove("in");
		}
		
		function dbclick(inputId,myModalId) {
		    var timer = null;
			document.getElementById(inputId).addEventListener('click', function(e) {
			    clearTimeout(timer);
			    timer = setTimeout(function() {// 初始化一个延时
//				console.log("1");
//				 console.log(e);
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