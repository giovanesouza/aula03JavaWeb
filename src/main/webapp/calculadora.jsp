<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resultado cálculo</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
  crossorigin="anonymous">


<style>

* {

margin: 0;
padding: 0;
box-sizing: border-box;

}

body {
background: #ccc;
}

div.inputs {
margin: 2rem 0;
text-align: center;
}

input, select {
text-align: center;
font-weight: bolder;
color: #198754;
border: 0.12rem solid #000;
padding: 1rem;
outline: none;
}

input:focus, select:focus {
border-color: #198754;
}

.resultado {
background: #fff;
color: #198754;
border: 0.1rem solid #000;
padding: 1rem;
font-size: 1.6rem;
}

</style>

</head>
<body>

	<% 
 
	float n1 = Float.parseFloat(request.getParameter("numero1"));
    float n2 = Float.parseFloat(request.getParameter("numero2"));
    String opcao = request.getParameter("operacao");
    
    float resultado = 0;
    
    switch (opcao) {
    
    case "adicao": resultado = n1 + n2;	break;
    	
    case "subtracao": resultado = n1 - n2; 	break;
    	
    case "multiplicacao": resultado = n1 * n2; 	break;
    	
    case "divisao":	resultado = n1 / n2;  	break;
   
    }
    
	%>



<div class="container">

<h1 class="pt-3 pb-3 bg-dark text-light text-center">Calculadora</h1>

<form class="mt-3" action="Calculadora" method="post">

<div class="inputs">

<input type="number" name="numero1" placeholder="Digite um número" min="0" step="0.1">

	<select name="operacao">
	  <option value="escolha" disabled selected>Selecione uma opção:</option>
	  <option value="adicao">Adição</option>
	  <option value="subtracao">Subtração</option>
	  <option value="multiplicacao">Multiplicação</option>
	  <option value="divisao">Divisão</option>
	</select>

<input type="number" name="numero2" placeholder="Digite um número" min="0" step="0.1">

</div>


<input class="btn bg-success text-light mt-4 p-2" type="submit" value="Calcular">

<div class="mt-3 p-3 bg-success text-light resultado">Resultado: <%=resultado %></div>  

</form>




</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
 integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>