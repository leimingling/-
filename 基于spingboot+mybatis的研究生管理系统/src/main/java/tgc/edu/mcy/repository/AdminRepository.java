package tgc.edu.mcy.repository;

import org.springframework.stereotype.Repository;

import tgc.edu.mcy.custom.CommonRepository;
import tgc.edu.mcy.entity.Admin;

@Repository
public interface AdminRepository extends CommonRepository<Admin, Integer> {
	public Admin findByUsernameAndPassword(String username, String password);
}
