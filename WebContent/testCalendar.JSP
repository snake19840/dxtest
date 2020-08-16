<%@ page contentType="text/html; charset=GBK" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>

<title>

testCalendar

</title>

<script language="JavaScript">

  var calDateFiled="";

  var inDate="";

  function setDateField(dateField)

  {

      calDateField = dateField;

      inDate = dateField.value;

  }

 

  function myGetDate(selectedDate)

  {

      calDateField.value = selectedDate;

      calDateField.focus();

}

</script>

</head>

<body>

<form name="abc">

日期:<input type="text" name="indate" readOnly>

<input type="button" name="ok" value="确定" onClick="">

</form>

</body>

</html>