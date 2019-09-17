package com.yys.controller;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@Component
public class FileUpload {
    @RequestMapping(value = "upload",method = RequestMethod.POST)
    public @ResponseBody
    String uploads(HttpServletRequest request, @RequestParam("myFileName")MultipartFile file){

        //1. 获取上传的目录路径
        // H:/classes/baseproject/springmvc02/target/springmvc02-1.0-SNAPSHOT/upload
                String path = request.getSession().getServletContext().getRealPath("/upload");
        String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        date = date+ UUID.randomUUID().toString();

        //3. 创建目录
                File uploadDir = new File(path,date);
                if (!uploadDir.exists()){
        // 创建目录或子目录
                    uploadDir.mkdirs();
                }

        String url = null;
        byte[] bytes = null;
//        String uploadDir = "D:\\image\\";
        String fileName = file.getOriginalFilename();//得到上传的文件名
        String filePath = uploadDir+fileName;
        BufferedOutputStream bos = null;
        FileOutputStream fos = null;

        try {
            bytes = file.getBytes();
            File temp = new File(filePath);
            if(!temp.exists()){
                temp.createNewFile();
            }
            System.out.println(temp.getAbsolutePath());
            fos = new FileOutputStream(temp);
            bos = new BufferedOutputStream(fos);
            bos.write(bytes);

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            if(bos!=null){
                try {
                    bos.close();
                }catch (IOException e){
                    e.printStackTrace();
                }finally {
                    if (fos!=null){
                        try {
                            fos.close();
                        }catch (IOException e){
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        System.out.println(request.getContextPath()+fileName);
        //根据wangEditor的服务端接口，造一个JSON对象返回
        JSONObject json = new JSONObject();
        JSONArray array = new JSONArray();
        array.put(request.getContextPath()+"/upload/"+date+fileName);//将图片的引用url放入JSON返回给富文本编辑器进行回显
//        array.put(fileName);//将图片的引用url放入JSON返回给富文本编辑器进行回显
        json.put("errno",0);
        json.put("data",array);
        return json.toString();
    }
}