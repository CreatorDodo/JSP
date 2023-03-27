package com.glory.member;

import java.util.List;

public interface MemberService {
	
	void setNewMember(Member member);

	List<Member> getAllMemberList();

	Member getMemberById(String mid);

}
