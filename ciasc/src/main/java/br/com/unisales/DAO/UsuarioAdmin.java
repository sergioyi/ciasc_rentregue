package br.com.unisales.DAO;

public class UsuarioAdmin {
	private int tipo;
	private String RA;
	private String nome;
	private String senha;
	private String confirmarSenha;
	private String email;
	private int id;

	public int getTipo() {
		return this.tipo;
	}
	public void setTipo(int RA) {
		this.tipo = tipo;
	}
	public String getRA() {
		return this.RA;
	}
	public void setRA(String RA) {
		this.RA = RA;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getConfirmarSenha() {
		return confirmarSenha;
	}
	public void setConfirmarSenha(String confirmarSenha) {
		this.confirmarSenha = confirmarSenha;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}	
}