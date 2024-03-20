package br.com.unisales.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {
	public static Connection getConnection() {
		Connection conn =null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhos:3306t/ciasc", "root", "97685712");
			
		}catch(Exception e){
			System.out.println(e);
		}
		return conn;
	}
	
	
	 public void salvar(UsuarioRecepcionista usuario){
		    //como estamos inserindo, colocamos o comando e o nome da tabela com suas colunas e valores desconhecidos
		     String sql ="INSERT INTO cadastroRecepcionista(nome, email, senha, confirSenha, email,RA) VALUES(?,?,?)";
		     Connection conn = null;
		     PreparedStatement abc = null;
		     
		     //tratamentos
		    try{
			  
		       abc = conn.prepareStatement(sql);
		       abc.setString(1, usuario.getNome());
		       abc.setString(2,usuario.getEmail());
		       abc.setString(3,usuario.getSenha());
		       abc.setString(3, usuario.getConfirmarSenha());
		       abc.setNString(5, usuario.getRA());
		       
		       if(usuario.getSenha() != usuario.getConfirmarSenha()) {
		    	   System.out.println("As senha não conferem");
		       }else {
			       abc.execute();
		    	   
		       }

		    }catch(Exception e){
		       e.printStackTrace();
		    }finally{
		       try{
		          if(abc!=null){
		             abc.close();
		          }
		          if(conn!=null){
		             conn.close();
		          }
		       }catch(Exception e){
		            e.printStackTrace();
		        }
		    }
		}
	
	public static List<UsuarioRecepcionista> getAllUser(){
		List<UsuarioRecepcionista> lista = new ArrayList<UsuarioRecepcionista>();
		try {
			Connection conn = getConnection();
			PreparedStatement abc = conn.prepareStatement("SELECT * FROM cadastoRecepcionista");
			ResultSet resultado = abc.executeQuery();
			while(resultado.next()){
				UsuarioRecepcionista user = new UsuarioRecepcionista();
				user.setId((int) resultado.getLong("id"));
				user.setEmail(resultado.getString("email"));
				user.setNome(resultado.getString("nome"));
				user.setSenha(resultado.getString("senha"));
				user.setConfirmarSenha(resultado.getString("ConfirmarSenha"));
				user.setRA(resultado.getString("RA"));
				lista.add(user);
			}
		}catch(Exception e){
			System.out.println(e);
		}
		return lista;
	}
}
