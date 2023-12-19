package com.alten.shop.enums;

public enum InventoryStatus {
	IN_STOCK("INSTOCK"), 
	OUT_OF_STOCK("OUTOFSTOCK"),
	LOW_STOCK("LOWSTOCK");
	
	public final String label;

    private InventoryStatus(String label) {
        this.label = label;
    }
    
    public static InventoryStatus valueOfLabel(String label) {
        for (InventoryStatus s : values()) {
            if (s.label.equals(label)) {
                return s;
            }
        }
        return null;
    }
}
