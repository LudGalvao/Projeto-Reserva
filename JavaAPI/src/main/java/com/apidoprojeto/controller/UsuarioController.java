package com.apidoprojeto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.apidoprojeto.controller.dto.response.UsuarioDtoResponse;
import com.apidoprojeto.entity.Usuario;
import com.apidoprojeto.service.UsuarioService;

@RestController
@RequestMapping("/api/usuario")
public class UsuarioController {
	
	UsuarioService usuarioService;
	
	@Autowired
	public UsuarioController(UsuarioService service) {
		this.usuarioService = service;
	}
	
	@GetMapping
	public ResponseEntity<List<Usuario>> obterUsuario(){
		List<Usuario> usuario = usuarioService.buscarUsuariosAtivos();
		return new ResponseEntity<>(usuario, HttpStatus.OK);
	}
	@GetMapping("/usuarioidnome")
	public ResponseEntity<List<UsuarioDtoResponse>> obterUsuarioIdnome(){
		List<UsuarioDtoResponse> usuario = usuarioService.obterUsuarioIdnome();
		return new ResponseEntity<>(usuario, HttpStatus.OK);
	}
	
	@GetMapping("/buscar/{id}")
	public ResponseEntity<Usuario> buscarArquivo(@PathVariable("id") Integer id) {
		Usuario usuario = usuarioService.buscarUsuariosAtivosPorId(id);
		return new ResponseEntity<>(usuario, HttpStatus.OK);
	}
	
	@PostMapping
    public ResponseEntity<Usuario> saveUsuario(@RequestBody Usuario usuario) {
        Usuario savedusuario = usuarioService.saveUsuario(usuario);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedusuario);
    }
	@DeleteMapping("/apagar/{id}")
	public ResponseEntity<?> excluirUsuario(@PathVariable("id") Integer id){ 
		usuarioService.excluirUsuario(id);
		return new ResponseEntity<>(HttpStatus.OK);
	}

}
