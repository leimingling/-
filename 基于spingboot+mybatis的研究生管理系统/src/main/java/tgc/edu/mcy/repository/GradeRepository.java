package tgc.edu.mcy.repository;

import java.util.List;

import org.springframework.stereotype.Repository;

import tgc.edu.mcy.custom.CommonRepository;
import tgc.edu.mcy.entity.Grade;

@Repository
public interface GradeRepository extends CommonRepository<Grade, Integer> {

	public Grade findByStudentIdAndCourseId(Integer xs_id, Integer kc_id);

	public List<Grade> findByStudentTbClassId(Integer id);

	public List<Grade> findBystudentId(Integer id);

	public List<Grade> findByStudentTbClassIdAndCourseId(Integer tbClass_id, Integer course_id);

}
