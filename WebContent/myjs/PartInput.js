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
//	Status:["����","����","�ָ�"],
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
	      couponSelected:'�ָ�',
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
	if (time=="") {
	    this.getNowTime=nowD(date);
	}else {
	    this.getNowTime=c_sdate.substr(0,10)+"T"+time;
	}
	
	if (TT=="Testwork3.jsp"||TT=="Testwork1.jsp") {
	    this.TT=true;
	};
	 this.isRec=this.isRec();
	this.dataShow=this.dataShowf(this.WarningGsons);
	this.totalLen=this.WarningGsons.length;
            },
      beforUpdate(){
        	
            },
            updated(){
            },
    methods:{
    	
	isRec(){
		
		if (this.WarningGsons[0].rowData.SN=="0" && this.WarningGsons[0].rowData.STNO=="0"){
			return false;
			}else{
				 return !this.WarningGsons[0].rowData.USERPWD;
			}
	},
	dataShowf(items){
//	 	    console.log(this.WarningGsons.length);
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
	    
		  return  "background:url("+url+");background-size: 100%;" 
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
		let d0=myDate.getTime();
		let d1=aDate.getTime()+2*86400000;
	    let f=false;
		if(listusGson[0].levela==1){
			f=true;
			}else{
			if(name==listusGson[0].userid){
				if(d1>=d0){
				 f=true;
				}
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
	    arrlist.splice(index,1);
	    this.$confirm('�˲���������ɾ�����ļ�, �Ƿ����?', '��ʾ', {
          confirmButtonText: 'ȷ��',
          cancelButtonText: 'ȡ��',
          type: 'warning'
        }).then(() => {
        	
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
        	
      
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '��ȡ��ɾ��'
          });          
        });
      
	       
	},
	
	      handleCommand(command) {
	       console.log(command);
		  files= command;
	    if(command[0]=="upfile"){ 
	
		this.$refs.upload[command[4]].$el.click();
	    }else if (command[0]=="edit") {
		this.WarningGsons[command[4]].flag=this.WarningGsons[command[4]].flag ? false:true;
	    }else if (command[0]=="del"){
	    
		this.open(command[1]);
	    }
		},
		
		delli(id){
		    axios({
			url: '/dxtest/deleli',
	                method: 'post',
	                data: {
	                    "id":id,
	                },
	                enctype:'application/json',
		    }).then((response)=>{
			 this.dataShow=this.dataShowf(response.data.WarningGsons);
			 this.WarningGsons=response.data.WarningGsons;
//			 console.log(this.WarningGsons[0].rowData.USERPWD);
	listAllDxtestworkObj=response.data.listAllDxtestworkObj;
			hd.valueWarning=warningCount.f();
		          if(this.WarningGsons.length==0){
		          	location.href = "Testindex.jsp";
		          }else{
					if (this.WarningGsons[0].rowData.SN=="0" && this.WarningGsons[0].rowData.STNO=="0"){
						
						this.isRec=false;
					}else{
						this.isRec= this.WarningGsons[0].rowData.USERPWD=="restore"? false:true;
					}
		          }
		          this.$message({
		            type: 'success',
		            message: 'ɾ���ɹ�!'
		          });
		         
		    }).catch((error)=>{
			 this.$notify.error({
			        title: '����',
			        message: `ɾ��ʧ��`,
			            duration:1500
			      });
			      	location.href = "Testindex.jsp";
		    });
		},
		
		 open(id) {
		        this.$confirm('�˲���������ɾ�����ļ�, �Ƿ����?', '��ʾ', {
		          confirmButtonText: 'ȷ��',
		          cancelButtonText: 'ȡ��',
		          type: 'warning'
		        }).then(() => {
		            this.delli(id);
		        }).catch(() => {
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
//			         console.log(this.WarningGsons);
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
		    /* console.log(this.couponSelected);
		    console.log(this.newMessage);
		    console.log(this.WarningGsons[0].rowData.STNO);
		    console.log(this.WarningGsons[0].rowData.SDATE);
		    console.log(this.WarningGsons[0].rowData.SN);
		    console.log(this.WarningGsons[0].rowData.EDATE);
		    console.log(this.listusGson[0].userid); */
		    var myDate = new Date();
//		    console.log(formatDate(myDate));
		    function formatDate(date) {
			  var date = new Date(date);
			  var YY = date.getFullYear() + '-';
			  var MM = (date.getMonth() + 1 < 10 ? '0' + (date.getMonth() + 1) : date.getMonth() + 1) + '-';
			  var DD = (date.getDate() < 10 ? '0' + (date.getDate()) : date.getDate());
			  var hh = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':';
			  var mm = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) + ':';
			  var ss = (date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds());
			  return YY + MM + DD +" "+hh + mm + ss;
			}
			 function formatTime() {
			  var date = new Date(date);
			  var hh = (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':';
			  var mm = (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes());
			  return hh+mm;
			}
			
	
			
		    axios({
			url: '/dxtest/WarningItem',
	                method: 'post',
	                data: {
	                    "statu":this.couponSelected,
	                    "message":this.newMessage,
	                    "stno":this.WarningGsons[0].rowData.STNO,
	                    "sdate":this.WarningGsons[0].rowData.SDATE,
	                    "sn":this.WarningGsons[0].rowData.SN,
	                    "edate":this.WarningGsons[0].rowData.EDATE,
	                    "username":this.listusGson[0].userid,
	                    "nowdate":formatDate(myDate),
						"time":formatDate(myDate).substr(11,5),
	                },
	                enctype:'application/json',
		    }).then((response)=>{
//			console.log(response);
			 this.dataShow=this.dataShowf(response.data.WarningGsons);
			 this.WarningGsons=response.data.WarningGsons;
		listAllDxtestworkObj=response.data.listAllDxtestworkObj;
			hd.valueWarning=warningCount.f();
			
			this.$message({
		            type: 'success',
		            message: '��ӳɹ�!',
		        	duration:1500
		          });
			if(this.couponSelected=="�ָ�"){ this.isRec=false;}
			else {
			    this.isRec=true;
			}
			this.newMessage="";
			
		    }).catch((error)=>{
			 this.$notify.error({
			        title: '����',
			        message: `���ʧ��`,
			            duration:1500
			      });
		    });
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
		Status(){
		let a=[];
//		console.log(TT);
		if (TT=="Testwork3.jsp"){
			a=["����","����","�ָ�"];
		}else{
			 a=["����","�ָ�"];
//		console.log(a);
		if (AllListGsons.substring(0,2)=="A-"){
			return ["����","�ָ�"];
		}
		}
		
		return a;
	},
	
	

    },
computed:{
	
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