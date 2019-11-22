package kr.ac.THeVeloper.admin.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import kr.ac.THeVeloper.admin.model.vo.Admin;

@Repository("adminDao")
public class AdminDao {

	@Autowired
	@Qualifier("sqlSessionTemplate")
	SqlSessionTemplate sqlSession;
	
	public Admin login(Admin admin) {
		Admin adm = sqlSession.selectOne("admin.loginAdmin", admin);
		return adm;
	}

}
