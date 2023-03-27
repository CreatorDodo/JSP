package com.glory.member;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberRepositoryImpl implements MemberRepository {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	

	@Override
	public void setNewMember(Member member) {
		this.sqlSessionTemplate.insert("member.insert", member);

	}

	@Override
	public List<Member> getAllMemberList() {
		return this.sqlSessionTemplate.selectList("member.select_list");
	}

	@Override
	public Member getMemberById(String mId) {
		return this.sqlSessionTemplate.selectOne("member.select_detail", mId);
	}

}
