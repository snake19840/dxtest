

/**
		* ��ҳ����
		* pno--��ʼҳ��
		* psize--ÿҳ��ʾ��¼��
		* ��ҳ�����Ǵ���ʵ�����п�ʼ��������ڼӼ�ĳ����������ȷ�������ļ�¼��
		* ��js��ҳʵ����������ȫ�����أ�ͨ���Ƿ���ʾ������ɷ�ҳ����
		* TagName="tr"or"li"
		* ListName="ul_id"or"table_id"
		* BarName="barcon_id"
		**/
		//<table ><tr><td><div id="barcon" name="barcon"></div></td></tr></table> 
		//goPage(1, 3,"list","barcon"��);
		function goPage(pno, psize,ListName,BarName,TagName,liName) {
			console.log(liName);
		       var itable = document.getElementById(ListName);
		       console.log(itable);
		    //  var num = itable.rows.length;//�����������(���м�¼��)
		        var num=document.getElementsByName(liName);
		   //  var num=itable.getElementsByName(liName);
		       num=num.length;
		       console.log(num);
		       var totalPage = 0;//��ҳ��
		       var pageSize = psize;//ÿҳ��ʾ����
		       var n1=num / pageSize;
		       var n2=parseInt(num / pageSize);
		       
		       //�ܹ��ּ�ҳ
		       if (n1 > n2) {
		             totalPage = n2 + 1;
		       } else {
		             totalPage = n2;
		       }
		       var currentPage = pno;//��ǰҳ��
		       var startRow = (currentPage - 1) * pageSize + 1;//��ʼ��ʾ���� 31
		       var endRow = currentPage * pageSize;//������ʾ����  40
		       endRow = (endRow > num) ? num : endRow;  //40
//		       console.log(endRow);
		       //������ʾ����ʵ�ַ�ҳ
		       for (var i = 1; i < (num + 1); i++) {
//		           var irow = itable.rows[i - 1];
//		             var irow =itable.getElementsByTagName(TagName)[i-1];
		            var irow= document.getElementsByName(liName)[i-1];
		             if (i >= startRow && i <= endRow) {
		                    irow.style.display = "";
		             } else {
		                    irow.style.display = "none";
		             }
		       }
		       var tempStr = "��" + num + "����¼&nbsp;&nbsp;&nbsp; ��" + totalPage + "ҳ&nbsp;&nbsp;&nbsp; ��ǰ��" + currentPage + "ҳ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
		       if (currentPage > 1) {
		             tempStr += "<a href=\"#\" onClick=\"goPage(" + (1) + "," + psize + ",'" +ListName+ "','" +BarName+"','"+TagName+"')\">��ҳ</a>";
		             tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage - 1) +  "," + psize + ",'" +ListName+ "','" +BarName+"','"+TagName+"')\"><��һҳ</a>"
		       } else {
		             tempStr += "��ҳ";
		             tempStr += "<��һҳ";
		       }
		       if (currentPage < totalPage) {
		             tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage + 1) +  "," + psize + ",'" +ListName+ "','" +BarName+"','"+TagName+"')\">��һҳ></a>";
		             tempStr += "<a href=\"#\" onClick=\"goPage(" + (totalPage) + "," +  psize + ",'" +ListName+ "','" +BarName+"','"+TagName+"')\">βҳ</a>";
		       } else {
		             tempStr += "��һҳ>";
		             tempStr += "βҳ";
		       }
		       document.getElementById(BarName).innerHTML = tempStr;
		}
		