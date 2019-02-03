package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(path="car")
public class CarController {

	@RequestMapping(value="ajaxtest",method=RequestMethod.POST)
	public void ajaxTest(HttpServletRequest request) {
		System.out.println("测试ajax: "+request.getParameter("brand"));
		System.out.println("测试ajax: "+request.getParameter("genre"));
		System.out.println("测试ajax: "+request.getParameter("size"));
		System.out.println("测试ajax: "+request.getParameter("material"));
		System.out.println("测试ajax: "+request.getParameter("age"));
		System.out.println("测试ajax: "+request.getParameter("price"));
	}
}
