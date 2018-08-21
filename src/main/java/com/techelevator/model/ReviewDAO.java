package com.techelevator.model;

import java.util.List;

public interface ReviewDAO {
	
	public Long saveReview(Review review);
	public List<Doctor> getDoctorNames();
	List<Review> searchReviewsByDoctorId(Long doctorId);
	List<Review> displayAllReviews();
	Doctor getDoctorNameByReview(Long doctorId);

}

