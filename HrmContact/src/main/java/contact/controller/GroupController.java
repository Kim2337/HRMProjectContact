package contact.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import contact.domain.ContactDto;
import contact.domain.GroupDto;
import contact.service.GroupService;

@Controller
@RequestMapping("/group")
public class GroupController {
	
	@Autowired
	GroupService gservice;
	
	//그룹관리 
	@RequestMapping("/glist.do")
	public ModelAndView list() throws Exception{
		List<GroupDto> glist = gservice.glist();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("group/glist");
		mav.addObject("glist", glist);
		return mav;
	}
	
}
