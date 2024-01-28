-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for aaroh-clinic
CREATE DATABASE IF NOT EXISTS `aaroh-clinic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `aaroh-clinic`;

-- Dumping structure for table aaroh-clinic.book_appointment
CREATE TABLE IF NOT EXISTS `book_appointment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `slot` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table aaroh-clinic.book_appointment: ~6 rows (approximately)
INSERT INTO `book_appointment` (`id`, `name`, `email`, `phone`, `slot`, `date`) VALUES
	(1, '', '', '', '05:30:00', '1970-01-01'),
	(2, 'maheswar', 'maheswar@gmail.com', '08658279296', '11:33:37', '2023-05-10'),
	(3, '', '', '', '05:30:00', '1970-01-01'),
	(4, 'maheswar', 'maheswar@gmail.com', '08658279296', '11:35:32', '2023-05-11'),
	(5, '', '', '', '05:30:00', '1970-01-01'),
	(6, '', '', '0', '05:30:00', '1970-01-01');

-- Dumping structure for table aaroh-clinic.contact_us
CREATE TABLE IF NOT EXISTS `contact_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table aaroh-clinic.contact_us: ~2 rows (approximately)
INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
	(1, '', '', '', '', ''),
	(2, 'maheswar', 'maheswar@gmail.com', '08658279296', 'subject', 'aaaaaaaaaaaaaaaaa');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
