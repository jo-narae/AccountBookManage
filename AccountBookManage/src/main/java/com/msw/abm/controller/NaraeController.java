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
public class NaraeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * 내정보 화면
	 * @return
	 */
	@RequestMapping("user/userLogin.do")
	public ModelAndView testUI1() {
		ModelAndView mv = new ModelAndView("/user/userLogin");

		return mv;
	}
	
	@RequestMapping("user/userJoinApply.do")
	public ModelAndView testUI2() { 
		ModelAndView mv = new ModelAndView("/user/userJoinApply");

		return mv;
	}
	
	@RequestMapping("user/userJoinInfo.do")
	public ModelAndView testUI3() { 
		ModelAndView mv = new ModelAndView("/user/userJoinInfo");

		return mv;
	}
	
}
