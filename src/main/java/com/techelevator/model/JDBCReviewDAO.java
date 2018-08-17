package com.techelevator.model;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class JDBCReviewDAO implements ReviewDAO{
		
		private JdbcTemplate jdbcTemplate;

		@Autowired
		public void DBCReviewDAO(DataSource dataSource) {
			this.jdbcTemplate = new JdbcTemplate(dataSource);
		}

		public void save(Review newReview) {
			String sqlSaveReview = "INSERT INTO reviews(subject, description, rating) VALUES(?,?,?)";
			jdbcTemplate.update(sqlSaveReview, newReview.getSubject(), newReview.getDescription(), newReview.getRating());
							
	}
	
}
