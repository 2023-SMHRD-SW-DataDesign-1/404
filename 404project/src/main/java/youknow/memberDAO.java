package com.smhrd.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class memberDAO {
	
	private SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int join(memberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();
		return row;
	}
	
	public memberDTO login(memberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		memberDTO info = session.selectOne("com.smhrd.mapper.memberMapper.login", dto);     //경로 정확하게 >> TYPEALIASES >> ALIAS
		session.close();
		return info;
	}

	public int update(memberDTO dto) { 
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("com.smhrd.mapper.memberMapper.update", dto);
		session.close();
		return row;
	}
	
	public int delete(memberDTO dto) { 
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("com.smhrd.mapper.memberMapper.delete", dto);
		session.close();
		return row;
	}
	
	
	
}// class

