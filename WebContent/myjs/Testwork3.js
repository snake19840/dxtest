function searchlist() {
	//alert(11);
var stno=document.getElementById("stno").value;
var sdate=document.getElementById("sdate").value;
var edate=document.getElementById("edate").value;
var message=document.getElementById("message").value;
// console.log(ston);
// console.log(sdate);
// console.log(edate);
// console.log(message);

 console.log(stno);
// console.log(sdate);
// console.log(edate);
// console.log(message);
	location.href="WarningSelect6?sdate="+sdate+"&edate="+edate+"&message="+codeA(message)+"&stno="+stno;
	
}

function codeA(a) {
      var codeA= encodeURIComponent(encodeURIComponent(a));
       return codeA;
      }



