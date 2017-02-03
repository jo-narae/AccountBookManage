package com.msw.abm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MinjeongController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping("withdraw/withdrawApplyList.do")
	public ModelAndView myInfo4() {
		ModelAndView mv = new ModelAndView("withdraw/withdrawApplyList");
		mv.addObject("active_menu", "withdraw");
		mv.addObject("page_name", "withdrawApplyList");

		return mv;
	}
	
	@RequestMapping("withdraw/withdrawApplyDetail.do")
	public ModelAndView myInfo5() {
		ModelAndView mv = new ModelAndView("withdraw/withdrawApplyDetail");
		mv.addObject("active_menu", "withdraw");
		mv.addObject("page_name", "withdrawApplyDetail");

		return mv;
	}
	
	
	
}
