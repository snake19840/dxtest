function textareaTo(str) {
    let regs = new RegExp("\r", "g");
    let reg = new RegExp("\n", "g");
    let regSpace = new RegExp(" ", "g");
    str = str.replace(reg, "<br/>");
    str = str.replace(regs, "<br/>");
    str = str.replace(regSpace, "&nbsp;");
    return str;
}
function submitflie() {
    console.log(this);
}

function getCookie(name) {
 var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
 if(arr != null)
     {
   let ll=arr[2].indexOf("/")==-1?  arr[2].length:arr[2].indexOf("/");
     return  unescape(arr[2].substr(0,ll));
   }
  return null;
 }
 
/*����cookie*/ 
function setCookie(name,value,expires) {
 var exp = new Date();
 exp.setTime(exp.getTime() + expires*60*60*1000); 
document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString(); 
}

 //��ȡcookie 
function getCookie(name) {
 var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
 if(arr != null)
     {
   let ll=arr[2].indexOf("/")==-1?  arr[2].length:arr[2].indexOf("/");
     return  unescape(arr[2].substr(0,ll));
   }
  return null;
 }
 
 TT=getCookie("TT");

function  randomString(len) {
	len = len || 32;
	var $chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678'; /****Ĭ��ȥ�������׻������ַ�oOLl,9gq,Vv,Uu,I1****/
	var maxPos = $chars.length;
	var pwd = '';
	for (i = 0; i < len; i++) {
	pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
	}
   return pwd;
   }
var date=new Date();
function formatDate(date) { 
    var y = date.getFullYear();  
    var m = date.getMonth() + 1;  
    m = m < 10 ? '0' + m : m;  
    var d = date.getDate();  
    d = d < 10 ? ('0' + d) : d;  
    return y + '-' + m + '-' + d;  
 };  

	function nowD(date) {
var y = date.getFullYear();
var m = date.getMonth() + 1;
m = m < 10 ? ('0' + m) : m;
var d = date.getDate();
d = d < 10 ? ('0' + d) : d;
var h = date.getHours();
h=h < 10 ? ('0' + h) : h;
var minute = date.getMinutes();
minute = minute < 10 ? ('0' + minute) : minute;
var second=date.getSeconds();
second=second < 10 ? ('0' + second) : second;
return y + '-' + m + '-' + d+'T'+h+':'+minute;
};

function nowT(date,time) {
    var y = date.getFullYear();
    var m = date.getMonth() + 1;
    m = m < 10 ? ('0' + m) : m;
    var d = date.getDate();
    d = d < 10 ? ('0' + d) : d;
    var h = date.getHours();
    h=h < 10 ? ('0' + h) : h;
    var minute = date.getMinutes();
    minute = minute < 10 ? ('0' + minute) : minute;
    var second=date.getSeconds();
    second=second < 10 ? ('0' + second) : second;
    return y + '-' + m + '-' + d+'T'+time;
    };


var warning=new Vue({
    el:"#warning",
    data:{
	
	seen:false,
	Pagedata:[],
	// ����ҳ�������
	totalPage: [],
	      // ÿҳ��ʾ����
	      pageSize: 5,
	      // ����ҳ
	      pageNum: 0,
	      // ��ǰ��ʾ������
	     
	      // Ĭ�ϵ�ǰ��ʾ��һҳ
	      currentPage: 0,
	      currentPage1: 1,
	      couponSelected:statu,
	docFlag:false,
	docPercentage:0,
	action:'http://127.0.0.1:8080/dxtest1/UploadPictureItem/',
	WarningGsons:WarningGsons,
	sx_sdate:'',
	sx_edate:'',
	sx_statu:'',
	subcontents:WarningGsons,
	WarningStatuGsons:WarningStatuGsons,
	value1:'',
	newMessage:'',
	getNowTime:'',
	listusGson:listusGson,
	TT:false,
	isRec:true,
	WarningGsonpart:[],
	headers:{
	    enctype:"multipart/form-data",
		method:"post",
	},
	dataShow:[],
	totalLen:0,
	dialogImageUrl: '',
        dialogVisible: false,
    },
    
    mounted(){
    	
	if (time=="null") {
	    this.getNowTime=nowD(date);
	}else {
	    this.getNowTime=c_sdate.substr(0,10)+"T"+time;
	}
	if (TT=="Testwork3.jsp"||TT=="Testwork1.jsp") {
	    this.TT=true;
	};
	if(statu=="null"){ this.couponSelected="�澯";}
	
	this.dataShow=this.dataShowf(this.WarningGsons);
	this.totalLen=this.WarningGsons.length;
            },
      beforUpdate(){
        	
            },
            updated(){
            },
    methods:{
    	
//	isRec(){
//	   return this.WarningGsons['0'].rowData.STATU!='�ָ�' ? true:false;
//	},
	dataShowf(items){
	 	    console.log(this.WarningGsons.length);
//	 	    console.log(this.pageSize);
		  //���û�������룬select�г�ʼ�����ǿհ׵ģ�Ĭ��ѡ�о��޷�ʵ��
		        this.pageNum= items==0 ?   1:Math.ceil(items.length/this.pageSize)||1;
		      for (let i = 0; i < this.pageNum; i++) {
			      // ÿһҳ����һ������ ���� [['��һҳ������'],['�ڶ�ҳ������'],['����ҳ����']]
			      // ����ÿҳ��ʾ���� ����̨�����ݷָ ÿһҳ,����pageSizeΪ5�� ���һҳ��1-5(��slice������˵��0-5)�����ڶ�ҳ��6-10(��slice������˵��5-10)��...
			      this.totalPage[i] = items.slice(this.pageSize * i, this.pageSize * (i + 1));
			    }
		   // ��ǰ��ʾ������
		   return  this.totalPage[this.currentPage];
	},
	
	open3(index,pictures,statu,message) {
	        this.$alert('<input id="fileId"  type="file" >', '', {
	          dangerouslyUseHTMLString: true,
	          confirmButtonText: '�ϴ�',
	        })
	        .then(()=>{
	         var file=document.getElementById('fileId').files[0];//��ȡ�ļ���
	         console.log(file);
	       if (file==undefined) {
		   this.$message.error({
			message:"��ѡ���ļ�",
			type:"error",
			duration:1500
		    })
	    }else {
		let ub=this.$el.baseURI;
		let e=ub.indexOf(/dxtest/);
		e =ub.substring(0,e)+"/dxtest/upload/img/picture/"+AllListGsons+file.name;
		let picture= pictures==null? JSON.parse("[]"):JSON.parse(pictures);
		console.log(picture);
		let obj=new Object();
			obj.name=file.name;
			obj.url=e;
			picture.push(obj);
			let pictureadd = JSON.stringify(picture);
			 let param = new FormData();
			   //ͨ��append��form�����������
			    param.append("name", AllListGsons+file.name);
			   param.append("statu",  statu);
			    param.append("file", file);
			    param.append("message", message);
			    param.append("stno", AllListGsons);
			    param.append("picture", pictureadd);
			    console.log(this);
			axios({
		                url: '/dxtest/UploadPictureItem',
		                method: 'post',
		                hearders:this.headers,
		                data: param,
		            })
		            .then(
		        	    (response)=>
			        	{console.log(response.data); 
			        	if (response.data.statu=="success") {
			        	    this.dataShow=this.dataShowf(response.data.WarningGsons);
			        	   
					}else {
					    this.$message.error({
						message:"�ϴ�����",
						type:"error",
						duration:1500
					    })
					}
			        	})
			        	.catch( (error)=> {
			        	    this.$message.error({
						message:"�ϴ�����",
						type:"error",
						duration:1500
					    })
			        	 });
		
	    }
	            
	        })
	        .catch(() => {
            });
	},
	
	open2(url) {
	        this.$alert('<img src='+url+'></img> ', '', {
	          dangerouslyUseHTMLString: true
	        }).catch(() => {
                });
	},
	ismouseenter(){ this.seen=true;},
	ismouseleave(){this.seen=false;},
	bd(url){
	    
	    $('#fileId').on('change', function (e) {
		console.log(12);
	        //ԭ�����ļ�����
	        var curFile = this.files[0];
		var reader = new FileReader();
	        //������readAsDataURL����ԭ��File���󴫸�����
	        reader.readAsDataURL(curFile);//base64
	        //��������onload�¼���load���ȡ�Ľ����������result��������
// 	        reader.onload = function () {
// 	            $('div').append($('<img src="' + reader.result + '">'));
// 	        }
	    })
	    
		  return  "background:url("+url+");" 
		    },
	uploadImgBtn() {
            let form = new FormData($("#form")[0]);
            let _this = this
  },
           
	getCouponSelected(){
	   return this.couponSelected;
	},
	
	 handleSizeChange(val) {
	        console.log(`ÿҳ ${val} ��`);
	      },
	      
	      handleCurrentChange(val) {
		this.currentPage1=val-1;
		this.currentPage=this.currentPage1;
		console.log(val);
		console.log(this.currentPag);
		this.dataShow=this.dataShowf(this.WarningGsons);
		
	      },
	isEdit(name,da){
	    let  myDate = new Date();
		let aDate=new Date(da);
		aDate= new Date(aDate.valueOf() + Number(2*86400000));
	    let f=false;
	    if (listusGson[0].levela==1) {
		f=true;
	    }else if (listusGson[0].levela==2) {
		if (name==listusGson.userid) {
		    if (aDate>=myDate) {
			  f=true;	
			}else {
			    f=false;	
			}
		    }else {
			f=false;	
		    }
	    }
	    return f;
	},
	
	
	
	pictures(list){
	   let b= list!=null? JSON.parse(list):[];
	   return b;
	},
	
	delpic(file,fileList,index){
	    file= file.substring(file.lastIndexOf("/")+1);
	    let arrlist= JSON.parse(fileList);
	    arrlist.splice(index,1)
	       axios({
			url: '/dxtest/delpic',
	                method: 'post',
	                data: {
	                    "name":file,
	                    "picture":JSON.stringify(arrlist),
	                },
	                enctype:'application/json',
		    })
		    .then((response)=>{
			console.log(response.data);
			if (response.data.statu=="success") {
				this.dataShow=this.dataShowf(response.data.WarningGsons);
		      this.$notify.success({
		        title: '�ɹ�',
		        message: `�ļ�ɾ���ɹ�`,
		            duration:1500
		      });
			}else {
			    this.$notify.error({
			        title: '����',
			        message: `�ļ�ɾ��ʧ��`,
			            duration:1500
			      });
			}
	       	    })
		    .catch((error)=>{
			
		    });
	    
	},
	
	      handleCommand(command) {
		  files= command;
	    if(command[0]=="upfile"){ 
// 		console.log(this.$refs.upload[command[4]]);
console.log(this.$refs.upload);
		this.$refs.upload[command[4]].$el.click();
	    }else if (command[0]=="edit") {
		this.WarningGsons[command[4]].flag=this.WarningGsons[command[4]].flag ? false:true;
	    }else if (command[0]=="del"){
		this.open(command[1],command[2]);
	    }
		},
		
		delli(id){
		    axios({
			url: '/dxtest/deleli2',
	                method: 'post',
	                data: {
	                    "id":id,
	                },
	                enctype:'application/json',
		    }).then((response)=>{
			 this.dataShow=this.dataShowf(response.data.WarningGsons);
			 this.WarningGsons=response.data.WarningGsons;
			this.$message({
		            type: 'success',
		            message: 'ɾ���ɹ�!'
		          });
		           if(this.WarningGsons.length==0){
		          	location.href = "Testindex.jsp";
		          }
		          
		    }).catch((error)=>{
			 this.$notify.error({
			        title: '����',
			        message: `ɾ��ʧ��`,
			            duration:1500
			      });
		    });
		},
		
		 open(id,index) {
		 	this.WarningGsons[index].rowData.NOWDATE
		 	  let  myDate = new Date();
		let aDate=new Date(da);
		aDate= new Date(aDate.valueOf() + Number(2*86400000));
	    let f=false;
		 	
		 	
		 	
		        this.$confirm('�˲���������ɾ�����ļ�, �Ƿ����?', '��ʾ', {
		          confirmButtonText: 'ȷ��',
		          cancelButtonText: 'ȡ��',
		          type: 'warning'
		        }).then(() => {
		            this.delli(id);
		          
		        }).catch(() => {
		            console.log(2);
		          this.$message({
		            type: 'info',
		            message: '��ȡ��ɾ��'
		          });          
		        });
		      },
		
		saveli(message,id,index){
		    axios({
			url: '/dxtest/upmessage',
	                method: 'post',
	                data: {
	                    "message":message,
	                    "id":id,
	                },
	                enctype:'application/json',
		    }).then((response)=>{
			if (response.data.statu=="success") {
			         
				      this.$notify.success({
				        title: '�ɹ�',
				        message: `�޸ĳɹ�`,
				            duration:1500
				      });
				      this.dataShow=this.dataShowf(response.data.WarningGsons);
				     
					}else {
					    this.$notify.error({
					        title: '����',
					        message: `�޸�ʧ��`,
					            duration:1500
					      });
					    this.WarningGsons[index].flag= !isInput ? true:false;
					}
		    })
		    .catch((error)=>{
		    });
		    this.WarningGsons[index].flag=this.WarningGsons[index].flag ? false:true;
		},
		
		warningchart(){
//		     console.log(this.couponSelected);
//		    console.log(this.newMessage);
//		    console.log(this.listusGson[0].userid); 
//		     console.log(time);
//		     console.log( this.getNowTime);
			let STATU="";
			let STNO="";
		
			if (WarningGsons.length!=0){
			STATU=WarningGsons[0].rowData.STATU;
			STNO=WarningGsons[0].rowData.STNO;
	
			if(STATU!="�ָ�"){
				this.$message.error('���豸���й��Ϲ���,���ڹ���:'+STNO+' ����д�����Ϣ'); 
				return;
			}
			}
			
			
		     let d=this.getNowTime;
		     let d2=new Date(new Date(d).getTime()+24*60*60*1000);
		     let d3=" 00:00:00";
		     let d0=new Date(nowD(date)).getTime()+5*60*1000;
		   let  edate=formatDate(d2)+d3;
		    let sdate= d.substr(0,10)+d3;
		    let time2=d.substr(12,5);
		  
		
		   let flag1=new Date(d).getTime()<d0;
		    
		    if(flag1){
		    	  if (this.newMessage==null||this.newMessage=="") {
			 this.$notify.error({
			        title: '���ʧ��',
			        message: `��������Ϣ`,
			            duration:1500
			      });
			return
		    }
		    axios({
			url: '/dxtest/WarningServlet3',
	                method: 'post',
	                data: {
	                    "statu":this.couponSelected,
	                    "message":this.newMessage,
	                    "sdate":sdate,
	                    "sn":sn,
	                    "edate":edate,
	                    "username":this.listusGson[0].userid,
	                     "time":time2,
	                },
	                enctype:'application/json',
		    }).then((response)=>{
			console.log(response.data);
			 if(response.data.statu=="success"){
			 this.$message({
		            type: 'success',
		            message: '��ӳɹ�!',
		        	duration:1500
		          });
		          setCookie("TT","TestWarningPart.jsp",4);
		       location.href = "TestWarningItem.jsp";
			 }else{
			  this.$message({
		            type: 'error',
		            message: '���ʧ��!',
		        	duration:1500
		          });
		      
			 }
			
		    }).catch((error)=>{
			 this.$notify.error({
			        title: '����',
			        message: `���ʧ��`,
			            duration:1500
			      });
		    });
		    }else{
		     this.$notify.error({
			        title: '���ʧ��',
		        message: `Ѳ��ʱ����ڵ�ǰʱ��`,
			            duration:1500
			      });
		    }
		    
//		    function formatDate(date) {
//			  var date = new Date(date);
//			  var YY = date.getFullYear() + '-';
//			  var MM = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
//			  var DD = (date.getDate() < 10 ? '0' + (date.getDate()) : date.getDate());
//			  var hh = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':';
//			  var mm = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':';
//			  var ss = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds());
//			  return YY + MM + DD +" "+hh + mm + ss;
//			}
//		    if (this.newMessage==null||this.newMessage=="") {
//			 this.$notify.error({
//			        title: '���ʧ��',
//			        message: `��������Ϣ`,
//			            duration:1500
//			      });
//			return
//		    }
//		    axios({
//			url: '/dxtest/WarningItem',
//	                method: 'post',
//	                data: {
//	                    "statu":this.couponSelected,
//	                    "message":this.newMessage,
//	                    "stno":this.WarningGsons[0].rowData.STNO,
//	                    "sdate":this.WarningGsons[0].rowData.SDATE,
//	                    "sn":this.WarningGsons[0].rowData.SN,
//	                    "edate":this.WarningGsons[0].rowData.EDATE,
//	                    "username":this.listusGson[0].userid,
//	                    "nowdate":formatDate(myDate),
//	                },
//	                enctype:'application/json',
//		    }).then((response)=>{
//			console.log(response.data);
//			 this.dataShow=this.dataShowf(response.data.WarningGsons);
//			this.$message({
//		            type: 'success',
//		            message: '��ӳɹ�!',
//		        	duration:1500
//		          });
//			if(this.couponSelected=="�ָ�"){console.log(1);}
//			else {
//			    console.log(2);
//			}
//			this.newMessage="";
//			
//		    }).catch((error)=>{
//			 this.$notify.error({
//			        title: '����',
//			        message: `���ʧ��`,
//			            duration:1500
//			      });
//		    });
		},
		shaixuan:function(s,e,st) {
                    //����ɸѡ��ѡ�����watch����
                    this.subcontents = this.WarningGsons;
                    //ûѡ����ѡ�˲��޾�pass
                    if ((s!=0) && (s!="")&& (e=="")) {
                        this.subcontents = this.subcontents.filter(temp=>{
                            let t0=new Date(temp.rowData.SDATE).getTime();
                        	let t1=new Date(s).getTime();
           					return t0>=t1;
                        });
                    }
                    if ((e!=0) && (e!="")&& (s!="")) {
                        this.subcontents = this.subcontents.filter(temp=>{
                            let t0=new Date(temp.rowData.SDATE).getTime();
                        	let t1=new Date(s).getTime();
                        	let t2=new Date(e).getTime();
           					return t0>=t1&&t2>=t0;
                        });
                    }
                    if ( (e!="")&& (s=="")) {
                        this.subcontents = this.subcontents.filter(temp=>{
                            let t0=new Date(temp.rowData.SDATE).getTime();
                        	let t1=new Date(e).getTime();
           					return t1>=t0;
                        });
                    }
                    
                    if ((st!=0) && (st!="")) {
                        this.subcontents = this.subcontents.filter(temp=>{
                            return temp.rowData.STATU==st;
                        });
                    }
                    //���������õ��÷�ҳ�ĺ������ǵ�Ҫ��ʼ����������ǰҳҪ����Ϊ1
//                     console.log(this.subcontents);
                    this.dataShow=this.dataShowf(this.subcontents);
                    this.totalLen=this.subcontents.length;
             },
    },
    watch:{
sx_sdate: function (n,o) {
    this.shaixuan(this.sx_sdate,this.sx_edate,this.sx_statu);
},
sx_edate: function (n,o) {
    this.shaixuan(this.sx_sdate,this.sx_edate,this.sx_statu);
},
sx_statu: function (n,o) {
    this.shaixuan(this.sx_sdate,this.sx_edate,this.sx_statu);
}
    },
    computed:{

    },
})