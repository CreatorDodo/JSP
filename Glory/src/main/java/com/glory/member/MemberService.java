package com.glory.member;

import java.util.List;
import java.util.Map;

public interface MemberService {
	
	void setNewMember(Member member);

	List<Member> getAllMemberList();

	Member getMemberById(String mid);

	void updateAuth(Map<String, Object> auth);
	
}
