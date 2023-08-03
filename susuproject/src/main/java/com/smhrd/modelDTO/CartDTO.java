package com.smhrd.modelDTO;



import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class CartDTO {
	// addCart
	int cart_no;
	int product_no;
	String nickname;
	int cart_price;
	int cart_quantity;

	public CartDTO(int cart_no, int product_no, int cart_quantity, int cart_price, String nickname) {
		super();
		this.cart_no = cart_no;
		this.product_no = product_no;
		this.nickname = nickname;
		this.cart_price = cart_price;
		this.cart_quantity = cart_quantity;
	}

}// class


