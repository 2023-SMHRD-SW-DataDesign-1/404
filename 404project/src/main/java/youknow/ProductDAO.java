package youknow;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.sqlSessionManager;

public class ProductDAO {
	 private SqlSessionFactory sqlSessionFactory = sqlSessionManager.getSqlSession();
	 //장바구니
	public int addProduct(String product_name) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("addProduct", product_name);
		session.close();
		return row;
	}
	//결제목록
	public int showProduct(String member_id) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int info = session.selectOne("showProduct", member_id); // 경로 정확하게 >> TYPEALIASES >> ALIAS
		session.close();
		return info;
	}

	public String searchProduct(String search) {
		SqlSession session = sqlSessionFactory.openSession(true);
		String info = session.selectOne("searchProduct", search); 
		session.close();
		return info;
	}
}// class

