CREATE TABLE `car` (
	`cid` VARCHAR(50) NOT NULL COLLATE,
	`cname` VARCHAR(50) NULL DEFAULT NULL,
	`cprice` VARCHAR(50) NULL DEFAULT NULL,
	`ccate` VARCHAR(50) NULL DEFAULT NULL,
	`cdesc` VARCHAR(200) NULL DEFAULT NULL,
	`cfilename` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`cid`) USING BTREE
)
ENGINE=InnoDB
;

-- 테이블 데이터 difbfl4751.car:~3 rows (대략적) 내보내기
INSERT INTO `car` (`cid`, `cname`, `cprice`, `ccate`, `cdesc`, `cfilename`) VALUES
	('c0001', '아반테', '3000', '준형', '신규', 'c0001.jpg'),
	('c0002', '그랜저', '4000', '준대형', '중고', 'c0002.jpg'),
	('c0003', '페라리', '8000', '준중형', '신규', 'c0003.jpg');