package kr.ac.THeVeloper.professor.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.THeVeloper.admin.model.vo.Admin;
import kr.ac.THeVeloper.professor.model.service.ProfessorService;
import kr.ac.THeVeloper.professor.model.vo.Professor;

@Controller
public class ProfessorController {

	@Autowired
	@Qualifier(value="professorService")
	private ProfessorService professorService;
	@RequestMapping("/toProfManage.do")
	public ModelAndView toProfManage(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		String id = ((Admin)session.getAttribute("admin")).getAdminId();
		ArrayList<Professor> list = professorService.professorList();
		ModelAndView mav = new ModelAndView();
		if(list!=null && !list.isEmpty()){
			mav.addObject("prof", list);
		} else {
			
		}
		
		mav.setViewName("professor/profList");
		return mav;
	}
	
	@RequestMapping("/addProfPage.do")
	public String toaddProfPage() {
		return "professor/addProf";
	}
	
}
