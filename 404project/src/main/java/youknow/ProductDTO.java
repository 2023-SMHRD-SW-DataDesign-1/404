package youknow;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProductDTO {

	int item_number;
	String item_name;
	String item_image;
	int item_price;
	int item_quantity;
	String item_info;
	String item_category;
}// CLASS
