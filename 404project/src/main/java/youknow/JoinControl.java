package youknow;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//1.post방식 인코딩
		request.setCharacterEncoding("UTF-8");
		//2.데이터 받아오기
		String member_id = request.getParameter("member_id");
		String password = request.getParameter("password");
		String nickname = request.getParameter("nickname");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		//console에 프린트
		System.out.println("member_id :" + member_id);
		System.out.println("password :" + password);
		System.out.println("nickname :" + nickname);
		System.out.println("gender :" + gender);
		System.out.println("age :" + age);
		System.out.println("address :" + address);
		System.out.println("phone :" + phone);

		//join 메소드 
		MemberDAO dao = new MemberDAO();		
			int row = dao.join(new MemberDTO(member_id, password, nickname,gender, age,address, phone));
			System.out.println(row);
			//4. 성공 실패 구분하기
			String moveURL = null;
			if(row > 0) {
				response.sendRedirect("Main.jsp");
				System.out.println("회원가입성공");
			}else {
				System.out.println("회원가입실패");
				response.sendRedirect("Join.jsp");
			}

		
		
		
	}// service

}// class
