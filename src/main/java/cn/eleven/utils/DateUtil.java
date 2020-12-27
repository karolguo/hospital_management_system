package cn.eleven.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	public static String getNowDate(){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss");//获取当前时间，格式年月日 时分秒
		String nowDate = dateFormat.format(new Date());
		return nowDate;
	}
	public static void main(String[] args) {
		System.out.println("现在时间为："+getNowDate());
	}
}