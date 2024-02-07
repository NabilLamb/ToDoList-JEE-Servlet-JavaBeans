package web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Task;

@WebServlet("/AddTaskServlet")

public class AddTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String taskName = request.getParameter("taskName");
		
		List<Task> tasks = (List<Task>) request.getSession().getAttribute("tasks");
	
		if(tasks == null) {
			tasks = new ArrayList<>();
			request.getSession().setAttribute("tasks", tasks);
		}
		
		tasks.add(new Task(taskName));
		
		response.sendRedirect(request.getContextPath() + "/");
	}

}
