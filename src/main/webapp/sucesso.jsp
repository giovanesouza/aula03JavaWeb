<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String nome = request.getParameter("nome");
	String telefone = request.getParameter("telefone");
	String email = request.getParameter("email");
	
%>

<h1>Cadastro de Clientes</h1>

<fieldset>
<legend>Dados do cliente cadastrado</legend>

<p>O seguinte cliente foi cadastrado com sucesso: </p>


<p> Nome: <%=nome %> </p>
<p> Telefone: <%=telefone %> </p>
<p> Email: <%=email %> </p>

</fieldset>

</body>
</html>