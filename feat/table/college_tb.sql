CREATE TABLE IF NOT EXISTS `college_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tuition` int(11) NOT NULL,
  `explain` varchar(1000) DEFAULT NULL,
  `structure_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `structure_id` (`structure_id`),
  CONSTRAINT `college_tb_ibfk_1` FOREIGN KEY (`structure_id`) REFERENCES `structure_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
