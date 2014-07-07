import java.util.List;

import userController.UserBean;
import userController.UserDAO;



public class TestTask {

	public static void main(String[] args) {

		UserDAO userDAO = new UserDAO();
		List<UserBean> users = userDAO.findAll();
		for (UserBean user : users) {
			System.out.println(user);
		}

	}

}
