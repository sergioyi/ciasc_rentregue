package br.com.unisales.Filtro;

import jakarta.servlet.Filter;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpSession;

import br.com.unisales.DAO.UsuarioRecepcionista;

@WebFilter(filterName = "LoginControl", urlPatterns = "/fisioterapia, /inicio, /nova-consulta, /pesquisa-consulta, /enfermagem, /nutricao, /informacoes-usuario, /cadastro-paciente, /logout")
public class LoginControl extends HttpFilter implements Filter {
	private Long tempoAtual;
     
    public LoginControl() {
        super();
    }

	
	public void destroy() {
	}

	
		public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		            throws IOException, ServletException {
		        HttpServletRequest httpRequest = (HttpServletRequest) request;
		        HttpServletResponse httpResponse = (HttpServletResponse) response;

		        HttpSession session = (HttpSession) httpRequest.getSession(false);

		        if (session == null || session.getAttribute("usuario") == null) {
		            httpResponse.sendRedirect(httpRequest.getContextPath() + "/login");
		            return;
		        }

	        
		}
	        

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
