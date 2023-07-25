package youknow;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class ReviewRateDAO {
	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	// feed number, nickname, reply dto에 있는 것들 >>> product 에 관련된 것으로 넣기 nickname,
	// product number, product hashtags ,
		
	public int saveReview(ReviewRateDTO rvDTO) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("com.smhrd.mapper.productMapper.saveReview", rvDTO);
		session.close();

		return row;
	}

	public  static ArrayList<ReviewRateDTO> showReview() {
		// DB에서 평점 리스트 가져오기
		ArrayList<ReviewRateDTO> review_list = new ArrayList<>();
		SqlSession session = sqlSessionFactory.openSession(true);
		review_list = (ArrayList)session.selectList("com.smhrd.mapper.productMapper.showReview");
		session.close();

		return review_list;
	}
	
	
	// JSTL에서 메소드 불러오려면 메소드 타입이 static이어야 함
	// 게시글 전체 조회 메소드
	// select * from web_board order by b_date(최신순);
	public static ArrayList<ReviewRateDTO> showFeedComment() {

		// 1. 연결하기
		SqlSession session = sqlSessionFactory.openSession(true);

		// 2. sql문장 실행하기
		ArrayList review_list = (ArrayList) session.selectList("com.smhrd.mapper.productMapper.showReview");

		// 3. 연결 종료하기
		session.close();

		return review_list;
	}

}
