CREATE TABLE IF NOT EXISTS `lecture_room_tb` (
  `id` int(11) NOT NULL,
  `rental_availability` tinyint(1) DEFAULT NULL,
  `structure_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `structure_id` (`structure_id`),
  CONSTRAINT `lecture_room_tb_ibfk_1` FOREIGN KEY (`structure_id`) REFERENCES `structure_tb` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
