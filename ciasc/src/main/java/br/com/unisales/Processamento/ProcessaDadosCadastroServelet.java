package br.com.unisales.Processamento;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import br.com.unisales.DAO.UsuarioRecepcionista;
import br.com.unisales.DAO.UsuarioRecepcionistaDAO;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cadastro")
public class ProcessaDadosCadastroServelet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public ProcessaDadosCadastroServelet() {
        super();
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = (HttpSession) request.getSession(false);

        if (session == null || session.getAttribute("usuario") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        request.getRequestDispatcher("/front/index-horario-fisioterapia.jsp").forward(request, response);
    }
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}