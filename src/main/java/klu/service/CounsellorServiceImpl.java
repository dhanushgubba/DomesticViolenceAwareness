package klu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.model.Counsellor;
import klu.model.Request;
import klu.repository.CounsellorRepository;
import klu.repository.CounselorAssignmentRepository;
import klu.repository.RequestRepository;

@Service
public class CounsellorServiceImpl implements CounsellorService{

	@Autowired
	private CounsellorRepository counsellorRepository;
	
	@Autowired
	private CounselorAssignmentRepository counselorAssignmentRepository;
	
	@Autowired
	private RequestRepository requestRepository;

	@Override
	public Counsellor checkCousellorLogin(String email, String password) {
		// TODO Auto-generated method stub
		return counsellorRepository.checkCounsellorLogin(email, password);
	}

	@Override
    public List<Request> CounsellorRequests() {
        List<Request> requests = requestRepository.findAll();
        
        // Retrieve the assigned counselor ID for each request
        for (Request request : requests) {
            Long assignedCounsellorId = counselorAssignmentRepository.findCounsellorIdByRequestId(request.getId());
            request.setAssignedCounsellorId(assignedCounsellorId); // Set the counselor ID
        }

        return requests;
    }
}
