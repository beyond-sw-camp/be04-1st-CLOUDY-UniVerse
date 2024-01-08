CREATE TABLE IF NOT EXISTS `course_lecture_tb` (
  `student_id` int(11) NOT NULL,
  `result_eng` char(1) DEFAULT NULL,
  `result_no` float DEFAULT NULL,
  `complete_division` tinyint(1) NOT NULL,
  `appraisal_status` tinyint(1) NOT NULL DEFAULT 0,
  `appraisal_content` varchar(3000) DEFAULT NULL,
  `complete_year` year(4) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`lecture_id`),
  KEY `lecture_id` (`lecture_id`),
  CONSTRAINT `course_lecture_tb_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_tb` (`id`),
  CONSTRAINT `course_lecture_tb_ibfk_2` FOREIGN KEY (`lecture_id`) REFERENCES `lecture_tb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

