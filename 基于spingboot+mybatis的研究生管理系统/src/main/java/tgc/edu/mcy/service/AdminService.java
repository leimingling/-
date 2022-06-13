package tgc.edu.mcy.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tgc.edu.mcy.custom.CommonService;
import tgc.edu.mcy.entity.Admin;
import tgc.edu.mcy.repository.AdminRepository;

@Service
public class AdminService extends CommonService<Admin, Integer> {
	@Autowired
	private AdminRepository adminDAO;	

	public Admin login(String username, String password) {
		//根据学号密码查找
		return adminDAO.findByUsernameAndPassword(username, password);
	}
}
