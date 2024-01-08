CREATE TABLE IF NOT EXISTS `course_registration_tb` (
  `student_id` int(11) NOT NULL,
  `lecture_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`lecture_id`),
  KEY `lecture_id` (`lecture_id`),
  CONSTRAINT `course_registration_tb_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_tb` (`id`),
  CONSTRAINT `course_registration_tb_ibfk_2` FOREIGN KEY (`lecture_id`) REFERENCES `lecture_tb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
