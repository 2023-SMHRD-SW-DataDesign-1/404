package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

import  com.smhrd.model.FollowDTO1;

public class FollowDAO1 {
	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	
	// join메소드
	//	   insert into web_member values(?,?,?,?)
	public int follow(FollowDTO1 sdto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("follow", sdto);
		session.close();
		
		return row;
	}
	
	public ArrayList<String> showfolloingList(String nickname) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<String> follow_list = (ArrayList)session.selectList("showfolloingList", nickname);
		session.close();
		
		return follow_list;
	}
	
	public ArrayList<String> showFollowerList(String nickname) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<String> follower_list = (ArrayList)session.selectList("showFollowerList", nickname);
		session.close();
		
		return follower_list;
	}
}
