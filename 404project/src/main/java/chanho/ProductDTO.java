package chanho;

import java.sql.Timestamp;

public class ProductDTO {
    private int productNo;
    private String productName;
    private String[] productImages = new String[10];
    private int productPrice;
    private int[] productStocks = new int[3];
    private String[] options = new String[3];
    private String productInfo;
    private String mainCategory;
    private String subCategory;
    private String aiCategory;
    private Timestamp time;
    
}
