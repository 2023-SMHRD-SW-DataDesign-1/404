package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ProfileDAO1;
import com.smhrd.model.ProfileDTO1;

import chanho.ProfileDTO;


@WebServlet("/UpdateProfileCon")
public class UpdateProfileCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String nickname= request.getParameter("");
		String profileImage = request.getParameter("profileImage");
		String profileDescription = request.getParameter("profileDescription");
		String bannerImage = request.getParameter("bannerImage");
		
		ProfileDTO1 pdto = new ProfileDTO1(profileImage,profileDescription,bannerImage);
		ProfileDAO1 pdao = new ProfileDAO1();
		
		int cnt = pdao.updateProfile(pdto);
		 
		if(cnt>0) {
			System.out.println("프로필 변경 성공");
		}else {
			System.out.println("프로필 변경 실패");
		}
		
		response.sendRedirect("../Seller/MychannelMain.jsp");
		
		
		
		
		
		
		
	}

}
