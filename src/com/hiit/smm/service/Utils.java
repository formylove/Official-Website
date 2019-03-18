package com.hiit.smm.service;

import java.io.File;
import java.io.IOException;
import java.util.ResourceBundle;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

public class Utils {
static	Logger logger = Logger.getLogger(Utils.class);
public static String GALLERY_PATH = ResourceBundle.getBundle("config").getString("image.path");
public static String GALLERY_REL_PATH = ResourceBundle.getBundle("config").getString("image.path.rel");
public static String BASE_URL = ResourceBundle.getBundle("config").getString("baseUrl");
	public Utils() {
		// TODO Auto-generated constructor stubH
	}
public static String UPLOAD_IMG(MultipartFile file) {
	
	String originalName = file.getOriginalFilename();
	if(file != null &&  !StringUtils.isWhitespace(originalName)) {//StringUtils.isEmpty(String str) 判断某字符串是否为空，为空的标准是 str==null 或 str.length()==0
//StringUtils.isBlank(String str) 判断某字符串是否为空或长度为0或由空白符(whitespace) 构成

		String newName = UUID.randomUUID()+originalName.substring(originalName.indexOf("."));
		logger.info(String.format("上传的文件文件名为 ：", newName));
		File dir = new File(GALLERY_PATH);
		if(!dir.exists()) {
			dir.mkdir();
		}
		try {
			file.transferTo(new File(GALLERY_PATH + newName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return newName;
	}else {
		
		
		return null;
	}
}
static String phoneReg = "\\bNokia|SAMSUNG|MIDP-2|CLDC1.1|SymbianOS|MAUI|UNTRUSTED/1.0"
	    +"|Windows CE|iPhone|iPad|Android|BlackBerry|UCWEB|ucweb|BREW|J2ME|YULONG|YuLong|COOLPAD|TIANYU|TY-"
	    +"|K-Touch|Haier|DOPOD|Lenovo|LENOVO|HUAQIN|AIGO-|CTC/1.0"
	    +"|CTC/2.0|CMCC|DAXIAN|MOT-|SonyEricsson|GIONEE|HTC|ZTE|HUAWEI|webOS|GoBrowser|IEMobile|WAP2.0\\b";  
	    static String tableReg = "\\b(ipad|tablet|(Nexus 7)|up.browser" 
	            +"|[1-4][0-9]{2}x[1-4][0-9]{2})\\b";  
	     
	    //移动设备正则匹配：手机端、平板
	    static Pattern phonePat = Pattern.compile(phoneReg, Pattern.CASE_INSENSITIVE);  
	    static Pattern tablePat = Pattern.compile(tableReg, Pattern.CASE_INSENSITIVE);  
	       
	    /**
	     * 检测是否是移动设备访问
	     * 
	     * @Title: check
	     * @Date : 2014-7-7 下午01:29:07
	     * @param userAgent 浏览器标识
	     * @return true:移动设备接入，false:pc端接入
	     */
	    public static boolean isMobile(String userAgent){  
	        if(null == userAgent){  
	            userAgent = "";  
	        }  
	        // 匹配  
	        Matcher matcherPhone = phonePat.matcher(userAgent);  
	        Matcher matcherTable = tablePat.matcher(userAgent);  
	        if(matcherPhone.find() || matcherTable.find()){  
	            return true;  
	        } else {  
	            return false;  
	        }  
	    }

}
