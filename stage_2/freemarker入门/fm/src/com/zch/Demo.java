package com.zch;

import java.awt.List;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.*;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class Demo {
	public static void main(String[] args) throws TemplateException, IOException {
		Configuration cfg = new Configuration(Configuration.getVersion());
		cfg.setClassForTemplateLoading(Demo.class,"");
		cfg.setDefaultEncoding("UTF-8");
		
		Template temp = cfg.getTemplate("test.ftl");
		
		Map root = new HashMap();
		root.put("name", "zch");
		root.put("work", "it");
		
		ArrayList list = new ArrayList();
		list.add("tom");
		list.add("jdck");
		list.add("mike");
		root.put("lists", list);
		
		Map<String,Dog> maps = new HashMap<String,Dog>();
		maps.put("aa",new Dog("大黄","黄色",123456));
		maps.put("bb",new Dog("黑狗","黑色",999236));
		maps.put("cc",new Dog("黑白","小黑",32223));
		
		root.put("maps", maps);
		Writer out = new OutputStreamWriter(System.out);
		temp.process(root, out);

	}
}
