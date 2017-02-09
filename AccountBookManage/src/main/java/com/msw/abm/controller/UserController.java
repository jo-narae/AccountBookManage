package com.msw.abm.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.msw.abm.core.CommonController;
import com.msw.abm.dto.JoinDTO;
import com.msw.abm.vo.UserVO;
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
	
	/**
	 * 아이디 및 이메일 중복 체크
	 * @param id
	 * @param email
	 * @return json
	 */
	@RequestMapping(value = "user/overlapCheck.ajax", method = RequestMethod.POST)
	public ModelAndView idCheck(@RequestParam("id") String id, @RequestParam("email") String email,
			@RequestParam Map<String, Object> paramMap, ModelMap model) {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		if(!id.equals("")) {
			mv.addObject("idCount", userService.idOverlapCheck(id));
		}
		if(!email.equals("")) {
			mv.addObject("emailCount", userService.emailOverlapCheck(email));
		}

		return mv;
	}

	/**
	 * 가입신청 정보 확인 페이지 요청
	 * @param joinForm
	 * @return mv
	 */
	@RequestMapping(value = "user/userJoinInfo.do", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public ModelAndView userJoinInfo(@ModelAttribute("joinForm") JoinDTO joinForm, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView mv = new ModelAndView("user/userJoinInfo");

		mv.addObject("active_menu", "user");
		mv.addObject("page_name", "userJoinInfo");

		//정보 확인을 위한 모델 값 세팅
		mv.addObject("id", joinForm.getId());
		mv.addObject("userName", joinForm.getUserName());
		mv.addObject("phoneNumber", joinForm.getPhoneNumber());
		mv.addObject("password", joinForm.getPassword());
		mv.addObject("email", joinForm.getEmail());
		mv.addObject("cardinalNumber", joinForm.getCardinalNumber());

		return mv;
	}
	
	/**
	 * 회원정보 DB 저장
	 * @param joinForm
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping("user/userJoinSave.do")
	public String userJoinReposit(@ModelAttribute("joinForm") JoinDTO joinForm, HttpServletRequest request,
			HttpServletResponse response) {
		
		UserVO user = transformVO(joinForm);

		userService.userJoinSave(user);
		return "redirect:/user/userJoinComplete.do";
	}
	
	/**
	 * 회원가입 완료 페이지 요청
	 * @return
	 */
	@RequestMapping("user/userJoinComplete.do")
	public ModelAndView userJoinComplete() { 
		ModelAndView mv = new ModelAndView("user/userJoinComplete");
		mv.addObject("active_menu", "user");

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
	
	/**
	 * DTO 객체를 VO 객체로 변환
	 * @param joinForm
	 * @return
	 */
	public UserVO transformVO(JoinDTO joinForm) {
		UserVO user = new UserVO();
		
		user.setId(joinForm.getId());
		user.setName(joinForm.getUserName());
		user.setPassword(joinForm.getPassword());
		user.setPhone_number(joinForm.getPhoneNumber());
		user.setEmail(joinForm.getEmail());
		user.setCardinal_number(joinForm.getCardinalNumber());
		
		return user;
	}
	
}
