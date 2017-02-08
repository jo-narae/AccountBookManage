package com.msw.abm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CommonController {

	/**
	 * 에러 페이지 요청
	 */
	@RequestMapping("/errorRequest.do")
	public String errorPageRequest() {
		return "redirect:/error/errorPage.do";
	}
	
	/**
	 * 에러 페이지 응답
	 * @return String
	 */
	@RequestMapping("error/errorPage.do")
	public ModelAndView errorPageResponse () {
		ModelAndView mv = new ModelAndView("error/errorPage");

		return mv;
	}
	
}
