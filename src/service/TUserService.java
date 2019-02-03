package service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import bean.TUser;

@Repository
public interface TUserService {
	int deleteByPrimaryKey(Integer uid);

    int insert(TUser record);

    int insertSelective(TUser record);

    TUser selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(TUser record);

    int updateByPrimaryKey(TUser record);

    List<TUser> queryAll(Map<String, Object> map);

    Long getTotal(Map<String, Object> map);
}
