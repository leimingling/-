package tgc.edu.mcy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tgc.edu.mcy.custom.CommonService;
import tgc.edu.mcy.entity.Grade;
import tgc.edu.mcy.repository.GradeRepository;

@Service
public class GradeService extends CommonService<Grade, Integer> {
	@Autowired
	private GradeRepository gradeDAO;

	public Grade findByStudentIdAndCourseId(Integer xs_id, Integer kc_id) {
		return gradeDAO.findByStudentIdAndCourseId(xs_id, kc_id);
	}

	public List<Grade> findByStudentTbClassId(Integer id) {
		return gradeDAO.findByStudentTbClassId(id);
	}

	public List<Grade> findByStudentId(Integer id) {
		return gradeDAO.findBystudentId(id);
	}

	public List<Grade> findByStudentTbClassIdAndCourseId(Integer tbClass_id, Integer course_id) {
		return gradeDAO.findByStudentTbClassIdAndCourseId(tbClass_id, course_id);
	}
}
