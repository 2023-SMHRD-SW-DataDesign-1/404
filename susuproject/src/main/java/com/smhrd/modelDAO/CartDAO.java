package com.smhrd.modelDAO;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;
import com.smhrd.modelDTO.CartDTO;
import com.smhrd.modelDTO.ProductDTO;

public class CartDAO {

	private SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();

	public int addCart(CartDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("addCart", dto);
		session.close();
		return row;
	}

	public ProductDTO showCart(ProductDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ProductDTO info = session.selectOne("showCart", dto); // 경로 정확하게 >> TYPEALIASES >> ALIAS
		session.close();
		return info;
	}

}// class
