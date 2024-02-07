<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new task</title>
</head>
<body>
<h2>Ajouter une nouvelle tâche :</h2>
<form action="AddTaskServlet" method="post">
	<label for="taskName">Nom de la tâche :</label>
	<input type="text" id="taskName" name="taskName" required>
	<button type="submit">Ajouter</button>
</form>
</body>
</html>