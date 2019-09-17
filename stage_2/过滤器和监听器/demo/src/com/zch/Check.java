package com.zch;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

public class Check {

	private static Check instance = new Check();
	public static Map<String,String> sid = new HashMap<String,String>();
	public static Map<String,HttpSession> sh = new HashMap<String,HttpSession>();
	
	private Check() {}
	
	public static Check getInstance() {
		return Check.instance;
	}
	
	public static void saveSid(String k,String v) {
		Check.sid.put(k,v);
	}
	
	
	public static void savesh(String k,HttpSession s) {
		Check.sh.put(k, s);
	}
	
	
}
