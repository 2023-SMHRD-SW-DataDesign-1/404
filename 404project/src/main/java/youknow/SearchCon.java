package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.productDAO;

public class SearchCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String search = request.getParameter("search");
		System.out.println("search : " + search);

		productDAO dao = new productDAO();
		int row = Integer.parseInt(dao.searchProduct(search));
		if (row > 0) {
			System.out.println("상품 검색 성공");
		} else {
			System.out.println("상품 검색 실패");
		}
		ArrayList<String> search_list = new ArrayList<>();
		String result = dao.searchProduct(search);
		for(int i = 0; i<result.length(); i++) {
			search_list.add(result);
		}
		System.out.println(search_list);
		
	
        request.setAttribute("result", search_list);
        ServletContext app = this.getServletContext();
        RequestDispatcher dispatcher = app.getRequestDispatcher("searchEngine.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            System.out.println(e);
        }
		
	}// service

}// class
