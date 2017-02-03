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

import com.msw.abm.service.DealService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class DealController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	DealService dealService;
	
	/**
	 * 입금 목록 리스트 조회
	 * @param pageNum 현재 페이지 수
	 * @return mv
	 */
	@RequestMapping("admin/deposit/depositList.do")
	public ModelAndView depositList(@RequestParam ("pageNum") int currentPage, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("admin/deposit/depositList");
		mv.addObject("active_menu", "deposit");
		mv.addObject("page_name", "depositList");
		
		mv.addObject("currentPage", currentPage);
		mv.addObject("depositList", dealService.fintDepositList(currentPage));
		mv.addObject("depositListCount", dealService.depositListCount());

		return mv;
	}
	
	@RequestMapping("admin/deposit/depositDetail.do")
	public ModelAndView depositDetail() {
		ModelAndView mv = new ModelAndView("admin/deposit/depositDetail");
		mv.addObject("active_menu", "deposit");
		mv.addObject("page_name", "depositDetail");

		return mv;
	}
	
	@RequestMapping("admin/deposit/depositInput.do")
	public ModelAndView depositInput() {
		ModelAndView mv = new ModelAndView("admin/deposit/depositInput");
		mv.addObject("active_menu", "deposit");
		mv.addObject("page_name", "depositInput");

		return mv;
	}
	
	@RequestMapping("admin/withdraw/withdawMannageList.do")
	public ModelAndView withdawMannageList() {
		ModelAndView mv = new ModelAndView("admin/withdraw/withdawMannageList");
		mv.addObject("active_menu", "withdraw");
		mv.addObject("page_name", "withdawMannageList");

		return mv;
	}
	
	@RequestMapping("admin/authority/authorityManage.do")
	public ModelAndView authorityManage() { 
		ModelAndView mv = new ModelAndView("admin/authority/authorityManage");
		mv.addObject("active_menu", "authority");
		mv.addObject("page_name", "authorityManage");

		return mv;
	}
}
