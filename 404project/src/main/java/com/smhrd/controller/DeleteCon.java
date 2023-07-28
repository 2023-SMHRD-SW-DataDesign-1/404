package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//값 받아오기
		String member_id = request.getParameter("member_id");
		String password = request.getParameter("password");
		//MemberDAO 객체 생성 및 메소드 호출, 결과 출력
		MemberDAO dao = new MemberDAO();
		int row = dao.delete(new MemberDTO(member_id, password));
		System.out.println(row);
			if (row > 0) {
				response.sendRedirect("main.jsp"); // 보내줄 값
				System.out.println("회원탈퇴 완료");

			} else {
				System.out.println("회원탈퇴 실패");
				response.sendRedirect("delete.jsp");
			}


	}// service

}// class
