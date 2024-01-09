CREATE TABLE IF NOT EXISTS `rent_structure_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rental_date` datetime NOT NULL,
  `rental_time` int(11) NOT NULL,
  `explain` varchar(1000) DEFAULT NULL,
  `lecture_room_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `professor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lecture_room_id` (`lecture_room_id`),
  KEY `professor_id` (`professor_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `rent_structure_tb_ibfk_1` FOREIGN KEY (`lecture_room_id`) REFERENCES `lecture_room_tb` (`id`),
  CONSTRAINT `rent_structure_tb_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student_tb` (`id`),
  CONSTRAINT `rent_structure_tb_ibfk_3` FOREIGN KEY (`professor_id`) REFERENCES `professor_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

