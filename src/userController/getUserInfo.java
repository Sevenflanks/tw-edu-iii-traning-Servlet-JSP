package userController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class getUserInfo
 */
public class getUserInfo extends HttpServlet {
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
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String logInfo = (String) session.getAttribute("LoginOK");
		if (logInfo != null && logInfo.trim().length() != 0) {
			UserDAO dao = new UserDAO();
			UserBean user = dao.findById(logInfo);
			System.out.println("使用者請求詳細資料");
			request.setAttribute("user", user);
			request.getRequestDispatcher("/utility/memberInfo.jsp").forward(request, response);
		}
	}

}
