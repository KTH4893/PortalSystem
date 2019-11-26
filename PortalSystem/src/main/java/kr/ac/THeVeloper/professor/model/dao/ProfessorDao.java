package kr.ac.THeVeloper.professor.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import kr.ac.THeVeloper.professor.model.vo.Professor;

@Repository("professorDao")
public class ProfessorDao {
	
	@Qualifier("sqlSessionTemplate")
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Professor> professorList() {
		List<Professor> list = sqlSession.selectList("professor.professorList");
		return list;
	}
	
	
	
}
