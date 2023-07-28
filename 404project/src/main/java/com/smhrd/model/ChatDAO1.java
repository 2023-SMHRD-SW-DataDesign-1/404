package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class ChatDAO1 {

	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	
	public int saveChating(ChatDTO1 cdto) {
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		int row = session.insert("saveChating", cdto);

		session.close();

		return row;
		
		
	}
	
	
	
}
