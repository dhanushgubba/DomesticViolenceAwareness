package klu.service;

import java.util.List;

import org.springframework.stereotype.Service;

import klu.model.Counsellor;
import klu.model.Request;

public interface CounsellorService {

	public Counsellor checkCousellorLogin(String email,String password);
	
	public List<Request> CounsellorRequests();
}
