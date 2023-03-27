package com.glory.member;

import java.util.List;

public interface MemberRepository {
	
	void setNewMember(Member member);

	List<Member> getAllMemberList();

	Member getMemberById(String mId);
	
}
