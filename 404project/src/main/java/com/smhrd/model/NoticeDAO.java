package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class NoticeDAO {

	static SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	
	
	public int UploadNotice(NoticeDTO1 ndto) {
		
		SqlSession session=sqlSessionFactory.openSession(true);
		
		int row = session.insert("UploadNotice", ndto);
		
		session.close();
		
		return row;
	}
	
	public static ArrayList<NoticeDTO1> showAllNotice(String nickname){
		
		//1. 연결하기
		SqlSession session=sqlSessionFactory.openSession(true);
		
		//2. sql문장 실행하기
		ArrayList noticeAll_list=(ArrayList)session.selectList("showAllNotice",nickname);
		
		//3. 연결 종료하기
		session.close();
		
		return noticeAll_list;	
	}
	
	public static NoticeDTO1 showOneNotice(int noticeNo){
		
		System.out.println(noticeNo);
		SqlSession session=sqlSessionFactory.openSession(true);
		
		NoticeDTO1 ndto = session.selectOne("showOneNotice",noticeNo);
		System.out.println(ndto);
		session.close();
		
		return ndto ;
	}
	
}