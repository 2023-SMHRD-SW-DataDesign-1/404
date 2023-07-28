package com.smhrd.model;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;
import com.smhrd.model.FeedDTO1;
import com.smhrd.model.FeedCommentDTO1;

public class FeedDAO1 {

	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	
	
	public int uploadFeed(FeedDTO1 fdto) {

		SqlSession session = sqlSessionFactory.openSession(true);

		int row = session.insert("uploadFeed", fdto);

		session.close();

		return row;
	}

	public int saveComment(FeedCommentDTO1 fcdto) {
		
		System.out.println("댓글저장정보: "+fcdto);
				
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("saveComment", fcdto);
		session.close();

		return row;
	}

	// JSTL에서 메소드 불러오려면 메소드 타입이 static이어야 함
	// 게시글 전체 조회 메소드
	// select * from web_board order by b_date(최신순);
	public static ArrayList<FeedCommentDTO1> showFeedComment() {

		// 1. 연결하기
		SqlSession session = sqlSessionFactory.openSession(true);

		// 2. sql문장 실행하기
		ArrayList comment_list = (ArrayList) session.selectList("showFeedComment");

		// 3. 연결 종료하기
		session.close();

		return comment_list;

	}

	public int sumLikes(FeedDTO1 fdto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.insert("sumLikes", fdto);
		session.close();

		return cnt;
	}

	public static int selectLikes() {
		SqlSession session = sqlSessionFactory.openSession(true);
		int sum = session.selectOne("selectLikes");
		System.out.println(sum);

		session.close();

		return sum;
	}

	public static ArrayList<FeedDTO1> showMyFeeds(FeedDTO1 fdto) {

		// 1. 연결하기
		SqlSession session = sqlSessionFactory.openSession(true);

		// 2. sql문장 실행하기
		ArrayList mfeed_list = (ArrayList) session.selectList("showFeeds", fdto);

		// 3. 연결 종료하기
		session.close();

		return mfeed_list;

	}

	public static ArrayList<FeedDTO1> showAllLikesFeeds() {

		// 1. 연결하기
		SqlSession session = sqlSessionFactory.openSession(true);

		// 2. sql문장 실행하기
		ArrayList lfeed_list = (ArrayList) session.selectList("com.smhrd.mapper.FeedMapper.showAllLikesFeeds");

		// 3. 연결 종료하기
		session.close();

		return lfeed_list;

	}

	public static ArrayList<FeedDTO1> showAllSubcriptionFeeds(FeedDTO1 fdto) {

		// 1. 연결하기
		SqlSession session = sqlSessionFactory.openSession(true);

		// 2. sql문장 실행하기
		ArrayList sfeed_list = (ArrayList) session.selectList("showAllSubcriptionFeeds", fdto);

		// 3. 연결 종료하기
		session.close();

		return sfeed_list;

	}
	
	public String getProfileImage(String nickname) {
		
        SqlSession session = sqlSessionFactory.openSession(true);
        
        String profileImage = session.selectOne("getProfileImage", nickname);
        
        session.close();
        
        return profileImage;
    }

}
