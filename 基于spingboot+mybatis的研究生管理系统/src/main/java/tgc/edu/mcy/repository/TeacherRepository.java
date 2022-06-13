package tgc.edu.mcy.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import tgc.edu.mcy.custom.CommonRepository;
import tgc.edu.mcy.entity.Teacher;

@Repository
public interface TeacherRepository extends CommonRepository<Teacher, Integer> {
	public Teacher findByUsernameAndPassword(String username, String password);

	public Teacher findByUsername(String username);

	public Page<Teacher> findByNameLikeOrUsernameLike(String name, String username, Pageable pageable);

}
