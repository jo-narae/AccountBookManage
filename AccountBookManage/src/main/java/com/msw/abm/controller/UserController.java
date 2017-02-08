package com.msw.abm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.msw.abm.vo.UserVO;
import com.msw.abm.dto.LoginDTO;
import com.msw.abm.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	UserService userService;
	
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
	 * 세션 로그인
	 * @return mv
	 */
	@RequestMapping(value="user/sessionLogin.do", method=RequestMethod.POST)
	public ModelAndView sessionLogin (@ModelAttribute("loginFrm") LoginDTO loginFrm, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
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

}
