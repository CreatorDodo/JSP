package com.glory.notice;

import java.util.List;


public interface NoticeService {

	void setNewNotice(Notice notice);

	List<Notice> getAllNoticeList();

	Notice getNoticeById(String nid);
	
}
