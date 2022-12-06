package murach.email;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import murach.business.User;

/**
 * Servlet implementation class ex1_emailList
 */
@WebServlet("/ex1_emailList")
public class ex1_emailList extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String url = "/Ex1/index.jsp";
		String action = req.getParameter("action");
		if(action == null) {
			action = "join";
		}
		if(action.equals("join")) {
			url = "/Ex1/index.jsp";
		}
		else if(action.equals("add")) {
			String firstName = req.getParameter("firstName");
			String lastName = req.getParameter("lastName");
			String email = req.getParameter("email");
			User user = new User(firstName, lastName, email);
			// Set User Object in request Object and URL
			req.setAttribute("user", user);
			url = "/Ex1/thanks.jsp";
		}
		getServletContext().getRequestDispatcher(url).forward(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

}
