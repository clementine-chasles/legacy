package fr.zenika.controllers;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class ProductsController {

    private final static org.slf4j.Logger logger = LoggerFactory.getLogger(ProductsController.class);

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(ModelMap model) {
        model.addAttribute("types", getTypes());
        model.addAttribute("searchBean", new SearchBean());
        return "products";
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String submit(@ModelAttribute("searchBean") SearchBean searchBean,
                         BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "error";
        }
        // mock back
        List<Product> products = getProducts();
        // filter coté front
        products = filterByName(products, searchBean.getName());
        products = filterByType(products, searchBean.getTypes());
        model.addAttribute("products", products);
        return "results";
    }

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public String getProduct(ModelMap model) {
        model.addAttribute("p", getProducts().get(1));
        return "product";
    }

    private List<Product> filterByType(List<Product> products, String types) {
        List<Product> response = new ArrayList<Product>();
        String[] listOfTypes = types.split(",");
        List<String> asList = Arrays.asList(listOfTypes);
        for(Product p : products) {
            if(asList.contains(p.getType())) {
                response.add(p);
            }
        }
        return response;
    }

    private List<Product> filterByName(List<Product> products, String name) {
        List<Product> response = new ArrayList<Product>();
        for(Product p : products) {
            if(p.getName().contains(name)) {
                response.add(p);
            }
        }
        return response;
    }

    @RequestMapping(value = "/results", method = RequestMethod.GET)
    public String searchResults(ModelMap model) {
        return "results";
    }

    private List<String> getTypes() {
        return Arrays.asList("DVD", "Livre", "Multimédia");
    }

    private List<Product> getProducts() {
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

}
