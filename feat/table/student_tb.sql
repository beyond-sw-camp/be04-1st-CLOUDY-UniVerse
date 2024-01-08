CREATE TABLE IF NOT EXISTS `student_tb` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '1234',
  `advisor_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `advisor_id` (`advisor_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `student_tb_ibfk_1` FOREIGN KEY (`advisor_id`) REFERENCES `professor_tb` (`id`),
  CONSTRAINT `student_tb_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_tb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

