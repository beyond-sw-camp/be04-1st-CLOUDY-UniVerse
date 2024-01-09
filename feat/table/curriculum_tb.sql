CREATE TABLE IF NOT EXISTS `curriculum_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` smallint(6) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `curriculum_tb_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
