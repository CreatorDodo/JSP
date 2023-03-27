package com.glory.notice;

import java.util.List;

public interface NoticeRepository {

	void setNewNotice(Notice notice);

	List<Notice> getAllNoticeList();

	Notice getNoticeById(String nId);
	
}
