package com.upn.solweb;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.upn.data.Producto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
			
		ArrayList<Producto> productos = new ArrayList<Producto>();
		
		Producto p1 = new Producto(1, "Laptop 1", 1490);
		Producto p2 = new Producto(2, "Laptop 2", 1499);
		Producto p3 = new Producto(3, "Laptop 3", 1409);
		Producto p4 = new Producto(4, "Laptop 4", 1419);
		Producto p5 = new Producto(5, "Laptop 5", 1449);
		
		productos.add(p1);
		productos.add(p2);
		productos.add(p3);
		productos.add(p4);
		productos.add(p5);
		
		model.addAttribute("listadoProductos", productos);
		
		
		return "home";
		
	}
	
}
