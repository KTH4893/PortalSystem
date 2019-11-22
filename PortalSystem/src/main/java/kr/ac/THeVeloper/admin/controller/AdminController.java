package kr.ac.THeVeloper.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.THeVeloper.admin.model.service.AdminService;
import kr.ac.THeVeloper.admin.model.vo.Admin;

@Controller
public class AdminController {
	@Autowired
	@Qualifier(value="adminService")
	private AdminService adminService;
	//로그인하기
	@RequestMapping(value="/login.do")
	public ModelAndView login(HttpServletRequest request, @RequestParam String adminId, @RequestParam String adminPw) {
		//Admin 객체 호출
		Admin admin = new Admin();
		//받아온 id와 pw를 admin에 저장
		admin.setAdminId(adminId);
		admin.setAdminPw(adminPw);
		//DB값과 확인 후 admin의 정보를 adm에 저장
		Admin adm = adminService.login(admin);
		ModelAndView mav = new ModelAndView();
		if(adm!=null) {	//관리자 로그인 성공시
			HttpSession session = request.getSession(false);	//세션 객체 생성
			session.setAttribute("admin",adm);	//세션에 'admin'이라는 이름으로 adm저장
			mav.addObject("msg", "로그인성공");		//메세지 띄울내용
			mav.addObject("loc", "/mainPage.do"); //이동할 경로
			mav.setViewName("/common/check");	//내용과 경로위치를 보내는 페이지
			return mav;
		}else {	//로그인 실패시
			mav.addObject("msg","로그인실패");
			mav.addObject("loc", "/");		//시작페이지로 이동
			mav.setViewName("/common/check");
			return mav;
		}
	}
	//메인페이지로가기
	@RequestMapping(value="/mainPage.do")
	public String mainPage() {
		return "pages/mainPage";	//메인페이지로 이동
	}
	
	
	
}
