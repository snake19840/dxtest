		goPage(1, 10,"list1","barcon1","tr");
		goPage(1, 10,"list2","barcon2","tr");
		goPage(1, 10,"list3","barcon3","tr");
		/**
		* 分页函数
		* pno--起始页数
		* psize--每页显示记录数
		* 分页部分是从真实数据行开始，因而存在加减某个常数，以确定真正的记录数
		* 纯js分页实质是数据行全部加载，通过是否显示属性完成分页功能
		* TagName="tr"or"li"
		* ListName="ul_id"or"table_id"
		* BarName="barcon_id"
		**/
		//<table ><tr><td><div id="barcon" name="barcon"></div></td></tr></table> 
		//goPage(1, 3,"list","barcon"，TagName);
		function goPage(pno, psize,ListName,BarName,TagName) {
		       var itable = document.getElementById(ListName);
//		       console.log(itable);
		    //  var num = itable.rows.length;//表格所有行数(所有记录数)
		     var num=itable.getElementsByTagName(TagName);
		       num=num.length;
//		       console.log(num);
		       var totalPage = 0;//总页数
		       var pageSize = psize;//每页显示行数
		       var n1=num / pageSize;
		       var n2=parseInt(num / pageSize);
		       
		       //总共分几页
		       if (n1 > n2) {
		             totalPage = n2 + 1;
		       } else {
		             totalPage = n2;
		       }
		       var currentPage = pno;//当前页数
		       var startRow = (currentPage - 1) * pageSize + 1;//开始显示的行 31
		       var endRow = currentPage * pageSize;//结束显示的行  40
		       endRow = (endRow > num) ? num : endRow;  //40
//		       console.log(endRow);
		       //遍历显示数据实现分页
		       for (var i = 1; i < (num + 1); i++) {
//		           var irow = itable.rows[i - 1];
		             var irow =itable.getElementsByTagName(TagName)[i-1];
		             if (i >= startRow && i <= endRow) {
		                    irow.style.display = "";
		             } else {
		                    irow.style.display = "none";
		             }
		       }
		       var tempStr = "共" + num + "条记录&nbsp;&nbsp;&nbsp; 分" + totalPage + "页&nbsp;&nbsp;&nbsp; 当前第" + currentPage + "页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ";
		       if (currentPage > 1) {
		             tempStr += "<a href=\"#\" onClick=\"goPage(" + (1) + "," + psize + ",'" +ListName+ "','" +BarName+"','"+TagName+"')\">首页</a>";
		             tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage - 1) +  "," + psize + ",'" +ListName+ "','" +BarName+"','"+TagName+"')\"><上一页</a>"
		       } else {
		             tempStr += "首页";
		             tempStr += "<上一页";
		       }
		       if (currentPage < totalPage) {
		             tempStr += "<a href=\"#\" onClick=\"goPage(" + (currentPage + 1) +  "," + psize + ",'" +ListName+ "','" +BarName+"','"+TagName+"')\">下一页></a>";
		             tempStr += "<a href=\"#\" onClick=\"goPage(" + (totalPage) + "," +  psize + ",'" +ListName+ "','" +BarName+"','"+TagName+"')\">尾页</a>";
		       } else {
		             tempStr += "下一页>";
		             tempStr += "尾页";
		       }
		       document.getElementById(BarName).innerHTML = tempStr;
		}
		
		
		
		
