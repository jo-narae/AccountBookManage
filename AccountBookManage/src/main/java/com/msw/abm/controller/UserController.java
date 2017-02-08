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
import com.msw.abm.core.CommonController;
import com.msw.abm.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
	
	@Autowired
	UserService userService;
	
	/**
	 * 회원가입 신청 페이지 요청
	 * @return mv
	 */
	@RequestMapping("user/userJoinApply.do")
	public ModelAndView userJoinApply() { 
		ModelAndView mv = new ModelAndView("user/userJoinApply");
		mv.addObject("active_menu", "user");
		mv.addObject("page_name", "userJoinApply");
		mv.addObject("cardinalList", userService.cardinalList());

		return mv;
	}
	
	@RequestMapping("user/userJoinInfo.do")
	public ModelAndView userJoinInfo() { 
		ModelAndView mv = new ModelAndView("user/userJoinInfo");
		mv.addObject("active_menu", "user");
		mv.addObject("page_name", "userJoinInfo");

		return mv;
	}
	
	@RequestMapping("user/userJoinComplete.do")
	public ModelAndView userJoinComplete() { 
		ModelAndView mv = new ModelAndView("user/userJoinComplete");
		mv.addObject("active_menu", "user");
		mv.addObject("page_name", "userJoinComplete");

		return mv;
	}

	@RequestMapping("mypage/myPage.do")
	public ModelAndView myPage() { 
		ModelAndView mv = new ModelAndView("mypage/myPage");
		mv.addObject("active_menu", "mypage");
		mv.addObject("page_name", "myPage");

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
