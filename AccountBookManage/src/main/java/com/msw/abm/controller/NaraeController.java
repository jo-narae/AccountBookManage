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
		ModelAndView mv = new ModelAndView("user/userLogin");

		return mv;
	}
	
	@RequestMapping("user/userJoinApply.do")
	public ModelAndView testUI2() { 
		ModelAndView mv = new ModelAndView("user/userJoinApply");

		return mv;
	}
	
	@RequestMapping("user/userJoinInfo.do")
	public ModelAndView testUI3() { 
		ModelAndView mv = new ModelAndView("user/userJoinInfo");

		return mv;
	}
	
	@RequestMapping("user/userJoinComplete.do")
	public ModelAndView testUI4() { 
		ModelAndView mv = new ModelAndView("user/userJoinComplete");

		return mv;
	}
	
	@RequestMapping("authority/authorityManage.do")
	public ModelAndView testUI5() { 
		ModelAndView mv = new ModelAndView("authority/authorityManage");

		return mv;
	}
	
	@RequestMapping("mypage/myPage.do")
	public ModelAndView testUI6() { 
		ModelAndView mv = new ModelAndView("mypage/myPage");

		return mv;
	}
	
	@RequestMapping("accountbook/accountBookList.do")
	public ModelAndView testUI7() { 
		ModelAndView mv = new ModelAndView("accountbook/accountBookList");

		return mv;
	}
	
	@RequestMapping("withdraw/withdrawApply.do")
	public ModelAndView testUI8() { 
		ModelAndView mv = new ModelAndView("withdraw/withdrawApply");

		return mv;
	}
	
	@RequestMapping("withdraw/withdrawApplyModify.do")
	public ModelAndView testUI9() { 
		ModelAndView mv = new ModelAndView("withdraw/withdrawApplyModify");

		return mv;
	}
	
}
