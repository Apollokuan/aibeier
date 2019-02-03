package implService;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.Admin;
import bean.Car;
import dao.AdminMapper;
import service.AdminService;

@Service
public class AdminServiceImpl implements AdminService {

	@Resource
	private AdminMapper adminMapper;

	@Override
	public Admin queryAdmin(Admin admin) {
		System.out.println("进入serivce");
		Admin sAdmin=adminMapper.queryAdmin(admin.getAdminName());
		return sAdmin;
	}

	@Override
	public void updatePwd(String adminName, String adminPwd) {
		adminMapper.updatePwd(adminName, adminPwd);
	}

	@Override
	public int insert(Car car) {
		// TODO Auto-generated method stub
		return adminMapper.insert(car);
	}

//	@Override
//	public int insertSelective(Car car) {
		// TODO Auto-generated method stub
//		return adminMapper.insertSelective(car);
//	}
	
	
}
