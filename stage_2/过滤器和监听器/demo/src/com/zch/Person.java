package com.zch;

import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;

public class Person implements HttpSessionBindingListener{
	private String name;
	private String pwd;
	public Person(String name, String pwd) {
		super();
		this.name = name;
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	@Override
	public void valueBound(HttpSessionBindingEvent e) {
		// TODO Auto-generated method stub
		String name = e.getName();
		String user = this.getName();
		String id = e.getSession().getId();
		HttpSession session = e.getSession();
		
		if(name.equals("p")) { 
			String sessionid = null;
			
			for(Map.Entry<String, String> entry: Check.sid.entrySet()) {
				String key = entry.getKey();
				String vv = entry.getValue();
				System.out.println("遍历："+key+"  "+vv);
				if(vv.equals(user)) {
					sessionid = key;
					break;
				}
			}
			
			System.out.println(sessionid);
			
			if(sessionid!=null) {
				System.out.println("删除老的session");
				//String sessionid = Person.getKey(Check.sid,user);
				
				if(sessionid.equals(id)) {
					
				}else {
					System.out.println("xxxx");
					Check.sh.get(sessionid).invalidate();
					
				}
			}
			
			
			Check.saveSid(id,user);
			Check.savesh(id,session);
		}
		
		System.out.println("session binding lister:"+name+"   id:"+id+"   username:"+user);
	}
	@Override
	public void valueUnbound(HttpSessionBindingEvent event) {
		// TODO Auto-generated method stub
		
	};
	
	
}
