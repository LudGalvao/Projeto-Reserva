package com.apidoprojeto.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.apidoprojeto.controller.dto.response.Projeto_usuarioDtoResponse;
import com.apidoprojeto.entity.Projeto_usuario;
import com.apidoprojeto.entity.Usuario;
import com.apidoprojeto.service.Projeto_usuarioService;



@RestController
@RequestMapping("/api/projetousuario")
public class ProjetoUsuarioController {
	
		Projeto_usuarioService projeto_usuarioService;
		
		@Autowired
		public ProjetoUsuarioController(Projeto_usuarioService service) {
			this.projeto_usuarioService = service;
		}
		@GetMapping
		public ResponseEntity<List<Projeto_usuarioDtoResponse>> UsuariocomProjetos(){
			List<Projeto_usuarioDtoResponse> usuario3 = projeto_usuarioService.usuarioComProjetos();
			return new ResponseEntity<>(usuario3, HttpStatus.OK);
		}
		
		@GetMapping("/inserirUsuario/{idUsuario}/{idProjeto}")
		public ResponseEntity<Projeto_usuario> inserirUsuario(@PathVariable("idUsuario") Integer idUsuario, @PathVariable("idProjeto") Integer idProjeto) {
		    Projeto_usuario projeto_usuario = projeto_usuarioService.adicionarProjetoAoUsuario(idProjeto, idUsuario);
		    if (projeto_usuario != null) {
		        return ResponseEntity.ok(projeto_usuario);
		    } else {
		        return ResponseEntity.notFound().build();
		    }
		}

}

