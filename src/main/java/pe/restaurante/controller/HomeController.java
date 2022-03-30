package pe.restaurante.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.aspectj.lang.annotation.SuppressAjWarnings;
import org.springframework.stereotype.Controller;

@SuppressAjWarnings("unused")
@Controller
public class HomeController {
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index_GET() {
		return "index";
	}
	


	@RequestMapping(value="/contacto", method=RequestMethod.GET)
	public String contacto_GET() {
		return "contacto";
	}

}