package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JDBCReviewDAO implements ReviewDAO{
		
		private JdbcTemplate jdbcTemplate;
		private SqlRowSet row;

		@Autowired
		public void DBCReviewDAO(DataSource dataSource) {
			this.jdbcTemplate = new JdbcTemplate(dataSource);
		}

//		@Override
//		public void saveReview(Review review) {
//			String sqlSaveReview = "INSERT INTO reviews(doctor_id, user_id, review, rating) VALUES(?,?,?,?)";
//			jdbcTemplate.update(sqlSaveReview, review.getDoctor_id(), review.getUser_id(), review.getReview(), 
//					review.getRating());
										
	//}

		@Override
		public List<Review> searchReviewsByDoctorId(long doctor_id) {
			List<Review> reviewList = new ArrayList<>();
			String sqlSearchReviewByDoctorId = "SELECT * FROM reviews WHERE doctor_id = ? ORDER BY";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSearchReviewByDoctorId, doctor_id);
		
		while(results.next()){
			reviewList.add(mapRowToReview(results));
		}	
		return reviewList;
	}

		private Review mapRowToReview(SqlRowSet results) {
			// TODO Auto-generated method stub
			return null;
		}
//		private Review mapRowToReview(SqlRowSet results) {
//			// TODO Auto-generated method stub
//				Review review = new Review();
//				review.setReview_id(row.getInt("review_id"));
//				review.setDoctor_id(row.getInt("doctor_id"));
//				review.setUser_id(row.getInt("user_id"));
//				review.setReview(row.getString("review"));
//				review.setRating(row.getInt("rating"));
//
//				return review;
//			
//			
//		}
//
//		@Override
//		public int getReviewCount(long doctor_id) {
//			// TODO Auto-generated method stub
//			return 0;
//		}
//	

		@Override
		public int getReviewCount(long doctor_id) {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public void saveReview(Review review) {
			// TODO Auto-generated method stub
			
		}
}


