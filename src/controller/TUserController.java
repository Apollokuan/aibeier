package controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import bean.PageBean;
import bean.TUser;
import service.TUserService;

@Controller
@RequestMapping("/user")
public class TUserController {

	@Resource
	private TUserService userService;
	
	/**
	 * 添加用户
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/addUser")
	public String addUser(TUser user,HttpServletRequest request){
		System.out.println("11111111");
		System.out.println("user:"+user);
		if(user.getUname()==null){
			user.setUname("liyakkuan");
			user.setUpwd("66666");
			user.setUmessage("你好世界");
		}
		user.setUtime(new Date());
		int resultCount=userService.insert(user);
		if(resultCount>0){
			request.setAttribute("addmess", "用户添加成功");
		}else{
			request.setAttribute("addmess", "用户添加失败");
		}
		return "login";
	}
	/**
	 * 查询所有用户
	 * @param user
	 * @param page
	 * @param rows
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/allUser")
	public String selectUser(TUser user,@RequestParam(value="page",required=false)String page,@RequestParam(value="rows",required=false)String rows,HttpServletRequest request){
		System.out.println("222222");
		PageBean pageBean=null;
		if(page==null && rows==null){
			pageBean=new PageBean(1,10);
		}else{
			pageBean=new PageBean(Integer.parseInt(page), Integer.parseInt(rows));
		}
		Map<String, Object> map =new HashMap<>();
		map.put("uname", user.getUname());
		map.put("umessage", user.getUmessage());
		map.put("start", pageBean.getStart());
		map.put("size", pageBean.getPageSize());
		List<TUser> list=userService.queryAll(map);
		System.out.println("list"+list);
		Long total=userService.getTotal(map);
		request.setAttribute("list", list);
		request.setAttribute("total", total);
		
		return "index";
	}
	/**
	 * 修改用户信息
	 * @param user
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/upUser")
	public String updateUser(TUser user,HttpServletRequest request){
		System.out.println("333333");

		if(user.getUid()!=null){
			int resultcount=userService.updateByPrimaryKey(user);
		    if(resultcount>0){
		    	request.setAttribute("upmess", "修改成功");
		    }else{
		    	request.setAttribute("upmess", "修改失败");
		    }
		}
		return "index";
	}
	
	/**
	 * 删除用户
	 * @param uid
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/delUser")
	public String deleteUser(Integer uid,HttpServletRequest request) {
		System.out.println("44444444");

		if(uid!=null){
			int resultcount=userService.deleteByPrimaryKey(uid);
		if(resultcount>0){
			request.setAttribute("upmess", "修改成功");
	    }else{
	    	request.setAttribute("upmess", "修改失败");
	   
		}
		}
		return "index";
}
	}
