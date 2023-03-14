CREATE TABLE `book` (
	`book_id` INT(10) NOT NULL AUTO_INCREMENT,
	`title` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`category` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_0900_ai_ci',
	`price` INT(10) NULL DEFAULT NULL,
	`insert_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`book_id`) USING BTREE
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;
