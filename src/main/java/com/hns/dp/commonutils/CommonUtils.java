package com.hns.dp.commonutils;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CommonUtils {
	public static Date GetCurrentDateTime() {
		Date date = new Date();
		return date;
	}
	
	public static String GetCurrentDateTimeFormatted() {
		DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
		return dateFormat.format(GetCurrentDateTime());
	}
	
	public static String GetCurrentDateFormatted() {
		DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy");
		return dateFormat.format(GetCurrentDateTime());
	}
}
