CREATE TABLE IF NOT EXISTS `college_recode_tb` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `eng_name` varchar(50) DEFAULT NULL,
  `resident_registration_no` varchar(30) NOT NULL,
  `student_img` varchar(200) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `nationality` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `admission` year(4) NOT NULL,
  `graduation` year(4) DEFAULT NULL,
  `complete_term` smallint(6) NOT NULL DEFAULT 0,
  `grade` smallint(6) NOT NULL DEFAULT 1,
  `status` varchar(30) NOT NULL DEFAULT '재학',
  `process` varchar(30) NOT NULL,
  `credit` int(11) NOT NULL DEFAULT 0,
  `get_credit` int(11) NOT NULL DEFAULT 0,
  `grade_point_avg` float DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  CONSTRAINT `college_recode_tb_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20230066 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

