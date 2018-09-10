package fr.zenika.controllers;

import java.math.BigDecimal;
import java.util.List;
import java.util.ArrayList;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import static java.lang.Math.*;

@Controller
public class BaseController {

    private static int counter = 0;
    private static final String VIEW_INDEX = "index";
    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(BaseController.class);

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String welcome(ModelMap model) {

        model.addAttribute("message", "Welcome");
        model.addAttribute("counter", ++counter);
        logger.debug("[welcome] counter : {}", counter);

        // calling webservice
        model.addAttribute("products", getAllProducts());
        List<Product> bestSellers = getBestSellers();
        applySale(bestSellers);
        model.addAttribute("bestSellers", bestSellers);

        // Spring uses InternalResourceViewResolver and return back index.jsp
        return VIEW_INDEX;

    }

    private List<Product> applySale(List<Product> products) {
        for(Product p : products) {
            if(p.getSale() > 0) {
                double reduc = ((double)p.getSale() / 100);
                double newPrice = p.getPrice() - (p.getPrice() * reduc);
                BigDecimal bd = new BigDecimal(newPrice);
                bd = bd.setScale(2, BigDecimal.ROUND_DOWN);
                newPrice = bd.doubleValue();
                p.setNewPrice(newPrice);
            }
        }
        return products;
    }

    private List<Product> getBestSellers() {
        List<Product> products = new ArrayList<Product>();
        products.add(new Product("Le monde de Némo", 25.99, 0, "description", "DVD", "http://is2.mzstatic.com/image/thumb/Purple60/v4/43/ce/78/43ce7821-fdf1-7411-5633-7df5b688cde2/source/256x256bb.jpg"));
        products.add(new Product("Raison et sentiment", 15.99, 20, "description", "Livre", "https://a.wattpad.com/useravatar/JaneAusten.256.844827.jpg"));
        products.add(new Product("Orgueil et préjugés", 15.99, 30, "description", "Livre", null));
        products.add(new Product("Emma", 15.99, 0, "description", "Livre", "https://is1-ssl.mzstatic.com/image/thumb/Purple122/v4/2f/0d/6a/2f0d6a19-68af-c9ef-db18-c449bffa541a/source/256x256bb.jpg"));
        products.add(new Product("Persuasion", 15.99, 0, "description", "Livre", null));
        products.add(new Product("Northanger Abbey", 15.99, 0, "description", "Livre", null));
        products.add(new Product("Mansfield Park", 15.99, 0, "description", "Livre", null));
        return products;
    }

    private List<Product> getAllProducts() {
		// TODO Auto-generated method stub
    	List<Product> products = new ArrayList<Product>();
        Product p = new Product("DVD", 25.99, 0, "description", "Multimédia", null);
        products.add(p);
		return products;
	}

	@RequestMapping(value = "/{name}", method = RequestMethod.GET)
    public String welcomeName(@PathVariable String name, ModelMap model) {

        model.addAttribute("message", "Welcome " + name);
        model.addAttribute("counter", ++counter);
        logger.debug("[welcomeName] counter : {}", counter);
        return VIEW_INDEX;

    }

}