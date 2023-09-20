package EmailListServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmailListServlet
 */
@WebServlet("/EmailListServlet")
public class EmailListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmailListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/index.html";
		String action = request.getParameter("action");
		if (action == null) {
			action = "join"; // default action
		}
// perform action and set URL to appropriate page
		if (action.equals("join")) {
			url = "/index.jsp"; // the "join" page
		}

		else if (action.equals("add")) {
// get parameters from the request
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String date = request.getParameter("dOB");
// store data in User object and save User object in database
			User user = new User(firstName, lastName, email, date);
			//UserDB.insert(user);
//			listUsers.add(user);

// set User object in request object and set URL
			request.setAttribute("user", user);
//			request.setAttribute("listUsers", listUsers);
			url = "/thanks.jsp"; // the "thanks" page
		}

// forward request and response objects to specified URL
		getServletContext().getRequestDispatcher(url).forward(request, response);
	
	}

}
