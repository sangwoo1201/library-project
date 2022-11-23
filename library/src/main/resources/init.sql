CREATE TABLE `userinfo` (
  `id` varchar(20) NOT NULL COMMENT '고유아이디',
  `pw` varchar(30) NOT NULL COMMENT '비밀번호',
  `name` varchar(30) DEFAULT NULL COMMENT '이름',
  `email` varchar(50) DEFAULT NULL COMMENT '이메일',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `bookinfo` (
  `unique_number` bigint NOT NULL COMMENT '책고유번호',
  `name` varchar(30) DEFAULT NULL COMMENT '이름',
  `genre` varchar(30) DEFAULT NULL COMMENT '장르',
  `author` varchar(50) DEFAULT NULL COMMENT '작가',
  `isUse` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`unique_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `durationbook` (
  `duration_no` bigint NOT NULL AUTO_INCREMENT COMMENT '예약순번',
  `start_at` datetime DEFAULT NULL COMMENT '출발 시간',
  `end_at` datetime DEFAULT NULL COMMENT '도착 시간',
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '고유아이디',
  `unique_number` bigint DEFAULT NULL COMMENT '책고유번호',
  PRIMARY KEY (`duration_no`),
  KEY `durationbook_FK` (`id`),
  KEY `durationbook_FK_1` (`unique_number`),
  CONSTRAINT `durationbook_FK` FOREIGN KEY (`id`) REFERENCES `userinfo` (`id`),
  CONSTRAINT `durationbook_FK_1` FOREIGN KEY (`unique_number`) REFERENCES `bookinfo` (`unique_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;