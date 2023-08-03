package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.modelDAO.CartDAO;
import com.smhrd.modelDTO.CartDTO;


@WebServlet("/CartCon")
public class CartCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 상품명 받아오기 (with 상품정보)
		int cart_no = Integer.parseInt(request.getParameter("cart_no"));
		int product_no = Integer.parseInt(request.getParameter("product_no"));
		int cart_price =Integer.parseInt(request.getParameter("cart_price"));
		int cart_quantity =Integer.parseInt(request.getParameter("cart_quantity"));
		String nickname = request.getParameter("nickname");
		System.out.println("cart_no : " + cart_no);
		System.out.println("product_no : " + product_no);
		System.out.println("cart_price : " + cart_price);
		System.out.println("cart_quantity : " + cart_quantity);
		System.out.println("nickname : " + nickname);
		//String img = request.getParameter("img");
		//System.out.println("img : " + img);
		// 여기까지 성공, 아래 addCart >> ProductDAO에서 sessionfactory 오류만 해결되면 완성될듯
		CartDAO dao = new CartDAO();
		int row = dao.addCart(new CartDTO(cart_no, product_no, cart_price, cart_quantity, nickname));
		System.out.println(row);
		if (row > 0) {
			System.out.println("장바구니 추가 성공");
			response.sendRedirect("Main.jsp");
		} else {
			System.out.println("장바구니 추가 실패");
			response.sendRedirect("cart.jsp");
		}
	}//service

}//class
