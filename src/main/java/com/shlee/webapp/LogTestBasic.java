package com.shlee.webapp;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogTestBasic {
	public static void main(String[] args) {
		Logger logger = LoggerFactory.getLogger(LogTestBasic.class);
		
		//ERROR - WARN - INFO - DEBUG - TRACE
		logger.error("Oh, NO!!!");
		logger.warn("Watch Out!");
		logger.info("Hello, slf4j log!!");
		logger.debug("What's wrong with this??");
		logger.trace("Here we are...");
	}
}
