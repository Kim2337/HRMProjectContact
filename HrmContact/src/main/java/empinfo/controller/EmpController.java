package empinfo.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import empinfo.domain.DeptDto;
import empinfo.domain.EmpDto;
import empinfo.service.EmpService;

@Controller
@RequestMapping("/empinfo")
public class EmpController {
	@Autowired
	EmpService service;
	
	@RequestMapping("/empinfo.do")
	public ModelAndView deptlist() throws Exception{	
		List<DeptDto> deptlist = service.deptlist();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("empinfo/empinfo");
		mav.addObject("deptlist", deptlist);
		return mav;
	}
	/*
	@RequestMapping(value = "/empinfo/depts.do", method = RequestMethod.POST)
	public void deptList(HttpServletResponse resp) throws Exception {
		List<DeptDto> list = service.deptlist();
		Gson json = new Gson(); // JASON 객체생성
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(json.toJson(list)); // out.print 내용을 ajax의 dataType이 jason에게 데이터 쏴줌
	}
	*/
	@RequestMapping(value = "/empinfo/emplist.do", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String empList(int deptno) throws Exception{
		List<EmpDto> emplist = service.emplist(deptno);
		Gson json = new Gson(); 
		return json.toJson(emplist);
	}
	
}
