package com.glory.member;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberRepository memberRepository;

	
	@Override
	public void setNewMember(Member member) {
		memberRepository.setNewMember(member);

	}

	@Override
	public List<Member> getAllMemberList() {
		return memberRepository.getAllMemberList();
	}

	@Override
	public Member getMemberById(String mid) {
		
		Member memberById = memberRepository.getMemberById(mid);
		
		return memberById;
	}

	@Override
	public void updateAuth(Map<String, Object> auth) {
		memberRepository.updateAuth(auth);
		
	}

}
