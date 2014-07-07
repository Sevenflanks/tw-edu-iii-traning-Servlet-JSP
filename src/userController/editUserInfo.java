package userController;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class editUserInfo
 */
public class editUserInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//獲取資料

		String userAccount = request.getParameter("userAccount");
		String userEamil = request.getParameter("userEmail");
		String userNewPWD = GlobalService.getMD5Endocing(request.getParameter("userNewPWD"));
		String userPWD = GlobalService.getMD5Endocing(request.getParameter("userPWD"));
		
		System.out.println("使用者修改資料");
		System.out.println(userAccount);
		System.out.println(userEamil);
		System.out.println(userNewPWD);
		System.out.println(userPWD);
		//驗證資料
		Map<String,String> errors = new HashMap<String,String>();
		request.setAttribute("errorMSG", errors);
		
		if (userEamil == null || userEamil.trim().length() == 0) {
			if (userNewPWD == null || userNewPWD.trim().length() == 0) {
				errors.put("emailError", "信箱與密碼請至少擇一修改!");
				errors.put("newPwdError", "信箱與密碼請至少擇一修改!");
			}
		}
		
		UserDAO dao = new UserDAO(); 
		
		if (userPWD == null || userPWD.trim().length() == 0) {
			errors.put("pwdError", "原密碼不能為空!");
		} else {
			//驗證密碼
			UserBean userTemp = new UserBean();
			userTemp.setPassword(userPWD);
			if (!userTemp.getPassword().equals(dao.findById(userAccount).getPassword())) {
				errors.put("pwdError", "密碼錯誤!");
			}
		}
		
		if (errors!=null&&!errors.isEmpty()) {
			request.getRequestDispatcher("memberInfo.jsp").forward(request, response);
			return;
		}
		
		UserBean user = new UserBean();
		user.setAccount(userAccount);
		user.setEmail(userEamil);
		user.setPassword(userNewPWD);
		//修改資料
		
		dao.update(user);
		
		request.getRequestDispatcher("getUserInfo").forward(request, response);
		
		
		
	}

}
