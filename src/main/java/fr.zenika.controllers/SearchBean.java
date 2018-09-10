package fr.zenika.controllers;

/**
 *
 */
public class SearchBean {

    private String name;
    private String types;

    public SearchBean() {
    }

    public SearchBean(String name, String type) {
        this.name = name;
        this.types = type;
    }

    /**
     *
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     *
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     *
     * @return types
     */
    public String getTypes() {
        return types;
    }

    /**
     *
     * @param types
     */
    public void setTypes(String types) {
        this.types = types;
    }
}
