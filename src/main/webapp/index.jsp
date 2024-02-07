<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java"%>
<%@ page import="java.util.*"%>
<%@ page import="bean.Task" %>

<html>
<head>
<meta charset="UTF-8">
<title>ToDo List</title>
</head>
<body>
	<h1>Bienvenue sur votre liste de tâches !</h1>
	<ul>
		<!-- Affichage dynamique de la liste des tâches -->
		<%
		// Récupérer la liste de tâches depuis la session
		Object tasksObj = request.getSession().getAttribute("tasks");

		// Vérifier si la liste est non nulle et est bien une List<Task>
		if (tasksObj instanceof List<?>) {
			List<Task> tasks = (List<Task>) tasksObj;

			// Parcourir et afficher les tâches
			for (int i = 0; i < tasks.size(); i++) {
                    Task task = tasks.get(i);
                    out.println("<li>" + task.getName() + 
                    		" <form action='DeleteTaskServlet' method='post'> <input type='hidden' name='taskIndex' value='" + i + "'> <button type='submit'>Supprimer</button> </form> </li>");
                }
		}
		%>
	</ul>
	<!-- Lien pour ajouter une nouvelle tâche -->
	<a href="addTask.jsp">Ajouter une nouvelle tâche</a>
</body>
</html>
