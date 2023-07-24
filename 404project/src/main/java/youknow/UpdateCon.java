package com.smhrd.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.memberDAO;
import com.smhrd.model.memberDTO;

import lombok.NonNull;

public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 2.수정할 정보 받아오기(Parameters)
		String user_id = request.getParameter("user_id");
		String password = request.getParameter("password");
		String nickname = request.getParameter("nickname");
		int age = Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address");
		String phone_number = request.getParameter("phone_number");
		// DB연결, 값 업데이트
		memberDAO dao = new memberDAO();
		int row = dao.update(new memberDTO( user_id, password, nickname, age, address, phone_number)); // password,nickname,age,address,phone_number
		System.out.println(row);
		if (row > 0) {
			response.sendRedirect("main.jsp");
			System.out.println("회원정보수정 성공");
		} else {
			response.sendRedirect("update.jsp");
			System.out.println("회원정보수정 실패");
		}

	
	}// service

}// class
