package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Task;


@WebServlet("/DeleteTaskServlet")
public class DeleteTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int taskIndex = Integer.parseInt(request.getParameter("taskIndex"));
		List<Task> tasks = (List<Task>) request.getSession().getAttribute("tasks");
		tasks.remove(taskIndex);
		response.sendRedirect(request.getContextPath() + "/");
	}

}
