package com.clas;

public class IsDigit {
	public static boolean isInt(String str) {
		for (int i = 0; i < str.length(); i++) {
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			//	Character.isLowerCase(str.charAt(i));判断是不是小写
			//	Character.isUpperCase(str.charAt(i));判断是不是大写
			}
		}
		return true;
	}
}
