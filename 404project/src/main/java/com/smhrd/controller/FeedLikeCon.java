package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.FeedCommentDTO1;
import com.smhrd.model.FeedDAO1;


@WebServlet("/FeedLikeCon")
public class FeedLikeCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String feed_no= request.getParameter("feed_no");
		String nickname= request.getParameter("nickname");

		
		System.out.println(feed_no);
		System.out.println(nickname);
//		System.out.println(repl);
		
//		FeedCommentDTO fcdto = new FeedCommentDTO(feed_no,nickname,repl);
//		FeedDAO fdao = new FeedDAO();
		
		int row = fdao.saveComment(fcdto);
		
		if(row>0) {
			System.out.println("댓글 저장 성공");
		}else {
			System.out.println("댓글 저장 실패");
		}
		
		
		response.sendRedirect("./FeedList.jsp");
		
	}

}
