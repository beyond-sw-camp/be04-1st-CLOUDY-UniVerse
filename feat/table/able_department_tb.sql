CREATE TABLE IF NOT EXISTS `able_department_tb` (
  `lecture_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`lecture_id`,`department_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `able_department_tb_ibfk_1` FOREIGN KEY (`lecture_id`) REFERENCES `lecture_tb` (`id`),
  CONSTRAINT `able_department_tb_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_tb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;