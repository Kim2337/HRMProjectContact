package contact.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import contact.domain.ContactDto;
import contact.domain.GroupDto;
import contact.service.ContactService;
import contact.service.GroupService;

@Controller
@RequestMapping("/contact")
public class ContactController {
	@Autowired
	ContactService service;
	
	@Autowired
	GroupService gservice;
	
	//연락처 목록 
	@RequestMapping("/list.do")
	public ModelAndView list() throws Exception{
		List<ContactDto> list = service.list();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact/list");
		mav.addObject("list", list);
		return mav;
	}
	
	//연락처 뷰 페이지 
	@RequestMapping(value="contact/view.do", method = RequestMethod.GET)
	public ModelAndView view(@RequestParam int num, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact/view");
		mav.addObject("dto", service.read(num));
		return mav;
	}
	
	//연락처 등록 페이지로 이동  
	@RequestMapping(value="contact/insert.do", method = RequestMethod.GET)
	public String write() {
		return "contact/insert";
	}
	
	//연락처 등록 처리
	@RequestMapping(value="contact/contact/insert.do", method = RequestMethod.POST)
	public String writeContact(@ModelAttribute ContactDto dto) throws Exception {
		service.insert(dto);
		//연락처 DB등록은 되는데 
		//연릭처 등록 이후 페이지 이동 수정 
		return "contact/list";
	}
	
	//연락처 수정 페이지 이동 
	@RequestMapping(value="contact/contact/update.do", method = RequestMethod.GET)
	public String update() {
		return "contact/update";
	}
	
	//연락처 수정 
	@RequestMapping(value="contact/contact/update.do", method = RequestMethod.POST)
	public String updateContact(@ModelAttribute ContactDto dto) throws Exception {
		service.update(dto);
		return "redirect:list.do";
	}
	
	//연락처 수정...

	
	//연락처 삭제 
	@RequestMapping(value="contact/contact/delete.do", method = RequestMethod.POST)
	public String delete(@RequestParam int num) throws Exception{
		service.delete(num);
		return "contact/list.do";
	}
	
	
	//그룹관리 
	@RequestMapping(value = "contact/glist.do", method = RequestMethod.GET)
	public ModelAndView glist() throws Exception{
		List<GroupDto> glist = gservice.glist();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact/glist");
		mav.addObject("glist", glist);
		return mav;
	}
	
	//그룹 보기 
	@RequestMapping(value="contact/gview.do", method = RequestMethod.GET)
	public ModelAndView gview(@RequestParam int gnum, HttpSession session) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact/gview");
		mav.addObject("gdto", gservice.gread(gnum));
		return mav;
	}
	
	//그룹 추가 페이지로 이동  
	@RequestMapping(value="contact/contact/gwrite.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gwrite() {
		return "contact/gwrite";
	}
		
	//그룹 추가 처리
	@RequestMapping(value="contact/contact/contact/gwrite.do", method = RequestMethod.POST)
	public String writeGroup(@ModelAttribute GroupDto gdto) throws Exception {
		gservice.ginsert(gdto);
		//바로 그룹 list페이지로 이동하도록 수정 
		//contact/glist
		return "contact/glist";
	}
	
	//그룹 수정 페이지로 이동 
	@RequestMapping(value="contact/contact/gupdate.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String gupdate() {
		return "contact/gupdate";
	}
	
	//그룹 수정 처리 
	@RequestMapping(value="contact/contact/gupdate.do", method = RequestMethod.POST)
	public String gupdate(@ModelAttribute GroupDto gdto) throws Exception {
		gservice.gupdate(gdto);
		return "redirect:list.do";
	}
	
	
	//그룹 삭제 처리 
	
}
