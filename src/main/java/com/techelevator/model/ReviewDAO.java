package com.techelevator.model;

import java.util.List;

public interface ReviewDAO {
	
	public Long saveReview(Review review);
	public List<Review> searchReviewsByDoctorId(long doctor_id);
	public int getReviewCount(long doctor_id);
	public List<Doctor> getDoctorNames();

}

