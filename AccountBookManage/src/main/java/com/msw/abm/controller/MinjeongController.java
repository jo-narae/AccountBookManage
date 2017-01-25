package com.msw.abm.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MinjeongController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * 내정보 화면1
	 * @return
	 */
	@RequestMapping("deposit/depositList.do")
	public ModelAndView myInfo() {
		ModelAndView mv = new ModelAndView("/deposit/depositList");

		return mv;
	}
	
}
