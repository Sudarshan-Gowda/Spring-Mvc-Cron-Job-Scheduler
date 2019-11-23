package com.star.sud.cron.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.star.sud.cron.log.CronLogger;

@Controller
public class HomeController {

	private static final Logger log = Logger.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String getLandingPage(Model model) {
		log.debug("getLandingPage");
		try {

			model.addAttribute("getCronLog", CronLogger.getLogs());

		} catch (Exception e) {
			log.error("getLandingPage", e);
		}
		return "home";
	}

	@RequestMapping(value = "/refresh", method = RequestMethod.GET)
	public String refresh(Model model) {
		try {
			model.addAttribute("getCronLog", CronLogger.getLogs());
		} catch (Exception e) {
			log.error("refresh", e);
		}
		return "home";
	}

}
