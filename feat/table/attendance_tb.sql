CREATE TABLE IF NOT EXISTS `attendance_tb` (
  `lecture_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `attendance_status` tinyint(1) NOT NULL DEFAULT 0,
  `late_status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`lecture_id`,`date`,`student_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `attendance_tb_ibfk_1` FOREIGN KEY (`lecture_id`) REFERENCES `lecture_tb` (`id`),
  CONSTRAINT `attendance_tb_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_tb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
