package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.memberDAO;
import com.smhrd.model.memberDTO;

public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//1.post방식 인코딩
		request.setCharacterEncoding("UTF-8");
		//2.데이터 받아오기
		String user_id = request.getParameter("user_id");
		String password = request.getParameter("password");
		String nickname = request.getParameter("nickname");
		String gender = request.getParameter("gender");
		int age =Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address");
		String phone_number = request.getParameter("phone_number");
		//console에 프린트
		System.out.println("user_id :" + user_id);
		System.out.println("password :" + password);
		System.out.println("nickname :" + nickname);
		System.out.println("gender :" + gender);
		System.out.println("age :" + age);
		System.out.println("address :" + address);
		System.out.println("phone_number :" + phone_number);

		//join 메소드 
		memberDAO dao = new memberDAO();		
			int row = dao.join(new memberDTO(user_id, password,nickname,gender,age,address,phone_number));
			System.out.println(row);
			//4. 성공 실패 구분하기
			String moveURL = null;
			if(row > 0) {
				response.sendRedirect("main.jsp");
				System.out.println("회원가입성공");
			}else {
				System.out.println("회원가입실패");
				response.sendRedirect("join.jsp");
			}

		
		
		
	}// service

}// class
