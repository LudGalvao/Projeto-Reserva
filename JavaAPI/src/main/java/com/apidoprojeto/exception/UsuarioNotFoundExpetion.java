package com.apidoprojeto.exception;

public class UsuarioNotFoundExpetion extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public UsuarioNotFoundExpetion(String mensagem) {
		super(mensagem);
	}
}
