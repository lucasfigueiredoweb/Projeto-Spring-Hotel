package br.com.projeto.web.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/categoria")
public class CategoriaController {

	
//	@RequestMapping(value="list",method = RequestMethod.GET)
//	public String listCategoria (ModelMap model) {
//		List<Categoria> categorias = categoriaService.listar();
//		
//		model.addAttribute("categorias", categorias);
//		
//		return "categoria";
//	}
//	
//	public String createCategoria () {
//		//TODO: Implementar
//		return "categoria";
//	}
//	
//	public String updateCategoria () {
//		//TODO: Implementar
//		return "categoria";
//	}
//	
//	@RequestMapping(value="delete/{id}", method=RequestMethod.DELETE)
//	public String deleteCategoria (@PathVariable("id") Long id) {
//		try {
//			categoriaService.removerPorId(id);
//		} catch (SystemException e) {
//			e.printStackTrace();
//		}
//		
//		return "redirect:categoria/list";
//	}
	
}
