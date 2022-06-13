package tgc.edu.mcy.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;

import tgc.edu.mcy.custom.CommonRepository;
import tgc.edu.mcy.entity.TbClass;

@Repository
public interface TbClassRepository extends CommonRepository<TbClass, Integer> {

	public TbClass findByName(String name);

	public Page<TbClass> findByNameLikeOrTeacherLike(String name, String teacher, Pageable pageable);

}
