package com.star.sud.cron.service;

import java.util.Calendar;
import java.util.LinkedHashMap;

import org.apache.log4j.Logger;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import com.star.sud.cron.log.CronLogger;

@EnableScheduling
public class CronJobScheduler {

	private static final Logger log = Logger.getLogger(CronJobScheduler.class);

	/* <second> <minute> <hour> <day-of-month> <month> <day-of-week> */
	@Scheduled(cron = "0 * * * * ?") // Scheduler will trigger at every minute
	public void doJob() {
		log.debug("doJob");
		try {

			// Note: Call your function to execute or do Job

			// Log the details to view in UI --> This is just for reference u can remove it
			String detail = "Job Running at time " + Calendar.getInstance().getTime();

			LinkedHashMap<String, String> mapLogs = CronLogger.getLogs();
			mapLogs.put(String.valueOf(System.nanoTime()), detail);
			CronLogger.setLogs(mapLogs);

			System.out.println(detail);
		} catch (Exception e) {
			log.error("doJob", e);
		}
	}

}
