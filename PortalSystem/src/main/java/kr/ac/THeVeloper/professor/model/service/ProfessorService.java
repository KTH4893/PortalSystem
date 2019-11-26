package kr.ac.THeVeloper.professor.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import kr.ac.THeVeloper.professor.model.dao.ProfessorDao;
import kr.ac.THeVeloper.professor.model.vo.Professor;

@Service("professorService")
public class ProfessorService {

	@Qualifier("professorDao")
	@Autowired
	private ProfessorDao professorDao;

	public ArrayList<Professor> professorList() {
		List<Professor> list = professorDao.professorList();
		
		return (ArrayList<Professor>)list;
	}
	
	
	
	
}
