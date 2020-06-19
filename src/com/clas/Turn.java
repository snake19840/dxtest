package com.clas;

public class Turn {
	public static String turn1(String str) {
		 
		while (str.indexOf("\n") != -1) {
			str = str.replace("\n","<br>");
		}
		while (str.indexOf(" ") != -1) {
			str = str.replace(" ","&nbsp;");
		}
		return str;
	}
	
	public static String turn2(String str) {
		 
		while (str.indexOf("\n") != -1) {
			str = str.replace("\n","&nbsp;");
		}
		while (str.indexOf(" ") != -1) {
			str = str.replace(" ","&nbsp;");
		}
		return str;
	}
}
