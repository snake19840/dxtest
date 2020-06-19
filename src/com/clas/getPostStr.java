package com.clas;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import com.google.gson.Gson;

public class getPostStr {
public static String getStr(HttpServletRequest request,String name) throws UnsupportedEncodingException, IOException {
	Gson gson = new Gson();
	//String ##Gson=gson.toJson(##); 
	//session.setAttribute("##", ##Gson);
	BufferedReader br = new BufferedReader(new InputStreamReader(request.getInputStream(), "utf-8"));
	String line = null;
	StringBuilder sb = new StringBuilder();
	while ((line = br.readLine()) != null) {
		sb.append(line);
	}
	String name2=name.substring(0, 1).toUpperCase() + name.substring(1);
	Equ equ = gson.fromJson(sb.toString(), Equ.class);
	
	return name;
}
}
