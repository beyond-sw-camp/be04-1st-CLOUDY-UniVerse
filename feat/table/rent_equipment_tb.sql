CREATE TABLE IF NOT EXISTS `rent_equipment_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rental_dt` date NOT NULL,
  `due_dt` date NOT NULL,
  `explain` varchar(1000) DEFAULT NULL,
  `rental_cnt` int(11) NOT NULL DEFAULT 0,
  `equipment_id` int(11) NOT NULL,
  `professor_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `equipment_id` (`equipment_id`),
  KEY `professor_id` (`professor_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `rent_equipment_tb_ibfk_1` FOREIGN KEY (`equipment_id`) REFERENCES `equipment_tb` (`id`),
  CONSTRAINT `rent_equipment_tb_ibfk_2` FOREIGN KEY (`professor_id`) REFERENCES `professor_tb` (`id`),
  CONSTRAINT `rent_equipment_tb_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `student_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
