 function codeA(a) {
		      var codeA= encodeURIComponent(encodeURIComponent(a));
		       return codeA;
		      }
		 
		 function upd() {
		var contractid=document.getElementById("contractid").value;
		form=document.getElementById("form1");
		form1.action="UpDataContract";
		
		
		console.log(contractid);
			console.log(3);
if (contractid.length>0) {
	 if(confirm("是否提交？点击确认提交合同信息")){
		//确认执行时的代码
		// form=document.getElementById("form1");
		// form1.action="UpDataContract";  
		form1.submit();
    }else{
        return ;//取消执行时的代码
    }

	
}else{
	alert("请输入合同编号!");
	return ;
} 
		




			

		}