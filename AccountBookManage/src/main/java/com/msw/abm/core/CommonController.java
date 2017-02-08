package com.msw.abm.core;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	/**
	 * 인트로 페이지
	 * @return mv
	 */
	@RequestMapping("/")
	public ModelAndView mainRequest () {
		ModelAndView mv = new ModelAndView("intro");

		return mv;
	}

	/**
	 * 에러 페이지 요청
	 */
	@RequestMapping("errorRequest.do")
	public String errorPageRequest() {
		return "redirect:/error/errorPage.do";
	}
	
	/**
	 * 에러 페이지 응답
	 * @return mv
	 */
	@RequestMapping("error/errorPage.do")
	public ModelAndView errorPageResponse () {
		ModelAndView mv = new ModelAndView("error/errorPage");

		return mv;
	}

	/**
	 * 세션 로그아웃
	 * @return String
	 */
	@RequestMapping("sessionLogout.do")
	public String sessionLogout (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/";
	}
	
	/**
	 * 로그인 화면
	 * @return mv
	 */
	@RequestMapping("user/userLogin.do")
	public ModelAndView userLogin() {
		ModelAndView mv = new ModelAndView("user/userLogin");
		mv.addObject("active_menu", "user");
		mv.addObject("page_name", "userLogin");

		return mv;
	}
	
	/**
	 * 로그인 실패
	 * @param request
	 * @param response
	 * @return mv
	 */
	@RequestMapping("/user/loginFailure.do")
	public ModelAndView loginFailure () {
		ModelAndView mv = new ModelAndView("user/userLogin");
		mv.addObject("active_menu", "user");
		mv.addObject("page_name", "userLogin");
		mv.addObject("loginFail", true);

		return mv;
	}
	
}
