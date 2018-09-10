package fr.zenika.controllers;

/**
 * @author PC
 *
 */
public class Product {

    private String name;
    private double price;
    private double newPrice;
    private int sale;
    private String description;
    private String type;
    private String url;

    public Product(String name, double price, int sale, String description, String type, String url) {
        this.name = name;
        this.price = price;
        this.newPrice = price;
        this.sale = sale;
        this.description = description;
        this.type = type;
        this.url = url;
    }

    /**
     *
     * @return newPrice
     */
    public double getNewPrice() {
        return newPrice;
    }

    /**
     *
     * @param newPrice
     */
    public void setNewPrice(double newPrice) {
        this.newPrice = newPrice;
    }

    /**
     *
     * @return url
     */
    public String getUrl() {
        return url;
    }

    /**
     *
     * @param url
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     *
     * @return sale
     */
    public int getSale() {
        return sale;
    }

    /**
     *
     * @param sale
     */
    public void setSale(int sale) {
        this.sale = sale;
    }

    /**
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     *
     * @return type
     */
    public String getType() {
        return type;
    }

    /**
     *
     * @param type
     */
    public void setType(String type) {
        this.type = type;
    }
}