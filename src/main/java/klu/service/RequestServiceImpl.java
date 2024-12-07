package klu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import klu.model.Request;
import klu.repository.CounselorAssignmentRepository;
import klu.repository.RequestRepository;
import klu.repository.UserRepository;

@Service
public class RequestServiceImpl implements RequestService{

	@Autowired
	private RequestRepository requestRepository;
	
	@Autowired
	private CounselorAssignmentRepository counselorAssignmentRepository;
	
	@Override
	public String userRequest(Request requests) {
		requestRepository.save(requests);
		return "Request saved Successfully";
	}

	@Override
	public List<Request> getRequestsByEmail(String email) {
		// TODO Auto-generated method stub
		return requestRepository.findByEmail(email);
	}

	
}
