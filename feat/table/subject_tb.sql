CREATE TABLE IF NOT EXISTS `subject_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `explain` varchar(1000) DEFAULT NULL,
  `curriculum_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `curriculum_id` (`curriculum_id`),
  CONSTRAINT `subject_tb_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=385 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
