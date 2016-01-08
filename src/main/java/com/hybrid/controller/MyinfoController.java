package com.hybrid.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hybrid.command.CityCommand;
import com.hybrid.command.MemberCommand;
import com.hybrid.exception.CityRegisterException;
import com.hybrid.model.City;
import com.hybrid.model.CityList;
import com.hybrid.model.CityPage;
import com.hybrid.model.MemberList;
import com.hybrid.model.MemberPage;
import com.hybrid.service.CityDetailService;
import com.hybrid.service.CityListService;
import com.hybrid.service.CityModifyService;
import com.hybrid.service.CityPageService;
import com.hybrid.service.CityRegisterService;
import com.hybrid.service.CityUnRegisterService;
import com.hybrid.service.MemberListService;
import com.hybrid.service.MemberModifyService;
import com.hybrid.service.MemberPageService;
import com.hybrid.service.MemberUnRegisterService;
import com.hybrid.util.Pagination;

@Controller
@RequestMapping("/myinfo")

public class MyinfoController {
	static Log log = LogFactory.getLog(MyinfoController.class);

	@Autowired	// 필드 주입
	MemberListService memberListService;
	
	@Autowired
	MemberPageService memberPageService;
	
//	@Autowired
//	CityRegisterService cityRegisterService;
//	
//	@Autowired
//	CityDetailService cityDetailService;
//	
	@Autowired
	MemberModifyService memberModifyService;	
	
//	@Autowired
//	MemberUnRegisterService memberUnRegisterService;
	
	/*
	 * main.html
	 */
	@RequestMapping(value="/main.html", method=RequestMethod.GET)
	public String getMainView() {
		log.info("getMainView()...");
		
		return "myinfo/main";
	}
	/*
	 * list.html
	 */
	@RequestMapping(value="/list.html", method=RequestMethod.GET)
	public String getListView() {
		log.info("getListView()...");
		
		return "myinfo/list";
	}
	/*
	 * detail.html
	 */
//	@RequestMapping(value="/detail.html", method=RequestMethod.GET)
//	public String getDetailView() {
//		log.info("getDetailView()...");
//		
//		return "city/detail"; 
//	}
	/*
	 * append.html
	 */
//	@RequestMapping(value="/append.html", method=RequestMethod.GET)
//	public String getAppendView() {
//		log.info("getAppendView()...");
//		
//		return "city/append"; 
//	}
	/*
	 * modify.html
	 */
	@RequestMapping(value="/modify.html", method=RequestMethod.GET)
	public String getModifyView() {
		log.info("getModifyView()...");
		
		return "myinfo/modify"; 
	}
	/*
	 * delete.html
	 */
//	@RequestMapping(value="/delete.html", method=RequestMethod.GET)
//	public String getDeleteView() {
//		log.info("getDeleteView()...");
//		
//		return "myinfo/delete"; 
//	}
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
//	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.GET)
//	@ResponseBody
//	public City getCityItem(@PathVariable int id) {
//		log.info("getCityItem()... id=" + id);
//		
//		City city = cityDetailService.detail(id);
//		
//		return city;
//	}
	
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
//	@RequestMapping(value={"", "/"}, method=RequestMethod.POST)
//	@ResponseBody
//	public CityCommand postCityAppend(@RequestBody CityCommand command) {
//		log.info("postCityAppend()... city id = " + command.getId());
//		
//		command.validate();
//		
//		if (!command.isValid()) {
//			// throw 
//		}
//		
//		int id = cityRegisterService.regist(command.getCity());
//		command.setId(id);
//		
//		return command;
//	}
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
//	@RequestMapping(value="/{id:[0-9]+}", method=RequestMethod.DELETE)
//	@ResponseBody
//	public void deleteMember(@PathVariable int id) {
//		log.info("deleteMember()... id = " + id);
//		
//		memberUnRegisterService.unregist(id);
//	}
	
	
	
	
	
	
}
