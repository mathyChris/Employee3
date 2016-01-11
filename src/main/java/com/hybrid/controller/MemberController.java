package com.hybrid.controller;

import java.rmi.activation.ActivationGroupDesc.CommandEnvironment;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

import com.hybrid.command.LoginCommand;
import com.hybrid.command.MemberCommand;
import com.hybrid.exception.LoginFailException;
import com.hybrid.model.Member;
import com.hybrid.model.MemberList;
import com.hybrid.model.MemberPage;
import com.hybrid.service.CityDetailService;
import com.hybrid.service.CityUnRegisterService;
import com.hybrid.service.LoginService;
import com.hybrid.service.MemberDetailService;
import com.hybrid.service.MemberListService;
import com.hybrid.service.MemberModifyService;
import com.hybrid.service.MemberPageService;
import com.hybrid.service.MemberRegisterService;
import com.hybrid.service.MemberUnRegisterService;
import com.hybrid.util.Pagination;

@Controller
@RequestMapping("/member")
public class MemberController {
	static Log log = LogFactory.getLog(MemberController.class);

	@Autowired	// 필드 주입
	MemberListService memberListService;
	
	@Autowired
	MemberPageService memberPageService;
	
	@Autowired
	MemberRegisterService memberRegisterService;
	
	@Autowired
	MemberModifyService memberModifyService;
	
	@Autowired
	MemberDetailService memberDetailService;
	
	@Autowired
	MemberUnRegisterService memberUnRegisterService;
	
	@Autowired
	LoginService loginService;
	
	/*
	 * main.html
	 */
	@RequestMapping(value="/main.html", method=RequestMethod.GET)
	public String getMainView() {
		log.info("getMainView()...");
		
		return "member/main";
	}
	/*
	 * list.html
	 */
	@RequestMapping(value="/list.html", method=RequestMethod.GET)
	public String getListView() {
		log.info("getListView()...");
		
		return "member/list";
	}
	/*
	 * detail.html
	 */
	@RequestMapping(value="/detail.html", method=RequestMethod.GET)
	public String getDetailView() {
		log.info("getDetailView()...");
		
		return "member/detail"; 
	}
	/*
	 * append.html
	 */
	@RequestMapping(value="/append.html", method=RequestMethod.GET)
	public String getAppendView() {
		log.info("getAppendView()...");
		
		return "member/append"; 
	}
	
	/*
	 * modify.html
	 */
	@RequestMapping(value="/modify.html", method=RequestMethod.GET)
	public String getModifyView() {
		log.info("getModifyView()...");
		
		return "member/modify"; 
	}
	
	/*
	 * login.html
	 */
	@RequestMapping(value="/login.html", method=RequestMethod.GET)
	public String getLoginView() {


//		log.info("getLoginView()....");
		
		return "member/login";		
	}
	
	
	
	/*
	 * delete.html
	 */
	@RequestMapping(value="/delete.html", method=RequestMethod.GET)
	public String getDeleteView() {
		log.info("getDeleteView()...");
		
		return "member/delete"; 
	}
	
	/*
	 *  URL_GET_LIST = [/city] or [/city/]
	 *  Accept = application/json
	 */
	@RequestMapping(value={"", "/"}, method=RequestMethod.GET)
	@ResponseBody
	public MemberList getMemberAll() {
		log.info("getMemberAll()...");
		
		MemberList list = memberListService.getList();
		
		return list;
	}
	
	/*
	 * URL_GET_ITEM_BASE = [/city/{id}]
	 * Accept = application/json
	 */
	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.GET)
	@ResponseBody
	public Member getMemberItem(@PathVariable int id) {
		log.info("getMemberItem()... id=" + id);
		
		Member member = memberDetailService.detail(id);
		
		return member;
	}
	
	/*
	 *  URL_GET_PAGE_BASE = [/city/page/{pageNo}]
	 *  Accept = application/json
	 */	
	@RequestMapping(value="/page/{pageNo:[0-9]+}", method=RequestMethod.GET)
	@ResponseBody
	public MemberPage getMemberPage(@PathVariable int pageNo) {
		log.info("getMemberPage()... pageNo = " + pageNo);
		
		MemberPage page = memberPageService.getPage(pageNo);
		
		return page;
	}
	/*
	 * 	URL_POST_ITEM_APPEND = [/city] or [/city/]
	 *  Accept = application/json
	 */
	@RequestMapping(value={"", "/"}, method=RequestMethod.POST)
	@ResponseBody
	public MemberCommand postMemberAppend(@RequestBody MemberCommand command) {
		log.info("postMemberAppend()... member id = " + command.getId());
		
		command.validate();
		
		if (!command.isValid()) {
			// throw 
		}
		
		int id = memberRegisterService.regist(command.getMember());
		command.setId(id);
		
		return command;
	}
	/*
	 * 	URL_PUT_ITEM_MODIFY = [/city/{id}]
	 *  Accept = application/json
	 */
	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.PUT)
	@ResponseBody
	public MemberCommand putMemberModify(@PathVariable int id, @RequestBody MemberCommand command) {
		log.info("putMemberModify()... id = " + id);
		log.info("putMemberModify()... member id = " + command.getId());
		
		memberModifyService.modify(command.getMember());
		
		return command;
	}
	
	/*
	 * 	URL_DELETE_ITEM_DELETE = [/city/{id}]
	 *  Accept = application/json
	 */
	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.DELETE)
	@ResponseBody
	public void deleteMember(@PathVariable int id) {
		log.info("deleteMember()... id = " + id);
		
		memberUnRegisterService.unregist(id);
	}
	
	//login 기능에 대해 생성 
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public LoginCommand login(@RequestBody LoginCommand command, HttpSession session) {
		
		log.info("email = " + command.getEmail());
		log.info("password = " + command.getPassword());

		Member member = loginService.login(command.getEmail(), command.getPassword());
		
		session.setAttribute("login", true);
		session.setAttribute("member", member);

		return command;
	}
	
	// logout 기능 구현 
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		
		log.info("logout()...");
		
		session.invalidate();
		
		return "redirect:/member/login.html"; // redirect 를 사용하면 logout 한 후에 설정한  URL 경로로 다시 접속한다. 
//		return "redirect:/city/main.html" ; 
	}
	
	
	// 다음에 login 상태를 체크 하는 로직을 만든다. 
	@RequestMapping(value = "/logincheck", method=RequestMethod.GET)
	@ResponseBody 
	public Map<String, Object> logincheck(HttpSession session){
		
		Map<String, Object> map = new HashMap<>();
		
		Boolean login = (Boolean) session.getAttribute("login")  ; // 로긴 여부를 session으로 처리한다. 
		
		if(login != null && login == true){
			
			
			map.put("login", true) ; // login이 되어 있으면  이 true 라고 날아온다. 
			map.put("member", session.getAttribute("member")); // memeber info 까지 같이 날아오도록 한다. 
			
		}else {
			
			map.put("login", false); // 
			
		}
		
		return map ; 
	} 
	
	
	
	@ExceptionHandler
	@ResponseBody
	@ResponseStatus(HttpStatus.BAD_REQUEST)
	public Map<String, Object> loginfail(LoginFailException e) {
		
		Map<String, Object> error = new HashMap<String, Object>();
		error.put("message", e.getMessage());

		return error;
	}
	
	
}
