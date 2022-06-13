package tgc.edu.mcy.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import tgc.edu.mcy.custom.CommonRepository;
import tgc.edu.mcy.entity.Course;

@Repository
public interface CourseRepository extends CommonRepository<Course, Integer> {

	public Course findByName(String name);

	public List<Course> findByNameLike(String str);

	public Page<Course> findByNameLike(String name, Pageable pageable);

	public Page<Course> findByHour(Integer hour, Pageable pageable);

}
