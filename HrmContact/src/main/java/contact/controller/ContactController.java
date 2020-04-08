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
import contact.service.ContactService;

@Controller
@RequestMapping("/contact")
public class ContactController {
	@Autowired
	ContactService service;
	
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
	@RequestMapping(value="contact/insert.do", method = RequestMethod.POST)
	public String writeContact(@ModelAttribute ContactDto dto) throws Exception {
		service.insert(dto);
		return "redirect:list.do";
	}
	
	//연락처 수정 페이지 이동 
	
	//연락처 수정 
	@RequestMapping(value="/update.do", method = RequestMethod.POST)
	public String update(@ModelAttribute ContactDto dto) throws Exception {
		service.update(dto);
		return "redirect:list.do";
	}
	
	
	//연락처 삭제 
	@RequestMapping(value="/delete.do", method = RequestMethod.POST)
	public String delete(@RequestParam int num) throws Exception{
		service.delete(num);
		return "redirect:list.do";
	}
}
