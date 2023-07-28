package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.FeedDAO1;
import com.smhrd.model.FeedDTO1;


@WebServlet("/UpdateFeedCon")
public class UpdateFeedCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int feedNo = Integer.parseInt(request.getParameter("feedNo"));
		String text = request.getParameter("feedText");
		
		FeedDTO1 fdto = new FeedDTO1(feedNo,text);
		FeedDAO1 fdao = new FeedDAO1();
		
		int cnt = fdao.updateFeed(feedNo);
		
		 
			if(cnt>0) {
				System.out.println("프로필 변경 성공");
			}else {
				System.out.println("프로필 변경 실패");
			}
			
			response.sendRedirect("../Seller/MyFeedDetail.jsp");
		
		
		
		
	}

}
