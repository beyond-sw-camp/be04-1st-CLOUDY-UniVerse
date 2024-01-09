CREATE TABLE IF NOT EXISTS `professor_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '1234',
  `professor_img` varchar(200) DEFAULT NULL,
  `resident_registration_no` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `position` varchar(30) NOT NULL,
  `contract` varchar(30) NOT NULL,
  `salary` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `professor_tb_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

