	    var oInp = document.getElementById("searchBox1");
	    var oInp2 = document.getElementById("searchBox2");
	    var oInp3 = document.getElementById("searchBox3");
	    var listUl = document.getElementById("list1");
	    var listUl2 = document.getElementById("list2");
	    var listUl3 = document.getElementById("list3");
// 	    console.log(oInp);
// 	    console.log(listUl);
	    var li = listUl.getElementsByTagName("tr");
	    var li2 = listUl2.getElementsByTagName("tr");
	    var li3 = listUl3.getElementsByTagName("tr");
	    var row = li.length;
	    var row2 = li2.length;
	    var row3 = li3.length;
	 //   console.log(row3);
	    var parse = [];
	    var parse2 = [];
	    var parse3 = [];
	    
	    for (var i = 0; i < row; i++) {
		var cells = li[i].cells;
		var input = li[i].getElementsByTagName("input");
//		console.log(input);
		var oppu = cells[0].innerText;
		var oppp = cells[1].innerText;
		var oppn = cells[2].innerText;
		var opppaym = cells[3].innerText;
		var oppid = input[0].value;
		var obj1 = {
		    "oppu" : oppu,
		    "oppp" : oppp,
		    "oppn" : oppn,
		    "opppaym" : opppaym,
		    "oppid" : oppid
		}
		obj1.id = i;
		parse.push(obj1);
	    }
	    
	    for (var i = 0; i < row2; i++) {
		var cells = li2[i].cells;
		var input = li2[i].getElementsByTagName("input");
	//	console.log(input);
		var myu = cells[0].innerText;
		var myp = cells[1].innerText;
		var myn = cells[2].innerText;
		var mypaym = cells[3].innerText;
		var myid = input[0].value;
		var obj2 = {
		    "myu" : myu,
		    "myp" : myp,
		    "myn" : myn,
		    "mypaym" : mypaym,
		    "myid" : myid
		}
		obj2.id = i;
		parse2.push(obj2);
	    }
	
	   /*     var parse3 = JSON.stringify(parse3);
	    console.log("parse=" + parse3); */
	    
		for (var i = 0; i < row3; i++) {
		var cells = li3[i].cells;
//		console.log(cells);
	//	var input = li3[i].getElementsByTagName("input");
	//	console.log(input);
		var contractid = cells[0].innerText;
		var contractname = cells[1].innerText;
		var oppp = cells[2].innerText;
		var oppn = cells[3].innerText;
		var camount = cells[4].innerText;
		var obj3 = {
		    "contractid" : contractid,
		    "contractname" : contractid,
		    "oppp" : oppp,
		    "oppn" : oppn,
		    "camount" : camount
		}
		obj3.id = i;
		parse3.push(obj3);
	    }
	       /*    var parse3 = JSON.stringify(parse3);
 	    console.log("parse=" + parse3);   */
	 
		function render3(list3) {
		var text = "";
		list3.forEach(function(ele, index) {
			    text += "<td name=\"list1\">" + ele.contractid + "</td>";
			    text += "<td name=\"list1\" class=\"center\">"
				    + ele.contractname + "</td>";
			    text += "<td name=\"list1\" class=\"center\">"
				    + ele.oppp + "</td>";
			    text += "<td name=\"list1\" class=\"center\">"
				    + ele.oppn + "</td>";
				text += "<td name=\"list1\" class=\"center\">"
					    + ele.camount + "</td>";
			    text += "<td name=\"list1\" class=\"center\">";
			    text += "<button class=\"label label-success\" onclick=\"list3s('"
				    + ele.contractid + "')\">选择</span>";
			    text += "</td>";
			    text += "</tr>";
			});
		listUl3.innerHTML = text;
		goPage(1, 10, "list3", "barcon3", "tr");
	    }
		
		function render2(list2) {
			var text = "";
			list2.forEach(function(ele, index) {
			    text += "<td name=\"list1\">" + ele.myu + "</td>";
			    text += "<td name=\"list1\" class=\"center\">"
				    + ele.myp + "</td>";
			    text += "<td name=\"list1\" class=\"center\">"
				    + ele.myn + "</td>";
			    text += "<td name=\"list1\" class=\"center\">"
				    + ele.mypaym + "</td>";
			    text += "<td name=\"list1\" class=\"center\">";
			    text += "<button class=\"label label-success\" onclick=\"list1s('"
				    + ele.myid + "')\">选择</span>";
			    text += "<input type=\"hidden\" value=\""+ele.myid+"\">";
			    text += "</td>";
			    text += "</tr>";
				});
			listUl2.innerHTML = text;
			goPage(1, 10, "list2", "barcon2", "tr");
		    }
	    
	    function render(list) {

		var text = "";
		list.forEach(function(ele, index) {
			    text += "<td name=\"list1\">" + ele.oppu + "</td>";
			    text += "<td name=\"list1\" class=\"center\">"
				    + ele.oppp + "</td>";
			    text += "<td name=\"list1\" class=\"center\">"
				    + ele.oppn + "</td>";
			    text += "<td name=\"list1\" class=\"center\">"
				    + ele.opppaym + "</td>";
			    text += "<td name=\"list1\" class=\"center\">";
			    text += "<button class=\"label label-success\" onclick=\"list1s('"
				    + ele.oppid + "')\">选择</span>";
			    text += "<input type=\"hidden\" value=\""+ele.oppid+"\">";
			    text += "</td>";
			    text += "</tr>";
			});
		listUl.innerHTML = text;
		goPage(1, 10, "list1", "barcon1", "tr");
	    }
	    //获取input输入的value值，需绑定一个oninput事件，获取过滤结果后渲染
	    oInp.oninput = function() {
		var text = this.value;
		console.log("text=" + text);
		//state.text = this.value; //组合条件筛选
		render(filterText(text, parse)); //单一筛选、渲染
		//render(addFn(filterFn,person)); //组合条件筛选、渲染
	    }
	    
	    oInp2.oninput = function() {
		var text = this.value;
		console.log("text=" + text);
		//state.text = this.value; //组合条件筛选
		render2(filterText2(text, parse2)); //单一筛选、渲染
		//render(addFn(filterFn,person)); //组合条件筛选、渲染
	    }
	    
	    oInp3.oninput = function() {
		var text = this.value;
		//console.log("text=" + text);
		//state.text = this.value; //组合条件筛选
		console.log(parse3);
		render3(filterText3(text, parse3)); //单一筛选、渲染
		//render(addFn(filterFn,person)); //组合条件筛选、渲染
	    }
	    

	    
	    
	    function filterText(val, arr) {
		console.log(val);
		var fArr = arr.filter(function(ele, index) {
		    console.log(val);
		    if (ele.oppu.indexOf(val) !== -1
			    || ele.oppp.indexOf(val) !== -1
			    || ele.oppn.indexOf(val) !== -1
			    || ele.opppaym.indexOf(val) !== -1) {
			return true;
		    }
		})
		return fArr;
	    }
	    
	  //输入文本过滤
	     function filterText2(val, arr) {
		console.log(val);
		var fArr = arr.filter(function(ele, index) {
		    console.log(val);
		    if (ele.myu.indexOf(val) !== -1
			    || ele.myp.indexOf(val) !== -1
			    || ele.myn.indexOf(val) !== -1
			    || ele.mypaym.indexOf(val) !== -1) {
			return true;
		    }
		})
		return fArr;
	    }
	    
	    function filterText3(val, arr) {
		//console.log(val);
		var fArr = arr.filter(function(ele, index) {
		    console.log(arr);
		    if (ele.contractid.indexOf(val) !== -1
			    || ele.contractname.indexOf(val) !== -1
			    || ele.oppp.indexOf(val) !== -1
			    || ele.oppn.indexOf(val) !== -1
			    || ele.camount.indexOf(val) !== -1) {
			return true;
		    }
		})
		return fArr;
	    }
	    
	    
