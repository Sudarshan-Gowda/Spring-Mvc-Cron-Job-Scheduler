package com.star.sud.cron.log;

import java.util.LinkedHashMap;

public class CronLogger {

	public CronLogger() {

	}

	public static LinkedHashMap<String, String> cronLog = new LinkedHashMap<String, String>();

	public LinkedHashMap<String, String> getCronLog() {
		return cronLog;
	}

	public void setCronLog(LinkedHashMap<String, String> cronLog) {
		CronLogger.cronLog = cronLog;
	}

	public static LinkedHashMap<String, String> getLogs() {
		return cronLog;

	}

	public static final void setLogs(LinkedHashMap<String, String> cronLog) {
		CronLogger.cronLog = cronLog;
	}

}
