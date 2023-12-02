package br.com.unisales.Filtro;

import java.io.IOException;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebFilter("/front/*")
public class AcessoControl extends HttpFilter implements Filter {
       
    public AcessoControl() {
        super();
    }

	public void destroy() {
		// TODO Auto-generated method stub
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		String requestURI;
		requestURI = ((HttpServletRequest ) request).getRequestURI();
		
		if(requestURI.endsWith(".jsp")){	
			String url = "/AcessoRestrito";
			//((HttpServletResponse) response).sendError(HttpServletResponse.SC_FORBIDDEN, "Acesso NEGADO" );
				((HttpServletResponse) response).sendRedirect(request.getServletContext().getContextPath() + url );
				
		}
		
		else {
			doChain(request, response);
		}
		
	}

	
	private void doChain(ServletRequest request, ServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
