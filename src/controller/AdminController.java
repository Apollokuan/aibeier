package controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bean.Admin;
import bean.Car;
import service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Resource
	private AdminService adminService;

	/*
	 * 管理员登录
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@RequestParam(value="adminName",required=false) String name,@RequestParam(value="adminPwd",required=false) String pwd,HttpServletRequest request,HttpSession session) {
		System.out.println("进入controller");
		System.out.println("adminName:"+name+"   "+"adminPwd:"+pwd);
		Admin admin=new Admin();
		admin.setAdminName(name);
		admin.setAdminPwd(pwd);
		Admin resultAdmin=adminService.queryAdmin(admin);
		System.out.println("查询结果333："+resultAdmin);
		String flag="00";
		if(resultAdmin==null){
			System.out.println("账户名不存在");
			
		}else {
			if(resultAdmin.getAdminPwd().equals(pwd)){
				System.out.println("登录成功");
				flag="11";
			}
		}
		if(flag=="11"){
			return "index";
		}else {
			return "index";
		}
	
	}
	/*
	 * 管理员上传图片
	 */
	@RequestMapping(value="/add")
	public String insert(Car car,HttpServletRequest request,HttpSession session) {
		
/*		// 判断上传表单是否为multipart/form-data类型
//		HttpSession session = request.getSession();
		Admin user = (Admin) session.getAttribute("user"); // 在登录时将 User 对象放入了 会话 中
		String photoName="";
	 
//		if (ServletFileUpload.isMultipartContent(request)) {
	 
		    try {
			// 1. 创建DiskFileItemFactory对象，设置缓冲区大小和临时文件目录
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// System.out.println(System.getProperty("java.io.tmpdir"));//默认临时文件夹
	 
			// 2. 创建ServletFileUpload对象，并设置上传文件的大小限制。
			ServletFileUpload sfu = new ServletFileUpload(factory);
			sfu.setSizeMax(50 * 1024 * 1024);// 以byte为单位 不能超过50M 1024byte = 1kb 1024kb=1M 1024M = 1G
			sfu.setHeaderEncoding("utf-8");
	 
			// 3.
			// 调用ServletFileUpload.parseRequest方法解析request对象，得到一个保存了所有上传内容的List对象。
			//@SuppressWarnings("unchecked")
			List<FileItem> fileItemList = sfu.parseRequest(request);
			System.out.println("request :"+fileItemList);
			Iterator<FileItem> fileItems = fileItemList.iterator();
	 
			// 4. 遍历list，每迭代一个FileItem对象，调用其isFormField方法判断是否是上传文件
			while (fileItems.hasNext()) {
			    FileItem fileItem = fileItems.next();
			    // 普通表单元素
			    if (fileItem.isFormField()) {
				String name = fileItem.getFieldName();// name属性值
				String value = fileItem.getString("utf-8");// name对应的value值
	 
				System.out.println(name + " = " + value);
				switch (name) {
				case "brand":
					car.setBrand(value);
					break;
				case "genre":
					car.setGenre(value);
					break;
				case "sizeSel":
					car.setSize(value);
					break;
				case "materialSel":
					car.setMaterial(value);
					break;
				case "ageSel":
					car.setAge(value);
					break;
				case "price":
					car.setPrice(Double.parseDouble(value));
					break;
				default:
					break;
				}
			    }
			    // <input type="file">的上传文件的元素
			    else {
				String fileName = fileItem.getName();// 文件名称
				System.out.println("原文件名：" + fileName);// Koala.jpg
	 
				String suffix = fileName.substring(fileName.lastIndexOf('.'));
				System.out.println("扩展名：" + suffix);// .jpg
	 
				// 新文件名（唯一）
				String newFileName = new Date().getTime() + suffix;
				System.out.println("新文件名：" + newFileName);// carphoto\1478509873038.jpg
				photoName=photoName+newFileName+",";
				System.out.println("总文件名：" + photoName);// carphoto\1478509873038.jpg
				// 5. 调用FileItem的write()方法，写入文件
				//File file = new File("C:/Users/13432/space/aibeier/WebContent/carphoto/" + newFileName);
				//System.out.println(file.getAbsolutePath());
				//fileItem.write(file);
	 
				// 6. 调用FileItem的delete()方法，删除临时文件
				//fileItem.delete();
	
				
				 * 存储到数据库时注意 1.保存源文件名称 Koala.jpg 2.保存相对路径
				 * image/1478509873038.jpg
				 * 
				 
				
				if (user != null) {
				    int myid = user.getAdminId();
					
				    String SQL = "INSERT INTO t_touxiang(image_path,user_id,old_name)VALUES(?,?,?)";
//				    int rows = JdbcHelper.insert(SQL, false, "touxiang/" + newFileName, myid, fileName);
				    if (1 > 0) {
					session.setAttribute("image_name", fileName);
					session.setAttribute("image_path", "touxiang/" + newFileName);
//					response.sendRedirect(request.getContextPath() + "/upImage.html");
				    } 
	 
				} else {
				    session.setAttribute("loginFail", "请登录");
//				    response.sendRedirect(request.getContextPath() + "/login.html");
				}
	 
			    }
			}
			car.setPhoto(photoName);
			System.out.println("car:"+car.getPhoto());
			int row=adminService.insert(car);
			System.out.println("插入数据库："+row);
			session.setAttribute("save", "保存成功");
		    } catch (FileUploadException e) {
			e.printStackTrace();
		    } catch (Exception e) {
			e.printStackTrace();
		    }*/
		 	request.getSession().setAttribute("save", "保存成功");
			return "user_account";
	 
//		}
		
	}

}
