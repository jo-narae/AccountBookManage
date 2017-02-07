package com.msw.abm.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.msw.abm.service.ApplyService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ApplyController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	ApplyService applyService;
	
	
	@RequestMapping("admin/withdraw/withdrawMannageList.do")
	public ModelAndView withdawMannageList(@RequestParam ("pageNum") int currentPage, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("admin/withdraw/withdrawMannageList");
		mv.addObject("active_menu", "withdraw");
		mv.addObject("page_name", "withdawMannageList");
		
		mv.addObject("currentPage", currentPage);
		mv.addObject("withdrawMannageList", applyService.findWithdrawMannageList(currentPage));
		mv.addObject("withdrawMannageListCount", applyService.withdrawMannageListCount());

		return mv;
	}
}