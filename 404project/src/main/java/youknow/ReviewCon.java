package youknow;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ReviewCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		
		// 게시글넘버, 리뷰내용 , 평점 , 작성자
		String review_no = request.getParameter("review_no");
		String nickname = request.getParameter("nickname");
		int reviewpoint = Integer.parseInt(request.getParameter("reviewpoint"));
		String review = request.getParameter("review");

		// 2.데이터 받아오기

		// 3. join메소드 호출
		ReviewRateDTO dto = new ReviewRateDTO(review_no, nickname, review, reviewpoint); // 받아올 값 입력

		ReviewRateDAO dao = new ReviewRateDAO();
		int row = dao.saveReview(dto);

		// 4. 결과값에 따라서 페이지 이동
		String moveURL = null;
		if (row > 0) {
			System.out.println("회원가입 성공");
			moveURL = "review.jsp"; // forward./JoinSuccess.jsp
									// 성공시 request 객체에 email 담기
									// request.setAttribute("email", email);
		} else {
			System.out.println("회원가입 실패");
			moveURL = "join.jsp";
		}
		// return moveURL;
		response.sendRedirect(moveURL);

	}

}
