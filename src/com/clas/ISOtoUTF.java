package com.clas;

import java.io.UnsupportedEncodingException;

public class ISOtoUTF {
	public static String getIsoToUtf_8(String str){
	    if (StringUtils.isBlank(str)){
	        return "";
	    }
	    String newStr = "";
	    try {
	        newStr = new String(str.getBytes("ISO8859-1"),"UTF-8");
	    } catch (UnsupportedEncodingException e) {
	        e.printStackTrace();
	    }
	    return newStr;
	}

}
