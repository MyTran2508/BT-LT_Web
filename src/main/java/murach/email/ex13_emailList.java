package murach.email;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import murach.business.User2;
import murach.data.UserDB_2;

@WebServlet("/ex13_emailList")
public class ex13_emailList extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/Ex13.1/index.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/Ex13.1/index.jsp";    // the "join" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object
            User2 user = new User2();
            user.setEmail(email);
            user.setFirstName(firstName);
            user.setLastName(lastName);

            // validate the parameters
            String message;
            if (UserDB_2.emailExists(user.getEmail())) {
                message = "This email address already exists.<br>" +
                          "Please enter another email address.";
                url = "/Ex13.1/index.jsp";
            }
            else {
                message = "";
                url = "/Ex13.1/thanks.jsp";
                UserDB_2.insert(user);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }    
}