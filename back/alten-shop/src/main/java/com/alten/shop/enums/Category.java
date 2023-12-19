package com.alten.shop.enums;

public enum Category {
	ACCESSORIES("Accessories"),
	CLOTHING("Clothing"),
	ELECTRONICS("Electronics"),
	FITNESS("Fitness");
	
	public final String label;

    private Category(String label) {
        this.label = label;
    }
    
    public static Category valueOfLabel(String label) {
        for (Category c : values()) {
            if (c.label.equals(label)) {
                return c;
            }
        }
        return null;
    }
}
