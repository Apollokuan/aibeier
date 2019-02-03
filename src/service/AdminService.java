package service;

import org.springframework.stereotype.Repository;

import bean.Admin;
import bean.Car;

@Repository
public interface AdminService {

    public Admin queryAdmin(Admin admin);
	
	public void updatePwd(String adminName,String adminPwd);
	
	public int insert(Car car);

//	public int insertSelective(Car car);
}
