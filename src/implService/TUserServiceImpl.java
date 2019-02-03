package implService;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bean.TUser;
import dao.TUserMapper;
import service.TUserService;
@Service
public class TUserServiceImpl implements TUserService {

	@Resource
	private TUserMapper tuser;

	@Override
	public int deleteByPrimaryKey(Integer uid) {
		
		return tuser.deleteByPrimaryKey(uid);
	}

	@Override
	public int insert(TUser record) {
		return tuser.insert(record);
	}

	@Override
	public int insertSelective(TUser record) {
		return tuser.insertSelective(record);
	}

	@Override
	public TUser selectByPrimaryKey(Integer uid) {
		return tuser.selectByPrimaryKey(uid);
	}

	@Override
	public int updateByPrimaryKeySelective(TUser record) {
		return tuser.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(TUser record) {
		return tuser.updateByPrimaryKey(record);
	}

	@Override
	public List<TUser> queryAll(Map<String, Object> map) {
		List<TUser> sList=tuser.queryAll(map);
		System.out.println("slist:"+sList);
		return tuser.queryAll(map);
	}

	@Override
	public Long getTotal(Map<String, Object> map) {
		return tuser.getTotal(map);
	}
}
