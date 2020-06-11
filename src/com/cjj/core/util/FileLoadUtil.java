package com.cjj.core.util;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.springframework.web.multipart.MultipartFile;

import com.cjj.web.personnelmanage.EmployeeController;

public class FileLoadUtil {
	
	private final static Logger log = Logger.getLogger(EmployeeController.class);
	
	public static String file_load(MultipartFile myfile, HttpServletRequest request) throws IOException{
		System.out.println("载入文件");
		String file_path = "";
		if(myfile.isEmpty()){
			log.info("文件为空！");
		}else{
			log.info("文件大小: " + myfile.getSize());
			log.info("类型: " + myfile.getContentType());
			log.info("文件名称: " + myfile.getName());
			log.info("上传时的文件名: " + myfile.getOriginalFilename());
			log.info("======================================");
			String link = new SimpleDateFormat("yyyyMMdd").format(new Date()) + "/";
			// 文件路径
			String temp_dir = "F:/Boram/" + link;
			log.info("暂存文件路径为: " + temp_dir);
			String filename = myfile.getOriginalFilename();
			long lTime = System.nanoTime();
			String ext = filename.substring(filename.lastIndexOf("."));
			filename = lTime + ext;
			FileUtils.writeByteArrayToFile(new File(temp_dir, filename), myfile.getBytes());
			file_path = "http://127.0.0.1:8089/hospitalmanage/" + link + filename;
			log.info("文件路径为: " + file_path);
		}
		return file_path;
	}
}
