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
	 if(confirm("�Ƿ��ύ�����ȷ���ύ��ͬ��Ϣ")){
		//ȷ��ִ��ʱ�Ĵ���
		// form=document.getElementById("form1");
		// form1.action="UpDataContract";  
		form1.submit();
    }else{
        return ;//ȡ��ִ��ʱ�Ĵ���
    }

	
}else{
	alert("�������ͬ���!");
	return ;
} 
		




			

		}