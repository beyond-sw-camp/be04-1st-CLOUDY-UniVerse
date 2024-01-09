CREATE TABLE IF NOT EXISTS `department_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `explain` varchar(1000) DEFAULT NULL,
  `college_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `college_id` (`college_id`),
  CONSTRAINT `department_tb_ibfk_1` FOREIGN KEY (`college_id`) REFERENCES `college_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

