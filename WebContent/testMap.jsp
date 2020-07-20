<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@page import="java.util.List"%>
<%@page import="com.clas.Equ"%>
    
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<style>
{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
.xl1510810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6510810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6610810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6710810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6810810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6910810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7010810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid black;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7110810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7210810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid black;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7310810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid black;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7410810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7510810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7610810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7710810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid black;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7810810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid black;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7910810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid black;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8010810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid black;
	border-bottom:1.0pt solid black;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8110810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8210810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid black;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8310810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8410810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8510810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8610810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8710810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8810810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl8910810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl9010810
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	border:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
ruby
	{ruby-align:left;}
rt
	{color:windowtext;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-char-type:none;}
	
.font531325
	{color:windowtext;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;}
.xl1531325
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:general;
	vertical-align:bottom;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6531325
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6631325
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:bottom;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6731325
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6831325
	{padding-top:1px;
	word-wrap:break-word;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl6931325
	{padding-top:1px;
	word-wrap:break-word;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:1.0pt solid windowtext;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7031325
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:none;
	border-bottom:1.0pt solid windowtext;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7131325
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:none;
	border-right:none;
	border-bottom:none;
	border-left:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7231325
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	mso-ignore:padding;
	color:black;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border-top:1.0pt solid windowtext;
	border-right:1.0pt solid windowtext;
	border-bottom:1.0pt solid windowtext;
	border-left:none;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:nowrap;}
.xl7331325
	{padding-top:1px;
	padding-right:1px;
	padding-left:1px;
	word-wrap:break-word;
	mso-ignore:padding;
	color:black;
	font-size:11.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-number-format:General;
	text-align:center;
	vertical-align:middle;
	border:1.0pt solid windowtext;
	mso-background-source:auto;
	mso-pattern:auto;
	white-space:normal;}
.xlbtn{
background-position: bottom;
background-color: lightskyblue;
}
.xlT1{
float: left; 
width: 35%;
/*margin-left:12%;*/
margin-left:38%;
}
.xlT1change{
float: left; 
 width: 35%; 
margin-left:12%;
/* margin-left:38%; */
}
	
ruby
	{ruby-align:left;}
rt
	{color:windowtext;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:等线;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-char-type:none;}
</style>


<html>
<head>
<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Home</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="">
	<meta name="keyword" content="">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link rel="stylesheet" href="alert/css/alert.css">
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	<link href="mycss1/TestMap.css" rel="stylesheet">
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- end: Favicon -->
	


	
</head>
<body>


	<%@include file="TestHeader.jsp" %>
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<%@include file="TestMainMenu.jsp" %>
			
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="ReturnIndex">主页</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">日常运维</a></li>
			</ul>
			
<div>
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>A机房平面图</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					
					<div class="box-content" style="padding-top: 20px;padding-bottom: 20px;">
					<table id="TA"  border=0 cellpadding=0 cellspacing=0 width=100% style='border-collapse:collapse;width:98%'>
 <col width=64 span=22 style='width:48pt'>
 <tr height=27 style='height:20.4pt'>
  <td height=27 class=xl158855 width=64 style='height:20.4pt;width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl678855 width=64 style='width:48pt'>A机房机柜位置示意图</td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl668855 width=64 style='width:48pt'></td>
  <td class=xl158855 width=64 style='width:48pt'></td>
 </tr>
 <tr height=27 style='height:20.4pt'>
  <td height=27 class=xl158855 style='height:20.4pt'></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl678855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl668855></td>
  <td class=xl158855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
  <td class=xl668855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl688855>空调</td>
  <td class=xl158855></td>
  <td class=xl698855>1</td>
  <td class=xl698855>2</td>
  <td class=xl698855>3</td>
  <td class=xl698855>4</td>
  <td class=xl698855>5</td>
  <td class=xl698855>6</td>
  <td class=xl698855>7</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855>8</td>
  <td class=xl698855>9</td>
  <td class=xl698855>10</td>
  <td class=xl698855>11</td>
  <td class=xl698855>12</td>
  <td class=xl698855>13</td>
  <td class=xl698855>14</td>
  <td class=xl698855></td>
  <td class=xl688855>空调</td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>网1</td>
  <td class=xl798855 name='xla' style='border-left:none'>网2</td>
  <td class=xl798855 name='xla' style='border-left:none'>网3</td>
  <td class=xl788855 style='border-left:none'>网4</td>
  <td class=xl788855 style='border-left:none'>网5</td>
  <td class=xl788855 style='border-left:none'>网6</td>
  <td class=xl798855 name='xla' style='border-left:none'>网7</td>
  <td class=xl158855></td>
  <td class=xl738855></td>
  <td class=xl698855></td>
  <td class=xl708855>网8</td>
  <td class=xl798855 name='xla' style='border-left:none'>网9</td>
  <td class=xl798855 name='xla' style='border-left:none'>网10</td>
  <td class=xl798855 name='xla' style='border-left:none'>网11</td>
  <td class=xl798855 name='xla' style='border-left:none'>网12</td>
  <td class=xl798855 name='xla' style='border-left:none'>网13</td>
  <td class=xl798855 name='xla' style='border-left:none'>网14</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl738855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl698855>15</td>
  <td class=xl698855>16</td>
  <td class=xl698855>17</td>
  <td class=xl698855>18</td>
  <td class=xl698855>19</td>
  <td class=xl698855>20</td>
  <td class=xl698855>21</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855>22</td>
  <td class=xl698855>23</td>
  <td class=xl698855>24</td>
  <td class=xl698855>25</td>
  <td class=xl698855>26</td>
  <td class=xl698855>27</td>
  <td class=xl698855>28</td>
  <td class=xl698855>29</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl688855>空调</td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>1</td>
  <td class=xl798855 name='xla' style='border-left:none'>2</td>
  <td class=xl798855 name='xla' style='border-left:none'>3</td>
  <td class=xl798855 name='xla' style='border-left:none'>4</td>
  <td class=xl798855 name='xla' style='border-left:none'>5</td>
  <td class=xl798855 name='xla' style='border-left:none'>6</td>
  <td class=xl798855 name='xla' style='border-left:none'>6右</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl708855>网15</td>
  <td class=xl708855 style='border-left:none'>网16</td>
  <td class=xl708855 style='border-left:none'>网17</td>
  <td class=xl708855 style='border-left:none'>网18</td>
  <td class=xl708855 style='border-left:none'>网19</td>
  <td class=xl708855 style='border-left:none'>网20</td>
  <td class=xl708855 style='border-left:none'>网21</td>
  <td class=xl708855 style='border-left:none'>网22</td>
  <td class=xl698855></td>
  <td class=xl688855>空调</td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl158855 style='height:13.8pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl698855>30</td>
  <td class=xl698855>31</td>
  <td class=xl698855>32</td>
  <td class=xl698855>33</td>
  <td class=xl698855>34</td>
  <td class=xl698855>35</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl698855>36</td>
  <td class=xl698855>37</td>
  <td class=xl698855>38</td>
  <td class=xl698855>39</td>
  <td class=xl698855>40</td>
  <td class=xl698855>41</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl688855>　</td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl668855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>7</td>
  <td class=xl798855 name='xla' style='border-left:none'>8</td>
  <td class=xl798855 name='xla' style='border-left:none'>9</td>
  <td class=xl798855 name='xla' style='border-left:none'>10</td>
  <td class=xl798855 name='xla' style='border-left:none'>11</td>
  <td class=xl798855 name='xla' style='border-left:none'>11右</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>12左</td>
  <td class=xl798855 name='xla' style='border-left:none'>12</td>
  <td class=xl798855 name='xla' style='border-left:none'>13</td>
  <td class=xl798855 name='xla' style='border-left:none'>14</td>
  <td class=xl798855 name='xla' style='border-left:none'>15</td>
  <td class=xl798855 name='xla' style='border-left:none'>16</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl158855 style='height:13.8pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>42</td>
  <td class=xl698855>43</td>
  <td class=xl698855>44</td>
  <td class=xl698855>45</td>
  <td class=xl698855>46</td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>47</td>
  <td class=xl698855>48</td>
  <td class=xl698855>49</td>
  <td class=xl698855>50</td>
  <td class=xl698855>51</td>
  <td class=xl698855>52</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>17</td>
  <td class=xl798855 name='xla' style='border-left:none'>18</td>
  <td class=xl798855 name='xla' style='border-left:none'>19</td>
  <td class=xl798855 name='xla' style='border-left:none'>20</td>
  <td class=xl798855 name='xla' style='border-left:none'>21</td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>23</td>
  <td class=xl798855 name='xla' style='border-left:none'>24</td>
  <td class=xl798855 name='xla' style='border-left:none'>25</td>
  <td class=xl798855 name='xla' style='border-left:none'>26</td>
  <td class=xl798855 name='xla' style='border-left:none'>27</td>
  <td class=xl798855 name='xla' style='border-left:none'>28</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl158855 style='height:13.8pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>53</td>
  <td class=xl698855>54</td>
  <td class=xl698855>55</td>
  <td class=xl698855>56</td>
  <td class=xl698855>57</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>58</td>
  <td class=xl158855></td>
  <td class=xl698855>59</td>
  <td class=xl698855>60</td>
  <td class=xl698855>61</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>29</td>
  <td class=xl798855 name='xla' style='border-left:none'>30</td>
  <td class=xl798855 name='xla' style='border-left:none'>31左</td>
  <td class=xl798855 name='xla' style='border-left:none'>31中</td>
  <td class=xl798855 name='xla' style='border-left:none'>31右</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>小4</td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>小5</td>
  <td class=xl798855 name='xla' style='border-left:none'>小6</td>
  <td class=xl798855 name='xla' style='border-left:none'>小7</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl158855 style='height:13.8pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>62</td>
  <td class=xl158855></td>
  <td class=xl698855>63</td>
  <td class=xl158855></td>
  <td class=xl698855>64</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>65</td>
  <td class=xl158855></td>
  <td class=xl698855>66</td>
  <td class=xl158855></td>
  <td class=xl698855>67</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=43 style='height:32.4pt'>
  <td height=43 class=xl158855 style='height:32.4pt'></td>
  <td class=xl718855>大门</td>
  <td class=xl158855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl798855 name='xla'>小1</td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>小2</td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>小3</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>小8</td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>小9</td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>小10</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl158855 style='height:13.8pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>68</td>
  <td class=xl698855>69</td>
  <td class=xl698855>70</td>
  <td class=xl698855>71</td>
  <td class=xl698855>72</td>
  <td class=xl698855>73</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>74</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl688855>空调</td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl688855>空调</td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>32</td>
  <td class=xl798855 name='xla' style='border-left:none'>33</td>
  <td class=xl798855 name='xla' style='border-left:none'>34</td>
  <td class=xl798855 name='xla' style='border-left:none'>35</td>
  <td class=xl798855 name='xla' style='border-left:none'>36</td>
  <td class=xl798855 name='xla' style='border-left:none'>37</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>小11</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl688855 style='border-top:none'>　</td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl158855 style='height:13.8pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>75</td>
  <td class=xl698855>76</td>
  <td class=xl698855>77</td>
  <td class=xl698855>78</td>
  <td class=xl698855>79</td>
  <td class=xl698855>80</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855>81</td>
  <td class=xl698855>82</td>
  <td class=xl698855>83</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl798855 name='xla'>38</td>
  <td class=xl798855 name='xla' style='border-left:none'>39</td>
  <td class=xl798855 name='xla' style='border-left:none'>40</td>
  <td class=xl798855 name='xla' style='border-left:none'>41</td>
  <td class=xl798855 name='xla' style='border-left:none'>42</td>
  <td class=xl798855 name='xla' style='border-left:none'>43</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td rowspan=2 class=xl838855 width=64 style='border-bottom:.5pt solid black;
  width:48pt'>交流电源柜</td>
  <td rowspan=2 class=xl838855 width=64 style='border-bottom:.5pt solid black;
  width:48pt'>交流电源柜</td>
  <td rowspan=2 class=xl838855 width=64 style='border-bottom:.5pt solid black;
  width:48pt'>空调配电屏</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl718855></td>
  <td class=xl158855></td>
  <td class=xl698855>84</td>
  <td class=xl698855>85</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855>86</td>
  <td class=xl698855>87</td>
  <td class=xl698855>88</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855>89</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl708855>网23</td>
  <td class=xl708855 style='border-left:none'>网24</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl708855>网25</td>
  <td class=xl708855 style='border-left:none'>电源</td>
  <td class=xl708855 style='border-left:none'>网26</td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td colspan=2 class=xl858855 style='border-right:.5pt solid black'>数字分配架</td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl158855 style='height:15.6pt'></td>
  <td class=xl668855></td>
  <td class=xl158855></td>
  <td class=xl748855>机柜已满</td>
  <td class=xl158855>机柜已满</td>
  <td class=xl158855></td>
  <td class=xl768855>　</td>
  <td class=xl158855>在用机柜</td>
  <td class=xl158855></td>
  <td class=xl758855>　</td>
  <td class=xl158855>空机柜</td>
  <td class=xl158855></td>
  <td class=xl828855>　</td>
  <td class=xl158855>其它机柜</td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl158855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl698855></td>
  <td class=xl158855></td>
 </tr>
 
</table>
					
	</div></div><!--/span--></div><!--/row-->
		
		
		
		
	
	
		
		
		<div>
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white user"></i><span class="break"></span>B机房平面图</h2>
						<div class="box-icon">
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
						</div>
					</div>
					<div class="box-content" style="padding-top: 20px;padding-bottom: 20px;display: block;margin-left:13px;">
					<table id="TB"  border=0 cellpadding=0 cellspacing=0 width=100% style='border-collapse:collapse;width:98%'>
 <col width=64 span=22 style='width:48pt'>
 <col width=64 span=2 style='width:48pt'>
 <col width=70 style='mso-width-source:userset;mso-width-alt:2474;width:52pt'>
 <col width=64 span=17 style='width:48pt'>
 <tr height=27 style='height:20.4pt'>
  <td height=27 class=xl6616012 width=64 style='height:20.4pt;width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=70 style='width:52pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6716012 width=64 style='width:48pt'>B机房机柜位置示意图</td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
  <td class=xl6616012 width=64 style='width:48pt'></td>
 </tr>
 <tr height=27 style='height:20.4pt'>
  <td height=27 class=xl6616012 style='height:20.4pt'></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6716012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl6616012 style='height:15.6pt'></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl6816012 style='height:15.6pt'>空调</td>
  <td class=xl6916012>1</td>
  <td class=xl6916012></td>
  <td class=xl6916012>2</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012>3</td>
  <td class=xl6916012>4</td>
  <td class=xl6916012>5</td>
  <td class=xl6916012>6</td>
  <td class=xl6916012></td>
  <td class=xl6916012>7</td>
  <td class=xl6916012>8</td>
  <td class=xl6916012>9</td>
  <td class=xl6916012>10</td>
  <td class=xl6916012>11</td>
  <td class=xl6916012>12</td>
  <td class=xl6916012>13</td>
  <td class=xl6916012></td>
  <td class=xl6816012>空调</td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl6916012 style='height:15.6pt'></td>
  <td colspan=2 class=xl7516012 name='xlb'>小1</td>
  <td colspan=2 class=xl7516012 name='xlb' style='border-left:none'>小2</td>
  <td class=xl6916012></td>
  <td colspan=4 class=xl7516012 name='xlb' style='border-right:.5pt solid black'>小3</td>
   
  <td class=xl6916012></td>
  <td class=xl7816012>0</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>1</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>2</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>3</td>
  <td class=xl7816012 style='border-left:none'>4</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>5</td>
  <td class=xl7816012 style='border-left:none'>6</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl1516012 style='height:13.8pt'></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl6916012 style='height:15.6pt'></td>
  <td class=xl6916012></td>
  <td class=xl6916012>14</td>
  <td class=xl6916012>15</td>
  <td class=xl6916012>16</td>
  <td class=xl6916012>17</td>
  <td class=xl6916012>18</td>
  <td class=xl6916012>19</td>
  <td class=xl6916012></td>
  <td class=xl6916012>20</td>
  <td class=xl6916012>21</td>
  <td class=xl6916012></td>
  <td class=xl6916012>22</td>
  <td class=xl6916012>23</td>
  <td class=xl6916012></td>
  <td class=xl6916012>24</td>
  <td class=xl6916012>25</td>
  <td class=xl6916012>26</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl6816012 style='height:15.6pt'>空调</td>
  <td class=xl6916012></td>
  <td class=xl7516012 name='xlb'>10</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>9</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>9右</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>8</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>7</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>小4</td>
  <td class=xl6916012></td>
  <td class=xl7516012 name='xlb'>小5</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>小6</td>
  <td class=xl6916012></td>
  <td class=xl7516012 name='xlb'>小7</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>小8</td>
  <td class=xl6916012></td>
  <td class=xl7516012 name='xlb'>小9</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>小10</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>小11</td>
  <td class=xl6916012></td>
  <td class=xl6816012>空调</td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl1516012 style='height:13.8pt'></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
 </tr>
 <tr height=21 style='mso-height-source:userset;height:15.6pt'>
  <td height=21 class=xl6916012 style='height:15.6pt'></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012>27</td>
  <td class=xl6916012>28</td>
  <td class=xl6916012>29</td>
  <td class=xl6916012>30</td>
  <td class=xl6916012>31</td>
  <td class=xl6916012>32</td>
  <td class=xl6916012></td>
  <td class=xl6916012>33</td>
  <td class=xl6916012>34</td>
  <td class=xl6916012>35</td>
  <td class=xl6916012>36</td>
  <td class=xl6916012></td>
  <td class=xl6916012>37</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6816012>　</td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl6616012 style='height:15.6pt'></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl7516012 name='xlb'>11</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>12</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>13</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>14</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>15</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>16</td>
  <td class=xl6916012></td>
  <td class=xl7516012 name='xlb'>17</td>
  <td class=xl7816012 style='border-left:none'>18</td>
  <td class=xl7816012 style='border-left:none'>19</td>
  <td class=xl7816012 style='border-left:none'>20</td>
  <td class=xl7816012 style='border-left:none'>　</td>
  <td class=xl7816012 style='border-left:none'>21</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl1516012 style='height:13.8pt'></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
 </tr>
 <tr height=59 style='mso-height-source:userset;height:44.4pt'>
  <td height=59 class=xl7116012 style='height:44.4pt'>大门</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl7116012 style='height:15.6pt'></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012>38</td>
  <td class=xl6916012>39</td>
  <td class=xl6916012>40</td>
  <td class=xl6916012>41</td>
  <td class=xl6916012>42</td>
  <td class=xl6916012>43</td>
  <td class=xl6916012>44</td>
  <td class=xl6916012>45</td>
  <td class=xl6916012>46</td>
  <td class=xl6916012>47</td>
  <td class=xl6916012>48</td>
  <td class=xl6916012>49</td>
  <td class=xl6916012>50</td>
  <td class=xl6916012>51</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6816012>空调</td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl6916012 style='height:15.6pt'></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl7516012 name='xlb'>22</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>23</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>24</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>25</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>26</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>27</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>28</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>29</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>30</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>31</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>32</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>33</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>34</td>
  <td class=xl7516012 name='xlb' style='border-left:none'>35</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6816012 style='border-top:none'>　</td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl6816012 style='height:15.6pt'>空调</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012>51</td>
  <td class=xl6916012>52</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl6616012 style='height:15.6pt'></td>
  <td class=xl6616012></td>
  <td class=xl6616012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl7016012>36</td>
  <td class=xl7016012 style='border-left:none'>37</td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
  <td class=xl6916012></td>
 </tr>
 <tr height=18 style='height:13.8pt'>
  <td height=18 class=xl1516012 style='height:13.8pt'></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
 </tr>
 <tr height=21 style='height:15.6pt'>
  <td height=21 class=xl1516012 style='height:15.6pt'></td>
  <td class=xl1516012></td>
  <td class=xl7216012>机柜已满</td>
  <td class=xl1516012>机柜已满</td>
  <td class=xl1516012></td>
  <td class=xl7416012>　</td>
  <td class=xl1516012>在用机柜</td>
  <td class=xl1516012></td>
  <td class=xl7316012>　</td>
  <td class=xl1516012>空机柜</td>
  <td class=xl1516012></td>
  <td class=xl7816012>　</td>
  <td class=xl1516012>其它机柜</td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
  <td class=xl1516012></td>
 </tr>
 
</table>
					
	</div></div></div><!--/span-->
		

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
		
		
		
		
	<div class="clearfix"></div>
	
	<%
		Date d = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String now = df.format(d);
	%>

	<footer>
		<p>
			<span style="text-align:left;float:left">当前时间：<%=now %><a style="padding-left: 50px" target="_blank" href="mailto:13616880703@189.cn">建议邮箱</a></span>
		</p>

	</footer>
	
	<!-- start: JavaScript-->
	
	<script charset="GBK" src='alert/js/alert.js'></script>
	<script src="js/jquery-1.9.1.min.js"></script>
	<script src="js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="js/jquery.ui.touch-punch.js"></script>
	
		<script src="js/modernizr.js"></script>
	
		<script src="js/bootstrap.min.js"></script>
	
		<script src="js/jquery.cookie.js"></script>
	
		<script src='js/fullcalendar.min.js'></script>
	
		<script src='js/jquery.dataTables.min.js'></script>

		<script src="js/excanvas.js"></script>
	<script src="js/jquery.flot.js"></script>
	<script src="js/jquery.flot.pie.js"></script>
	<script src="js/jquery.flot.stack.js"></script>
	<script src="js/jquery.flot.resize.min.js"></script>
	
		<script src="js/jquery.chosen.min.js"></script>
	
		<script src="js/jquery.uniform.min.js"></script>
		
		<script src="js/jquery.cleditor.min.js"></script>
	
		<script src="js/jquery.noty.js"></script>
	
		<script src="js/jquery.elfinder.min.js"></script>
	
		<script src="js/jquery.raty.min.js"></script>
	
		<script src="js/jquery.iphone.toggle.js"></script>
	
		<script src="js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="js/jquery.gritter.min.js"></script>
	
		<script src="js/jquery.imagesloaded.js"></script>
	
		<script src="js/jquery.masonry.min.js"></script>
	
		<script src="js/jquery.knob.modified.js"></script>
	
		<script src="js/jquery.sparkline.min.js"></script>
	
		<script src="js/counter.js"></script>
	
		<script src="js/retina.js"></script>

		<script src="js/custom.js"></script>
	
	<!-- end: JavaScript-->
	
<!-- 	init -->
<script type="text/javascript">
allEqus =<%=session.getAttribute("listGson")%>

var bArrxEmpty= document.getElementsByName("xlb");
var aArrxEmpty=document.getElementsByName("xla");
//console.log(aArrxEmpty);
// <td colspan=4 class=xl7916012 style='border-right:.5pt solid black'>
// <input style=" background-color: #f0f8ff00;    width: 92%; " type="button" value="小3">
// </td>

for (var i = 0; i < aArrxEmpty.length; i++) {
   
    aArrxEmpty[i].style.overflow="hidden";
    aArrxEmpty[i].style.height="0px"
    btnL('9F-A',aArrxEmpty,i);
}

for (var i = 0; i < bArrxEmpty.length; i++) {
  
    bArrxEmpty[i].style.overflow="hidden";
    bArrxEmpty[i].style.height="0px"
    btnL('9F-B',bArrxEmpty,i);
}

for (var i = 0; i < aArrxEmpty.length; i++) {
     initColer( aArrxEmpty,'9F-A',i);
 } 

for (var i = 0; i < bArrxEmpty.length; i++) {
    initColer( bArrxEmpty,'9F-B',i);
} 



function initColer(Arr,b,x) {
   // var a=bArrxUse[i].getElementsByTagName("input")[0].value; 
    var a=Arr[x].getElementsByTagName("input")[0].value; 
   // if (getEqusId('9F-B',a).length>0) {
//         console.log('9F-B-'+a);
//         console.log( getEqusId(b,a));
      
	if (getEqusId(b,a).length>0&&getEqusId(b,a).length<7) {
	//bArr[x]xUse[i].setAttribute("class","xl7616012");
	   Arr[x].setAttribute("class","xl7616012");
    }else if (getEqusId(b,a).length>=7) {
	Arr[x].setAttribute("class","xl7716012");
    }else if (getEqusId(b,a).length==0){
	Arr[x].setAttribute("class","xl7516012");
    }
}


function btnL(s,Arr,i) {
   // console.log(Arr[i]);
    var text = "";
    text += "<input  style=\"padding:0px; background-color: #f0f8ff00;font-weight:700; width: 98%;height:100%; \" type=\"button\" onclick=\"checkItem('"+s+"','"+Arr[i].innerText+"')\" value=\""+Arr[i].innerText+"\">";

    Arr[i].innerHTML = text;
}
function getByClass(parent, cls){
    if(parent.getElementsByClassName){
      return parent.getElementsByClassName(cls);
    }else{
      var res = [];
      var reg = new RegExp(' ' + cls + ' ', 'i')
      var ele = parent.getElementsByTagName('*');
      for(var i = 0; i < ele.length; i++){
        if(reg.test(' ' + ele[i].className + ' ')){
          res.push(ele[i]);
        }
      }
      return res;
    }
  }



// console.log(allEqus);
var posArr= new Array();
posArr=allEqus[0].pos.split("/");
// console.log(posArr);



function getEqusId(s0,s1) {
    var pos0Arr=new Array();
    for (var i = 0; i < allEqus.length; i++) {
	var posArr= new Array();
	if (posArr!=null) {
// 	   console.log(allEqus[i]); 
	    posArr=allEqus[i].pos.split("/");
 	//    console.log(posArr);
	  if (posArr[0]==s0) {
	     
	    if (posArr[1]==s1) {
	//	console.log(i);
		pos0Arr.push(i);
	    }else {
		continue;
	    }
	}else {
	    continue;
	}
    }else {
	continue;
    }
    }
    return pos0Arr;
    }



 M={};
function checkItem(s0,s1) {

//     document.getElementById("alert-box").style.display = "block";
    if(M.dialog9){
	//console.log(M.dialog9);
	//alertM[0].style.position=" fixed"
	var alertTitle= getByClass("document", "alert-title");
	alertTitle[0].innerText=s0+"-"+s1;
	var alertContent= getByClass("document", "alert-content");
	alertContent[0].innerHTML = text(s1);
	var EqusId= getEqusId(s0,s1);
	for (var i = 0; i < EqusId.length; i++) {
	  var pos=  allEqus[EqusId[i]].pos;
	   var pos2=pos.substring(pos.lastIndexOf("/")+1);
	   
	   if(pos2.substr(0,1)=="V"){
	       continue;
	   }else {
		       pos2=pos2.length>1 ? pos2 : ("0"+pos2);
		       var styp=allEqus[EqusId[i]].styp
		       document.getElementById(pos2).innerHTML = btn(styp,EqusId[i]);
			}
		}
	    return M.dialog9.show();
	}
	M.dialog9 = jqueryAlert({
	    'style'   : 'pc',
	    'title'   : s0+"-"+s1,
	    'content' :  text(),
	    'modal'   : true,
// 	    "className"    : 'XXXXX', //添加类名
	    'contentTextAlign' : 'center',
	    'width'   : '60%',
	    'height'  : '90%',
 	    'position'     : 'absolute',
	    'animateType': 'linear',
	})
	var alertM= getByClass("document", "alert-modal");
alertM[0].style.position=" fixed";
    var alertContent= getByClass("document", "alert-content");
alertContent[0].innerHTML = text(s1);
var EqusId= getEqusId(s0,s1);
console.log(EqusId);
for (var i = 0; i < EqusId.length; i++) {
  var pos=  allEqus[EqusId[i]].pos;
   var pos2=pos.substring(pos.lastIndexOf("/")+1);
   if(pos2.substr(0,1)=="V"){
       continue;
   }else {
       pos2=pos2.length>1 ? pos2 : ("0"+pos2);
       var styp=allEqus[EqusId[i]].styp
       document.getElementById(pos2).innerHTML = btn(styp,EqusId[i]);
}
}	
}

function getByClass(parent, cls){
  if(parent.getElementsByClassName){
    return document.getElementsByClassName(cls);
  }else{
    var res = [];
    var reg = new RegExp(' ' + cls + ' ', 'i')
    var ele = document.getElementsByTagName('*');
    for(var i = 0; i < ele.length; i++){
      if(reg.test(' ' + ele[i].className + ' ')){
        res.push(ele[i]);
      }
    }
    return res;
  }
}

function formatZero(num, len) {
    if(String(num).length > len) return num;
    return (Array(len).join(0) + num).slice(-len);
}


function text(i) {
    var text = "";
    text += "<div>";
    text += "<div id=\"T1\"  class=xlT1>";
    text += "<table border=0 cellpadding=0 cellspacing=0 width=333 style='border-collapse:collapse;table-layout:fixed;width:250pt'>";
    text += " <col width=13 style='mso-width-source:userset;mso-width-alt:455;width:10pt'>";
    text += " <col width=64 span=5 style='width:48pt'>";
    text += " <tr height=19 style='height:14.4pt'>";
    text += "  <td height=19 class=xl1510810 width=13 style='height:14.4pt;width:10pt'></td>";
    text += "  <td class=xl1510810 width=64 style='width:48pt'></td>";
    text += "  <td class=xl1510810 width=64 style='width:48pt'></td>";
    text += "  <td class=xl1510810 width=64 style='width:48pt'></td>";
    text += "  <td class=xl1510810 width=64 style='width:48pt'></td>";
    text += "  <td class=xl1510810 width=64 style='width:48pt'></td>";
    text += " </tr>";
    text += " <tr height=10 style='mso-height-source:userset;height:7.95pt'>";
    text += "  <td height=10 class=xl1510810 style='height:7.95pt'></td>";
    text += "  <td colspan=4 rowspan=2 class=xl6710810 style='border-right:1.0pt solid black;";
    text += "  border-bottom:1.0pt solid black'>"+i+"柜</td>";
    text += "  <td class=xl1510810 style='border-image: initial'></td>";
    text += " </tr>";
    text += " <tr height=10 style='mso-height-source:userset;height:7.95pt'>";
    text += "  <td height=10 class=xl1510810 style='height:7.95pt'></td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td rowspan=3 class=xl7110810 style='border-bottom:1.0pt solid black;";
    text += "  border-image: initial'>1</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>上</td>";
    text += "  <td colspan=2 class=xl8110810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"01上\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>中</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"01\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>下</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"01下\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td rowspan=3 class=xl7210810 style='border-bottom:1.0pt solid black;";
    text += "  border-top:none;border-image: initial'>2</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>上</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"02上\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>中</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"02\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>下</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"02下\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td rowspan=3 class=xl7210810 style='border-bottom:1.0pt solid black;";
    text += "  border-top:none;border-image: initial'>3</td>";
    text += "  <td class=xl8810810 style='border-image: initial'>上</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"03上\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8910810 style='border-image: initial'>中</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"03\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>下</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"03下\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td rowspan=3 class=xl7210810 style='border-bottom:1.0pt solid black;";
    text += "  border-top:none;border-image: initial'>4</td>";
    text += "  <td class=xl8810810 style='border-image: initial'>上</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"04上\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8910810 style='border-image: initial'>中</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"04\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>下</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"04下\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td rowspan=3 class=xl7210810 style='border-bottom:1.0pt solid black;";
    text += "  border-top:none;border-image: initial'>5</td>";
    text += "  <td class=xl8810810 style='border-image: initial'>上</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"05上\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8910810 style='border-image: initial'>中</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"05\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>下</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"05下\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td rowspan=3 class=xl7210810 style='border-bottom:1.0pt solid black;";
    text += "  border-top:none;border-image: initial'>6</td>";
    text += "  <td class=xl8810810 style='border-image: initial'>上</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"06上\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl9010810 style='border-left:none;border-image: initial'>中</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"06\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>下</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"06下\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td rowspan=3 class=xl7210810 style='border-bottom:1.0pt solid black;";
    text += "  border-top:none;border-image: initial'>7</td>";
    text += "  <td class=xl8810810 style='border-image: initial'>上</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"07上\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8910810 style='border-image: initial'>中</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"07\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>下</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"07下\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td rowspan=3 class=xl7210810 style='border-bottom:1.0pt solid black;";
    text += "  border-top:none;border-image: initial'>8</td>";
    text += "  <td class=xl8810810 style='border-image: initial'>上</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"08上\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8910810 style='border-image: initial'>中</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"08\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=16 style='mso-height-source:userset;height:12.0pt'>";
    text += "  <td height=16 class=xl6610810 style='height:12.0pt'>　</td>";
    text += "  <td class=xl8710810 style='border-image: initial'>下</td>";
    text += "  <td colspan=2 class=xl6910810 style='border-right:1.0pt solid black;";
    text += "  border-left:none;border-image: initial' id=\"08下\">　</td>";
    text += "  <td class=xl6510810></td>";
    text += " </tr>";
    text += " <tr height=8 style='mso-height-source:userset;height:6.0pt'>";
    text += "  <td height=8 class=xl6610810 style='height:6.0pt'>　</td>";
    text += "  <td colspan=4 rowspan=2 class=xl7610810 style='border-right:1.0pt solid black;";
    text += "  border-bottom:1.0pt solid black;border-image: initial'>　</td>";
    text += "  <td class=xl1510810></td>";
    text += " </tr>";
    text += " <tr height=8 style='mso-height-source:userset;height:6.0pt'>";
    text += "  <td height=8 class=xl1510810 style='height:6.0pt'></td>";
    text += "  <td class=xl1510810></td>";
    text += " </tr>";
    text += "</table>";
    text += "</div>";
    text += "<div id=\"T2\" style=\"float: right;width: 48%;margin-top:4%;display:none;\"></div>";
    text += "</div>";
return text;
}
function btn(styp,id) {
    var text = "";
    text += "<input type=\"button\" value=\""+styp+"\" class=xlbtn style=\"text-align:center;width: 97%;\" onclick=\"layoutList("+id+")\">";
	return text;
}

function layoutList(id) {
   var E=allEqus[id];
   console.log(E);
   document.getElementById("T1").setAttribute("class","xlT1change");
   document.getElementById("T2").style.display="block";
   document.getElementById("T2").innerHTML = text1(E);
   
  //document.getElementById("T1").style[2]="12%";
}

function text1(e) {
   
    var text = "";
    text += "<table border=0 cellpadding=0 cellspacing=0 width=355 style='border-collapse:";
    text += "collapse;table-layout:fixed;width:266pt'>";
    text += "	<col width=64 style='width:48pt'>";
    text += "		<col class=xl6731325 width=84 style='mso-width-source:userset;mso-width-alt:";
    text += "		2986;width:63pt'>";
    text += "			<col class=xl6731325 width=207 style='mso-width-source:userset;mso-width-alt:";
    text += "			7367;width:155pt'>";
    text += "				<tr height=19 style='height:14.4pt;font-variant-ligatures: normal;font-variant-caps: normal;";
    text += "				orphans: 2;text-align:start;widows: 2;-webkit-text-stroke-width: 0px;";
    text += "				text-decoration-style: initial;text-decoration-color: initial'>";
    text += "					<td height=19 class=xl1531325 width=64 style='height:14.4pt;width:48pt'>";
    text += "					</td>";
    text += "					<td class=xl6731325 width=84 style='width:63pt;border-image: initial'>";
    text += "					</td>";
    text += "					<td class=xl6731325 width=207 style='width:155pt;border-image: initial'>";
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=26 style='mso-height-source:userset;height:19.95pt;font-variant-ligatures: normal;";
    text += "				font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-stroke-width: 0px;";
    text += "				text-decoration-style: initial;text-decoration-color: initial'>";
    text += "					<td height=26 class=xl1531325 style='height:19.95pt;font-variant-ligatures: normal;";
    text += "					font-variant-caps: normal;orphans: 2;text-align:start;widows: 2;-webkit-text-stroke-width: 0px;";
    text += "					text-decoration-style: initial;text-decoration-color: initial'>";
    text += "					</td>";
    text += "					<td colspan=2 class=xl6531325 style='border-right:1.0pt solid black'>";
    text += e.pos;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7031325 style='border-top:none'>";
    text += "						卡片编号";
    text += "					</td>";
    text += "					<td class=xl7331325 width=207 style='border-top:none;width:155pt'>";
    text += e.sid;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7131325>";
    text += "						设备序列号";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.sn;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7031325>";
    text += "						系统名称";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.pname;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7131325>";
    text += "						责任人";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.manname;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7031325>";
    text += "						品牌/型号";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.styp;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7031325 style='border-top:none'>";
    text += "						IP地址";
    text += "					</td>";
    text += "					<td class=xl7331325 style='border-top:none'>";
    text += e.ip;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7131325>";
    text += "						网线编号";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.port;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7031325>";
    text += "						CPU型号";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.cpu;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7131325>";
    text += "						内存";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.memory;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7031325>";
    text += "						硬盘";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.disk;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7131325>";
    text += "						操作系统";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.syn;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=38 style='mso-height-source:userset;height:28.2pt'>";
    text += "					<td height=38 class=xl1531325 style='height:28.2pt'>";
    text += "					</td>";
    text += "					<td class=xl7031325>";
    text += "						数据库版本";
    text += "					</td>";
    text += "					<td class=xl7331325>";
    text += e.oracle;
    text += "					</td>";
    text += "				</tr>";
    text += "				<tr height=18 style='mso-height-source:userset;height:13.2pt'>";
    text += "					<td height=18 class=xl1531325 style='height:13.2pt'>";
    text += "					</td>";
    text += "					<td colspan=2 class=xl7031325 style='border-right:1.0pt solid black'>";
    text += "					</td>";
    text += "				</tr>";
    text += "</table>";
    return text;
}



</script>


</body>
</html>