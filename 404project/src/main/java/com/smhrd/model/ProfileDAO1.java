package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class ProfileDAO1 {

	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	
	
	public int updateProfile(ProfileDTO1 pdto) {
		
		
			
			SqlSession session=sqlSessionFactory.openSession(true);
			
			int cnt = session.update("updateProfile", pdto);
			
			session.close();
			
				
		return cnt;
	}
	
	
	public ProfileDTO1 selectProfile(String nickname) {
		
		SqlSession session=sqlSessionFactory.openSession(true);
		
		ProfileDTO1 pdto = session.selectOne("selectProfile", nickname);
		
		session.close();
		
		return pdto;
	}
	
}
