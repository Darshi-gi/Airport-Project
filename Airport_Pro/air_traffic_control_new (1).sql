-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2019 at 12:12 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `air_traffic_control_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `akey` varchar(5) DEFAULT NULL,
  `title` varchar(70) DEFAULT NULL,
  `country` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airports`
--

INSERT INTO `airports` (`akey`, `title`, `country`) VALUES
('CMB', 'Bandaranaika', 'Sri Lanka'),
('LHR', 'Lahore', 'Pakistan'),
('KUL', 'Kuala Lumpur', 'Malaysia'),
('DXB', 'Dubai ', 'united arab emirates'),
('SYD', 'Sydney', 'Australia'),
('HND', 'Tokyo Haneda', 'Japan'),
('ICN', 'Seoul Incheon', 'South Korea'),
('DOH', 'Doha Hamad', 'Qatar'),
('HKG', 'Hong Kong', 'China'),
('NGO', 'Chubu Centrair Nagoya', 'Japan'),
('MUC', 'Munich', 'Germany'),
('LHR', 'London Heathrow', 'London'),
('NRT', 'Tokyo Narita', 'Japan'),
('ZRH', 'Zurich', 'Switzerland'),
('KIX', 'Kansai', 'Japan'),
('FRA', 'Frankfurt', 'Germany'),
('TPE', 'Taiwan Taoyuan', 'Taiwan'),
('AMH', 'Amsterdam Schiphol', 'Netherlands'),
('CPH', 'Copenhagen', 'Denmark'),
('SHA', 'Shanghai Hongqiao', 'China'),
('YVR', 'Vancouver', 'Canada'),
('BNE', 'Brisbane', 'Australia'),
('VIE', 'Vienna', 'Austria'),
('HEL', 'Helsinki-Vantaa', 'Finland'),
('CPT', 'Cape Town', 'South africa'),
('MEL', 'Melbourne', 'Australia'),
('CGN', 'Cologne / Bonn', 'Germany'),
('LCY', 'London City', 'London'),
('AKL', 'Auckland', 'New Zealand'),
('HAM', 'Hamburg', 'Germany'),
('DUR', 'Durban', 'South Africa'),
('CDG', 'Paris Charles de Gaulle', 'France'),
('DUS', 'Dusseldorf', 'Germany'),
('DEN', 'Denver', 'America'),
('JNB', 'Johannesburg', 'South Africa'),
('GMP', 'Seoul Gimpo', 'South Korea'),
('MAD', 'Madrid Barajas', 'Spain'),
('ATL', 'Hartsfield-Jackson', 'Atlanta'),
('CVG', 'Cincinnati/Northern Kentucky', 'America'),
('IAH', 'Houston George Bush', 'America'),
('CAN', 'Guangzhou', 'China'),
('LUX', 'Luxembourg', 'Luxembourg'),
('ORD', 'Chicago O\'Hare', 'America'),
('PRG', 'Prague', 'Prague'),
('BHX', 'Birmingham', 'England'),
('CSX', 'Changsha', 'China'),
('CGK', 'Jakarta', 'Indonesia'),
('HAK', 'Haikou Meilan', 'China'),
('ATH', 'Athens', 'Greece'),
('BCN', 'Barcelona', 'Spain'),
('XIY', 'Xi\'an', 'China'),
('OOL', 'Gold Coast', 'Australian '),
('BKK', 'Bangkok Suvarnabhumi', 'Thailand'),
('LIM', 'Lima', 'Peru'),
('SFO', 'San Francisco', 'America'),
('UIO', 'Quito', 'Ecuador'),
('YYZ', 'Toronto Pearson', 'Canada'),
('CHC', 'Christchurch', 'New Zealand'),
('PER', 'Perth', 'Australia'),
('BOG', 'Bogota', 'Colombia'),
('LGW', 'London Gatwick', 'England'),
('DFW', 'Dallas/Fort Worth', 'America'),
('SEA', 'Seattle-Tacoma', 'America'),
('GYD', 'Baku', 'Azerbaijan'),
('DEL', 'Delhi', 'India'),
('LIS', 'Lisbon', 'Portugal'),
('MCT', 'Muscat', 'Oman'),
('YUL', 'Montréal', 'Canada'),
('SVO', 'Moscow Sheremetyevo', 'Russia'),
('BOM', 'Mumbai', 'India'),
('SZX', 'Shenzhen', 'China'),
('HYD', 'Hyderabad', 'India'),
('FUK', 'Fukuoka', 'Japan'),
('GYE', 'Guayaquil', 'Ecuador'),
('BLR', 'Bengaluru Airport', 'India'),
('OSL', 'Oslo', 'Norway'),
('LAX', 'Los Angeles', 'America'),
('PEK', 'Beijing Capital', 'China'),
('ARN', 'Stockholm Arlanda', 'Swedan'),
('JFK', 'New York ', 'America'),
('CTU', 'Chengdu Shuangliu', 'China'),
('ADL', 'Adelaide', 'Australia'),
('MSP', 'Minneapolis St.Paul', 'America'),
('PHX', 'Phoenix', 'America'),
('OPO', 'Porto', 'Portugal'),
('DME', 'Moscow Domodedovo', 'Russia'),
('BOS', 'Boston Logan', 'America'),
('FCO', 'Rome Fiumicino', 'Italy'),
('MLA', 'Malta', 'Malta'),
('DUB', 'Dublin', 'Ireland'),
('HOU', 'Houston Hobby', 'America'),
('HAN', 'Hanoi Noi Bai', 'Vietnam'),
('AUH', 'Abu Dhabi', 'United Arab Emirates'),
('BAH', 'Bahrain', 'Bahrain'),
('BUD', 'Budapest', 'Hungary'),
('YHZ', 'Halifax', 'Canada'),
('WAW', 'Warsaw', 'Poland'),
('DTW', 'Detroit Metropolitan', 'America'),
('NCE', 'Nice', 'France'),
('MRU', 'Sir Seewoosagur Ramgoolam', 'Mauritius  ');

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `source` varchar(5) DEFAULT NULL,
  `destination` varchar(5) DEFAULT NULL,
  `flighttime` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`source`, `destination`, `flighttime`) VALUES
('CMB', 'LHR', 10),
('LHR', 'CMB', 12),
('KUL', 'HND', 5),
('NGO', 'HND', 7),
('YVR', 'FRA', 6),
('SHA', 'HEL', 5),
('HEL', 'DEN', 12),
('IAH', 'MAD', 4),
('CAN', 'LCY', 7),
('ATL', 'IAH', 8),
('LGW', 'YUL', 6),
('LIS', 'XIY', 6),
('SVO', 'UIO', 6),
('DEL', 'AMH', 3),
('CMB', 'DOH', 6),
('CPT', 'MRU', 4),
('WAW', 'DUB', 3),
('OPO', 'DME', 6),
('CTU', 'FUK', 6),
('KUL', 'DXB', 8),
('SYD', 'HND', 9),
('ICN', 'DOH', 2),
('HKG', 'NGO', 6),
('MUC', 'LHR', 12),
('NRT', 'ZRH', 8),
('KIX', 'FRA', 7),
('TPE', 'AMH', 4),
('CPH', 'SHA', 13),
('YVR', 'BNE', 5),
('VIE', 'HEL', 6),
('CPT', 'MEL', 8),
('CGN', 'LCY', 9),
('AKL', 'HAM', 12),
('DUR', 'CDG', 4),
('DEN', 'JNB', 4),
('GMP', 'MAD', 2),
('ATL', 'CVG', 9),
('IAH', 'CAN', 7),
('LUX', 'ORD', 4),
('BHX', 'CSX', 6),
('CGK', 'HAK', 2),
('ATH', 'BCN', 2),
('XIY', 'OOL', 3),
('BKK', 'LIM', 5),
('SFO', 'UIO', 2),
('YYZ', 'CHC', 3),
('PER', 'BOG', 8),
('LGW', 'DFW', 6),
('SEA', 'GYD', 13),
('DEL', 'LIS', 7),
('MCT', 'YUL', 9),
('SVO', 'BOM', 4),
('SZX', 'HYD', 5),
('FUK', 'GYE', 5),
('BLR', 'OSL', 3),
('LAX', 'PEK', 7),
('ARN', 'JFK', 6),
('CTU', 'ADL', 9),
('MSP', 'PHX', 5),
('OPO', 'DME', 3),
('BOS', 'FCO', 7),
('MLA', 'DUB', 4),
('HOU', 'HAN', 9),
('AUH', 'BAH', 6),
('BUD', 'YHZ', 7),
('WAW', 'DTW', 5),
('NCE', 'MRU', 7),
('OPO', 'FCO', 4),
('JFK', 'SFO', 8),
('XIY', 'LIM', 8),
('BOG', 'CHC', 1),
('GMP', 'CVG', 3),
('DEN', 'ICN', 6),
('DEN', 'AKL', 4),
('VIE', 'CGN', 3),
('GMP', 'MEL', 8),
('CMB', 'NRT', 7),
('HND', 'FRA', 5),
('FRA', 'IAH', 3),
('IAH', 'CMB', 7),
('MUC', 'TPE', 9),
('AKL', 'MRU', 6),
('YHZ', 'CTU', 6),
('PHX', 'MRU', 7),
('LHR', 'TPE', 4),
('ICN', 'CMB', 2),
('CPH', 'AMH', 3),
('KUL', 'CMB', 2),
('HND', 'LHR', 5),
('DXB', 'CMB', 4),
('FRA', 'MUC', 9),
('VIE', 'TPE', 10),
('SHA', 'DXB', 4),
('BKK', 'PRG', 7),
('CAN', 'BHX', 6),
('BUD', 'HAN', 12),
('YHZ', 'PEK', 8),
('DTW', 'FUK', 6),
('ARN', 'CMB', 3),
('PRG', 'ATH', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
