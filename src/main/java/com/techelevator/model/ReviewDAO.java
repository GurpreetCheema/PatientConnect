package com.techelevator.model;

import java.util.List;

public interface ReviewDAO {
	
	public Long saveReview(Review review);
	public List<Doctor> getDoctorNames();
	public List<Review> searchReviewsByDoctorId(Long doctorId);
	public List<Review> displayAllReviews();
	public Doctor getDoctorNameByReview(Long doctorId);
	public List<Doctor> getDoctorInfoFromId(Long doctorId);

}

