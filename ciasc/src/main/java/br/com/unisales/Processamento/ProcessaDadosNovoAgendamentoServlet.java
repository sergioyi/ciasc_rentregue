package br.com.unisales.Processamento;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import javax.servlet.http.HttpSession;

@WebServlet("/nova-consulta")
public class ProcessaDadosNovoAgendamentoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Long tempoAtual;
       
    public ProcessaDadosNovoAgendamentoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		jakarta.servlet.http.HttpSession session =  request.getSession(false);

        if (session == null || session.getAttribute("usuario") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        request.getRequestDispatcher("/front/index-nova-consulta.jsp").forward(request, response);
    }
	
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
