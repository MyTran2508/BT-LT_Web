package murach.admin;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import murach.business.User2;
import murach.data.UserDB_2;

@WebServlet("/userAdmin_ex13")
public class UsersServlet_ex13 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();

        String url = "/Ex13.2/index.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "display_users";  // default action
        }
        
        // perform action and set URL to appropriate page
        if (action.equals("display_users")) {            
            // get list of users
            List<User2> users = UserDB_2.selectUsers();            
            request.setAttribute("users", users);
        } 
        else if (action.equals("display_user")) {
            String emailAddress = request.getParameter("email");
            User2 user = UserDB_2.selectUser(emailAddress);
            session.setAttribute("user", user);
            url = "/Ex13.2/user.jsp";
        }
        else if (action.equals("update_user")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");

            // get and update user
            User2 user = (User2) session.getAttribute("user");        
            user.setFirstName(firstName);
            user.setLastName(lastName);            
            UserDB_2.update(user);

            // get and set updated users
            List<User2> users = UserDB_2.selectUsers();            
            request.setAttribute("users", users);            
        }
        else if (action.equals("delete_user")) {
            // get the user
            String email = request.getParameter("email");
            User2 user = UserDB_2.selectUser(email);
            
            // delte the user
            UserDB_2.delete(user);
            
            // get and set updated users
            List<User2> users = UserDB_2.selectUsers();            
            request.setAttribute("users", users);            
        }
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }    
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
    
}