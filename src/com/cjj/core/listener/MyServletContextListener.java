package com.cjj.core.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyServletContextListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		String contextPath = event.getServletContext().getContextPath();
		event.getServletContext().setAttribute("ctx", contextPath);
		
	}

}
