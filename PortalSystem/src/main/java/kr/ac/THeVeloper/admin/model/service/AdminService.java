package kr.ac.THeVeloper.admin.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.ac.THeVeloper.admin.model.dao.AdminDao;
import kr.ac.THeVeloper.admin.model.vo.Admin;

@Service("adminService")
public class AdminService {
	@Autowired
	@Qualifier(value="adminDao")
	private AdminDao adminDao;
	
	
	//로그인 서비스
	public Admin login(Admin admin) {
		Admin adm = adminDao.login(admin);
		return adm;
	}
	
	
	
	
	
	
}
