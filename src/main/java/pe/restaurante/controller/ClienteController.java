package pe.restaurante.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping ;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.restaurante.entity.Cliente;
import pe.restaurante.service.ClienteService;

@Controller
public class ClienteController {
	
		@Autowired
		private ClienteService clienteService;
		
		
		/*READ*/
		@RequestMapping(value="/cliente_listar",method=RequestMethod.GET)
		public String listar_GET(Map map) {
			
			map.put("bCliente",clienteService.findAll());
		
			return "Cliente/listar";
		}
		
		
		/*CREATE*/
		@RequestMapping(value="/cliente_registrar",method=RequestMethod.GET)
		public String registrar_GET(Model model) 
		{
			model.addAttribute("cliente", new Cliente()); 
			return "Cliente/registrar";
		}
		
		@RequestMapping(value="/cliente_registrar",method=RequestMethod.POST)
		public String registrar_POST(Cliente cliente) { 
			
			clienteService.insert(cliente);
			return "redirect:/cliente_listar";
		}
		
		/*UPDATE*/
		
		@RequestMapping(value="/cliente_editar/{clienteId}",method=RequestMethod.GET)
		public String editar_GET(Model model,@PathVariable Integer clienteId)
		{
			Cliente clienteDb=clienteService.findById(clienteId);
			model.addAttribute("cliente",clienteDb); 
			
			return "Cliente/editar";
		}
			
		
		
		@RequestMapping(value="/cliente_editar/{clienteId}",method=RequestMethod.POST)
		public String editar_POST(Cliente cliente) 
		{
			clienteService.update(cliente); 
			return "redirect:/cliente_listar";
		}
		
		
		
		/*DELETE*/
			
		@RequestMapping(value="/cliente_borrar/{clienteId}",method=RequestMethod.GET)
		public String borrar_GET(Model model,@PathVariable Integer clienteId)
		{
			Cliente clienteDb=clienteService.findById(clienteId);
			model.addAttribute("cliente",clienteDb); 
			
			return "Cliente/borrar";
		}
		
		
		@RequestMapping(value="/cliente_borrar/{clienteId}",method=RequestMethod.POST)
		public String borrar_POST(Cliente cliente) 
		{
			clienteService.delete(cliente.getClienteId()); 
			return "redirect:/cliente_listar";
		}
		
	

}
