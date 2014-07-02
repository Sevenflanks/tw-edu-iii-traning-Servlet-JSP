package userController;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.collections.MappingChange.Map;

/**
 * Servlet implementation class loginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("type", request.getParameter("submit"));
		request.setAttribute("userID", request.getParameter("acoount"));
		request.setAttribute("userPWD", request.getParameter("password"));
		request.setAttribute("userEmail", request.getParameter("email"));
		
		String type = request.getParameter("submit");
		String userID = request.getParameter("acoount");
		String userPWD = GlobalService.getMD5Endocing(request.getParameter("password"));
		String userEmail = request.getParameter("email");
		
		UserDAO userDAO = new UserDAO();
		
		//錯誤訊息的處理
		HashMap<String, String> errorMSG = new HashMap<String, String>();
		
		//註冊的場合
		if (type.equals("提交")) {
			UserBean user =  userDAO.findById(userID);
			System.out.println("使用者進行註冊");
			if (user != null && user.getAccount().equals(userID)) {
				System.out.println("檢測到帳號重複");
				errorMSG.put("accountError", "註冊失敗：帳號已重複");
			}
		}
		
		//登入的場合
		if (type.equals("登入")) {
			UserBean user =  userDAO.findById(userID);
			System.out.println("使用者進行登入");
			if (user==null) {
				System.out.println("檢測到帳號不存在");
				errorMSG.put("accountError", "登入失敗：帳號不存在");
			}
			
			if (user!=null && !user.getPassword().equals(userPWD)) {
				System.out.println("檢測到密碼錯誤");
				errorMSG.put("passwordError", "登入失敗：密碼錯誤");
			}
		}
		
		if (!errorMSG.isEmpty()) {
			request.setAttribute("errorMSG", errorMSG);
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
			return;
		}
		
		System.out.println("使用者登入/註冊成功");
		//註冊的場合
		if (type.equals("提交")) {
			System.out.println("寫入註冊資料");
			UserBean user = new UserBean(null, userID, userPWD, userEmail, null);
			userDAO.insertNewAccount(user);
			System.out.println("寫入完畢");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("responseTest.jsp");
		rd.forward(request, response);
		
	}

}
