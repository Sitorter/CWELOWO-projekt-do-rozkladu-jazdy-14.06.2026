-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2026 at 11:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rozklad_jazdy`
--

-- --------------------------------------------------------

--
-- Table structure for table `polaczenia`
--

CREATE TABLE `polaczenia` (
  `id` int(11) NOT NULL,
  `miasto_start` varchar(100) NOT NULL,
  `miasto_koniec` varchar(100) NOT NULL,
  `typ_transportu` enum('Pociąg Ekspresowy','Pociąg IC','Pociąg Regionalny','Autobus Dalekobieżny','Autobus Regionalny','Minibus') NOT NULL,
  `przewoznik` varchar(100) NOT NULL,
  `nazwa_linii` varchar(100) NOT NULL,
  `numer_kursu` varchar(30) NOT NULL,
  `godzina_odjazdu` time NOT NULL,
  `godzina_przyjazdu` time NOT NULL,
  `dystans_km` decimal(7,1) NOT NULL,
  `cena` decimal(8,2) NOT NULL,
  `max_miejsc` int(11) NOT NULL,
  `zajete_miejsca` int(11) NOT NULL DEFAULT 0,
  `dni_kursowania` varchar(30) DEFAULT 'Pn-Nd',
  `aktywny` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `polaczenia`
--

INSERT INTO `polaczenia` (`id`, `miasto_start`, `miasto_koniec`, `typ_transportu`, `przewoznik`, `nazwa_linii`, `numer_kursu`, `godzina_odjazdu`, `godzina_przyjazdu`, `dystans_km`, `cena`, `max_miejsc`, `zajete_miejsca`, `dni_kursowania`, `aktywny`, `created_at`) VALUES
(1, 'Warszawa', 'Kraków', 'Pociąg Ekspresowy', 'PKP Intercity', 'EIP Pendolino', 'EIP 3500', '06:25:00', '09:02:00', 295.0, 149.00, 402, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(2, 'Kraków', 'Warszawa', 'Pociąg Ekspresowy', 'PKP Intercity', 'EIP Pendolino', 'EIP 3501', '07:10:00', '09:47:00', 295.0, 149.00, 402, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(3, 'Warszawa', 'Gdańsk', 'Pociąg Ekspresowy', 'PKP Intercity', 'EIP Pendolino', 'EIP 5500', '06:50:00', '09:30:00', 340.0, 159.00, 402, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(4, 'Gdańsk', 'Warszawa', 'Pociąg Ekspresowy', 'PKP Intercity', 'EIP Pendolino', 'EIP 5501', '08:00:00', '10:40:00', 340.0, 159.00, 402, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(5, 'Warszawa', 'Wrocław', 'Pociąg Ekspresowy', 'PKP Intercity', 'EIP Pendolino', 'EIP 6100', '07:30:00', '11:10:00', 350.0, 139.00, 402, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(6, 'Wrocław', 'Warszawa', 'Pociąg Ekspresowy', 'PKP Intercity', 'EIP Pendolino', 'EIP 6101', '05:45:00', '09:25:00', 350.0, 139.00, 402, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(7, 'Warszawa', 'Kraków', 'Pociąg Ekspresowy', 'PKP Intercity', 'EIP Pendolino', 'EIP 3502', '14:25:00', '17:02:00', 295.0, 149.00, 402, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(8, 'Kraków', 'Warszawa', 'Pociąg Ekspresowy', 'PKP Intercity', 'EIP Pendolino', 'EIP 3503', '16:10:00', '18:47:00', 295.0, 149.00, 402, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(9, 'Warszawa', 'Poznań', 'Pociąg IC', 'PKP Intercity', 'IC Polonez', 'IC 6300', '06:15:00', '09:20:00', 310.0, 89.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(10, 'Poznań', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'IC Polonez', 'IC 6301', '07:00:00', '10:05:00', 310.0, 89.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(11, 'Warszawa', 'Łódź', 'Pociąg IC', 'PKP Intercity', 'IC Łodzianin', 'IC 7200', '08:10:00', '09:35:00', 137.0, 42.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(12, 'Łódź', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'IC Łodzianin', 'IC 7201', '09:00:00', '10:25:00', 137.0, 42.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(13, 'Warszawa', 'Katowice', 'Pociąg IC', 'PKP Intercity', 'IC Sobieski', 'IC 4100', '07:20:00', '10:10:00', 300.0, 79.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(14, 'Katowice', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'IC Sobieski', 'IC 4101', '06:40:00', '09:30:00', 300.0, 79.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(15, 'Warszawa', 'Szczecin', 'Pociąg IC', 'PKP Intercity', 'TLK Gryf', 'TLK 51100', '08:30:00', '14:15:00', 520.0, 95.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(16, 'Szczecin', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'TLK Gryf', 'TLK 51101', '06:00:00', '11:45:00', 520.0, 95.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(17, 'Warszawa', 'Lublin', 'Pociąg IC', 'PKP Intercity', 'IC Hetman', 'IC 8100', '07:45:00', '09:55:00', 170.0, 49.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(18, 'Lublin', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'IC Hetman', 'IC 8101', '08:30:00', '10:40:00', 170.0, 49.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(19, 'Warszawa', 'Białystok', 'Pociąg IC', 'PKP Intercity', 'IC Podlasiak', 'IC 9100', '09:00:00', '11:15:00', 195.0, 55.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(20, 'Białystok', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'IC Podlasiak', 'IC 9101', '06:30:00', '08:45:00', 195.0, 55.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(21, 'Warszawa', 'Bydgoszcz', 'Pociąg IC', 'PKP Intercity', 'TLK Flisak', 'TLK 31200', '10:15:00', '13:30:00', 270.0, 65.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(22, 'Bydgoszcz', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'TLK Flisak', 'TLK 31201', '07:00:00', '10:15:00', 270.0, 65.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(23, 'Warszawa', 'Olsztyn', 'Pociąg IC', 'PKP Intercity', 'IC Mazury', 'IC 7300', '08:00:00', '10:45:00', 230.0, 59.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(24, 'Olsztyn', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'IC Mazury', 'IC 7301', '06:15:00', '09:00:00', 230.0, 59.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(25, 'Warszawa', 'Radom', 'Pociąg IC', 'PKP Intercity', 'TLK Radomiak', 'TLK 40200', '07:30:00', '09:00:00', 100.0, 29.00, 500, 0, 'Pn-Pt', 1, '2026-06-12 07:05:33'),
(26, 'Radom', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'TLK Radomiak', 'TLK 40201', '06:00:00', '07:30:00', 100.0, 29.00, 500, 0, 'Pn-Pt', 1, '2026-06-12 07:05:33'),
(27, 'Warszawa', 'Kielce', 'Pociąg IC', 'PKP Intercity', 'IC Świętokrzyski', 'IC 4300', '09:15:00', '11:45:00', 180.0, 55.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(28, 'Kielce', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'IC Świętokrzyski', 'IC 4301', '07:00:00', '09:30:00', 180.0, 55.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(29, 'Warszawa', 'Toruń', 'Pociąg IC', 'PKP Intercity', 'IC Kopernik', 'IC 3100', '07:30:00', '10:00:00', 215.0, 59.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(30, 'Toruń', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'IC Kopernik', 'IC 3101', '08:00:00', '10:30:00', 215.0, 59.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(31, 'Warszawa', 'Siedlce', 'Pociąg IC', 'PKP Intercity', 'TLK Podlasie', 'TLK 91100', '10:00:00', '11:30:00', 92.0, 25.00, 500, 0, 'Pn-Pt', 1, '2026-06-12 07:05:33'),
(32, 'Siedlce', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'TLK Podlasie', 'TLK 91101', '07:00:00', '08:30:00', 92.0, 25.00, 500, 0, 'Pn-Pt', 1, '2026-06-12 07:05:33'),
(33, 'Warszawa', 'Częstochowa', 'Pociąg IC', 'PKP Intercity', 'TLK Jasna Góra', 'TLK 41100', '08:00:00', '11:00:00', 230.0, 55.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(34, 'Częstochowa', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'TLK Jasna Góra', 'TLK 41101', '06:00:00', '09:00:00', 230.0, 55.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(35, 'Warszawa', 'Płock', 'Pociąg IC', 'PKP Intercity', 'TLK Mazovia', 'TLK 42600', '08:00:00', '09:45:00', 110.0, 32.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(36, 'Płock', 'Warszawa', 'Pociąg IC', 'PKP Intercity', 'TLK Mazovia', 'TLK 42601', '06:30:00', '08:15:00', 110.0, 32.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(37, 'Kraków', 'Gdańsk', 'Pociąg IC', 'PKP Intercity', 'IC Pomorzanin', 'IC 5600', '06:00:00', '12:30:00', 630.0, 139.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(38, 'Gdańsk', 'Kraków', 'Pociąg IC', 'PKP Intercity', 'IC Pomorzanin', 'IC 5601', '07:30:00', '14:00:00', 630.0, 139.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(39, 'Kraków', 'Wrocław', 'Pociąg IC', 'PKP Intercity', 'IC Galicja', 'IC 6400', '08:00:00', '11:30:00', 270.0, 75.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(40, 'Wrocław', 'Kraków', 'Pociąg IC', 'PKP Intercity', 'IC Galicja', 'IC 6401', '09:15:00', '12:45:00', 270.0, 75.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(41, 'Kraków', 'Rzeszów', 'Pociąg IC', 'PKP Intercity', 'IC Roztocze', 'IC 8400', '07:30:00', '10:00:00', 170.0, 45.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(42, 'Rzeszów', 'Kraków', 'Pociąg IC', 'PKP Intercity', 'IC Roztocze', 'IC 8401', '08:00:00', '10:30:00', 170.0, 45.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(43, 'Kraków', 'Zakopane', 'Pociąg IC', 'PKP Intercity', 'TLK Tatry', 'TLK 42000', '06:45:00', '09:30:00', 147.0, 35.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(44, 'Zakopane', 'Kraków', 'Pociąg IC', 'PKP Intercity', 'TLK Tatry', 'TLK 42001', '15:00:00', '17:45:00', 147.0, 35.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(45, 'Kraków', 'Katowice', 'Pociąg IC', 'PKP Intercity', 'IC Matejko', 'IC 4200', '07:00:00', '08:15:00', 78.0, 25.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(46, 'Katowice', 'Kraków', 'Pociąg IC', 'PKP Intercity', 'IC Matejko', 'IC 4201', '08:30:00', '09:45:00', 78.0, 25.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(47, 'Kraków', 'Lublin', 'Pociąg IC', 'PKP Intercity', 'TLK Wisła', 'TLK 81100', '09:00:00', '13:00:00', 280.0, 65.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(48, 'Lublin', 'Kraków', 'Pociąg IC', 'PKP Intercity', 'TLK Wisła', 'TLK 81101', '06:30:00', '10:30:00', 280.0, 65.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(49, 'Kraków', 'Łódź', 'Pociąg IC', 'PKP Intercity', 'TLK Pogoria', 'TLK 31100', '06:30:00', '10:00:00', 250.0, 59.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(50, 'Łódź', 'Kraków', 'Pociąg IC', 'PKP Intercity', 'TLK Pogoria', 'TLK 31101', '14:00:00', '17:30:00', 250.0, 59.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(51, 'Wrocław', 'Poznań', 'Pociąg IC', 'PKP Intercity', 'IC Odra', 'IC 6500', '08:30:00', '11:00:00', 180.0, 55.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(52, 'Poznań', 'Wrocław', 'Pociąg IC', 'PKP Intercity', 'IC Odra', 'IC 6501', '07:15:00', '09:45:00', 180.0, 55.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(53, 'Poznań', 'Gdańsk', 'Pociąg IC', 'PKP Intercity', 'IC Neptun', 'IC 5300', '06:30:00', '09:45:00', 310.0, 75.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(54, 'Gdańsk', 'Poznań', 'Pociąg IC', 'PKP Intercity', 'IC Neptun', 'IC 5301', '08:00:00', '11:15:00', 310.0, 75.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(55, 'Poznań', 'Szczecin', 'Pociąg IC', 'PKP Intercity', 'IC Warta', 'IC 5100', '09:00:00', '11:45:00', 250.0, 65.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(56, 'Szczecin', 'Poznań', 'Pociąg IC', 'PKP Intercity', 'IC Warta', 'IC 5101', '07:30:00', '10:15:00', 250.0, 65.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(57, 'Katowice', 'Gdańsk', 'Pociąg IC', 'PKP Intercity', 'IC Batory', 'IC 5700', '05:30:00', '11:30:00', 550.0, 129.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(58, 'Gdańsk', 'Katowice', 'Pociąg IC', 'PKP Intercity', 'IC Batory', 'IC 5701', '06:45:00', '12:45:00', 550.0, 129.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(59, 'Gdańsk', 'Olsztyn', 'Pociąg IC', 'PKP Intercity', 'IC Warmia', 'IC 7400', '08:30:00', '11:00:00', 175.0, 45.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(60, 'Gdańsk', 'Bydgoszcz', 'Pociąg IC', 'PKP Intercity', 'IC Kaszub', 'IC 3200', '07:30:00', '09:30:00', 165.0, 45.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(61, 'Gdańsk', 'Szczecin', 'Pociąg IC', 'PKP Intercity', 'IC Pobrzeże', 'IC 5200', '06:45:00', '11:30:00', 375.0, 89.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(62, 'Wrocław', 'Szczecin', 'Pociąg IC', 'PKP Intercity', 'TLK Sudety', 'TLK 51200', '07:00:00', '12:00:00', 390.0, 85.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(63, 'Wrocław', 'Gdańsk', 'Pociąg IC', 'PKP Intercity', 'IC Nadmorski', 'IC 5400', '06:30:00', '12:00:00', 480.0, 115.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(64, 'Katowice', 'Szczecin', 'Pociąg IC', 'PKP Intercity', 'TLK Śląsk', 'TLK 51300', '06:00:00', '14:00:00', 640.0, 119.00, 600, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(65, 'Łódź', 'Gdańsk', 'Pociąg IC', 'PKP Intercity', 'TLK Kaszuby', 'TLK 53100', '07:00:00', '12:30:00', 400.0, 89.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(66, 'Łódź', 'Poznań', 'Pociąg IC', 'PKP Intercity', 'TLK Wielkopolanin', 'TLK 63100', '08:30:00', '11:00:00', 200.0, 49.00, 500, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(67, 'Lublin', 'Rzeszów', 'Pociąg IC', 'PKP Intercity', 'TLK Podkarpacie', 'TLK 84100', '07:00:00', '10:30:00', 200.0, 49.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(68, 'Rzeszów', 'Lublin', 'Pociąg IC', 'PKP Intercity', 'TLK Podkarpacie', 'TLK 84101', '08:00:00', '11:30:00', 200.0, 49.00, 450, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(69, 'Bydgoszcz', 'Szczecin', 'Pociąg IC', 'PKP Intercity', 'TLK Nadodrze', 'TLK 51400', '09:00:00', '12:30:00', 280.0, 65.00, 550, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(70, 'Warszawa', 'Skierniewice', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 42100', '06:30:00', '07:45:00', 70.0, 15.00, 300, 0, 'Pn-So', 1, '2026-06-12 07:05:33'),
(71, 'Warszawa', 'Kutno', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 42200', '07:00:00', '08:30:00', 110.0, 22.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(72, 'Kraków', 'Tarnów', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 62100', '06:15:00', '07:30:00', 83.0, 16.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(73, 'Tarnów', 'Kraków', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 62101', '07:00:00', '08:15:00', 83.0, 16.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(74, 'Kraków', 'Nowy Sącz', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 62200', '08:00:00', '10:15:00', 115.0, 22.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(75, 'Nowy Sącz', 'Kraków', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 62201', '06:30:00', '08:45:00', 115.0, 22.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(76, 'Wrocław', 'Legnica', 'Pociąg Regionalny', 'Koleje Dolnośląskie', 'KD REGIO', 'KD 71100', '06:45:00', '07:55:00', 68.0, 14.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(77, 'Legnica', 'Wrocław', 'Pociąg Regionalny', 'Koleje Dolnośląskie', 'KD REGIO', 'KD 71101', '07:30:00', '08:40:00', 68.0, 14.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(78, 'Wrocław', 'Wałbrzych', 'Pociąg Regionalny', 'Koleje Dolnośląskie', 'KD REGIO', 'KD 71200', '09:00:00', '10:30:00', 80.0, 16.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(79, 'Wrocław', 'Jelenia Góra', 'Pociąg Regionalny', 'Koleje Dolnośląskie', 'KD REGIO', 'KD 71300', '07:15:00', '09:30:00', 120.0, 25.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(80, 'Wrocław', 'Opole', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 71400', '07:15:00', '08:35:00', 85.0, 18.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(81, 'Opole', 'Wrocław', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 71401', '06:30:00', '07:50:00', 85.0, 18.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(82, 'Poznań', 'Gniezno', 'Pociąg Regionalny', 'Koleje Wielkopolskie', 'KW REGIO', 'KW 51100', '06:30:00', '07:05:00', 48.0, 10.00, 300, 0, 'Pn-So', 1, '2026-06-12 07:05:33'),
(83, 'Poznań', 'Leszno', 'Pociąg Regionalny', 'Koleje Wielkopolskie', 'KW REGIO', 'KW 51200', '07:00:00', '08:00:00', 75.0, 14.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(84, 'Poznań', 'Konin', 'Pociąg Regionalny', 'Koleje Wielkopolskie', 'KW REGIO', 'KW 51300', '08:15:00', '09:45:00', 105.0, 20.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(85, 'Poznań', 'Piła', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 51400', '06:00:00', '07:45:00', 120.0, 24.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(86, 'Gdańsk', 'Gdynia', 'Pociąg Regionalny', 'SKM Trójmiasto', 'SKM', 'SKM 101', '06:00:00', '06:25:00', 22.0, 5.00, 400, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(87, 'Gdynia', 'Gdańsk', 'Pociąg Regionalny', 'SKM Trójmiasto', 'SKM', 'SKM 102', '06:30:00', '06:55:00', 22.0, 5.00, 400, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(88, 'Gdańsk', 'Sopot', 'Pociąg Regionalny', 'SKM Trójmiasto', 'SKM', 'SKM 103', '07:00:00', '07:12:00', 11.0, 3.50, 400, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(89, 'Gdańsk', 'Elbląg', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 31300', '08:00:00', '09:10:00', 60.0, 15.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(90, 'Gdańsk', 'Hel', 'Pociąg Regionalny', 'PolRegio', 'REGIO Hel', 'REG 31400', '07:30:00', '09:30:00', 74.0, 18.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(91, 'Gdańsk', 'Słupsk', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 31500', '07:00:00', '09:00:00', 150.0, 30.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(92, 'Katowice', 'Gliwice', 'Pociąg Regionalny', 'Koleje Śląskie', 'KŚ REGIO', 'KS 41100', '06:15:00', '06:45:00', 27.0, 6.00, 350, 0, 'Pn-So', 1, '2026-06-12 07:05:33'),
(93, 'Katowice', 'Sosnowiec', 'Pociąg Regionalny', 'Koleje Śląskie', 'KŚ REGIO', 'KS 41200', '06:30:00', '06:45:00', 12.0, 4.00, 350, 0, 'Pn-So', 1, '2026-06-12 07:05:33'),
(94, 'Katowice', 'Bielsko-Biała', 'Pociąg Regionalny', 'Koleje Śląskie', 'KŚ REGIO', 'KS 41300', '07:00:00', '08:05:00', 65.0, 14.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(95, 'Bielsko-Biała', 'Katowice', 'Pociąg Regionalny', 'Koleje Śląskie', 'KŚ REGIO', 'KS 41301', '06:00:00', '07:05:00', 65.0, 14.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(96, 'Bielsko-Biała', 'Wisła', 'Pociąg Regionalny', 'Koleje Śląskie', 'KŚ REGIO', 'KS 41400', '08:30:00', '09:30:00', 45.0, 10.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(97, 'Katowice', 'Częstochowa', 'Pociąg Regionalny', 'Koleje Śląskie', 'KŚ REGIO', 'KS 41500', '07:30:00', '08:50:00', 75.0, 16.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(98, 'Łódź', 'Piotrków Tryb.', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 42300', '07:15:00', '08:00:00', 48.0, 10.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(99, 'Łódź', 'Kutno', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 42400', '06:45:00', '07:30:00', 60.0, 12.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(100, 'Lublin', 'Zamość', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 82100', '08:00:00', '09:45:00', 92.0, 19.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(101, 'Lublin', 'Chełm', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 82200', '09:00:00', '10:10:00', 67.0, 14.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(102, 'Rzeszów', 'Przemyśl', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 62300', '07:00:00', '08:00:00', 60.0, 12.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(103, 'Przemyśl', 'Rzeszów', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 62301', '08:30:00', '09:30:00', 60.0, 12.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(104, 'Olsztyn', 'Elbląg', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 71500', '08:30:00', '09:50:00', 80.0, 16.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(105, 'Szczecin', 'Koszalin', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 51500', '07:00:00', '09:00:00', 175.0, 32.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(106, 'Koszalin', 'Słupsk', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 51600', '08:00:00', '08:50:00', 55.0, 11.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(107, 'Słupsk', 'Ustka', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 51700', '09:00:00', '09:25:00', 18.0, 5.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(108, 'Szczecin', 'Świnoujście', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 51800', '07:30:00', '09:20:00', 107.0, 22.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(109, 'Koszalin', 'Kołobrzeg', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 51900', '08:30:00', '09:10:00', 35.0, 8.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(110, 'Toruń', 'Bydgoszcz', 'Pociąg Regionalny', 'Arriva RP', 'Arriva REG', 'ARR 31200', '06:00:00', '06:35:00', 35.0, 7.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(111, 'Bydgoszcz', 'Toruń', 'Pociąg Regionalny', 'Arriva RP', 'Arriva REG', 'ARR 31201', '07:00:00', '07:35:00', 35.0, 7.00, 300, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(112, 'Konin', 'Kalisz', 'Pociąg Regionalny', 'Koleje Wielkopolskie', 'KW REGIO', 'KW 51400', '08:00:00', '09:00:00', 65.0, 13.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(113, 'Kalisz', 'Ostrów Wlkp.', 'Pociąg Regionalny', 'Koleje Wielkopolskie', 'KW REGIO', 'KW 51500', '09:30:00', '10:00:00', 28.0, 6.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(114, 'Gorzów Wlkp.', 'Zielona Góra', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 52100', '07:00:00', '08:30:00', 105.0, 20.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(115, 'Zielona Góra', 'Gorzów Wlkp.', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 52101', '08:00:00', '09:30:00', 105.0, 20.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(116, 'Białystok', 'Suwałki', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 91200', '07:30:00', '09:30:00', 130.0, 25.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(117, 'Suwałki', 'Białystok', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 91201', '06:00:00', '08:00:00', 130.0, 25.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(118, 'Płock', 'Kutno', 'Pociąg Regionalny', 'Koleje Mazowieckie', 'KM REGIO', 'KM 42500', '07:00:00', '07:50:00', 55.0, 11.00, 200, 0, 'Pn-Pt', 1, '2026-06-12 07:05:33'),
(119, 'Opole', 'Katowice', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 71600', '06:30:00', '08:00:00', 100.0, 20.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(120, 'Jelenia Góra', 'Wałbrzych', 'Pociąg Regionalny', 'Koleje Dolnośląskie', 'KD REGIO', 'KD 71400', '07:00:00', '08:00:00', 48.0, 10.00, 200, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(121, 'Kielce', 'Radom', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 43100', '07:30:00', '09:00:00', 85.0, 17.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(122, 'Radom', 'Kielce', 'Pociąg Regionalny', 'PolRegio', 'REGIO', 'REG 43101', '08:00:00', '09:30:00', 85.0, 17.00, 250, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(123, 'Warszawa', 'Kraków', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-KR001', '07:00:00', '11:00:00', 295.0, 39.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(124, 'Kraków', 'Warszawa', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-WA001', '08:00:00', '12:00:00', 295.0, 39.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(125, 'Warszawa', 'Wrocław', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-WR001', '06:30:00', '11:00:00', 350.0, 49.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(126, 'Wrocław', 'Warszawa', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-WA002', '07:00:00', '11:30:00', 350.0, 49.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(127, 'Warszawa', 'Gdańsk', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-GD001', '09:00:00', '14:30:00', 340.0, 45.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(128, 'Gdańsk', 'Warszawa', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-WA003', '08:00:00', '13:30:00', 340.0, 45.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(129, 'Warszawa', 'Poznań', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-PO001', '07:30:00', '12:00:00', 310.0, 35.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(130, 'Poznań', 'Warszawa', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-WA004', '08:30:00', '13:00:00', 310.0, 35.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(131, 'Warszawa', 'Lublin', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-LU001', '10:00:00', '12:30:00', 170.0, 29.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(132, 'Lublin', 'Warszawa', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-WA005', '07:30:00', '10:00:00', 170.0, 29.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(133, 'Warszawa', 'Białystok', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-BI001', '11:00:00', '14:00:00', 195.0, 32.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(134, 'Warszawa', 'Katowice', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-KT001', '08:30:00', '13:00:00', 300.0, 39.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(135, 'Katowice', 'Warszawa', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-WA006', '07:00:00', '11:30:00', 300.0, 39.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(136, 'Warszawa', 'Szczecin', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-SZ001', '06:00:00', '12:30:00', 520.0, 59.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(137, 'Warszawa', 'Kielce', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-KI001', '09:00:00', '12:00:00', 180.0, 32.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(138, 'Warszawa', 'Rzeszów', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-RZ001', '07:00:00', '12:30:00', 350.0, 49.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(139, 'Warszawa', 'Zakopane', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-ZK001', '22:00:00', '04:30:00', 400.0, 55.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(140, 'Kraków', 'Wrocław', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-WR002', '08:30:00', '12:30:00', 270.0, 35.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(141, 'Kraków', 'Katowice', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-KT002', '09:00:00', '10:15:00', 78.0, 15.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(142, 'Kraków', 'Rzeszów', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-RZ002', '10:30:00', '13:00:00', 170.0, 29.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(143, 'Kraków', 'Zakopane', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-ZK002', '07:00:00', '09:15:00', 104.0, 19.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(144, 'Zakopane', 'Kraków', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-KR002', '16:00:00', '18:15:00', 104.0, 19.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(145, 'Kraków', 'Gdańsk', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-GD002', '05:30:00', '12:30:00', 630.0, 69.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(146, 'Kraków', 'Poznań', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-PO002', '07:00:00', '12:00:00', 430.0, 49.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(147, 'Wrocław', 'Poznań', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-PO003', '08:00:00', '10:30:00', 180.0, 29.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(148, 'Wrocław', 'Katowice', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-KT003', '09:00:00', '11:30:00', 190.0, 25.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(149, 'Poznań', 'Gdańsk', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-GD003', '06:00:00', '10:30:00', 310.0, 39.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(150, 'Łódź', 'Kraków', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-KR003', '08:00:00', '11:30:00', 250.0, 32.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(151, 'Łódź', 'Wrocław', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-WR003', '08:00:00', '11:30:00', 215.0, 32.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(152, 'Łódź', 'Poznań', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-PO004', '09:30:00', '12:30:00', 200.0, 29.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(153, 'Szczecin', 'Gdańsk', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-GD004', '07:00:00', '12:00:00', 365.0, 45.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(154, 'Katowice', 'Gdańsk', 'Autobus Dalekobieżny', 'FlixBus', 'FlixBus', 'FLX-GD005', '06:00:00', '13:00:00', 550.0, 65.99, 55, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(155, 'Warszawa', 'Radom', 'Autobus Regionalny', 'PKS Polonus', 'PKS Polonus', 'PKS-RA100', '06:00:00', '08:00:00', 100.0, 22.00, 50, 0, 'Pn-So', 1, '2026-06-12 07:05:33'),
(156, 'Radom', 'Warszawa', 'Autobus Regionalny', 'PKS Polonus', 'PKS Polonus', 'PKS-WA100', '06:30:00', '08:30:00', 100.0, 22.00, 50, 0, 'Pn-So', 1, '2026-06-12 07:05:33'),
(157, 'Kraków', 'Nowy Sącz', 'Autobus Regionalny', 'PKS Kraków', 'PKS Kraków', 'PKS-NS100', '07:30:00', '10:00:00', 115.0, 25.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(158, 'Nowy Sącz', 'Kraków', 'Autobus Regionalny', 'PKS Kraków', 'PKS Kraków', 'PKS-KR100', '06:00:00', '08:30:00', 115.0, 25.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(159, 'Kraków', 'Tarnów', 'Autobus Regionalny', 'PKS Kraków', 'PKS Kraków', 'PKS-TA100', '06:30:00', '08:00:00', 83.0, 18.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(160, 'Tarnów', 'Kraków', 'Autobus Regionalny', 'PKS Kraków', 'PKS Kraków', 'PKS-KR101', '07:00:00', '08:30:00', 83.0, 18.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(161, 'Lublin', 'Zamość', 'Autobus Regionalny', 'PKS Lublin', 'PKS Lublin', 'PKS-ZA100', '07:00:00', '09:00:00', 92.0, 20.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(162, 'Zamość', 'Lublin', 'Autobus Regionalny', 'PKS Lublin', 'PKS Lublin', 'PKS-LU100', '06:30:00', '08:30:00', 92.0, 20.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(163, 'Lublin', 'Chełm', 'Autobus Regionalny', 'PKS Lublin', 'PKS Lublin', 'PKS-CH100', '08:00:00', '09:30:00', 67.0, 15.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(164, 'Rzeszów', 'Przemyśl', 'Autobus Regionalny', 'PKS Rzeszów', 'PKS Rzeszów', 'PKS-PR100', '06:30:00', '07:45:00', 80.0, 17.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(165, 'Przemyśl', 'Rzeszów', 'Autobus Regionalny', 'PKS Rzeszów', 'PKS Rzeszów', 'PKS-RZ100', '07:00:00', '08:15:00', 80.0, 17.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(166, 'Kielce', 'Radom', 'Autobus Regionalny', 'PKS Kielce', 'PKS Kielce', 'PKS-RD100', '07:00:00', '08:30:00', 85.0, 18.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(167, 'Opole', 'Katowice', 'Autobus Regionalny', 'PKS Opole', 'PKS Opole', 'PKS-KT100', '06:30:00', '08:00:00', 100.0, 22.00, 50, 0, 'Pn-So', 1, '2026-06-12 07:05:33'),
(168, 'Olsztyn', 'Suwałki', 'Autobus Regionalny', 'PKS Olsztyn', 'PKS Olsztyn', 'PKS-SU100', '08:00:00', '11:00:00', 200.0, 35.00, 50, 0, 'Pn-Pt', 1, '2026-06-12 07:05:33'),
(169, 'Koszalin', 'Słupsk', 'Autobus Regionalny', 'PKS Koszalin', 'PKS Koszalin', 'PKS-SL100', '07:00:00', '08:00:00', 55.0, 12.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(170, 'Bielsko-Biała', 'Wisła', 'Autobus Regionalny', 'PKS Bielsko', 'PKS Bielsko', 'PKS-WI100', '08:00:00', '09:00:00', 45.0, 10.00, 45, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(171, 'Nowy Sącz', 'Zakopane', 'Autobus Regionalny', 'PKS Nowy Sącz', 'PKS Nowy Sącz', 'PKS-ZK100', '07:30:00', '09:30:00', 120.0, 22.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(172, 'Jelenia Góra', 'Wałbrzych', 'Autobus Regionalny', 'PKS Jelenia G.', 'PKS Jelenia G.', 'PKS-WB100', '07:00:00', '08:00:00', 48.0, 10.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(173, 'Gorzów Wlkp.', 'Szczecin', 'Autobus Regionalny', 'PKS Gorzów', 'PKS Gorzów', 'PKS-SZ100', '06:30:00', '08:30:00', 130.0, 25.00, 50, 0, 'Pn-So', 1, '2026-06-12 07:05:33'),
(174, 'Zielona Góra', 'Wrocław', 'Autobus Regionalny', 'PKS Zielona G.', 'PKS Zielona G.', 'PKS-WR100', '06:00:00', '08:30:00', 155.0, 30.00, 50, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(175, 'Kraków', 'Zakopane', 'Minibus', 'Neobus', 'Neobus Express', 'NEO-ZK001', '06:00:00', '07:45:00', 104.0, 25.00, 20, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(176, 'Zakopane', 'Kraków', 'Minibus', 'Neobus', 'Neobus Express', 'NEO-KR001', '16:00:00', '17:45:00', 104.0, 25.00, 20, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(177, 'Kraków', 'Nowy Sącz', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-NS001', '07:00:00', '08:45:00', 105.0, 20.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(178, 'Nowy Sącz', 'Kraków', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-KR001', '06:00:00', '07:45:00', 105.0, 20.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(179, 'Lublin', 'Zamość', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-ZA001', '08:00:00', '09:30:00', 92.0, 18.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(180, 'Zamość', 'Lublin', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-LU001', '07:00:00', '08:30:00', 92.0, 18.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(181, 'Rzeszów', 'Kraków', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-KR002', '06:30:00', '09:00:00', 170.0, 30.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(182, 'Kraków', 'Rzeszów', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-RZ001', '10:00:00', '12:30:00', 170.0, 30.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(183, 'Bielsko-Biała', 'Kraków', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-KR003', '07:00:00', '08:30:00', 80.0, 18.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(184, 'Kraków', 'Bielsko-Biała', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-BB001', '15:00:00', '16:30:00', 80.0, 18.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(185, 'Kielce', 'Kraków', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-KR004', '07:30:00', '09:30:00', 120.0, 22.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(186, 'Kraków', 'Kielce', 'Minibus', 'Mobilis', 'Mobilis', 'MOB-KI001', '14:00:00', '16:00:00', 120.0, 22.00, 18, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(187, 'Nowy Sącz', 'Zakopane', 'Minibus', 'Neobus', 'Neobus Express', 'NEO-ZK002', '08:00:00', '09:30:00', 95.0, 20.00, 20, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33'),
(188, 'Zakopane', 'Nowy Sącz', 'Minibus', 'Neobus', 'Neobus Express', 'NEO-NS001', '15:00:00', '16:30:00', 95.0, 20.00, 20, 0, 'Pn-Nd', 1, '2026-06-12 07:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `rezerwacje`
--

CREATE TABLE `rezerwacje` (
  `id` int(11) NOT NULL,
  `id_uzytkownika` int(11) NOT NULL,
  `id_polaczenia` int(11) NOT NULL,
  `data_podrozy` date NOT NULL,
  `liczba_miejsc` int(11) NOT NULL DEFAULT 1,
  `cena_calkowita` decimal(8,2) NOT NULL,
  `status` enum('zarezerwowany','oplacony','anulowany','zrealizowany') DEFAULT 'zarezerwowany',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `haslo` varchar(255) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(80) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`id`, `login`, `email`, `haslo`, `imie`, `nazwisko`, `telefon`, `created_at`) VALUES
(1, 'mixj', 'adrian.lesniak16@gmail.com', 'Maslo123$', 'Adrian', 'Lesniak', '782325306', '2026-12-11 23:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `polaczenia`
--
ALTER TABLE `polaczenia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_trasa` (`miasto_start`,`miasto_koniec`),
  ADD KEY `idx_odjazd` (`godzina_odjazdu`),
  ADD KEY `idx_typ` (`typ_transportu`),
  ADD KEY `idx_cena` (`cena`);

--
-- Indexes for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rez_user` (`id_uzytkownika`),
  ADD KEY `idx_rez_pol` (`id_polaczenia`),
  ADD KEY `idx_rez_data` (`data_podrozy`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `polaczenia`
--
ALTER TABLE `polaczenia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rezerwacje`
--
ALTER TABLE `rezerwacje`
  ADD CONSTRAINT `rezerwacje_ibfk_1` FOREIGN KEY (`id_uzytkownika`) REFERENCES `uzytkownicy` (`id`),
  ADD CONSTRAINT `rezerwacje_ibfk_2` FOREIGN KEY (`id_polaczenia`) REFERENCES `polaczenia` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
