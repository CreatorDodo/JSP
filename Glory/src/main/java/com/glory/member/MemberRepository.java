package com.glory.member;

import java.util.List;
import java.util.Map;

public interface MemberRepository {
	
	void setNewMember(Member member);

	List<Member> getAllMemberList();

	Member getMemberById(String mId);

	void updateAuth(Map<String, Object> auth);
	
}
