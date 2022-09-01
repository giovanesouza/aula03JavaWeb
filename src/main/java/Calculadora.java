

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Calculadora")
public class Calculadora extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // ADICIONAR/INSERIR OS PARÂMETROS NA URL => ?v1=VALOR1&v2=VALOR2
	    float n1 = Float.parseFloat(request.getParameter("numero1"));
	    float n2 = Float.parseFloat(request.getParameter("numero2"));
	    String opcao = request.getParameter("operacao");
	    
	    
	    // ESTA PARTE DO RESULTADO E SWITCH NÃO É OBRIGATÓRIA. INSERI E PASSEI COMO PARÂMETRO PARA QUE O RESULTADO TAMBÉM SEJA 
	    // EXIBIDO NA URL.
	    
	    float resultado = 0;
	    
	    switch (opcao) {
	    
	    case "adicao": resultado = n1 + n2;	break;
	    	
	    case "subtracao": resultado = n1 - n2; 	break;
	    	
	    case "multiplicacao": resultado = n1 * n2; 	break;
	    	
	    case "divisao":	resultado = n1 / n2;  	break;
	   
	    }
	    
		// PEGANDO OS PARÂMETROS E ENVIANDOS PARA UMA PÁGINA JSP
	    response.sendRedirect("calculadora.jsp?numero1=" + n1 + "&numero2=" + n2 + "&operacao=" +
		opcao + "&resultado=" + resultado);
	    
		
	}

}