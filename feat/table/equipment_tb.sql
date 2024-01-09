CREATE TABLE IF NOT EXISTS `equipment_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `explain` varchar(1000) DEFAULT NULL,
  `total_cnt` int(11) NOT NULL DEFAULT 0,
  `residual_cnt` int(11) NOT NULL DEFAULT 0,
  `equipment_img` varchar(200) DEFAULT NULL,
  `category_code_id` int(11) NOT NULL,
  `structure_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_code_id` (`category_code_id`),
  KEY `structure_id` (`structure_id`),
  CONSTRAINT `equipment_tb_ibfk_1` FOREIGN KEY (`category_code_id`) REFERENCES `equipment_category_tb` (`id`),
  CONSTRAINT `equipment_tb_ibfk_2` FOREIGN KEY (`structure_id`) REFERENCES `structure_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

