package dao;

import org.springframework.stereotype.Repository;

import bean.Admin;
import bean.Car;
import bean.TUser;
import sun.net.www.content.text.plain;

@Repository
public interface AdminMapper {
 
	public Admin queryAdmin(String name);
	
	public void updatePwd(String adminName,String adminPwd);
	
	public int insert(Car car);

//	public int insertSelective(Car car);
	
}
