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

		@Override
		public int getReviewCount(long doctor_id) {
			// TODO Auto-generated method stub
			return 0;
		}

//		MOETHOD TO SAVE A NEW REVIEW
		@Override
		public Long saveReview(Review review) {
			String sqlNewReview = "INSERT INTO reviews(doctor_id, user_id, review, rating)"
											 + "VALUES(?, ?, ?, ?) RETURNING review_id;";
			return jdbcTemplate.queryForObject(sqlNewReview, Long.class, review);
		}

//		METHOD TO GET ALL DOCTORS FROM THE DB TO DISPLAY IN THE SURVEY
		
		@Override
		public List<Doctor> getDoctorNames() {
			List<Doctor> allDoctors = new ArrayList<>();
			String sqlGetAllDoctors = "SELECT * FROM doctor";
			SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllDoctors);
			while(results.next()) {
				Doctor doctor = new Doctor();
				
				doctor.setDoctorId(results.getLong("doctor_id"));
				doctor.setLastName(results.getString("last_name"));
				
				allDoctors.add(doctor);
			}
			return allDoctors;
		}
		
		
		private Review mapRowToReview(SqlRowSet results) {
		// TODO Auto-generated method stub
			Review review = new Review();
			review.setReview_id(results.getLong("review_id"));
			review.setDoctor_id(results.getInt("doctor_id"));
			review.setUser_id(results.getInt("user_id"));
			review.setReview(results.getString("review"));
			review.setRating(results.getInt("rating"));

			return review;
	}
//
//	@Override
//	public int getReviewCount(long doctor_id) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//

		
}


