package com.clas;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import com.sun.xml.internal.bind.v2.runtime.RuntimeUtil.ToStringAdapter;

public class Equ {


		public static final int PAGE_SIZE = 9;

		
		
		private boolean flag;
		private int id;
		private String sid;//卡片编号
		private String did;//档案编号
		private String stdate; //设备初次搬入机房日期
		private String sdate;//查询开始时间
		private String edate;//查询结束时间
		private String redate; //档案最后变更日期
		private String pname;//设备所属项目系统名称
		private String use;//设备用途
		private String ownname; //设备资产单位/部门/联系人/电话
		private String proname;//系统集成商（开发商）名称/联系人/电话
		private String manname;//系统维护责任人姓名/电话/所属部门
		private String agename;//代维单位名称/联系人/电话
		private String mantyp;//维护形式
		private String name;
		private int id1;
		private String sid1;//卡片编号
		private String did1;//档案编号
		private String stdate1; //设备初次搬入机房日期
		private String sdate1;//查询开始时间
		private String edate1;//查询结束时间
		private String redate1; //档案最后变更日期
		private String pname1;//设备所属项目系统名称
		private String use1;//设备用途
		private String ownname1; //设备资产单位/部门/联系人/电话
		private String proname1;//系统集成商（开发商）名称/联系人/电话
		private String manname1;//系统维护责任人姓名/电话/所属部门
		private String agename1;//代维单位名称/联系人/电话
		private String mantyp1;//维护形式
		
		//IT设备配置明细
		private String sname;//设备名称（类型）
		private String styp;//品牌/型号
		private String styp1;//品牌/型号
		private String styp2;//品牌/型号
		private String pos; //机房/机架位置
		private String ip;//IP地址/掩码/网关
		private String port;//网线编号/交换机端口号/配线架端口号

		private String cpu;//CPU型号/物理数量
		private String memory;//内存
		private String disk;//硬盘
		private String syn;//操作系统版本
	
		private String oracle;//数据库版本
		private String sn;//设备序列号
		private String oth;//备注
		
		private String sname1;//设备名称（类型）
		
		private String pos1; //机房/机架位置
		private String ip1;//IP地址/掩码/网关
		private String port1;//网线编号/交换机端口号/配线架端口号
		private String cpu1;//CPU型号/物理数量
		private String memory1;//内存
		private String disk1;//硬盘
		private String syn1;//操作系统版本
		private String oracle1;//数据库版本
		private String sn1;//设备序列号
		private String oth1;//备注
		
		
		private String sroot;//系统管理员
		private String spwd;//系统密码
		private String oroot;//数据库管理员
		private String opwd;//数据库密码
		private String aroot;//应用管理员
		private String apwd;//应用密码
		
		private String title;//标题
		private String message;//标题
		private String username ;//标题
		private String userpwd ;//标题
		private String nowdate;
		private String url;
		private String statu;
		private String picture;
		private int aut;
		private String userid;
		private String stno;
		private String task;
		
		private String contractpicture;
		private String contractid;
		private String contractsdate;
		private String contractedate;
		private String contractname;
		private String contractnowdate;
		//private String statu;
		private String oppunit;
		private String markdate;
		private String contractnlife;
		private String camount;
		private String myconn;
		private String oppconn;
		private String myconnt;
		private String oppconnt;
		private String ctype;
		private String tax;
		private String plan1;
		private String plandate1;
		private String plan2;
		private String plandate2;
		private String plan3;
		private String plandate3;
		private String plan4;
		private String plandate4;
		private String planm1;
		private String planm4;
		private String planm3;
		private String planm2;
		private String sgmoney;
		private String initmoney;
		private String finmoney;
		private String warmoney;
		private String myname;
		private String oppname;
		
		private String oppu;
		private String oppp;
		private String oppa;
		private String oppn;
		private String oppe;
		private String oppx;
		private String oppmail;
		private String oppid;
		private String oppe2;
		private String oppad;
		private String opppayb;
		private String opppaya;
		private String opppayz;
		private String opppayh;
		private String opppaye;
		private String opppaya2;
		private String opppaym;
		private String opppayid;
		private String myu;
		private String mya;
		private String myp;
		private String myn;
		private String mye;
		private String myad;
		private String mye2;
		private String myx;
		private String myemail;
		private String myid;
		private String mypayb;
		private String mypaya;
		private String mypayz;
		private String mypayh;
		private String mypaye;
		private String mypaya2;
		private String mypaym;
		private String mypayid;
		private String classfamily;
		private String classson;
		private String payname;
		private String typeclass;//品牌名
		private String paydate;//付款日期
		private String paypor;//付款比例
		private int lastday;//剩余时间
		private String day;//默认提醒时间
		private String edi;//编辑
		private String del;//删除
		private String con;//合同
		private String conedit;//合同
		private String condel;//合同
		private String levela;//合同
		private String time;//报障时间
		private String addevent;//报障时间
		private String author;
		private  String a;
		private Map<String, Object> rowData;

		
		
		public String getConedit() {
			return conedit;
		}
		public void setConedit(String conedit) {
			this.conedit = conedit;
		}
		public String getCondel() {
			return condel;
		}
		public void setCondel(String condel) {
			this.condel = condel;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public Map<String, Object> getRowData() {
			return rowData;
		}
		public void setRowData(Map<String, Object> rowData) {
			this.rowData = rowData;
		}
		public static int getPageSize() {
			return PAGE_SIZE;
		}
		public String getA() {
			return a;
		}
		public void setA(String a) {
			this.a = a;
		}
		public String getAuthor() {
			return author;
		}
		public void setAuthor(String author) {
			this.author = author;
		}
		public String getAddevent() {
			return addevent;
		}
		public void setAddevent(String addevent) {
			this.addevent = addevent;
		}
		public boolean isFlag() {
			return flag;
		}
		public void setFlag(boolean flag) {
			this.flag = flag;
		}
		public String getTime() {
			return time;
		}
		public void setTime(String time) {
			this.time = time;
		}
		public int getId1() {
			return id1;
		}
		public void setId1(int id1) {
			this.id1 = id1;
		}
		public String getSdate1() {
			return sdate1;
		}
		public void setSdate1(String sdate1) {
			this.sdate1 = sdate1;
		}
		public String getEdate1() {
			return edate1;
		}
		public void setEdate1(String edate1) {
			this.edate1 = edate1;
		}
		public String getRedate1() {
			return redate1;
		}
		public void setRedate1(String redate1) {
			this.redate1 = redate1;
		}
		public String getLevela() {
			return levela;
		}
		public void setLevela(String levela) {
			this.levela = levela;
		}
		public void setOth1(String oth1) {
			this.oth1 = oth1;
		}
		public void setAut(int aut) {
			this.aut = aut;
		}
		public int getId() {return id;}
		public void setId(int id) {this.id=id;}
		public String getDay() {return day;}
		public String getEdi() {return edi;}
		public String getDel() {return del;}
		public String getCon() {return con;}
		public String getTitle() {return title;}
		public int getLastday() {return lastday;}
		public String getPaydate() {return paydate;}
		public String getPaypor() {return paypor;}
		public void setTitle(String title) {this.title=title;}
		public String getDid() {return did;}
		public void setDid(String did) {this.did=did;}
		public void setLastday(int lastday) {this.lastday=lastday;}

		public String getSid() {return sid;}
		public String getStdate() {return stdate;}
		public String getSdate() {return sdate;}
		public String getEdate() {return edate;}
		public String getRedate() {return redate;}
		public String getPname() {return pname;}
		public String getUse() {return use;}
		public String getOwnname() {return ownname;}
		public String getProname() {return proname;}
		public String getManname() {return manname;}
		public String getAgename() {return agename;}
		public String getMantyp() {return mantyp;}
		public String getSname() {return sname;}
		public String getStyp() {return styp;}
		public String getStyp1() {return styp1;}
		public String getStyp2() {return styp2;}
		public String getPos() {return pos;}
		public String getIp() {return ip;}
		public String getPort() {return port;}
		public String getCpu() {return cpu;}
		public String getMemory() {return memory;}
		public String getDisk() {return disk;}
		public String getSyn() {return syn;}
		public String getSyn1() {return syn1;}
		
		public String getOracle() {return oracle;}
		public String getSn() {return sn;}
		public String getOth() {return oth;}
		public String getSroot() {return sroot;}
		public String getSpwd() {return spwd;}
		public String getOroot() {return oroot;}
		public String getOpwd() {return opwd;}
		public String getAroot() {return aroot;}
		public String getApwd() {return apwd;}
		
		public String getSid1() {return sid1;}
		
		public String getPname1() {return pname1;}
		public String getUse1() {return use1;}
		public String getOwnname1() {return ownname1;}
		public String getProname1() {return proname1;}
		public String getManname1() {return manname1;}
		public String getAgename1() {return agename1;}
		public String getMantyp1() {return mantyp1;}
		public String getSname1() {return sname1;}
		
		public String getPos1() {return pos1;}
		public String getIp1() {return ip1;}
		public String getPort1() {return port1;}
		public String getCpu1() {return cpu1;}
		public String getMemory1() {return memory1;}
		public String getDisk1() {return disk1;}
		
		public String getOracle1() {return oracle1;}
		public String getSn1() {return sn1;}
		public String getOth1() {return oth1;}
		public String getDid1() {return did1;}
		public String getStdate1() {return stdate1;}
		public String getTypeclass() {return typeclass;}
		
		public void setPaydate(String paydate) {this.paydate=paydate;}
		public void setPaypor(String paypor) {this.paypor=paypor;}
		public void setStdate1(String stdate1) {this.stdate1=stdate1;}
		public void setTypeclass(String typeclass) {this.typeclass=typeclass;}
		public void setSid(String sid) {this.sid=sid;}
		public void setStdate(String stdate) {this.stdate=stdate;}
		public void setSdate(String sdate) {this.sdate=sdate;}
		public void setEdate(String edate) {this.edate=edate;}
		public void setRedate(String redate) {this.redate=redate;}
		public void setPname(String pname) {this.pname=pname;}
		public void setUse(String use) {this.use=use;}
		public void setOwnname(String ownname) {this.ownname=ownname;}
		public void setProname(String proname) {this.proname=proname;}
		public void setManname(String manname) {this.manname=manname;}
		public void setAgename(String agename) {this.agename=agename;}
		public void setMantyp(String mantyp) {this.mantyp=mantyp;}
		public void setSname(String sname) {this.sname=sname;}
		public void setStyp(String styp) {this.styp=styp;}
		public void setStyp1(String styp1) {this.styp1=styp1;}
		public void setStyp2(String styp2) {this.styp2=styp2;}
		public void setPos(String pos) {this.pos=pos;}
		public void setIp(String ip) {this.ip=ip;}
		public void setPort(String port) {this.port=port;}
		public void setCpu(String cpu) {this.cpu=cpu;}
		public void setMemory(String memory) {this.memory=memory;}
		public void setDisk(String disk) {this.disk=disk;}
		public void setSyn(String syn) {this.syn=syn;}
		public void setSyn1(String syn1) {this.syn1=syn1;}
		
		public void setOracle(String oracle) {this.oracle=oracle;}
		public void setSn(String sn) {this.sn=sn;}
		public void setOth(String oth) {this.oth=oth;}
		public void setSroot(String sroot) {this.sroot=sroot;}
		public void setSpwd(String spwd) {this.spwd=spwd;}
		public void setOroot(String oroot) {this.oroot=oroot;}
		public void setOpwd(String opwd) {this.opwd=opwd;}
		public void setAroot(String aroot) {this.aroot=aroot;}
		public void setApwd(String apwd) {this.apwd=apwd;}

		public void setUrl(String url) {this.url=url;}
		public String getUrl() {return url;}
		
		public void setSid1(String sid1) {this.sid1=sid1;}
		
		public void setPname1(String pname1) {this.pname1=pname1;}
		public void setUse1(String use1) {this.use1=use1;}
		public void setOwnname1(String ownname1) {this.ownname1=ownname1;}
		public void setProname1(String proname1) {this.proname1=proname1;}
		public void setManname1(String manname1) {this.manname1=manname1;}
		public void setAgename1(String agename1) {this.agename1=agename1;}
		public void setMantyp1(String mantyp1) {this.mantyp1=mantyp1;}
		public void setSname1(String sname1) {this.sname1=sname1;}
		
		public void setPos1(String pos1) {this.pos1=pos1;}
		public void setIp1(String ip1) {this.ip1=ip1;}
		public void setPort1(String port1) {this.port1=port1;}
		public void setCpu1(String cpu1) {this.cpu1=cpu1;}
		public void setMemory1(String memory1) {this.memory1=memory1;}
		public void setDisk1(String disk1) {this.disk1=disk1;}
		
		public void setOracle1(String oracle1) {this.oracle1=oracle1;}
		public void setSn1(String sn1) {this.sn1=sn1;}
		
		public void setDid1(String did1) {this.did1=did1;}

		public String getUsername() {return username;}
		public void setUsername(String username) {this.username=username;}
		
		public String getUserpwd() {return userpwd;}
		public void setUserpwd(String userpwd) {this.userpwd=userpwd;}
		public String getNowdate() {return nowdate;}
		public void setNowdate(String nowdate) {this.nowdate=nowdate;}
		public String getMessage() {return message;}
		public void setMessage(String message) {this.message=message;}
		public String getStatu() {return statu;}
		public void setStatu(String statu) {this.statu=statu;}
		public String getPicture() {return picture;}
		public void setPicture(String picture) {this.picture=picture;}
		public int getAut() {return aut;}
		public void setAut(Integer aut) {this.aut=aut;}
		public String getUserid() {return userid;}
		public void setUserid(String userid) {this.userid=userid;}
		public String getStno() {return stno;}
		public void setStno(String stno) {this.stno=stno;}
		public String getTask() {return task;}
		public void setTask(String task) {this.task=task;}
		
		
		public String getContractpicture() {return contractpicture;}
		public String getContractid() {return contractid;}
		public String getContractsdate() {return contractsdate;}
		public String getContractedate() {return contractedate;}
		public String getContractname() {return contractname;}
		public String getContractnowdate() {return contractnowdate;}
		public String getOppunit() {return oppunit;}
		public String getMarkdate() {return markdate;}
		public String getContractnlife() {return contractnlife;}
		public String getCamount() {return camount;}
		public String getMyconn() {return myconn;}
		public String getOppconn() {return oppconn;}
		public String getMyconnt() {return myconnt;}
		public String getOppconnt() {return oppconnt;}
		public String getCtype() {return ctype;}
		public String getTax() {return tax;}
		public String getPlan1() {return plan1;}
		public String getPlandate1() {return plandate1;}
		public String getPlan2() {return plan2;}
		public String getPlandate2() {return plandate2;}
		public String getPlan3() {return plan3;}
		public String getPlandate3() {return plandate3;}
		public String getPlan4() {return plan4;}
		public String getPlandate4() {return plandate4;}
		public String getPlanm1() {return planm1;}
		public String getPlanm4() {return planm4;}
		public String getPlanm3() {return planm3;}
		public String getPlanm2() {return planm2;}
		public String getSgmoney() {return sgmoney;}
		public String getInitmoney() {return initmoney;}
		public String getFinmoney() {return finmoney;}
		public String getWarmoney() {return warmoney;}
		public String getMyname() {return myname;}
		public String getOppname() {return oppname;}
		
		public String getOppu() {return oppu;}
		public String getOppp() {return oppp;}
		public String getOppa() {return oppa;}
		public String getOppn() {return oppn;}
		public String getOppe() {return oppe;}
		public String getOppx() {return oppx;}
		public String getOppmail() {return oppmail;}
		public String getOppid() {return oppid;}
		public String getOppe2() {return oppe2;}
		public String getOppad() {return oppad;}
		public String getOpppayb() {return opppayb;}
		public String getOpppaya() {return opppaya;}
		public String getOpppayz() {return opppayz;}
		public String getOpppayh() {return opppayh;}
		public String getOpppaye() {return opppaye;}
		public String getOpppaya2() {return opppaya2;}
		public String getOpppaym() {return opppaym;}
		public String getOpppayid() {return opppayid;}
		public String getMyu() {return myu;}
		public String getMya() {return mya;}
		public String getMyp() {return myp;}
		public String getMyn() {return myn;}
		public String getMye() {return mye;}
		public String getMyad() {return myad;}
		public String getMye2() {return mye2;}
		public String getMyx() {return myx;}
		public String getMyemail() {return myemail;}
		public String getMyid() {return myid;}
		public String getMypayb() {return mypayb;}
		public String getMypaya() {return mypaya;}
		public String getMypayz() {return mypayz;}
		public String getMypayh() {return mypayh;}
		public String getMypaye() {return mypaye;}
		public String getMypaya2() {return mypaya2;}
		public String getMypaym() {return mypaym;}
		public String getMypayid() {return mypayid;}
		public String getClassfamily() {return classfamily;}
		public String getClassson() {return classson;}
		public String getPayname() {return payname;}
		
		public void setDay(String day) {this.day=day;}
		public void setEdi(String edi) {this.edi=edi;}
		public void setDel(String del) {this.del=del;}
		public void setCon(String con) {this.con=con;}
		public void setContractpicture(String contractpicture) {this.contractpicture=contractpicture;}
		public void setContractid(String contractid) {this.contractid=contractid;}
		public void setContractsdate(String contractsdate) {this.contractsdate=contractsdate;}
		public void setContractedate(String contractedate) {this.contractedate=contractedate;}
		public void setContractname(String contractname) {this.contractname=contractname;}
		public void setContractnowdate(String contractnowdate) {this.contractnowdate=contractnowdate;}
		public void setOppunit(String oppunit) {this.oppunit=oppunit;}
		public void setMarkdate(String markdate) {this.markdate=markdate;}
		public void setContractnlife(String contractnlife) {this.contractnlife=contractnlife;}
		public void setCamount(String camount) {this.camount=camount;}
		public void setMyconn(String myconn) {this.myconn=myconn;}
		public void setOppconn(String oppconn) {this.oppconn=oppconn;}
		public void setMyconnt(String myconnt) {this.myconnt=myconnt;}
		public void setOppconnt(String oppconnt) {this.oppconnt=oppconnt;}
		public void setCtype(String ctype) {this.ctype=ctype;}
		public void setTax(String tax) {this.tax=tax;}
		public void setPlan1(String plan1) {this.plan1=plan1;}
		public void setPlandate1(String plandate1) {this.plandate1=plandate1;}
		public void setPlan2(String plan2) {this.plan2=plan2;}
		public void setPlandate2(String plandate2) {this.plandate2=plandate2;}
		public void setPlan3(String plan3) {this.plan3=plan3;}
		public void setPlandate3(String plandate3) {this.plandate3=plandate3;}
		public void setPlan4(String plan4) {this.plan4=plan4;}
		public void setPlandate4(String plandate4) {this.plandate4=plandate4;}
		public void setPlanm1(String planm1) {this.planm1=planm1;}
		public void setPlanm4(String planm4) {this.planm4=planm4;}
		public void setPlanm3(String planm3) {this.planm3=planm3;}
		public void setPlanm2(String planm2) {this.planm2=planm2;}
		public void setSgmoney(String sgmoney) {this.sgmoney=sgmoney;}
		public void setInitmoney(String initmoney) {this.initmoney=initmoney;}
		public void setFinmoney(String finmoney) {this.finmoney=finmoney;}
		public void setWarmoney(String warmoney) {this.warmoney=warmoney;}
		public void setMyname(String myname) {this.myname=myname;}
		public void setOppname(String oppname) {this.oppname=oppname;}

		public void setOppu(String oppu) {this.oppu=oppu;}
		public void setOppp(String oppp) {this.oppp=oppp;}
		public void setOppa(String oppa) {this.oppa=oppa;}
		public void setOppn(String oppn) {this.oppn=oppn;}
		public void setOppe(String oppe) {this.oppe=oppe;}
		public void setOppx(String oppx) {this.oppx=oppx;}
		public void setOppmail(String oppmail) {this.oppmail=oppmail;}
		public void setOppid(String oppid) {this.oppid=oppid;}
		public void setOppe2(String oppe2) {this.oppe2=oppe2;}
		public void setOppad(String oppad) {this.oppad=oppad;}
		public void setOpppayb(String opppayb) {this.opppayb=opppayb;}
		public void setOpppaya(String opppaya) {this.opppaya=opppaya;}
		public void setOpppayz(String opppayz) {this.opppayz=opppayz;}
		public void setOpppayh(String opppayh) {this.opppayh=opppayh;}
		public void setOpppaye(String opppaye) {this.opppaye=opppaye;}
		public void setOpppaya2(String opppaya2) {this.opppaya2=opppaya2;}
		public void setOpppaym(String opppaym) {this.opppaym=opppaym;}
		public void setOpppayid(String opppayid) {this.opppayid=opppayid;}
		public void setMyu(String myu) {this.myu=myu;}
		public void setMya(String mya) {this.mya=mya;}
		public void setMyp(String myp) {this.myp=myp;}
		public void setMyn(String myn) {this.myn=myn;}
		public void setMye(String mye) {this.mye=mye;}
		public void setMyad(String myad) {this.myad=myad;}
		public void setMye2(String mye2) {this.mye2=mye2;}
		public void setMyx(String myx) {this.myx=myx;}
		public void setMyemail(String myemail) {this.myemail=myemail;}
		public void setMyid(String myid) {this.myid=myid;}
		public void setMypayb(String mypayb) {this.mypayb=mypayb;}
		public void setMypaya(String mypaya) {this.mypaya=mypaya;}
		public void setMypayz(String mypayz) {this.mypayz=mypayz;}
		public void setMypayh(String mypayh) {this.mypayh=mypayh;}
		public void setMypaye(String mypaye) {this.mypaye=mypaye;}
		public void setMypaya2(String mypaya2) {this.mypaya2=mypaya2;}
		public void setMypaym(String mypaym) {this.mypaym=mypaym;}
		public void setMypayid(String mypayid) {this.mypayid=mypayid;}
		public void setClassfamily(String classfamily) {this.classfamily=classfamily;}
		public void setClassson(String classson) {this.classson=classson;}
		public void setPayname(String payname) {this.payname=payname;}
		
		
		


		
		
	
		public  String[] list_check(String mantyp,String ...args) {
			String[] arr = new String[args.length];
			if(mantyp==null||mantyp==""){
				for (int i = 0; i < args.length; i++) {
					int j=i+1;
				String	 lString="<label class='checkbox inline'> <input type='checkbox' name='checkbox"+j+"' value='"+args[i]+"' > "+args[i]+" </label>";
					//System.out.println(lString);
					arr[i]=lString;
		
				}
			}else{
				for (int i = 0; i < args.length; i++) {
					//System.out.print(i+": ");
					//System.out.println(args[i]);
					int j=i+1;
					
					String check;
					if(mantyp.indexOf(args[i])!=-1){check="checked";}else{ check="";} 
					
					
					String	 lString="<label class='checkbox inline'> <input type='checkbox' name='checkbox"+j+"' value='"+args[i]+"' "+check+"> "+args[i]+" </label>";
					//System.out.println(lString);	
					arr[i]=lString;
				}
			}
			return arr;
			
		}
			
	
		public static void main(String[] args) {
	        Equ test = new Equ();
	        String[] arr1= test.list_check("你", "你","我");
	        //System.out.println(test.list_check("你", "你","我"));
	      //  String[] arr1 = new String[2];
	        //arr1=test.list_check("你", "你","我");
	       
	        System.out.println(arr1[0]);
	    }
	
	}

	
	
	

