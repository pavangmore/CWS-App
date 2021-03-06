-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2021 at 11:37 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cws`
--

-- --------------------------------------------------------

--
-- Table structure for table `bee_auth_users`
--

CREATE TABLE `bee_auth_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role_id` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_auth_users`
--

INSERT INTO `bee_auth_users` (`id`, `user_id`, `password`, `role_id`, `status`, `last_updated`) VALUES
(11, 'CON_RAM', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_director', 1, '2021-09-28 21:00:00'),
(12, '96047', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_officer_admin', 1, '2021-09-28 21:00:00'),
(13, '96120', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_officer_finance', 1, '2021-09-28 21:00:00'),
(14, '96134', 'efabf7bdb108bada15a0872c575511a9', 'ro_office_asistant', 1, '2021-09-28 21:00:00'),
(15, 'CON_VRI', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer', 1, '2021-09-28 21:00:00'),
(16, '96196', 'efabf7bdb108bada15a0872c575511a9', 'ro_finance_director', 1, '2021-09-28 21:00:00'),
(17, '96208', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_officer_finance', 1, '2021-09-28 21:00:00'),
(18, '96136', 'efabf7bdb108bada15a0872c575511a9', 'ro_office_asistant', 1, '2021-09-28 21:00:00'),
(19, '96145', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer', 1, '2021-09-28 21:00:00'),
(20, '96178', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer', 1, '2021-09-28 21:00:00'),
(21, '96324', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(22, '96325', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(23, '96326', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(24, '96327', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(25, '96328', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(26, '96329', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(27, '96341', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(28, '96344', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(29, '96346', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(30, '96347', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(31, '96352', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(32, '96353', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(33, '96354', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(34, '96355', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(35, '96356', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(36, '96358', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(37, '96359', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(38, 'CON_NAGA', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(39, 'CON_MAHE', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(40, '96372', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(41, '96375', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(42, '96376', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(43, '96377', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(44, '96379', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(45, '96391', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(46, '96394', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(47, '96393', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(48, '96115', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer_program_coordinator', 1, '2021-09-28 21:00:00'),
(49, '96335', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(50, '96371', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(51, 'CON_RAMLA', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(52, 'CON_KAPIL', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(53, '96364', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(54, '96365', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(55, '96366', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(56, 'CON_SUBH', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(57, '96378', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(58, 'CON_RAMA', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(59, 'CON_SUSH', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(60, '', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(61, '96054', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_specialist_state_director', 1, '2021-09-28 21:00:00'),
(62, '96205', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer', 1, '2021-09-28 21:00:00'),
(63, '96230', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_officer_finance', 1, '2021-09-28 21:00:00'),
(64, '96253', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_officer', 1, '2021-09-28 21:00:00'),
(65, '96258', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer', 1, '2021-09-28 21:00:00'),
(66, '96259', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_officer', 1, '2021-09-28 21:00:00'),
(67, '96260', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_officer', 1, '2021-09-28 21:00:00'),
(68, '96262', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_officer', 1, '2021-09-28 21:00:00'),
(69, '96267', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_officer', 1, '2021-09-28 21:00:00'),
(70, '96301', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer', 1, '2021-09-28 21:00:00'),
(71, '96270', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_officer', 1, '2021-09-28 21:00:00'),
(72, '96271', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_officer', 1, '2021-09-28 21:00:00'),
(73, '96287', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_officer', 1, '2021-09-28 21:00:00'),
(74, '96298', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer', 1, '2021-09-28 21:00:00'),
(75, '96320', 'efabf7bdb108bada15a0872c575511a9', 'ro_office_asistant', 1, '2021-09-28 21:00:00'),
(76, '96321', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_facilitator', 1, '2021-09-28 21:00:00'),
(77, '96322', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer', 1, '2021-09-28 21:00:00'),
(78, '96323', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_facilitator', 1, '2021-09-28 21:00:00'),
(79, '96338', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(80, '96339', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_facilitator', 1, '2021-09-28 21:00:00'),
(81, '96340', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(82, 'CON_JANO', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_facilitator', 1, '2021-09-28 21:00:00'),
(83, 'CON_MADAN', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(84, '96357', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(85, '96367', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(86, '96368', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(87, '96369', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(88, '96370', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(89, '96374', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(90, '96384', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer', 1, '2021-09-28 21:00:00'),
(91, '96385', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(92, '96386', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(93, '96387', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(94, '96388', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(95, '96389', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(96, '96390', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(97, '96392', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(98, '96191', 'efabf7bdb108bada15a0872c575511a9', 'ro_program_implementer_program_coordinator', 1, '2021-09-28 21:00:00'),
(99, '96331', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(100, '96332', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(101, '96333', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(102, '96334', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(103, '96342', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(104, '96343', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(105, '96348', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(106, '96351', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(107, '96362', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(108, '96363', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(109, '96373', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(110, '96381', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(111, '96382', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(112, '96345', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(113, '96349', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(114, '96360', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00'),
(115, '96361', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(116, '96380', 'efabf7bdb108bada15a0872c575511a9', 'ro_community_mobilizer', 1, '2021-09-28 21:00:00'),
(117, '96383', 'efabf7bdb108bada15a0872c575511a9', 'ro_field_extension_worker', 1, '2021-09-28 21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bee_bank_control_sheet`
--

CREATE TABLE `bee_bank_control_sheet` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `account_holder` varchar(50) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `location` varchar(25) NOT NULL,
  `authorised_signatory_1` varchar(50) NOT NULL,
  `authorised_signatory_2` varchar(50) NOT NULL,
  `authorised_signatory_3` varchar(50) NOT NULL,
  `last_modified` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_bank_control_sheet`
--

INSERT INTO `bee_bank_control_sheet` (`id`, `bank_name`, `account_holder`, `account_number`, `location`, `authorised_signatory_1`, `authorised_signatory_2`, `authorised_signatory_3`, `last_modified`, `status`) VALUES
(1, 'Kotak Mahindra - Nacharam', 'FC Designated Account', '1612628989', 'Central Office', 'Dr. Rukmini Rao', 'Dr. Gnana Prakasam', 'G. Sucharitha', '2021-06-21 09:00:00', 1),
(2, 'SBI - Lalaguda - CO, FC-Utilisation', 'FC Utilisation', 'CA A/c.No. 35378815460', 'Central Office', 'Dr. Rukmini Rao', 'Dr. Gnana Prakasam', 'G. Sucharitha', '2021-06-21 09:00:00', 1),
(3, 'SBI - Lalaguda - APRC, FC-Utilisation', 'FC Utilisation', 'SB A/c No.32015705496', 'TRC', 'Rama Melkote', 'G. Sucharitha', 'P. Lakshmi Narayana', '2021-06-21 09:00:00', 1),
(4, 'SBI Patliputra - BRC, FC-Utilisation', 'FC Utilisation', 'SB A/c No.31876363274', 'BRC', 'Jasmin Kanta', 'Balendhu Mangalamurthy', 'K.K. Pandey', '2021-06-21 09:00:00', 1),
(5, 'SBI - Golmuri - JRC, FC-Utilisation', 'FC Utilisation', 'SB A/c No.3185604261', 'JRC', 'Prabal Sen', 'Monimoy Sinha', 'Rajshree', '2021-06-21 09:00:00', 1),
(6, 'SBI - Amarathurai - TNRC, FC-Utilisation', 'FC Utilisation', 'SB A/c No. 31905731954', 'TNRC', 'Shiv Kumar', 'Gowri Shankar', 'Dr. Gnana Prakasam', '2021-06-21 09:00:00', 1),
(7, 'SBI - Priyadrshini - ORC, FC-Utilisation         ', 'FC Utilisation', 'SB A/c No.31891118086', 'ORC', 'Asha Hans', 'Chandana Das', 'Balakrushna Panda', '2021-06-21 09:00:00', 1),
(8, 'BOB - Tarnaka - SUGWM, FC-Utilisation', 'FC Utilisation', 'SB A/c No.33260100002197', 'Central Office', 'Dr. Rukmini Rao', 'Dr. Gnana Prakasam', 'R.V.Rama Mohan', '2021-06-21 09:00:00', 1),
(9, 'SBI - Pataliputra - BRC, Local ', 'Local Bank Account', 'SB A/C.No.31110808820', 'BRC', 'Jasmin Kanta', 'Balendhu Mangalamurthy', 'K.K. Pandey', '2021-06-21 09:00:00', 1),
(10, 'SBI - Lalaguda - APRC, Local ', 'Local Bank Account', 'SB A/C.No.31135094677', 'TRC', 'Rama Melkote', 'G. Sucharitha', 'P. Lakshmi Narayana', '2021-06-21 09:00:00', 1),
(11, 'SBI  - Ambathurai  -  TNRC, Local ', 'Local Bank Account', 'SB A/c No. 32060203694', 'TNRC', 'Shiv Kumar', 'Gowri Shankar', 'Dr. Gnana Prakasam', '2021-06-21 09:00:00', 1),
(12, 'SBI  - Golmuri  -  JRC, Local ', 'Local Bank Account', 'SB A/c No. 31111269795', 'JRC', 'Prabal Sen', 'Monimoy Sinha', 'Rajshree', '2021-06-21 09:00:00', 1),
(13, 'SBI-Priyadarshini Marker-BBR-ORC', 'Local Bank Account', 'SB A/c No. 30128836390', 'ORC', 'Asha Hans', 'Chandana Das', 'Balakrushna Panda', '2021-06-21 09:00:00', 1),
(14, 'SBI - Lalaguda - Tarnaka, Local ', 'Local Bank Account', 'SB A/c No.32614208348', 'Central Office', 'Dr. Rukmini Rao', 'Dr. Gnana Prakasam', 'G. Sucharitha', '2021-06-21 09:00:00', 1),
(15, 'Corporation Bank, Tarnaka, Local ', 'Staff Gratuity Account', 'SB A/c No. 01/000497', 'Central Office', 'Dr. Rukmini Rao', 'Dr. Gnana Prakasam', 'G. Sucharitha', '2021-06-21 09:00:00', 1),
(16, 'Kotak Mahindra - Nacharam', 'FC Utilisation', '1612628927', 'Central Office', 'Dr. Rukmini Rao', 'Dr. Gnana Prakasam', 'G. Sucharitha', '2021-06-21 09:00:00', 1),
(17, 'Kotak Mahindra - Nacharam', 'FC Utilisation- Child Fund India', '1612628859', 'Central Office', 'Dr. Rukmini Rao', 'Dr. Gnana Prakasam', 'Monimoy Sinha', '2021-06-21 09:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bee_email_templates`
--

CREATE TABLE `bee_email_templates` (
  `id` int(11) NOT NULL,
  `template_id` varchar(100) NOT NULL,
  `template_name` varchar(100) NOT NULL,
  `template_content` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_email_templates`
--

INSERT INTO `bee_email_templates` (`id`, `template_id`, `template_name`, `template_content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'welcome_to_cws_-_verify_email', 'Welcome To CWS - Verify Email', '<!-- [if gte mso 9]>\r\n<xml>\r\n  <o:OfficeDocumentSettings>\r\n    <o:AllowPNG/>\r\n    <o:PixelsPerInch>96</o:PixelsPerInch>\r\n  </o:OfficeDocumentSettings>\r\n</xml>\r\n<![endif]--><!-- [if !mso]><!--><!--<![endif]--><!-- [if !mso]><!--><!--<![endif]--><!-- [if IE]><div class=\"ie-container\"><![endif]-->\r\n<p>&nbsp;</p>\r\n<!-- [if mso]><div class=\"mso-container\"><![endif]-->\r\n<table style=\"border-collapse: collapse; table-layout: fixed; border-spacing: 0; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; min-width: 320px; margin: 0 auto; background-color: #f9f9f9; width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"vertical-align: top;\">\r\n<td style=\"word-break: break-word; border-collapse: collapse !important; vertical-align: top;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td align=\"center\" style=\"background-color: #f9f9f9;\"><![endif]-->\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: transparent;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: transparent;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"color: #afb0c7; line-height: 170%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 170%;\"><span style=\"font-size: 14px; line-height: 23.8px;\">View Email in Browser</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #ffffff;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 20px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding-right: 0px; padding-left: 0px;\" align=\"center\"><img style=\"outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; clear: both; display: inline-block !important; border: none; height: auto; float: none; width: 32%; max-width: 179.2px;\" title=\"Image\" src=\"{%logo_url%}\" alt=\"Image\" width=\"179.2\" align=\"center\" border=\"0\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0000fe;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #0000fe;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 40px 10px 10px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding-right: 0px; padding-left: 0px;\" align=\"center\"><img style=\"outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; clear: both; display: inline-block !important; border: none; height: auto; float: none; width: 26%; max-width: 150.8px;\" title=\"Image\" src=\"images/image-1.png\" alt=\"Image\" width=\"150.8\" align=\"center\" border=\"0\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"color: #e5eaf5; line-height: 140%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 140%;\"><strong>T H A N K S&nbsp; &nbsp;F O R&nbsp; &nbsp;S I G N I N G&nbsp; &nbsp;U P !</strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 0px 10px 31px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"color: #e5eaf5; line-height: 140%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 140%;\"><span style=\"font-size: 28px; line-height: 39.2px;\"><strong><span style=\"line-height: 39.2px; font-size: 28px;\">Verify Your E-mail Address </span></strong></span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #ffffff;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 33px 55px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"line-height: 160%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 22px; line-height: 35.2px;\">Hi {%user_name%}, </span></p>\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 18px; line-height: 28.8px;\">You\'re almost ready to get started. Please click on the button below to verify your email address and enjoy working! </span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div align=\"center\"><!-- [if mso]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-spacing: 0; border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;font-family:\'Cabin\',sans-serif;\"><tr><td style=\"font-family:\'Cabin\',sans-serif;\" align=\"center\"><v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"\" style=\"height:46px; v-text-anchor:middle; width:234px;\" arcsize=\"8.5%\" stroke=\"f\" fillcolor=\"#ff6600\"><w:anchorlock/><center style=\"color:#FFFFFF;font-family:\'Cabin\',sans-serif;\"><![endif]--> <a style=\"box-sizing: border-box; display: inline-block; font-family: \'Cabin\',sans-serif; text-decoration: none; -webkit-text-size-adjust: none; text-align: center; color: #ffffff; background-color: #ff6600; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; max-width: 100%; overflow-wrap: break-word; word-break: break-word; word-wrap: break-word; mso-border-alt: none;\" href=\"{%base_url%}index.php/activate/account/{%user_id%}\" target=\"_blank\" rel=\"noopener\"> <span style=\"display: block; padding: 14px 44px 13px; line-height: 120%;\"><span style=\"font-size: 16px; line-height: 19.2px;\"><strong><span style=\"line-height: 19.2px; font-size: 16px;\">VERIFY YOUR EMAIL</span></strong></span></span> </a> <!-- [if mso]></center></v:roundrect></td></tr></table><![endif]--></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 33px 55px 60px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"line-height: 160%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"line-height: 160%; font-size: 14px;\"><span style=\"font-size: 18px; line-height: 28.8px;\">Thanks,</span></p>\r\n<p style=\"line-height: 160%; font-size: 14px;\"><span style=\"font-size: 18px; line-height: 28.8px;\">{%company_name%} Team</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #e5eaf5;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #e5eaf5;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: Cabin, sans-serif; height: 139px; width: 100%;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"height: 139px;\">\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 41px 55px 18px; font-family: Cabin, sans-serif; height: 139px;\" align=\"left\">\r\n<div style=\"color: #003399; line-height: 160%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 20px; line-height: 32px;\"><strong>Get in touch</strong></span></p>\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 16px; line-height: 25.6px; color: #000000;\">{%contact%}</span></p>\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 16px; line-height: 25.6px; color: #000000;\">{%email%}</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #003399;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #0000FE;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif; background-color: #0000fe; width: 100%;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"color: #fafafa; line-height: 180%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 180%;\"><span style=\"font-size: 16px; line-height: 28.8px;\">Copyrights &copy; {%company_name%} All Rights Reserved</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td></tr></table><![endif]--></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if mso]></div><![endif]-->\r\n<p>&nbsp;</p>\r\n<!-- [if IE]></div><![endif]-->', 1, '2021-06-28 09:24:14', '2021-06-28 13:22:03'),
(2, 'reset_your_cws_password', 'Reset Your CWS Password', '<!-- [if gte mso 9]>\r\n<xml>\r\n  <o:OfficeDocumentSettings>\r\n    <o:AllowPNG/>\r\n    <o:PixelsPerInch>96</o:PixelsPerInch>\r\n  </o:OfficeDocumentSettings>\r\n</xml>\r\n<![endif]--><!-- [if !mso]><!--><!--<![endif]--><!-- [if !mso]><!--><!--<![endif]--><!-- [if IE]><div class=\"ie-container\"><![endif]-->\r\n<p>&nbsp;</p>\r\n<!-- [if mso]><div class=\"mso-container\"><![endif]-->\r\n<table style=\"border-collapse: collapse; table-layout: fixed; border-spacing: 0; mso-table-lspace: 0pt; mso-table-rspace: 0pt; vertical-align: top; min-width: 320px; margin: 0 auto; background-color: #f9f9f9; width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"vertical-align: top;\">\r\n<td style=\"word-break: break-word; border-collapse: collapse !important; vertical-align: top;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td align=\"center\" style=\"background-color: #f9f9f9;\"><![endif]-->\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: transparent;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: transparent;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"color: #afb0c7; line-height: 170%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 170%;\"><span style=\"font-size: 14px; line-height: 23.8px;\">View Email in Browser</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #ffffff;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 20px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding-right: 0px; padding-left: 0px;\" align=\"center\"><img style=\"outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; clear: both; display: inline-block !important; border: none; height: auto; float: none; width: 32%; max-width: 179.2px;\" title=\"Image\" src=\"images/image-2.png\" alt=\"Image\" width=\"179.2\" align=\"center\" border=\"0\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0000fe;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #0000fe;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 40px 10px 10px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding-right: 0px; padding-left: 0px;\" align=\"center\"><img style=\"outline: none; text-decoration: none; -ms-interpolation-mode: bicubic; clear: both; display: inline-block !important; border: none; height: auto; float: none; width: 26%; max-width: 150.8px;\" title=\"Image\" src=\"images/image-1.png\" alt=\"Image\" width=\"150.8\" align=\"center\" border=\"0\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 0px 10px 31px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"color: #e5eaf5; line-height: 140%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 140%;\"><span style=\"font-size: 28px; line-height: 39.2px;\"><strong><span style=\"line-height: 39.2px; font-size: 28px;\">Forgot your password? No problem!</span></strong></span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #ffffff;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 33px 55px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"line-height: 160%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 22px; line-height: 35.2px;\">Hi {%user_name%}, </span></p>\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 18px; line-height: 28.8px;\">You can set a new one now! Click the link below.</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div align=\"center\"><!-- [if mso]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"border-spacing: 0; border-collapse: collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;font-family:\'Cabin\',sans-serif;\"><tr><td style=\"font-family:\'Cabin\',sans-serif;\" align=\"center\"><v:roundrect xmlns:v=\"urn:schemas-microsoft-com:vml\" xmlns:w=\"urn:schemas-microsoft-com:office:word\" href=\"\" style=\"height:46px; v-text-anchor:middle; width:231px;\" arcsize=\"8.5%\" stroke=\"f\" fillcolor=\"#ff6600\"><w:anchorlock/><center style=\"color:#FFFFFF;font-family:\'Cabin\',sans-serif;\"><![endif]--> <a style=\"box-sizing: border-box; display: inline-block; font-family: \'Cabin\',sans-serif; text-decoration: none; -webkit-text-size-adjust: none; text-align: center; color: #ffffff; background-color: #ff6600; border-radius: 4px; -webkit-border-radius: 4px; -moz-border-radius: 4px; width: auto; max-width: 100%; overflow-wrap: break-word; word-break: break-word; word-wrap: break-word; mso-border-alt: none;\" href=\"{%base_url%}index.php/reset-password/{%user_id%}\" target=\"_blank\" rel=\"noopener\"> <span style=\"display: block; padding: 14px 44px 13px; line-height: 120%;\"><span style=\"font-size: 16px; line-height: 19.2px;\"><strong><span style=\"line-height: 19.2px; font-size: 16px;\">Reset Your Password</span></strong></span></span> </a> <!-- [if mso]></center></v:roundrect></td></tr></table><![endif]--></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 33px 55px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"line-height: 160%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 18px; line-height: 28.8px;\">This link will expire after six hours. If you need a new one, you can request another on our .</span></p>\r\n<p style=\"font-size: 14px; line-height: 160%;\">&nbsp;</p>\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 18px; line-height: 28.8px;\">If you didn\'t request a password reset you can delete this email.</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 33px 55px 60px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"line-height: 160%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"line-height: 160%; font-size: 14px;\"><span style=\"font-size: 18px; line-height: 28.8px;\">Thanks,</span></p>\r\n<p style=\"line-height: 160%; font-size: 14px;\"><span style=\"font-size: 18px; line-height: 28.8px;\">{%company_name%} Team</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #e5eaf5;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #e5eaf5;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 41px 55px 18px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"color: #003399; line-height: 160%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 20px; line-height: 32px;\"><strong>Get in touch</strong></span></p>\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 16px; line-height: 25.6px; color: #000000;\">{%contact%}</span></p>\r\n<p style=\"font-size: 14px; line-height: 160%;\"><span style=\"font-size: 16px; line-height: 25.6px; color: #000000;\">{%email%}</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<div class=\"u-row-container\" style=\"padding: 0px; background-color: transparent;\">\r\n<div class=\"u-row\" style=\"margin: 0 auto; min-width: 320px; max-width: 600px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #0000fe;\">\r\n<div style=\"border-collapse: collapse; display: table; width: 100%; background-color: transparent;\"><!-- [if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td style=\"padding: 0px;background-color: transparent;\" align=\"center\"><table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width:600px;\"><tr style=\"background-color: #0000fe;\"><![endif]--> <!-- [if (mso)|(IE)]><td align=\"center\" width=\"600\" style=\"width: 600px;padding: 0px;border-top: 0px solid transparent;border-left: 0px solid transparent;border-right: 0px solid transparent;border-bottom: 0px solid transparent;\" valign=\"top\"><![endif]-->\r\n<div class=\"u-col u-col-100\" style=\"max-width: 320px; min-width: 600px; display: table-cell; vertical-align: top;\">\r\n<div style=\"width: 100% !important;\"><!-- [if (!mso)&(!IE)]><!-->\r\n<div style=\"padding: 0px; border: 0px solid transparent;\"><!--<![endif]-->\r\n<table style=\"font-family: \'Cabin\',sans-serif;\" role=\"presentation\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"overflow-wrap: break-word; word-break: break-word; padding: 10px; font-family: \'Cabin\',sans-serif;\" align=\"left\">\r\n<div style=\"color: #fafafa; line-height: 180%; text-align: center; word-wrap: break-word;\">\r\n<p style=\"font-size: 14px; line-height: 180%;\"><span style=\"font-size: 16px; line-height: 28.8px;\">Copyrights &copy; {%company_name%} All Rights Reserved</span></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if (!mso)&(!IE)]><!--></div>\r\n<!--<![endif]--></div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td><![endif]--> <!-- [if (mso)|(IE)]></tr></table></td></tr></table><![endif]--></div>\r\n</div>\r\n</div>\r\n<!-- [if (mso)|(IE)]></td></tr></table><![endif]--></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if mso]></div><![endif]-->\r\n<p>&nbsp;</p>\r\n<!-- [if IE]></div><![endif]-->', 1, '2021-06-28 11:34:13', '2021-06-29 04:51:13');
INSERT INTO `bee_email_templates` (`id`, `template_id`, `template_name`, `template_content`, `status`, `created_at`, `updated_at`) VALUES
(3, 'welcome_to_cws_-_confirm_email', 'Welcome To CWS - Confirm Email', '<p>&nbsp;</p>\r\n<!-- rpcampaign: trigger_funnel_transactional_verify-email_10042018_mu-->\r\n<p>&nbsp;</p>\r\n<div><center>\r\n<table style=\"background-color: #fff; border-collapse: collapse; mso-table-lspace: 0pt; margin: 0; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; height: 100%; padding: 0; width: 100%; direction: ltr;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; background-color: #f7f8fa;\" align=\"center\" valign=\"top\" width=\"100%\" height=\"100%\"><span style=\"color: #18130f; display: none; height: 0; line-height: 0; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; visibility: hidden; width: 0;\">Verify your email address to help us keep your account secure </span>\r\n<div>\r\n<div class=\"center\"><!-- [if gte mso 9]> \r\n<table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\"> \r\n<tr> \r\n<td align=\"center\" valign=\"top\"> <![endif]-->\r\n<table style=\"max-width: 600px; margin: 0 auto; background-color: #f7f8fa; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"desktop-block\" style=\"padding-top: 10px; padding-bottom: 0; mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" align=\"left\" valign=\"top\">\r\n<table style=\"min-width: 100%; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\" align=\"center\">\r\n<div class=\"desktop-block\" style=\"text-align: center; line-height: 15px; font-size: 10px; padding-bottom: 5px; padding-top: 6px; background-color: #f7f8fa; color: #000000;\">Can\'t see this email?<a style=\"text-decoration: none; color: #459fed;\" href=\"#\" target=\"_blank\" rel=\"noopener\" shape=\"rect\"> Click here<br /></a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"container-padding\" style=\"padding: 0px; margin: 0px; background-color: #f7f8fa;\" align=\"center\" valign=\"top\" width=\"100%\">\r\n<table style=\"max-width: 600px; background-color: #f7f8fa; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 25px 0px; background-color: #f7f8fa;\" align=\"left\" valign=\"top\"><!-- [if gte mso 9]> \r\n<table align=\'center\' border=\'0\' cellspacing=\'0\' cellpadding=\'0\' width=\'600\'> \r\n<tr> \r\n<td align=\'center\' valign=\'top\'> <![endif]-->\r\n<table style=\"min-width: 100%; border-collapse: collapse; mso-table-lspace: 0pt; max-width: 600px; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 40%; padding: 0px 0px 0px; background-color: #f7f8fa;\" align=\"left\"><img style=\"display: block;\" src=\"https://static.cdn.responsys.net/i2/responsysimages/wix//contentlibrary/matrix-blocks/media/wix_logo_retina.png\" width=\"110\" /></td>\r\n<td style=\"line-height: 24px; padding-top: 27px; color: #000; vertical-align: bottom; padding-right: 0px; text-align: right; padding-bottom: 5px; font-size: 16px;\" align=\"right\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if gte mso 9>\r\n</td>\r\n</tr>\r\n</table><![endif]--></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-top: 0; padding-bottom: 0; mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; background-color: #fff;\" align=\"center\" valign=\"top\">\r\n<table class=\"no-border-mob\" style=\"background-color: #fff; border-right: 1px solid #f7f8fa; border-left: 1px solid #f7f8fa; border-bottom: 1px solid #f7f8fa; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding-top: 0; padding-bottom: 0; mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; background-color: #fff;\" align=\"center\" valign=\"top\"><!-- [if (gte mso 9)|(IE)]> \r\n<table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\"> \r\n<tr> \r\n<td align=\"left\" valign=\"top\" width=\"600\"> <![endif]-->\r\n<table class=\"no-border-mob\" style=\"background-color: #fff; border-right: 1px solid #f7f8fa; border-left: 1px solid #f7f8fa; border-bottom: 1px solid #f7f8fa; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"desktop-block\" style=\"background-color: #fff; mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" align=\"left\" valign=\"top\"><!-- [if gte mso 9]> \r\n<table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\"> \r\n<tr> \r\n<td align=\"center\" valign=\"top\"> <![endif]-->\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 100%; background-color: #fff; padding: 0;\" align=\"left\"><img style=\"display: block; width: 100%;\" src=\"https://static.cdn.responsys.net/i2/responsysimages/wix//contentlibrary/matrix-blocks/media/premium_notification_info-neutral_22062016_all_header_badge_desktop.png\" width=\"670\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if gte mso 9> \r\n</td> \r\n</tr> \r\n</table> <![endif]--></td>\r\n</tr>\r\n<tr>\r\n<td style=\"mso-line-height-rule: exactly; padding: 0; margin: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; background-color: #fff;\" align=\"center\" valign=\"top\" width=\"100%\">\r\n<table style=\"max-width: 600px; background-color: #fff; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><!-- [if !mso]-->\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table class=\"mobile-block\" style=\"mso-hide: all; display: table!important;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td width=\"100%\">\r\n<div class=\"mobile-block-holder\" style=\"overflow: hidden; max-height: 0; max-width: 0; height: 0; width: 0;\">\r\n<div class=\"mobile-block\" style=\"mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; color: #fff; font-family: Arial, Helvetica, sans-serif; font-size: 16px; line-height: 24px; font-weight: bold; text-align: center;\">\r\n<table class=\"no-border-mob\" style=\"mso-hide: all; display: table; border-right: 1px solid #f7f8fa; border-left: 1px solid #f7f8fa; background-color: #fff; text-align: center; margin: 0 auto;\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding-top: 0px; width: 100%; padding-bottom: 0px;\" align=\"center\" valign=\"top\" width=\"100%\"><img class=\"mobile-block\" style=\"width: 100%; padding-bottom: 0px;\" src=\"https://static.cdn.responsys.net/i2/responsysimages/wix//contentlibrary/matrix-blocks/media/premium_notification_info-neutral_22062016_all_header_badge_mobile_new.png\" alt=\"#\" width=\"100%\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!--<![endif]--></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding-right: 0px; padding-bottom: 0px; padding-left: 0px; mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0pt; max-width: 570px; background-color: #fff; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"container-padding\" align=\"center\" valign=\"top\"><!-- [if (gte mso 9)|(IE)]> \r\n<table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600\"> \r\n<tr> \r\n<td align=\"left\" valign=\"top\" width=\"550\"> <![endif]-->\r\n<div style=\"display: inline-block; max-width: 550px; vertical-align: top; width: 100%; padding-top: 0px;\">\r\n<table style=\"max-width: 550px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mob-img-block-padding-top\" style=\"background-color: #fff; padding: 0px 22px; mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; color: #000; font-size: 24px; font-style: normal; font-weight: normal; line-height: 30px; letter-spacing: 0.7px; text-align: left;\">\r\n<div class=\"text-block-2\" style=\"padding-bottom: 0; text-align: center; font-weight: bold; font-size: 24px; letter-spacing: normal !important; color: #43515c;\">Welcome To <span style=\"font-size: 18px; line-height: 28.8px;\">{%company_name%}</span></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"mob-img-ribbon-padd\" style=\"line-height: 1px; max-width: 600px; height: 1px; max-height: 1px; padding: 15px 10px 5px; width: 100%;\" align=\"center\" valign=\"top\" width=\"100%\"><img class=\"padding-zero\" style=\"width: 100%; line-height: 1px; height: 1px; max-height: 1px; display: block;\" src=\"https://static.cdn.responsys.net/i2/responsysimages/wix//contentlibrary/matrix-blocks/marketing/dotted_line_22_09_2016_black_595x1_body_desktop.png\" alt=\"#\" width=\"550\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"mob-img-block-padding-top mob-img-block-padding-bottom\" style=\"font-weight: normal; padding: 0px 22px; font-size: 14px; line-height: 18px; color: #333; text-align: left; padding-top: 25px; padding-bottom: 20px;\" align=\"left\"><span class=\"text-block\" style=\"font-weight: normal; font-size: 14px; line-height: 18px;\"> Let us know if this is really your email address, to help us keep your account and website&nbsp;secure.<br /><br />Confirm your email and let&rsquo;s get&nbsp;started! </span></td>\r\n</tr>\r\n<tr>\r\n<td class=\"\" style=\"padding: 40px 0px 30px 0px; text-align: center;\">\r\n<table style=\"display: inline-block;\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"mob-pad\" style=\"border-radius: 40px; display: block; text-align: center; width: 200px; margin: 0 auto; padding: 14px 0px; font-size: 17px; background-color: #459fed;\" align=\"left\" bgcolor=\"#B13DAC\"><a style=\"color: #fff; font-weight: normal; font-family: Helvetica, Arial, sans-serif; text-decoration: none; width: 100%; display: inline-block;\" href=\"{%base_url%}index.php/activate/account/{%user_id%}\">Confirm Email Now </a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"mob-img-ribbon-padd\" style=\"line-height: 1px; max-width: 600px; height: 1px; max-height: 1px; padding: 15px 10px 15px; width: 100%;\" align=\"center\" valign=\"top\" width=\"100%\"><img class=\"padding-zero\" style=\"width: 100%; line-height: 1px; height: 1px; max-height: 1px; display: block;\" src=\"https://static.cdn.responsys.net/i2/responsysimages/wix//contentlibrary/matrix-blocks/marketing/dotted_line_22_09_2016_black_595x1_body_desktop.png\" alt=\"#\" width=\"550\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"container-padding\" style=\"font-weight: normal; font-size: 10px; line-height: 15px; color: #858f96; padding-bottom: 25px; font-family: Arial;\" align=\"center\"><span style=\"font-weight: normal; font-size: 10px; line-height: 15px;\"> Need help? Visit the {%contact%} or {%email%}. </span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<!-- [if gte mso 9> \r\n</td> \r\n</tr> \r\n</table> <![endif]--></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if gte mso 9> \r\n</td> \r\n</tr> \r\n</table> <![endif]--></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if gte mso 9>\r\n</td>\r\n</tr>\r\n</table><![endif]--></div>\r\n</div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"disclaimer mobile-disclaimer\" style=\"mso-line-height-rule: exactly; padding: 0; margin: 0; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; background-color: #f7f8fa; padding-top: 15px;\" align=\"center\" valign=\"top\" width=\"100%\">\r\n<table style=\"background-color: #f7f8fa; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"mso-line-height-rule: exactly; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%; padding: 10px 10px 0 10px;\" align=\"left\" valign=\"top\">\r\n<table style=\"min-width: 100%; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; -ms-text-size-adjust: 100%; -webkit-text-size-adjust: 100%;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align: center;\" colspan=\"2\" align=\"center\">\r\n<div class=\"disclaimer\" style=\"text-align: center; font-size: 10px; color: #333333; padding-bottom: 10px; border: 0; background-color: #f7f8fa;\">Please do not reply to this email <br /><br />{%company_name%} Team<br /><br /><br /></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</center></div>\r\n<table style=\"border: 0px; padding: 0px; margin: 0px; position: absolute; display: none; float: left;\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"font-size: 1px; line-height: 1px; padding: 0px;\" height=\"1\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, '2021-06-29 04:42:40', '2021-06-29 04:43:47'),
(4, 'reset_your_password_-_cws', 'Reset Your Password - CWS', '<p>&nbsp;</p>\r\n<!-- [if gte mso 9]><xml>\r\n<o:OfficeDocumentSettings>\r\n<o:AllowPNG/>\r\n<o:PixelsPerInch>96</o:PixelsPerInch>\r\n</o:OfficeDocumentSettings>\r\n</xml><![endif]-->\r\n<p>&nbsp;</p>\r\n<table class=\"em_full_wrap\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#f7f6f7\"><!-- Header Section Start -->\r\n<tbody>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\">\r\n<table class=\"em_main_table\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 600px;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_hide\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; display: none !important; font-size: 1px; line-height: 1px; height: 20px;\" bgcolor=\"#f7f6f7\" height=\"20\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly; font-size: 1px; line-height: 1px; height: 2px;\" bgcolor=\"#086b61\" height=\"2\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_aside10\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; padding: 0px 34px;\" align=\"center\" valign=\"top\" bgcolor=\"#ffffff\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 23px; font-size: 1px; line-height: 1px;\" height=\"23\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" valign=\"top\">\r\n<table class=\"em_wrapper\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 110px;\" border=\"0\" width=\"110\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_hide\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; display: none !important; font-size: 1px; line-height: 1px; height: 9px;\" height=\"9\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\"><a style=\"border-collapse: collapse; mso-line-height-rule: exactly; color: #086b61 !important; text-decoration: none;\" href=\"http://email.reply.outdoorsy.co/c/eJxVkMFOwzAQRL-mviAi2-va8cEHSFuQEHAgVdRTlDibJiipQ-w25O8xN5BWq9FIM3q7frmWAcdpqAKWN5x97y5l35goy9fxBKrJuiwTz8oW-fd0Xj8LeSCNqWrWVkhmtNhP4TcwuHNZq7ZOgYKgqZYS21RKm2pGKasabgXeA-kNp5wyyoABCICEJYeMC_3I91xsQVOmNoLOOA1r4q6hcW72a2Id6QwqoYQARlFrWXMmmVDaUqgboEjrlgymC2HyG3jY8EOcZVn-dYzRI_7vwZE76nK7nvdH-3XcXp7S3a19yd9ueZqT2XQ4DC7yjFUIHS5-7EOXWEuC-SiOcedzdfGxKT7t7n2X_QBbr2t0\" target=\"_blank\" rel=\"noopener\"><img style=\"border: 0 !important; outline: none !important; display: block; max-width: 110px; font-family: Arial, sans-serif; font-size: 16px; line-height: 20px; color: #000000;\" src=\"https://dgx9rrgrsfte9.cloudfront.net/wp-content/uploads/2018/09/03132354/header_logo.png\" alt=\"Outdoorsy\" width=\"110\" height=\"27\" border=\"0\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- [if gte mso 9]></td><td valign=\"top\"><![endif]-->\r\n<table class=\"em_wrapper\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 150px;\" border=\"0\" width=\"150\" cellspacing=\"0\" cellpadding=\"0\" align=\"right\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_center\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; text-align: center !important; font-family: \'Gotham Narrow\', Arial, sans-serif; font-size: 12px; line-height: 18px; color: #292d2e;\" align=\"center !important\">Need help? <a style=\"border-collapse: collapse; mso-line-height-rule: exactly; text-decoration: underline; color: #086b61; font-weight: 500;\" href=\"mailto:{%email%}\" target=\"_blank\" rel=\"noopener\">Contact us</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 32px; font-size: 1px; line-height: 1px;\" height=\"32\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<!-- Header Section End --> <!-- Header Content Right Image Section Start -->\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\">\r\n<table class=\"em_main_table\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 600px;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#ffffff\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_aside10\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; padding: 0px 34px;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#f7f6f7\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 24px; font-size: 1px; line-height: 1px;\" height=\"24\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_aside10\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; padding: 0px 25px;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" valign=\"top\">\r\n<table class=\"em_wrapper\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 133px;\" border=\"0\" width=\"133\" cellspacing=\"0\" cellpadding=\"0\" align=\"right\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\"><a style=\"border-collapse: collapse; mso-line-height-rule: exactly; color: #086b61 !important; text-decoration: none;\" href=\"#\" target=\"_blank\" rel=\"noopener\"><img style=\"border: 0 !important; outline: none !important; display: block; max-width: 133px; font-family: Arial, sans-serif; font-size: 16px; line-height: 20px; color: #000000;\" src=\"https://dgx9rrgrsfte9.cloudfront.net/wp-content/uploads/2018/09/03132353/right_image.png\" alt=\"\" width=\"133\" height=\"65\" border=\"0\" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table class=\"em_wrapper\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 320px;\" border=\"0\" width=\"320\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 3px; font-size: 1px; line-height: 1px;\" height=\"3\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_defaultlink\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; font-family: \'Gotham Narrow\', Arial, sans-serif; font-size: 24px; line-height: 30px; color: #2a2d2e; font-weight: bold;\" align=\"left\">We got a request to reset your Outdoorsy password</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 22px; font-size: 1px; line-height: 1px;\" height=\"22\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<!-- Header Content Right Image Section End --> <!-- Content Section Start -->\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\">\r\n<table class=\"em_main_table\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 600px;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#ffffff\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_aside10\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; padding: 0px 34px;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 35px; font-size: 1px; line-height: 1px;\" height=\"35\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_defaultlink\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; font-family: \'Gotham Narrow\', Arial, sans-serif; font-size: 16px; line-height: 24px; color: #2a2d2e;\" align=\"left\">Forgot your password? No problem - it happens to everyone!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 30px; font-size: 1px; line-height: 1px;\" height=\"30\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 214px; border-radius: 4px;\" border=\"0\" width=\"214\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#42873f\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly; font-family: \'Gotham Narrow\', Arial, sans-serif; font-size: 16px; color: #ffffff; font-weight: 500; height: 50px;\" align=\"center\" valign=\"middle\" height=\"50\"><a style=\"border-collapse: collapse; mso-line-height-rule: exactly; text-decoration: none; color: #ffffff; display: block; line-height: 45px;\" href=\"{%base_url%}index.php/reset-password/{%user_id%}\" target=\"_blank\" rel=\"noopener\">Reset Your Password</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 30px; font-size: 1px; line-height: 1px;\" height=\"30\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_defaultlink\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; font-family: \'Gotham Narrow\', Arial, sans-serif; font-size: 16px; line-height: 24px; color: #2a2d2e;\" align=\"left\">If you ignore this message, your password won\'t be changed.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 30px; font-size: 1px; line-height: 1px;\" height=\"30\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 1px; font-size: 1px; line-height: 1px;\" bgcolor=\"#eaecee\" height=\"1\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 36px; font-size: 1px; line-height: 1px;\" height=\"36\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<!-- Content Section End --> <!-- Real people Here to help Section Start -->\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\">\r\n<table class=\"em_main_table\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 600px;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#ffffff\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_aside10\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; padding: 0px 34px;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly; padding-right: 32px;\" align=\"right\" valign=\"top\"><img style=\"border: 0 !important; outline: none !important; display: block; max-width: 53px; font-family: Arial, sans-serif; font-size: 16px; line-height: 20px; color: #000000;\" src=\"https://dgx9rrgrsfte9.cloudfront.net/wp-content/uploads/2018/09/03132333/image9.jpg\" alt=\"\" width=\"53\" height=\"\" border=\"0\" /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#f7f6f7\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 25px; font-size: 1px; line-height: 1px;\" height=\"25\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_side10\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; width: 25px;\" width=\"25\">&nbsp;</td>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly; width: 64px;\" align=\"left\" valign=\"top\" width=\"64\"><img style=\"border: 0 !important; outline: none !important; display: block; max-width: 83px; font-family: Arial, sans-serif; font-size: 16px; line-height: 20px; color: #000000;\" src=\"https://dgx9rrgrsfte9.cloudfront.net/wp-content/uploads/2020/05/15113231/CS-Icon.png\" alt=\"\" width=\"64\" height=\"61\" border=\"0\" /></td>\r\n<td class=\"em_side10\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; width: 16px;\" width=\"16\">&nbsp;</td>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"left\" valign=\"top\">\r\n<table class=\"em_wrapper\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 100% !important;\" border=\"0\" width=\"100% !important\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_defaultlink\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; font-family: \'Gotham Narrow\', Arial, sans-serif; font-size: 16px; line-height: 20px; color: #2a2d2e; font-weight: bold; padding-top: 3px;\" align=\"left\">Real people. Here to help.</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly; font-family: \'Gotham Narrow\', Arial, sans-serif; font-size: 14px; line-height: 22px; color: #2a2d2e; padding-top: 5px;\" align=\"left\">Have a question? Give us a call at <a style=\"border-collapse: collapse; mso-line-height-rule: exactly; text-decoration: underline; color: #086b61; white-space: nowrap;\" href=\"tel:18777237232\" target=\"_blank\" rel=\"noopener\">{%contact%}</a> to chat with a Customer Success representative.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td class=\"em_side10\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; width: 10px;\" width=\"10\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 25px; font-size: 1px; line-height: 1px;\" height=\"25\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly; font-family: \'Gotham Narrow\', Arial, sans-serif; font-size: 14px; line-height: 22px; color: #2a2d2e; padding-top: 32px;\" align=\"left\">For your safety, please conduct any financial transactions through the Outdoorsy platform. <a style=\"border-collapse: collapse; mso-line-height-rule: exactly; box-sizing: border-box; color: #086b61; text-decoration: underline;\" href=\"http://email.reply.outdoorsy.co/c/eJxVkE1PwzAMhn_NckGt8rU2OeQAHQMJAQc6TZyqLEnXorQJbbbSf4-5IJAs-5VlP_Lrebk0yQ3R6-Saq5vmPoxNbxXI5nl4Z6Wtuqrij6U51l_xvH4ciz2ySp9Iqx2anHF9TD8LPpybU9meBMOMYyGLwrWiKIyQBGOiLTXcZQz1imKKCSaMMMYZy0m-ryiXd_Se8i2TmJQbjicX_ZqHS7IhTPOam4A6xTUuhZYY89JIBhghNeNOAN7QwnLkVZdSnDfsdkP3EMuy_GMM0Oucj1CiXjNoDJexN-A8-x3LbA-mkl_R_PczYBB0s13P9wfzediOD2J3bZ_ql2stajQpwPoAhw86pc4t89CnLjcGJfV2PECuJz3OQILv3rzuqm8J2nsS\">Learn more here</a>.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 48px; font-size: 1px; line-height: 1px;\" height=\"48\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<!-- //Real people Here to help Section End --> <!-- Footer Section Start -->\r\n<tr>\r\n<td style=\"border-collapse: collapse; mso-line-height-rule: exactly;\" align=\"center\" valign=\"top\">\r\n<table class=\"em_main_table\" style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px; width: 600px;\" border=\"0\" width=\"600\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" bgcolor=\"#f7f6f7\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_aside10\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; padding: 0px 10px !important;\" align=\"center\" valign=\"top\">\r\n<table style=\"border-collapse: collapse; mso-table-lspace: 0px; mso-table-rspace: 0px;\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 32px; font-size: 1px; line-height: 1px;\" height=\"32\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_defaultlink\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; font-family: \'Gotham Narrow\', Arial, sans-serif; font-size: 14px; line-height: 22px; color: #6e7275;\" align=\"left\">Copyright &copy; 2021. All rights reserved.<br />Sent with love by {%company_name%}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_h20\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; height: 26px; font-size: 1px; line-height: 1px;\" height=\"26\">&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"em_hide\" style=\"border-collapse: collapse; mso-line-height-rule: exactly; display: none !important; line-height: 1px; min-width: 600px; background-color: #f7f6f7;\" bgcolor=\"#f7f6f7\"><img style=\"border: 0 !important; outline: none !important; max-height: 1px; min-height: 1px; display: block; width: 600px; min-width: 600px;\" src=\"https://dgx9rrgrsfte9.cloudfront.net/wp-content/uploads/2018/09/03132405/spacer.gif\" alt=\"\" width=\"600\" height=\"1\" border=\"0\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<!-- Footer Section End --></tbody>\r\n</table>', 1, '2021-06-29 04:53:04', '2021-06-29 04:53:04');

-- --------------------------------------------------------

--
-- Table structure for table `bee_forms`
--

CREATE TABLE `bee_forms` (
  `id` int(11) NOT NULL,
  `form_id` varchar(35) NOT NULL,
  `form_name_eng` varchar(100) NOT NULL,
  `form_description_eng` text NOT NULL,
  `form_name_hin` varchar(100) NOT NULL,
  `form_description_hin` text NOT NULL,
  `form_name_odia` text DEFAULT NULL,
  `form_description_odia` text DEFAULT NULL,
  `form_name_tel` text DEFAULT NULL,
  `form_description_tel` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_forms`
--

INSERT INTO `bee_forms` (`id`, `form_id`, `form_name_eng`, `form_description_eng`, `form_name_hin`, `form_description_hin`, `form_name_odia`, `form_description_odia`, `form_name_tel`, `form_description_tel`, `status`, `created_at`) VALUES
(1, '20210630063320', 'Questions have to be asked to Mothers between  15 to 49 yrs of age', 'Consent Question Information: You were randomly selected to participate in a survey of the NGO Welthungerhilfe which will help to improve its projects. I would like to ask you to provide your open and objective responses regarding your situation. There are no right or wrong answers. Your participation is entirely voluntary. The information you provide will be kept confidential and will in no way affect your participation in our projects. ', '?????? ?????????????????? ?????? ?????? 15 ?????? 49 ???????????? ?????? ?????????????????? ?????? ??????  ????????????', '.??????????????? ???????????? 1: ???????????? ?????????????????? ???????????????????????????????????????????????? ???????????? ??????  ?????????????????? ?????????????????? ??????????????????????????? ????????? ?????? ?????? ??????????????????????????? ????????? ????????? ???????????? ?????? ????????? ???????????? ????????? ??????| ?????? ??????????????????????????? ?????????????????? ???????????? ?????????????????????????????? ????????? ??????????????? ???????????? ????????? ????????? ?????????????????? ?????? ?????????????????? ?????? ????????? ?????? ?????? ???????????? ?????????????????? ??????  ?????????????????? ?????? ???????????? ???????????? ?????? ??????????????? ??????????????????| ????????????????????? ?????? ???????????? ????????? ?????? ????????? ???????????? ??????| ???????????? ?????????????????????  ??????????????????????????????  ?????? ?????????????????? ????????? ??????????????? ?????? ??????????????? ?????????????????????????????? ????????? ???????????? ???????????????????????? ?????? ???????????????????????? ???????????? ??????????????????', NULL, NULL, NULL, NULL, 1, '2021-06-30 06:33:20'),
(2, '20210702070303', 'Screening', 'test', '', '', NULL, NULL, NULL, NULL, 1, '2021-07-02 07:03:03'),
(3, '20210702073415', 'MDDW', 'MDDW', '', '', NULL, NULL, NULL, NULL, 1, '2021-07-02 07:34:15'),
(4, '20210702085125', 'MDDC', 'MDDC', '????????????????????????', '????????????????????????', NULL, NULL, NULL, NULL, 1, '2021-07-02 08:51:25'),
(5, '20210702123306', 'Drinking Water', 'Drinking Water', '????????? ??????', '????????? ??????\r\n', NULL, NULL, NULL, NULL, 1, '2021-07-02 12:33:06'),
(6, '20210702125515', 'MAHFP', 'MAHFP', '???????????????????????????', '???????????????????????????', NULL, NULL, NULL, NULL, 1, '2021-07-02 12:55:15'),
(7, '20210702125659', 'Access to services', 'Access to services', '?????????????????? ?????? ???????????????', '?????????????????? ?????? ???????????????', NULL, NULL, NULL, NULL, 1, '2021-07-02 12:56:59'),
(8, '20210702055527', 'Screening during Census', 'Screening during Census', '', '', NULL, NULL, NULL, NULL, 1, '2021-07-02 17:55:27'),
(9, '20210702055905', 'Screening before PD', 'Screening before PD', '', '', NULL, NULL, NULL, NULL, 1, '2021-07-02 17:59:05'),
(10, '20210703075315', 'Survey for literacy', 'Survey for literacy', '???????????????????????? ?????? ????????? ???????????????????????????', '???????????????????????? ?????? ????????? ???????????????????????????', NULL, NULL, NULL, NULL, 1, '2021-07-03 07:53:15'),
(11, '20210703091955', 'Gender gap analysis', 'Gender gap analysis', '??????????????? ????????? ??????????????? ????????? ????????????????????????', '??????????????? ????????? ??????????????? ????????? ????????????????????????\r\n', NULL, NULL, NULL, NULL, 1, '2021-07-03 09:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `bee_form_question`
--

CREATE TABLE `bee_form_question` (
  `id` int(11) NOT NULL,
  `form_id` varchar(35) NOT NULL,
  `question_id` varchar(35) NOT NULL,
  `question_eng` text NOT NULL,
  `question_hin` text NOT NULL,
  `field_type` enum('input','none') NOT NULL,
  `option1_eng` text DEFAULT NULL,
  `option1_hin` text DEFAULT NULL,
  `option2_eng` text DEFAULT NULL,
  `option2_hin` text DEFAULT NULL,
  `option3_eng` text DEFAULT NULL,
  `option3_hin` text DEFAULT NULL,
  `option4_eng` text DEFAULT NULL,
  `option4_hin` text DEFAULT NULL,
  `option5_eng` text DEFAULT NULL,
  `option5_hin` text DEFAULT NULL,
  `option6_eng` text DEFAULT NULL,
  `option6_hin` text DEFAULT NULL,
  `option7_eng` text DEFAULT NULL,
  `option7_hin` text DEFAULT NULL,
  `option8_eng` text DEFAULT NULL,
  `option8_hin` text DEFAULT NULL,
  `option9_eng` text DEFAULT NULL,
  `option9_hin` text DEFAULT NULL,
  `option10_eng` text DEFAULT NULL,
  `option10_hin` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_form_question`
--

INSERT INTO `bee_form_question` (`id`, `form_id`, `question_id`, `question_eng`, `question_hin`, `field_type`, `option1_eng`, `option1_hin`, `option2_eng`, `option2_hin`, `option3_eng`, `option3_hin`, `option4_eng`, `option4_hin`, `option5_eng`, `option5_hin`, `option6_eng`, `option6_hin`, `option7_eng`, `option7_hin`, `option8_eng`, `option8_hin`, `option9_eng`, `option9_hin`, `option10_eng`, `option10_hin`) VALUES
(6, '20210630063320', '20210630122843', 'Do you want to participate in the survey?', '???????????? ?????? ??????????????????????????? ????????? ????????? ???????????? ??????????????? ??????????', 'input', 'Yes', '?????????', 'No', '????????????', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(7, '20210630063320', '20210630011236', 'Proceed only if Yes', '???????????? ????????? ???????????? ?????? ?????? ????????? ?????????', 'none', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '20210630063320', '20210630011956', 'Name of Mother', '????????? ?????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '20210630063320', '20210630012020', 'Age of Mother', '????????? ?????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '20210630063320', '20210630012046', 'Name of Father', '???????????? ?????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '20210630063320', '20210630012106', 'How many members in the household', '?????? ????????? ??????????????? ??????????????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '20210630063320', '20210630012121', 'What is the name of the head of the household', '?????????????????? ?????? ?????????????????? ?????? ????????? ???????????? ???????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '20210630063320', '20210630012136', 'What is the sex of the head of household?', '?????????????????? ?????? ???????????? ???????????? ???????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '20210630063320', '20210630012151', 'Location-admin boundary cascade', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '20210702070303', '20210702070350', 'Do you have children less than 5 years age in the family?', '???????????? ???????????? ?????????????????? ????????? 5 ????????? ?????? ?????? ???????????? ?????? ??????????????? ??????????', 'input', 'Yes', '?????????', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '20210702073415', '20210702084219', 'During the day and night of yesterday, did you consume', '???????????? ???????????? ?????? ???????????? ????????? ???????????? ????????? ???????????? ?????? ?', 'input', 'GRAINS, WHITE ROOTS AND TUBERS (potatoes, white sweet-potatoes; Raw green banana; Yam- elephant foot, casava, colocassia; Crereals-rice, white maize, orange maize, wheat, different types of millets,Oats , Wheat- Flour ( Maida & Ata), dalia, suji, noodles; rice - Puffed rice, flattened rice, poped rice, rice powder, rice cakes)', '???????????? ?????? ????????? ????????????- ???????????? ????????? ,??????????????? ????????????, ???????????????,???????????? , ?????????????????? ,??????????????? ,???????????????, ???????????? ,???????????? ???????????? ???????????? ???????????? , ??????????????????, ????????????,???????????? ?????????????????????', 'PULSES (Pulses- lentiles, chick pea, black gram, green gram, dried peas, kurthi, ; Legumes; soya beans, soya chunks / mince, horse gram, Cow pea,Flat bean seeds (dried), cluster beans, Kidney beans)', '????????? ????????? ????????????', 'NUTS AND SEEDS (Nuts- peanuts / ground nuts,; Seeds- sesame ( naru); pumpkin seed, jackfruit seeds, poppy seeds)', '???????????? ??? ????????? ???????????? ?????????????????????, ???????????????, ??????????????? ?????? ?????????, ', 'DAIRY (milk, curd, cheese; NOT condensed milk; NOT butter -> 13; NOT sweetened / flavoured curds; NOT cream; NOT Dairy whitener (amulya, everyday, local milk powders for making tea/coffee), Cottage cheese (paneer))', '????????? ????????? ????????? ?????? ????????? ?????????????????? (????????? ,????????????, ???????????????,???????????????,??????  ??????  ??????????????? ?????????  ?????? ????????? ???????????? ?????? ?????????????????? ?????? ????????? ?????? )', 'MEAT, POULTRY AND FISH (any meat; any fish (fresh / dried) ; any organ meats (liver, heart,brain,...), snail, Rodents, Birds, crabs, oyster, Rabbit, frog, prawns)', '????????? ????????????????????? - ???????????? ,????????????,??????????????????,??????????????? ,???????????????, ??????????????? ,?????????????????? ????????????????????? ', 'DARK GREEN LEAFY VEGETABLES (amaranth; pumpkin leaves ; spinach; cow pea leaves ; cauliflower leaves, spinach, potato leaves, morenga leaves,bottle gourd leaves,  casava leaves, other uncultivated local leafy vegetables)', '????????? ???????????????????????? ???????????????????????? ????????????- ?????????,?????????????????????, ???????????? ?????????, ????????????  ???????????? ?????? ????????? , ???????????? ?????? ??????????????? , ???????????? ?????? ??????????????? , ??????????????? ?????? ??????????????? ?????????????????????', 'OTHER VITAMIN A-RICH FRUITS AND VEGETABLES (Orange- ripe mango; ripe Papaya; ripe pumpkin; Melon (kharbuja); carrots (yellow/orange))', '????????????????????? A ??????????????? ?????? ?????????  ???????????????????????? (???????????? ????????? ??????????????????) . ???????????? ?????????  ???????????????, ???????????? ,??????????????? ,?????????????????? ,????????? ?????? ?????????????????????', 'Vanaspati OIL', '????????????????????? ?????????', 'OTHER OILS AND FATS (cooking oil (soya bean, sun flower canola, mustard, sesame,); butter, Fish oil; lard (animal fat);   Ghee, Mahua seed oil, Rape seed oil)', '????????? ??? ??????- ????????????????????? ?????? ?????????, ??????????????? ?????? ?????????,????????? ?????? ?????????, ?????????????????? ?????????, ??????????????? , ???????????? ?????? ????????? , ???????????? ?????? ?????????  ????????????????????? ', 'SAVOURY AND FRIED SNACKS (potatoe crisps; corn snacks (Kurkure, nachos, others); fried doughnuts(goja, khaja,) / samosa / fat cook; NOT fresh potatoe french fries, Bhujia, Chanachur mix)', '????????????????????? ???????????? ?????????????????? ????????????- ??????????????? ,?????????????????????,????????????, ???????????????????????? ,??????????????? ,?????????????????? ,?????????????????? ?????????????????????'),
(18, '20210702073415', '20210702084233', 'During the day and night of yesterday, did you consume', '???????????? ???????????? ?????? ???????????? ????????? ???????????? ????????? ???????????? ?????? ?', 'input', 'GRAINS, WHITE ROOTS AND TUBERS (potatoes, white sweet-potatoes; Raw green banana; Yam- elephant foot, casava, colocassia; Crereals-rice, white maize, orange maize, wheat, different types of millets,Oats , Wheat- Flour ( Maida & Ata), dalia, suji, noodles; rice - Puffed rice, flattened rice, poped rice, rice powder, rice cakes)', '???????????? ?????? ????????? ????????????- ???????????? ????????? ,??????????????? ????????????, ???????????????,???????????? , ?????????????????? ,??????????????? ,???????????????, ???????????? ,???????????? ???????????? ???????????? ???????????? , ??????????????????, ????????????,???????????? ?????????????????????', 'PULSES (Pulses- lentiles, chick pea, black gram, green gram, dried peas, kurthi, ; Legumes; soya beans, soya chunks / mince, horse gram, Cow pea,Flat bean seeds (dried), cluster beans, Kidney beans)', '????????? ????????? ????????????', 'NUTS AND SEEDS (Nuts- peanuts / ground nuts,; Seeds- sesame ( naru); pumpkin seed, jackfruit seeds, poppy seeds)', '???????????? ??? ????????? ???????????? ?????????????????????, ???????????????, ??????????????? ?????? ?????????, ', 'DAIRY (milk, curd, cheese; NOT condensed milk; NOT butter -> 13; NOT sweetened / flavoured curds; NOT cream; NOT Dairy whitener (amulya, everyday, local milk powders for making tea/coffee), Cottage cheese (paneer))', '????????? ????????? ????????? ?????? ????????? ?????????????????? (????????? ,????????????, ???????????????,???????????????,??????  ??????  ??????????????? ?????????  ?????? ????????? ???????????? ?????? ?????????????????? ?????? ????????? ?????? )', 'MEAT, POULTRY AND FISH (any meat; any fish (fresh / dried) ; any organ meats (liver, heart,brain,...), snail, Rodents, Birds, crabs, oyster, Rabbit, frog, prawns)', '????????? ????????????????????? - ???????????? ,????????????,??????????????????,??????????????? ,???????????????, ??????????????? ,?????????????????? ????????????????????? ', 'DARK GREEN LEAFY VEGETABLES (amaranth; pumpkin leaves ; spinach; cow pea leaves ; cauliflower leaves, spinach, potato leaves, morenga leaves,bottle gourd leaves,  casava leaves, other uncultivated local leafy vegetables)', '????????? ???????????????????????? ???????????????????????? ????????????- ?????????,?????????????????????, ???????????? ?????????, ????????????  ???????????? ?????? ????????? , ???????????? ?????? ??????????????? , ???????????? ?????? ??????????????? , ??????????????? ?????? ??????????????? ?????????????????????', 'OTHER VITAMIN A-RICH FRUITS AND VEGETABLES (Orange- ripe mango; ripe Papaya; ripe pumpkin; Melon (kharbuja); carrots (yellow/orange))', '????????????????????? A ??????????????? ?????? ?????????  ???????????????????????? (???????????? ????????? ??????????????????) . ???????????? ?????????  ???????????????, ???????????? ,??????????????? ,?????????????????? ,????????? ?????? ?????????????????????', 'Vanaspati OIL', '????????????????????? ?????????', 'OTHER OILS AND FATS (cooking oil (soya bean, sun flower canola, mustard, sesame,); butter, Fish oil; lard (animal fat);   Ghee, Mahua seed oil, Rape seed oil)', '????????? ??? ??????- ????????????????????? ?????? ?????????, ??????????????? ?????? ?????????,????????? ?????? ?????????, ?????????????????? ?????????, ??????????????? , ???????????? ?????? ????????? , ???????????? ?????? ?????????  ????????????????????? ', 'SAVOURY AND FRIED SNACKS (potatoe crisps; corn snacks (Kurkure, nachos, others); fried doughnuts(goja, khaja,) / samosa / fat cook; NOT fresh potatoe french fries, Bhujia, Chanachur mix)', '????????????????????? ???????????? ?????????????????? ????????????- ??????????????? ,?????????????????????,????????????, ???????????????????????? ,??????????????? ,?????????????????? ,?????????????????? ?????????????????????'),
(19, '20210702073415', '20210702084341', 'Do you have a kitchen garden now ', ' ???????????? ???????????? ????????? ????????? ?????????????????? ?????? ??????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '20210702073415', '20210702084525', 'If Yes, Do you get from the kitchen garden now', '???????????? ????????? ???????????? ???????????? ???????????? ??????????????? ?????? ????????? ????????? ?????? ?', 'input', 'Green leafy vegetables', '????????? ???????????????????????? ????????????????????????', 'Other vegetables', '???????????? ????????????????????????', 'Yellow and orange vegetables', '???????????? ?????????  ?????????????????? ????????????????????????', 'Pulses/legumes', '????????? / ????????????', 'Air potato, yam, colocasia, other roots/tubers', '??????????????? , ???????????????, ???????????? ?????? ?????? ?????????', 'Oil seeds', '???????????????', 'Fruits', ' ??????', '', '', '', '', '', ''),
(21, '20210702073415', '20210702084637', 'You get your cereals from', '?????? ???????????? ???????????? ?????? ????????????????????? ???????????? ???????', 'input', 'mostly own production', '???????????????????????? ???????????? ?????????????????????', 'mostly PDS', '???????????????????????? ???????????? ??????', 'Mostly buy from market', '???????????????????????? ??????????????? ??????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, '20210702073415', '20210702084706', 'Do you consume animal products', '???????????? ?????? ????????? ?????????????????? ???????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, '20210702073415', '20210702084749', 'If Yes, You get animal products from', '', 'input', 'mostly own production', '???????????????????????? ???????????? ?????????????????????', 'Mostly buy from market', '???????????????????????? ??????????????? ??????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, '20210702073415', '20210702084812', 'Do have farm land', '???????????? ???????????? ????????? ???????????? ???????????? ?????? ????????? ???????????? ??????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, '20210702073415', '20210702084841', 'If Yes, What do you grow on your land', '?????? ???????????? ???????????? ???????????? ???????', 'input', 'Grains- Rice, wheat, corn etc.', '???????????????- ?????????,???????????????,??????????????? ?????????????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, '20210702073415', '20210702084930', 'Do you dry/pickle and preserve vegetables, fruits, leafy vegetables, meat/fish, tubers, roots, etc?', '???????????? ?????? ????????? ???????????????????????? ???????????????????????? ,???????????????????????? ????????? ?????? ?????? ?????????????????? ?????? ??????????????? ??????????????? ???????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, '20210702085125', '20210702085202', 'Is your child 6 m to 23 m of age?', '???????????? ???????????? ??????????????? ?????? ???????????? 6 ??????????????? ?????? 23 ??????????????? ?????? ????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, '20210702085125', '20210702085339', 'Only If \"Yes\"  the MDD-C questions appear', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, '20210702085125', '20210702091218', 'Do you still Breast feed your child?', ' ???????????? ?????? ????????? ?????? ???????????? ??????????????? ?????? ????????????????????? ???????????? ??????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, '20210702085125', '20210702091252', 'Other than breast milk What else did your child eat in the last 24 hrs? Dietary Diversity', '???????????? ????????? ?????? ??????????????? ??????????????? 24 ??????????????? ????????? ???????????? ??????????????? ?????? ?????? ???????????? ????????????? ???????????? ?????????????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, '20210702085125', '20210702091319', 'Grains, Roots Tubers', '????????????, ??????????????? ??????????????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, '20210702085125', '20210702091341', 'Legumes , Nuts, pulses', '??????, ??????, ???????????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, '20210702085125', '20210702091421', 'Dairy products (milk, yogurt, cheese)', '??????????????? ???????????????????????? (?????????, ?????????, ????????????)', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, '20210702085125', '20210702091513', 'Flesh food ( meat, fish, Poultry, liver /organ)', '???????????? ???????????? (????????????, ????????????, ??????????????????, ???????????? / ?????????)', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, '20210702085125', '20210702091536', 'Eggs ', '????????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, '20210702085125', '20210702091555', 'Vitamin A rich fruits & vegetables', '?????????????????????-??? ?????????????????? ?????? ?????? ????????????????????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, '20210702085125', '20210702091626', 'Other fruits and vegetables', '???????????? ?????? ?????? ????????????????????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, '20210702085125', '20210702091649', 'How many times in day do to feed complementary food? Meal frequency', '?????? ????????? ????????? ??????????????? ????????? ???????????? ???????????? ?????????????????? ?????????? ???????????? ?????????????????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, '20210702085125', '20210702091717', 'If the child is breast fed', '????????? ??????????????? ?????? ????????????????????? ??????????????? ???????????? ??????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, '20210702085125', '20210702091801', '2 or more times for infants 6-8 months', '6-8 ??????????????? ?????? ???????????? ?????? ?????????????????? ?????? ????????? 2 ?????? ???????????? ?????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, '20210702085125', '20210702091820', ' 3 or more times for children 9-23 months', '9-23 ??????????????? ?????? ???????????? ?????? ?????????????????? ?????? ????????? 3 ?????? ???????????? ?????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, '20210702085125', '20210702091838', ' 4 or more times for children 6-23 months', '6-23 ??????????????? ?????? ???????????? ?????? ?????????????????? ?????? ????????? 4 ?????? ???????????? ????????? ', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, '20210702085125', '20210702091857', 'If the child is not breast fed', '????????? ??????????????? ?????? ????????????????????? ???????????? ??????????????? ???????????? ??????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, '20210702085125', '20210702091917', '2 or more times for  infants 6-8 months', '6-8 ??????????????? ?????? ???????????? ?????? ?????????????????? ?????? ????????? 2 ?????? ???????????? ?????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, '20210702085125', '20210702091933', ' 3 or more times for children 9-23 months', '9-23 ??????????????? ?????? ???????????? ?????? ?????????????????? ?????? ????????? 3 ?????? ???????????? ?????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, '20210702085125', '20210702091949', ' 4 or more times for children 6-23 months', '6-23 ??????????????? ?????? ???????????? ?????? ?????????????????? ?????? ????????? 4 ?????? ???????????? ?????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, '20210702123306', '20210702124848', 'What is your MAIN drinking water source during DRY season? (Select one)', '???????????? ???????????? ?????? ??????????????? ???????????? ??????????????? ????????? ?????? ?????? ??????????????? ???????????? ??????? (?????? ????????????)', 'input', 'Public tap/stand post (improved)', '(??????????????????????????? / ????????????????????????????????? ????????? (???????????????)', ' Private tap at the house (improved)', '?????? ?????? ???????????? ?????? (???????????????)', ' Borehole with handpump (improved)', '????????? ??????  ?????? ????????? ?????????????????? (???????????????)', ' Protected spring (improved)', '', ' Open dug well (not improved)', '???????????? ???????????? (??????????????? ????????? ?????????)', ' Protected dug well (improved)', '??????????????? ????????? ?????? ???????????????????????? ????????????) (??????????????? ???????????? ?????????) ', ' Protected rainwater storage systems (improved)', '???????????????????????? ??????????????? ?????? ????????????????????? ????????????????????? (??????????????? ???????????? ?????????)', 'Pond, stream, river, swamp (not improved)', '???????????????, ????????????, ?????????, ???????????? (??????????????? ???????????? ?????????)', 'Other (not improved)', '???????????? (??????????????? ???????????? ?????????)', 'Don???t know/ No answer (not improved)', '????????? ???????????? / ????????? ???????????? ???????????? (??????????????? ???????????? ?????????)'),
(48, '20210702123306', '20210702125017', 'What is your MAIN drinking water during RAINY season? Select one', '??????????????? ?????? ???????????? ????????? ???????????? ????????? ?????? ?????? ??????????????? ??????????????? ???????????? ??????? ?????? ????????????', 'input', 'Public tap/stand post (improved)', '(??????????????????????????? / ????????????????????????????????? ????????? (???????????????)', ' Private tap at the house (improved)', '?????? ?????? ???????????? ?????? (???????????????)', ' Borehole with handpump (improved)', '????????? ??????  ?????? ????????? ?????????????????? (???????????????)', ' Protected spring (improved)', '????????? / ????????????', ' Open dug well (not improved)', '???????????? ???????????? (??????????????? ????????? ?????????)', ' Protected dug well (improved)', '??????????????? ????????? ?????? ???????????????????????? ????????????) (??????????????? ???????????? ?????????) ', ' Protected rainwater storage systems (improved)', '???????????????????????? ??????????????? ?????? ????????????????????? ????????????????????? (??????????????? ???????????? ?????????)', 'Pond, stream, river, swamp (not improved)', '???????????????, ????????????, ?????????, ???????????? (??????????????? ???????????? ?????????)', 'Other (not improved)', '???????????? (??????????????? ???????????? ?????????)', 'Don???t know/ No answer (not improved)', '????????? ???????????? / ????????? ???????????? ???????????? (??????????????? ???????????? ?????????)'),
(49, '20210702123306', '20210702125313', 'OBSERVATION: Check the drinking water storage arrangement for the following', '????????????????????????: ?????????????????????????????? ?????? ????????? ??????????????? ?????????????????? ???????????????????????? ?????? ???????????? ????????????', 'input', 'Drinking water kept in a separate container (ask to look at the container)?', '???????????? ?????? ?????? ????????? ???????????? ????????? ????????? ???????????? ?????? (???????????? ?????? ??????????????? ?????? ????????? ???????????????)?', 'Drinking water container kept above floor level and away from contamination? ', '???????????? ?????? ???????????? ?????? ???????????? ?????? ???????????? ????????? ?????? ????????????????????? ?????? ????????? ??????', 'Water containers used for drinking water collection and water storage have a narrow mouth / opening. ', '?????? ????????????????????? ?????? ???????????? ?????? ???????????? ???????????? ?????? ??????????????? ?????? ????????? ??????????????? ????????? ???????', 'Containers used for drinking water storage have a lid/ cover', '???????????? ?????? ???????????? ?????? ?????? ?????? ???????????? ?????? ', 'The utensil used to draw water from the drinking water container clean and stored in a hygienic manner', '???????????? ?????? ???????????? ?????? ?????????????????? ?????? ???????????? ????????????????????? ?????? ????????? ???????????????????????? ???????????? ???????????? ?????? ?????? ?????????????????? ?????? ?????????????????? ??????????????? ?????? ???????????????????????? ???????????? ??????', 'INSIDE of the drinking water container clean', '???????????? ?????? ???????????? ?????? ???????????? ???????????? ?????? ????????? ???????', 'OUTSIDE of the drinking water container clean?', '???????????? ?????? ???????????? ?????? ???????????? ???????????? ?????? ????????? ???????', 'None of these', '??????????????? ?????? ????????? ????????????', '', '', '', ''),
(50, '20210702123306', '20210702125407', 'What is the condition of the platform around the water source?', '?????? ??????????????? ?????? ??????????????? ?????? ????????? ?????? ?????????????????? ???????????? ???????', 'input', 'Good condition', '??????????????? ????????????', 'Cracked / Broken platform', '??????????????? / ???????????? ?????????', 'No platform', '????????? ????????? ????????????', 'Under construction', '?????????????????????????????????', 'Could not observe', '????????? ???????????? ?????????', '', '', '', '', '', '', '', '', '', ''),
(51, '20210702125515', '20210702125546', 'In the past 12 months - starting from ... [specify the month or an event which is commonly known] until now - were there months in which you did not have enough food to meet your family\'s household\'s needs? ', '??????????????? 12 ?????????????????? ????????? -  ???????????? ?????? ... [????????? ??????????????????????????? ??????????????? ?????? ????????????????????? ?????? ??????????????? ?????? ????????? ???????????? ??????] ?????? ?????? - ???????????? ????????? ????????? ??????????????? ??????????????? ??????, ??????????????? ???????????? ?????? ???????????? ?????????????????? ?????? ????????????????????? ?????? ???????????????????????? ???????????? ???????????? ?????????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, '20210702125515', '20210702125616', 'Which were the months in the past 12 months during which you did not have enough food to meet your family\'s needs?', '??????????????? 12 ?????????????????? ????????? ????????? ?????? ????????? ??????????????? ??????, ??????????????? ???????????? ??????  ???????????? ?????????????????? ?????? ????????????????????? ?????? ???????????? ???????????? ?????? ????????? ???????????? ????????? ???????????????????????? ???????????? ???????????? ???????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, '20210702125659', '20210702125747', 'How many adolescent girls are there in the Household?', '???????????? ?????????????????? ????????? ??????????????? ??????????????????????????? ???????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, '20210702125659', '20210702125819', 'Do you have a Anganwadi in the village', '????????????  ???????????? ???????????? ????????? ???????????????????????? ?????????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, '20210702125659', '20210702125910', 'Does the AWC open regularly?', '???????????? ???????????????????????? ?????????????????? ????????? ??????????????? ?????? ?', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, '20210702125659', '20210702010054', 'Does/did any one from your family access the servives available at the centre?', '???????????? ?????????????????? ?????? ????????? ??????????????? ???????????????????????? ?????????????????? ?????? ?????????????????? ????????????????????? ???????????? ?????? ???????????? ??????? ', 'input', 'Supplementary Nutrition Programme', '???????????? ???????????? ???????????????????????????', 'Growth monitoring', '??????????????? ?????????????????????', 'Health and Nutrition education', '??????????????????????????? ?????? ???????????? ??????????????????', 'Referral', '???????????????', 'Health check-up', '??????????????????????????? ????????????', 'pre school education', '??????????????? ??????????????????????????? ??????????????????', 'Take Home Ration (THR)', '???????????? ???????????? ?????? ?????? ???????????? ?????? ???????????? ??????(?????? ????????? ??????)', 'Ante Natal Care (ANC)', '?????????????????????????????? ?????????????????? (??? ?????? ??????)', 'Post Natal Care (PNC)', ' ?????????????????????????????? ?????????????????? (?????? ?????? ??????)', 'Immunisation and on the spot feeding', '????????????????????? ?????? ??????????????? ??????????????????'),
(57, '20210702125659', '20210702010128', 'Do you have a Ration shop/dealer in the village?', '???????????? ???????????? ???????????? ????????? ???????????? ???????????????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, '20210702125659', '20210702010148', 'Do you get subsidised Ration from the PDS?', '???????????? ?????? ?????????????????? ???????????? ??????????????? ?????? ????????????????????? ????????? ????????????  ??????????????? ?????? ?', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '20210702125659', '20210702010212', 'Do you get subsidised Ration from the PDS every month', '???????????? ?????? ???????????????????????? ?????????????????? ???????????? ??????????????? ?????? ????????????????????? ????????? ????????????  ??????????????? ?????? ?', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '20210702125659', '20210702010257', 'Do you have a MGNREGS Job card?', '???????????? ???????????? ????????? ?????????????????? ????????? ??????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, '20210702125659', '20210702010328', 'Do get demand work?', '???????????? ???????????? ????????? ??????????????? ?????? ?', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, '20210702125659', '20210702010412', 'Do you get work?', '???????????? ???????????? ????????? ?????????????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, '20210702125659', '20210702010439', 'Are the wages paid within 15 days?', '???????????? ???????????? 15 ??????????????? ?????? ??????????????? ?????????????????? ????????????????????? ????????? ?', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, '20210702125659', '20210702010457', 'Are you aware about Unemployment dole?', '???????????? ?????? ??????????????????????????? ??????????????? ?????? ???????????? ????????? ??????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, '20210702125659', '20210702010513', 'Do you have a Immunization day/VHND in the village?', '???????????? ???????????? ???????????? ????????? ??????????????? ???????????? ???????????? / ????????????????????? ??????????????? ???????????? ?????? ?', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, '20210702125659', '20210702010539', 'Is the VHND held every month?', '???????????? ??????????????? ?????????????????? ???????????? ???????????? ??????????????? ????????? ??????????????? ???????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, '20210702125659', '20210702010707', 'Do you/family get all services from the VHND?- ANC, PNC, vaccination, ORS, basic medicine, etc ', '???????????? ?????? ?????? ???????????? ?????????????????? ??????????????? ?????????????????? ???????????? ???????????? ?????? ??????????????? ????????? ?????????????????? ???????????????????????? ????????????  ???????????? ????????????,????????????????????? ,????????? ??????????????? ??????????????? ????????????????????? ????????????????????? ?????? ???????????? ??????', 'input', 'Ante Natal Care (ANC)', '?????????????????????????????? ?????????????????? (??? ?????? ??????)', 'Post Natal Care (PNC)', ' ?????????????????????????????? ?????????????????? (?????? ?????? ??????)', 'Vaccination', '?????????????????????', 'Oral Rehydration Salts (ORS)', '??????????????? ?????????????????????????????? ????????? (???????????????)', 'Basic Medicine', '????????? ????????????????????????', 'Others', '????????????', 'None ', '????????? ????????????', '', '', '', '', '', ''),
(68, '20210702125659', '20210702050209', 'Do you know the ASHA (Sahiya)?', '???????????? ?????? ??????????????? ?????? ??????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, '20210702125659', '20210702050225', 'Is ther a VHSNC in the village?', '???????????? ???????????? ????????? ??????????????? ????????????????????? ???????????????????????? ????????? ???????????? ??????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, '20210702125659', '20210702050240', 'Did the VHSNC do any community development work in the village in the last 1 year? ', '????????????  ??????????????? ????????????????????? ???????????????????????? ????????? ???????????? ??????????????? ?????? ??????????????? ??? ????????? ????????? ?????????????????? ?????? ??????????????? ?????? ????????? ????????? ????????? ???????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(71, '20210702125659', '20210702050258', 'Is there a active VWSC in the village ?', '???????????? ???????????? ????????? ???????????? ?????? ?????? ???????????????????????? ??????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, '20210702125659', '20210702050311', 'Did the VWSC do any community development work in the village in the last 1 year?', ' ????????????  ???????????? ?????? ?????? ???????????????????????? ??????????????? ?????? ??????????????? ??? ????????? ????????? ?????????????????? ?????? ??????????????? ?????? ????????? ????????? ????????? ???????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, '20210702125659', '20210702050335', 'Number of Gram Sabhas held in the village in the last year?', '??????????????? ????????? ???????????? ????????? ?????????????????? ??????????????? ????????? ?????? ???????????????????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(74, '20210702125659', '20210702050345', 'Do you attend the Gram Sabha meetings? ', '???????????? ?????? ??????????????? ????????? ?????? ???????????? ????????? ????????? ???????????? ?????? ?', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, '20210702125659', '20210702050400', 'Has the village prepared a micro-plan in the last one year? ', '???????????? ???????????? ?????? ??????????????? ?????? ????????? ????????? ?????????????????????-??????????????? ??????????????? ???????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, '20210702125659', '20210702050421', 'Did you participate/ contribute to the preparation of this plan? ', '???????????? ???????????? ????????? ???????????? ?????? ?????? ??????????????? ?????? ?????????????????? ????????? ?????????????????? ?????????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(77, '20210702125659', '20210702050438', 'Has there been any development work in the village in the last 1 year related to these micro plans?', '???????????? ?????? ????????????????????? ????????????????????? ?????? ????????????????????? ??????????????? 1 ????????? ????????? ???????????? ????????? ????????? ??????????????? ??????????????? ????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, '20210702125659', '20210702050453', 'Do you have access to safe drinking water in all seasons? ', '???????????? ???????????? ????????? ???????????? ?????????  ?????????????????? ????????? ?????? ??????????????? ???????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, '20210702125659', '20210702050526', 'Water for irrigation? ', '??????????????? ?????? ???????????????????', 'input', 'None ', '????????? ????????????', 'Irrigation for few months in the year', '????????? ????????? ????????? ?????????????????? ?????? ?????????', 'Irrigation throughout the year', '????????? ?????? ?????????????????? ?????????????????? ??????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, '20210702125659', '20210702050544', 'Does the village have roads & access to block head quarters?', ' ???????????? ???????????? ?????? ?????????????????? ???????????????????????? ?????? ?????????????????? ?????? ????????? ??????????????? ????????? ?????? ??????.??????.?????? ?????? ?', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, '20210702125659', '20210702050646', 'What are the government schemes that you or your family member have been able to access? ', '???????????? ?????????????????? ?????????????????? ??????????????? ?????? ???????????? ???????????? ???????????? ?????????????????? ????????????????????? ???????????? ??????????', 'input', 'Janani Suraksha Yojana', '???????????? ????????????????????? ???????????????', 'Aajeevika / Sanjivani (JSLPS)', '????????????????????? / ????????????????????? (??????????????????????????????)', 'Adarsh Gram Yojana', '??????????????? ??????????????? ???????????????', 'Pradhan Mantri Awas Yojona', '?????????????????? ?????????????????? ???????????? ???????????????', 'Pension Schemes', '??????????????? ?????????????????????', 'Swatch Barat Mission- Toilet', '?????????????????? ???????????? ????????????- ??????????????????', 'National Rural Drinking Water schemes', '??????????????????????????? ????????????????????? ??????????????? ?????????????????????', 'School Mid-Day Meals', '??????????????? ??????????????? ?????? ????????????', 'Laxmi Ladli Yajana', '????????????????????? ??????????????? ???????????????', 'Saraswati Yojana', '????????????????????? ???????????????'),
(82, '20210702070303', '20210702050824', 'If Yes, How many children less than 5 years age in the family ? ', '?????????????????? ????????? 5 ????????? ?????? ?????? ??????????????? ??????????????? ??????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, '20210702070303', '20210702050833', 'Name of child who was screened/ ', '?????????????????????????????? ???????????? ????????? ??????????????? ?????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, '20210702070303', '20210702050904', 'Sex', '????????????', 'input', 'Male', '???????????????', 'Female', '???????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, '20210702070303', '20210702050914', 'Date of Screening', '?????????????????????????????? ?????? ???????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, '20210702070303', '20210702050924', 'Date of Birth of Child', '??????????????? ?????? ????????????????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, '20210702070303', '20210702050933', 'Age in Months', '?????????????????? ????????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, '20210702070303', '20210702050947', 'If Child is 24 months old or less, Length in CM', '??????????????? ??????.??????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, '20210702070303', '20210702050958', 'If Child is older than 24 months, Height in CM', '???????????? ??????.??????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, '20210702070303', '20210702051006', 'Weight in KG', '????????? ?????????????????????????????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, '20210702070303', '20210702051017', 'Select Weight Range of Child', '?????????????????? ????????? ????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(92, '20210702070303', '20210702051032', 'WAZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(93, '20210702070303', '20210702051037', 'WHZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(94, '20210702070303', '20210702051046', 'MUAC   Red/Yellow/Green', '??????. ??????. ???. ??????- ????????? / ????????????/ ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(95, '20210702070303', '20210702051054', 'Oedema/???????????????- 0/+/++/+++ ', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(96, '20210702055527', '20210702055543', 'Location-admin boundary cascade', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(97, '20210702055527', '20210702055554', 'Name of Mother', '????????? ?????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(98, '20210702055527', '20210702055603', 'Name of child who was screened', '?????????????????????????????? ???????????? ????????? ??????????????? ?????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(99, '20210702055527', '20210702055630', 'Sex', '????????????', 'input', 'Male', '???????????????', 'Female', '???????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(100, '20210702055527', '20210702055641', 'Date of Screening', '?????????????????????????????? ?????? ???????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(101, '20210702055527', '20210702055650', 'Date of Birth of Child', '??????????????? ?????? ????????????????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(102, '20210702055527', '20210702055700', 'Age in Months', '?????????????????? ????????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(103, '20210702055527', '20210702055710', 'If Child is 24 months old or less, Length in CM', '??????????????? ??????.??????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(104, '20210702055527', '20210702055718', 'If Child is older than 24 months, Height in CM', '???????????? ??????.??????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(105, '20210702055527', '20210702055726', 'Weight in KG', '????????? ?????????????????????????????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(106, '20210702055527', '20210702055737', 'Select Weight Range of Child', '?????????????????? ????????? ????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(107, '20210702055527', '20210702055743', 'WAZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(108, '20210702055527', '20210702055749', 'WHZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(109, '20210702055527', '20210702055756', 'MUAC   Red/Yellow/Green/', ' ??????. ??????. ???. ??????- ????????? / ????????????/ ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, '20210702055527', '20210702055810', 'Oedema- 0/+/++/+++ ', '???????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(111, '20210702055905', '20210702055923', 'Select Village', '???????????? ?????? ????????? ????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(112, '20210702055905', '20210702055933', 'Name of Mother', '????????? ?????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(113, '20210702055905', '20210702055944', 'HH Id', '???????????? ????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(114, '20210702055905', '20210702055955', 'Name of child', '??????????????? ?????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(115, '20210702055905', '20210702060015', 'Sex', '????????????', 'input', 'Male', '???????????????', 'Female', '???????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(116, '20210702055905', '20210702060024', 'Date of Screening', '?????????????????????????????? ?????? ???????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(117, '20210702055905', '20210702060032', 'Date of Birth of Child', '??????????????? ?????? ????????????????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(118, '20210702055905', '20210702060046', 'Age in Months', '?????????????????? ????????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(119, '20210702055905', '20210702060130', 'If Child is 24 months old or less, Length in CM', '??????????????? ??????.??????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, '20210702055905', '20210702060139', 'If Child is older than 24 months, Height in CM', '???????????? ??????.??????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(121, '20210702055905', '20210702060146', 'Weight in KG', '????????? ?????????????????????????????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(122, '20210702055905', '20210702060154', 'Select Weight Range of Child', '?????????????????? ????????? ????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(123, '20210702055905', '20210702060159', 'WAZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(124, '20210702055905', '20210702060204', 'WHZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(125, '20210702055905', '20210702060211', 'MUAC   Red/Yellow/Green/ ', '??????. ??????. ???. ??????- ????????? / ????????????/ ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(126, '20210702055905', '20210702060218', 'Oedema- 0/+/++/+++ ', '???????????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(127, '20210702055905', '20210702060224', 'Photo of Child', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, '20210703075315', '20210703075450', 'How many people are educated upto10th class', '??????????????? ??????????????? ?????? ??????????????? ????????? ????????????????????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, '20210703075315', '20210703075523', 'How many them are girls/women', '??????????????? ??????????????? ????????????????????????/????????????????????? ?????????', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(130, '20210703075315', '20210703075826', 'Do you have schools in village?', '???????????? ???????????? ???????????? ????????? ??????????????? ??????????', 'input', 'Yes', '????????? ', 'No', '????????????', 'Don???t Know', '????????? ????????????', 'Referral', '???????????????', '', '', '', '', '', '', '', '', '', '', '', ''),
(131, '20210703091955', '20210703092154', 'Do you want to participate in the survey?', '  ???????????? ?????? ??????????????????????????? ????????? ????????? ???????????? ??????????????? ??????????', 'input', 'Yes', '????????? ', 'No', '????????????', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bee_modules`
--

CREATE TABLE `bee_modules` (
  `id` int(11) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `module_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_modules`
--

INSERT INTO `bee_modules` (`id`, `module_id`, `module_name`, `status`, `module_description`) VALUES
(1, 'dashboard', 'Dashboard', 1, 'Dashboard'),
(2, 'reports', 'Reports', 1, 'Reports'),
(3, 'settings', 'Settings', 1, 'Settings'),
(4, 'banks', 'Data Sheets', 1, 'All information related to bank'),
(5, 'user', 'Users', 1, 'user related activity'),
(6, 'cws_forms', 'CWS Forms', 1, 'CWS Forms'),
(8, 'projects', 'Projects', 1, 'Projects'),
(9, 'notification', 'Notification', 1, 'Control all notification funtionality'),
(10, 'organigram', 'Organigram', 1, 'Flow chart of orgnization');

-- --------------------------------------------------------

--
-- Table structure for table `bee_notification`
--

CREATE TABLE `bee_notification` (
  `id` int(11) NOT NULL,
  `notification_type` enum('email','password','system','appearance','role','permission','user','report','dashboard','project','task') NOT NULL,
  `notification_from` varchar(35) NOT NULL,
  `notification_to` varchar(35) NOT NULL,
  `notification_title` text NOT NULL,
  `notification_content` text NOT NULL,
  `notification_url` text NOT NULL,
  `read_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_notification`
--

INSERT INTO `bee_notification` (`id`, `notification_type`, `notification_from`, `notification_to`, `notification_title`, `notification_content`, `notification_url`, `read_status`, `created_at`) VALUES
(4, 'appearance', 'super', 'all', 'Logo Updated!', 'Backend logo is updated!', '', 0, '2021-07-06 17:01:00'),
(10, 'permission', 'super', '20210703034809', 'Permission Updated!', 'Dashboard , Profile , Formsthese module(s) permissions are updated', '', 0, '2021-07-07 12:13:59'),
(11, 'permission', 'super', '20210703034809', 'Permission Updated!', 'Dashboard these module(s) permissions are updated', '', 0, '2021-07-07 13:42:18'),
(12, 'permission', 'super', '20210703034809', 'Permission Updated!', 'Dashboard , Forms these module(s) permissions are updated', '', 0, '2021-07-07 13:42:31'),
(13, 'appearance', 'super', 'all', 'Logo Updated!', 'Backend logo is updated!', '', 0, '2021-07-07 19:51:58'),
(14, 'appearance', 'super', 'all', 'Logo Updated!', 'Backend logo is updated!', '', 0, '2021-07-07 19:52:18'),
(15, 'appearance', 'super', 'all', 'Logo Updated!', 'Backend logo is updated!', '', 1, '2021-07-08 11:22:45'),
(16, 'task', 'super', '20210703054126', 'Task Assigned!', 'Task is assigned to you with due date of 2021-07-11 and priority is medium', '', 1, '2021-07-09 08:35:06'),
(17, 'task', 'super', '20210623125240', 'Task Assigned!', 'Task is assigned to you with due date of 2021-07-11 and priority is medium', '', 1, '2021-07-09 08:35:06'),
(18, 'permission', 'super', '20210623125240', 'Permission Updated!', 'Dashboard these module(s) permissions are updated', '', 1, '2021-07-09 09:12:21'),
(19, 'permission', 'super', '20210703034809', 'Permission Updated!', 'Dashboard these module(s) permissions are updated', '', 1, '2021-07-09 09:25:54'),
(20, 'permission', 'super', '20210703034809', 'Permission Updated!', ' these module(s) permissions are updated', '', 1, '2021-07-09 10:10:53'),
(21, 'permission', 'super', '20210703034809', 'Permission Updated!', 'Dashboard these module(s) permissions are updated', '', 1, '2021-07-09 10:11:49'),
(22, 'task', 'super', '20210703054126', 'Task Assigned!', 'Task is assigned to you with due date of 2021-07-11 and priority is high', '', 1, '2021-07-09 10:16:45'),
(23, 'appearance', 'super', 'all', 'Logo Updated!', 'Backend logo is updated!', '', 1, '2021-07-09 22:26:35'),
(24, 'appearance', 'super', 'all', 'Favicon Updated!', 'Backend favicon is updated!', '', 1, '2021-07-09 22:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `bee_permissions`
--

CREATE TABLE `bee_permissions` (
  `id` int(11) NOT NULL,
  `role_id` varchar(35) NOT NULL,
  `sub_module_id` varchar(35) NOT NULL,
  `permission` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_permissions`
--

INSERT INTO `bee_permissions` (`id`, `role_id`, `sub_module_id`, `permission`) VALUES
(1, 'ro_administrator', 'bank_control_sheet', 1),
(2, 'ro_administrator', 'email', 1),
(3, 'ro_administrator', 'role_and_permission', 1),
(4, 'ro_administrator', 'module_and_submodule', 1),
(5, 'ro_administrator', 'appearance', 1),
(6, 'ro_administrator', 'manage_roles', 1),
(7, 'ro_user', 'bank_control_sheet', 0),
(8, 'ro_user', 'email', 0),
(9, 'ro_user', 'role_and_permission', 0),
(10, 'ro_user', 'module_and_submodule', 0),
(11, 'ro_user', 'appearance', 0),
(12, 'ro_user', 'manage_roles', 0),
(13, 'ro_administrator', 'dashboard', 1),
(14, 'ro_administrator', 'profile', 1),
(15, 'ro_field_user', 'bank_control_sheet', 0),
(16, 'ro_field_user', 'email', 0),
(17, 'ro_field_user', 'role_and_permission', 0),
(18, 'ro_field_user', 'module_and_submodule', 0),
(19, 'ro_field_user', 'appearance', 0),
(20, 'ro_field_user', 'manage_roles', 0),
(21, 'ro_field_user', 'dashboard', 1),
(22, 'ro_field_user', 'profile', 1),
(23, 'ro_field_user', 'forms', 1),
(24, 'ro_field_user', 'form_settings', 0),
(25, 'ro_administrator', 'forms', 1),
(26, 'ro_administrator', 'form_settings', 1),
(27, 'ro_field_user', 'notification', 0),
(28, 'ro_administrator', 'notification', 1),
(29, 'ro_administrator', 'view_project', 1),
(30, 'ro_administrator', 'project_tasks', 1),
(31, 'ro_administrator', 'create_task', 1),
(32, 'ro_field_user', 'view_project', 0),
(33, 'ro_field_user', 'project_tasks', 0),
(34, 'ro_field_user', 'create_task', 0),
(35, 'ro_field_user', 'organigram', 0),
(36, 'ro_executive_director', 'bank_control_sheet', 0),
(37, 'ro_executive_director', 'email', 0),
(38, 'ro_executive_director', 'role_and_permission', 0),
(39, 'ro_executive_director', 'module_and_submodule', 0),
(40, 'ro_executive_director', 'appearance', 0),
(41, 'ro_executive_director', 'manage_roles', 0),
(42, 'ro_executive_director', 'dashboard', 1),
(43, 'ro_executive_director', 'profile', 1),
(44, 'ro_executive_director', 'forms', 0),
(45, 'ro_executive_director', 'form_settings', 0),
(46, 'ro_executive_director', 'notification', 0),
(47, 'ro_executive_director', 'view_project', 1),
(48, 'ro_executive_director', 'project_tasks', 0),
(49, 'ro_executive_director', 'create_task', 0),
(50, 'ro_executive_director', 'organigram', 0),
(51, 'ro_program_director', 'bank_control_sheet', 0),
(52, 'ro_program_director', 'email', 0),
(53, 'ro_program_director', 'role_and_permission', 0),
(54, 'ro_program_director', 'module_and_submodule', 0),
(55, 'ro_program_director', 'appearance', 0),
(56, 'ro_program_director', 'manage_roles', 0),
(57, 'ro_program_director', 'dashboard', 1),
(58, 'ro_program_director', 'profile', 1),
(59, 'ro_program_director', 'forms', 0),
(60, 'ro_program_director', 'form_settings', 0),
(61, 'ro_program_director', 'notification', 0),
(62, 'ro_program_director', 'view_project', 0),
(63, 'ro_program_director', 'project_tasks', 0),
(64, 'ro_program_director', 'create_task', 0),
(65, 'ro_program_director', 'organigram', 0),
(66, 'ro_finance_director', 'bank_control_sheet', 0),
(67, 'ro_finance_director', 'email', 0),
(68, 'ro_finance_director', 'role_and_permission', 0),
(69, 'ro_finance_director', 'module_and_submodule', 0),
(70, 'ro_finance_director', 'appearance', 0),
(71, 'ro_finance_director', 'manage_roles', 0),
(72, 'ro_finance_director', 'dashboard', 1),
(73, 'ro_finance_director', 'profile', 1),
(74, 'ro_finance_director', 'forms', 0),
(75, 'ro_finance_director', 'form_settings', 0),
(76, 'ro_finance_director', 'notification', 0),
(77, 'ro_finance_director', 'view_project', 0),
(78, 'ro_finance_director', 'project_tasks', 0),
(79, 'ro_finance_director', 'create_task', 0),
(80, 'ro_finance_director', 'organigram', 0),
(81, 'ro_state_directors', 'bank_control_sheet', 0),
(82, 'ro_state_directors', 'email', 0),
(83, 'ro_state_directors', 'role_and_permission', 0),
(84, 'ro_state_directors', 'module_and_submodule', 0),
(85, 'ro_state_directors', 'appearance', 0),
(86, 'ro_state_directors', 'manage_roles', 0),
(87, 'ro_state_directors', 'dashboard', 1),
(88, 'ro_state_directors', 'profile', 1),
(89, 'ro_state_directors', 'forms', 0),
(90, 'ro_state_directors', 'form_settings', 0),
(91, 'ro_state_directors', 'notification', 0),
(92, 'ro_state_directors', 'view_project', 0),
(93, 'ro_state_directors', 'project_tasks', 0),
(94, 'ro_state_directors', 'create_task', 0),
(95, 'ro_state_directors', 'organigram', 0),
(96, 'ro_program_officers', 'bank_control_sheet', 0),
(97, 'ro_program_officers', 'email', 0),
(98, 'ro_program_officers', 'role_and_permission', 0),
(99, 'ro_program_officers', 'module_and_submodule', 0),
(100, 'ro_program_officers', 'appearance', 0),
(101, 'ro_program_officers', 'manage_roles', 0),
(102, 'ro_program_officers', 'dashboard', 1),
(103, 'ro_program_officers', 'profile', 1),
(104, 'ro_program_officers', 'forms', 0),
(105, 'ro_program_officers', 'form_settings', 0),
(106, 'ro_program_officers', 'notification', 0),
(107, 'ro_program_officers', 'view_project', 0),
(108, 'ro_program_officers', 'project_tasks', 0),
(109, 'ro_program_officers', 'create_task', 0),
(110, 'ro_program_officers', 'organigram', 0),
(111, 'ro_program_officer_admin', 'bank_control_sheet', 0),
(112, 'ro_program_officer_admin', 'email', 0),
(113, 'ro_program_officer_admin', 'role_and_permission', 0),
(114, 'ro_program_officer_admin', 'module_and_submodule', 0),
(115, 'ro_program_officer_admin', 'appearance', 0),
(116, 'ro_program_officer_admin', 'manage_roles', 0),
(117, 'ro_program_officer_admin', 'dashboard', 1),
(118, 'ro_program_officer_admin', 'profile', 1),
(119, 'ro_program_officer_admin', 'forms', 0),
(120, 'ro_program_officer_admin', 'form_settings', 0),
(121, 'ro_program_officer_admin', 'notification', 0),
(122, 'ro_program_officer_admin', 'view_project', 0),
(123, 'ro_program_officer_admin', 'project_tasks', 0),
(124, 'ro_program_officer_admin', 'create_task', 0),
(125, 'ro_program_officer_admin', 'organigram', 0),
(126, 'ro_program_officer_finance', 'bank_control_sheet', 0),
(127, 'ro_program_officer_finance', 'email', 0),
(128, 'ro_program_officer_finance', 'role_and_permission', 0),
(129, 'ro_program_officer_finance', 'module_and_submodule', 0),
(130, 'ro_program_officer_finance', 'appearance', 0),
(131, 'ro_program_officer_finance', 'manage_roles', 0),
(132, 'ro_program_officer_finance', 'dashboard', 1),
(133, 'ro_program_officer_finance', 'profile', 1),
(134, 'ro_program_officer_finance', 'forms', 0),
(135, 'ro_program_officer_finance', 'form_settings', 0),
(136, 'ro_program_officer_finance', 'notification', 0),
(137, 'ro_program_officer_finance', 'view_project', 0),
(138, 'ro_program_officer_finance', 'project_tasks', 0),
(139, 'ro_program_officer_finance', 'create_task', 0),
(140, 'ro_program_officer_finance', 'organigram', 0),
(141, 'ro_office_asistant', 'bank_control_sheet', 0),
(142, 'ro_office_asistant', 'email', 0),
(143, 'ro_office_asistant', 'role_and_permission', 0),
(144, 'ro_office_asistant', 'module_and_submodule', 0),
(145, 'ro_office_asistant', 'appearance', 0),
(146, 'ro_office_asistant', 'manage_roles', 0),
(147, 'ro_office_asistant', 'dashboard', 1),
(148, 'ro_office_asistant', 'profile', 1),
(149, 'ro_office_asistant', 'forms', 0),
(150, 'ro_office_asistant', 'form_settings', 0),
(151, 'ro_office_asistant', 'notification', 0),
(152, 'ro_office_asistant', 'view_project', 0),
(153, 'ro_office_asistant', 'project_tasks', 0),
(154, 'ro_office_asistant', 'create_task', 0),
(155, 'ro_office_asistant', 'organigram', 0),
(156, 'ro_program_implementer', 'bank_control_sheet', 0),
(157, 'ro_program_implementer', 'email', 0),
(158, 'ro_program_implementer', 'role_and_permission', 0),
(159, 'ro_program_implementer', 'module_and_submodule', 0),
(160, 'ro_program_implementer', 'appearance', 0),
(161, 'ro_program_implementer', 'manage_roles', 0),
(162, 'ro_program_implementer', 'dashboard', 1),
(163, 'ro_program_implementer', 'profile', 1),
(164, 'ro_program_implementer', 'forms', 0),
(165, 'ro_program_implementer', 'form_settings', 0),
(166, 'ro_program_implementer', 'notification', 0),
(167, 'ro_program_implementer', 'view_project', 0),
(168, 'ro_program_implementer', 'project_tasks', 0),
(169, 'ro_program_implementer', 'create_task', 0),
(170, 'ro_program_implementer', 'organigram', 0),
(171, 'ro_community_mobilizer', 'bank_control_sheet', 0),
(172, 'ro_community_mobilizer', 'email', 0),
(173, 'ro_community_mobilizer', 'role_and_permission', 0),
(174, 'ro_community_mobilizer', 'module_and_submodule', 0),
(175, 'ro_community_mobilizer', 'appearance', 0),
(176, 'ro_community_mobilizer', 'manage_roles', 0),
(177, 'ro_community_mobilizer', 'dashboard', 1),
(178, 'ro_community_mobilizer', 'profile', 1),
(179, 'ro_community_mobilizer', 'forms', 0),
(180, 'ro_community_mobilizer', 'form_settings', 0),
(181, 'ro_community_mobilizer', 'notification', 0),
(182, 'ro_community_mobilizer', 'view_project', 0),
(183, 'ro_community_mobilizer', 'project_tasks', 0),
(184, 'ro_community_mobilizer', 'create_task', 0),
(185, 'ro_community_mobilizer', 'organigram', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bee_permissions_user`
--

CREATE TABLE `bee_permissions_user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(35) NOT NULL,
  `sub_module_id` varchar(35) NOT NULL,
  `sub_module_url` varchar(100) NOT NULL,
  `permission` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bee_permission_module`
--

CREATE TABLE `bee_permission_module` (
  `id` int(11) NOT NULL,
  `role_id` varchar(50) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `permission` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_permission_module`
--

INSERT INTO `bee_permission_module` (`id`, `role_id`, `module_id`, `permission`) VALUES
(1, 'ro_administrator', 'dashboard', 1),
(2, 'ro_administrator', 'reports', 1),
(3, 'ro_administrator', 'settings', 1),
(4, 'ro_administrator', 'banks', 1),
(5, 'ro_administrator', 'user', 1),
(6, 'ro_administrator', 'cws_forms', 1),
(8, 'ro_field_user', 'dashboard', 1),
(9, 'ro_field_user', 'reports', 0),
(10, 'ro_field_user', 'settings', 0),
(11, 'ro_field_user', 'banks', 0),
(12, 'ro_field_user', 'user', 1),
(13, 'ro_field_user', 'cws_forms', 1),
(14, 'ro_field_user', 'projects', 0),
(15, 'ro_field_user', 'notification', 0),
(16, 'ro_administrator', 'projects', 1),
(17, 'ro_administrator', 'notification', 1),
(18, 'ro_field_user', 'organigram', 0),
(19, 'ro_executive_director', 'dashboard', 1),
(20, 'ro_executive_director', 'reports', 1),
(21, 'ro_executive_director', 'settings', 0),
(22, 'ro_executive_director', 'banks', 0),
(23, 'ro_executive_director', 'user', 1),
(24, 'ro_executive_director', 'cws_forms', 0),
(25, 'ro_executive_director', 'projects', 1),
(26, 'ro_executive_director', 'notification', 0),
(27, 'ro_executive_director', 'organigram', 0),
(28, 'ro_program_director', 'dashboard', 1),
(29, 'ro_program_director', 'reports', 0),
(30, 'ro_program_director', 'settings', 0),
(31, 'ro_program_director', 'banks', 0),
(32, 'ro_program_director', 'user', 1),
(33, 'ro_program_director', 'cws_forms', 0),
(34, 'ro_program_director', 'projects', 0),
(35, 'ro_program_director', 'notification', 0),
(36, 'ro_program_director', 'organigram', 0),
(37, 'ro_finance_director', 'dashboard', 1),
(38, 'ro_finance_director', 'reports', 0),
(39, 'ro_finance_director', 'settings', 0),
(40, 'ro_finance_director', 'banks', 0),
(41, 'ro_finance_director', 'user', 1),
(42, 'ro_finance_director', 'cws_forms', 0),
(43, 'ro_finance_director', 'projects', 0),
(44, 'ro_finance_director', 'notification', 0),
(45, 'ro_finance_director', 'organigram', 0),
(46, 'ro_state_directors', 'dashboard', 1),
(47, 'ro_state_directors', 'reports', 0),
(48, 'ro_state_directors', 'settings', 0),
(49, 'ro_state_directors', 'banks', 0),
(50, 'ro_state_directors', 'user', 1),
(51, 'ro_state_directors', 'cws_forms', 0),
(52, 'ro_state_directors', 'projects', 0),
(53, 'ro_state_directors', 'notification', 0),
(54, 'ro_state_directors', 'organigram', 0),
(55, 'ro_program_officers', 'dashboard', 1),
(56, 'ro_program_officers', 'reports', 0),
(57, 'ro_program_officers', 'settings', 0),
(58, 'ro_program_officers', 'banks', 0),
(59, 'ro_program_officers', 'user', 1),
(60, 'ro_program_officers', 'cws_forms', 0),
(61, 'ro_program_officers', 'projects', 0),
(62, 'ro_program_officers', 'notification', 0),
(63, 'ro_program_officers', 'organigram', 0),
(64, 'ro_program_officer_admin', 'dashboard', 1),
(65, 'ro_program_officer_admin', 'reports', 0),
(66, 'ro_program_officer_admin', 'settings', 0),
(67, 'ro_program_officer_admin', 'banks', 0),
(68, 'ro_program_officer_admin', 'user', 1),
(69, 'ro_program_officer_admin', 'cws_forms', 0),
(70, 'ro_program_officer_admin', 'projects', 0),
(71, 'ro_program_officer_admin', 'notification', 0),
(72, 'ro_program_officer_admin', 'organigram', 0),
(73, 'ro_program_officer_finance', 'dashboard', 1),
(74, 'ro_program_officer_finance', 'reports', 0),
(75, 'ro_program_officer_finance', 'settings', 0),
(76, 'ro_program_officer_finance', 'banks', 0),
(77, 'ro_program_officer_finance', 'user', 1),
(78, 'ro_program_officer_finance', 'cws_forms', 0),
(79, 'ro_program_officer_finance', 'projects', 0),
(80, 'ro_program_officer_finance', 'notification', 0),
(81, 'ro_program_officer_finance', 'organigram', 0),
(82, 'ro_office_asistant', 'dashboard', 1),
(83, 'ro_office_asistant', 'reports', 0),
(84, 'ro_office_asistant', 'settings', 0),
(85, 'ro_office_asistant', 'banks', 0),
(86, 'ro_office_asistant', 'user', 1),
(87, 'ro_office_asistant', 'cws_forms', 0),
(88, 'ro_office_asistant', 'projects', 0),
(89, 'ro_office_asistant', 'notification', 0),
(90, 'ro_office_asistant', 'organigram', 0),
(91, 'ro_program_implementer', 'dashboard', 1),
(92, 'ro_program_implementer', 'reports', 0),
(93, 'ro_program_implementer', 'settings', 0),
(94, 'ro_program_implementer', 'banks', 0),
(95, 'ro_program_implementer', 'user', 1),
(96, 'ro_program_implementer', 'cws_forms', 0),
(97, 'ro_program_implementer', 'projects', 0),
(98, 'ro_program_implementer', 'notification', 0),
(99, 'ro_program_implementer', 'organigram', 0),
(100, 'ro_community_mobilizer', 'dashboard', 1),
(101, 'ro_community_mobilizer', 'reports', 0),
(102, 'ro_community_mobilizer', 'settings', 0),
(103, 'ro_community_mobilizer', 'banks', 0),
(104, 'ro_community_mobilizer', 'user', 1),
(105, 'ro_community_mobilizer', 'cws_forms', 0),
(106, 'ro_community_mobilizer', 'projects', 0),
(107, 'ro_community_mobilizer', 'notification', 0),
(108, 'ro_community_mobilizer', 'organigram', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bee_projects`
--

CREATE TABLE `bee_projects` (
  `id` int(11) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `project_name` varchar(90) NOT NULL,
  `project_description` text NOT NULL,
  `project_status` enum('complete','pending','in-process','cancelled','active','in-active') NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(35) NOT NULL,
  `last_updated` datetime NOT NULL,
  `last_updated_by` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_projects`
--

INSERT INTO `bee_projects` (`id`, `project_id`, `project_name`, `project_description`, `project_status`, `created_at`, `created_by`, `last_updated`, `last_updated_by`) VALUES
(1, 'human-dignity', 'Human Dignity', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'active', '2021-07-07 18:54:18', 'super', '2021-07-07 18:54:18', 'super'),
(2, 'livelihood', 'Livelihood', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur', 'active', '2021-07-08 11:11:46', 'super', '2021-07-08 11:11:46', 'super');

-- --------------------------------------------------------

--
-- Table structure for table `bee_project_member`
--

CREATE TABLE `bee_project_member` (
  `id` int(11) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `user_id` varchar(35) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_team_leader` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bee_rent_tracker`
--

CREATE TABLE `bee_rent_tracker` (
  `id` int(11) NOT NULL,
  `name_of_the_office` text NOT NULL,
  `premises_address` text NOT NULL,
  `owner_name` text NOT NULL,
  `rental_agreement_start_date` text NOT NULL,
  `rental_agreement_end_date` text NOT NULL,
  `monthly_rent` text NOT NULL,
  `payment_due_date` text NOT NULL,
  `owner_pan` text NOT NULL,
  `owner_bank_account_details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_rent_tracker`
--

INSERT INTO `bee_rent_tracker` (`id`, `name_of_the_office`, `premises_address`, `owner_name`, `rental_agreement_start_date`, `rental_agreement_end_date`, `monthly_rent`, `payment_due_date`, `owner_pan`, `owner_bank_account_details`) VALUES
(1, 'Bihar Risorce Centre', 'C/O Binod Kr Jha, Rajiv Nager Road No-15(F), Patna-24, Bihar', 'Mrs.Nirmala Jha', '1st Day of June 2017', '30-Apr-18', '11,000.00', 'Befor 10th of  every Month', 'ATAPJ1781C', 'A/C  Holder NIRMALA JHA                                    A/C NO-442410110001521                                       IFSC CODE-BKID0004424                                    ADDRESS- Rajiv Nagar main road -15 (F) patna -24, bihar'),
(2, 'Odisha Resource Centre', 'Plot No.283,B-Duplex,Kalyani Plaza,PO-Patrapada,Bhubaneswar-751019.Odisha,India', 'Mrs.Paramita Beuria', '1st April 2016', '31st March 2018', '13,500.00', 'Before 7th of every month', 'AFEPB2962D', 'IndusIand Bank, A/C-151528012801, Branch-Patrapara, IFSC Code-INDB0000366'),
(3, 'Jharkhand Resource Centre', '29_A, Hume Pipe Area, Behind New Court, Sakchi Jamshedpur \n', 'Mrs Manju Singh', '12th March\'2018', '11th Feb\'2019', '12000.00', 'on or before 12th of every month', '', 'MANJU SINGH\nA/C NO-163410100024432\nIFSC CODE- ANDB0001634'),
(4, 'Jharkhand Resource Centre, Madhupur', 'SAPAHA, Ward No- 2; Bawan (52) Bigha) At &Po. Madhupur, DEOGHAR- 815353', 'Mr. Musrat Hussain', '1st May\'2017', '31st March\' 2018', '3500.00', 'by 15th of every month', '', 'MUSRAT HUSSAIN\nA/C NO-449910110016180\nIFSC CODE- BKID0004499'),
(5, 'Jharkhand Resource Centre, Tisri', 'Near Pani Tanki,\nPo-Tisri, Dist; Giridih-815317', 'Mr. Pravin Singh', '15th July\'2017', '15th June\'2018', '2500.00', 'by 15th of every month', '', 'PRAVIN SINGH\nA/C NO-478910110000917\nIFSC CODE- BKID0004789'),
(6, 'Jharkhand Resource Centre,Jamtara', 'Bina Bhawan\nPlot No-428/4, \nBesude Railway Line\nCourt Road Jamtara\nSarkheldih,Jamtara-815351', 'Mrs Bina Devi', '16th Jan\'2018', '15th Dec\'2018', '1600.00', 'by 10th of every month', '', 'BINA DEVI\nA/C NO-24450110004432\nIFSC CODE- UCBA0002445'),
(7, 'Jharkhand Resource Centre,Galudih', 'Dulichand Agrawal', 'Mr. Dulichand Agrawal', '1st March\'2018', '31st  May\'2018', '4000.00', 'by 15th of every month', '', 'Dulichand AgrAwal\nA/C NO-14380100003586\nIFSC CODE:BARBOGALUDI'),
(8, 'Telangana Resource Centre ', 'H.No.12-13-440,Street No.1,Tarnaka ,Secunderabad 500017', 'Mr.T.Srinivas Reddy ', '1 St November 2016', '31 th Oct  2018', '14568', 'by 5th of Every month ', '', 'Corporation bank,Tarnaka branch ,Account no. 520101015306840,IFSC:CORP000623'),
(9, 'Narsapur Field Offcie ', 'Laxman ,H.No.3-28/7,Sree Ram nagar colony,near Bus stand,Narsapur,Medak district Talangana ', 'Mr.Modampally Laxman ', '1 st May \'2018', '31 st March 2018', '4500', 'by 5th of Every month ', '', 'Andhra bank ,ADNB0001733,Account No.173310100158696'),
(10, 'CFI-Office ,Chandanagar', 'T.Vittal, H.No.2-131/1,Engineers Enclave ,Huda road,Chandanagar,Gangaram,RR District,Hyd 500050', 'Mr.T.Vittal ', '1st January 2018', '30 th June 2018', '12000', 'by 5th of Every month ', '', 'Vijaya Bank , Account No. 403101011007620, VIJB0004031'),
(11, '', '', '', '', '', '', '', '', ''),
(12, '', '', '', '', 'Rental agreement on Rs. 100 bond paper', '', '', '', ''),
(13, '', '', '', '', 'If term exceeds 11 months it should be registered ', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bee_roles`
--

CREATE TABLE `bee_roles` (
  `id` int(11) NOT NULL,
  `role_id` varchar(50) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_description` text NOT NULL,
  `modified_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_roles`
--

INSERT INTO `bee_roles` (`id`, `role_id`, `role_name`, `role_description`, `modified_at`) VALUES
(4, 'ro_administrator', 'administrator', 'All access to backend', '2021-06-22 07:30:13'),
(5, 'ro_user', 'user', 'Limited access', '2021-06-22 07:31:01'),
(6, 'ro_executive_director', 'executive director', 'Executive Director', '2021-06-29 07:24:40'),
(7, 'ro_program_director', 'program director', 'Program Director', '2021-06-29 07:25:16'),
(8, 'ro_finance_director', 'finance director', 'Finance Director', '2021-06-29 07:25:24'),
(9, 'ro_state_directors', 'state directors', 'State Directors', '2021-06-29 07:25:35'),
(10, 'ro_program_officers', 'program officers', 'Program Officers', '2021-06-29 07:26:08'),
(11, 'ro_field_user', 'field user', 'Field User limited access', '2021-07-03 03:45:10'),
(12, 'ro_program_officer_admin', 'program officer admin', '', '2021-09-28 14:36:32'),
(13, 'ro_program_officer_finance', 'program officer finance', 'Program Officer Finance', '2021-09-28 14:37:05'),
(14, 'ro_office_asistant', 'office asistant ', 'Office Asistant ', '2021-09-28 14:37:27'),
(15, 'ro_program_implementer', 'program implementer', 'Program Implementer', '2021-09-28 14:37:43'),
(16, 'ro_program_associate_finance', 'program associate finance', 'Program Associate Finance', '2021-09-28 14:37:57'),
(17, 'ro_community_mobilizer', 'community mobilizer', 'Community Mobilizer', '2021-09-28 14:38:05'),
(18, 'ro_field_extension_worker', 'field extension worker', 'Field Extension Worker', '2021-09-28 14:38:20'),
(19, 'ro_program_specialist_state_director', 'program specialist state director', 'Program Specialist (State Director)', '2021-09-28 14:39:01'),
(20, 'ro_field_officer', 'field officer', 'Field Officer', '2021-09-28 14:39:17'),
(21, 'ro_program_implementer_program_coordinator', 'program implementer program coordinator', 'Program Implementer (Program Coordinator)', '2021-09-28 14:39:37'),
(22, 'ro_field_facilitator', 'field facilitator', 'Field Facilitator', '2021-09-28 14:47:16');

-- --------------------------------------------------------

--
-- Table structure for table `bee_salary_summer`
--

CREATE TABLE `bee_salary_summer` (
  `id` int(11) NOT NULL,
  `month` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `basic` double NOT NULL,
  `da` double NOT NULL,
  `hra` double NOT NULL,
  `cca` double NOT NULL,
  `gross` double NOT NULL,
  `ma` double NOT NULL,
  `ta` double NOT NULL,
  `total_gross` double NOT NULL,
  `gratuity` double NOT NULL,
  `medical_insurance` double NOT NULL,
  `org_pf` double NOT NULL,
  `ctc` double NOT NULL,
  `pf` double NOT NULL,
  `itax` double NOT NULL,
  `ptax` double NOT NULL,
  `sat` double NOT NULL,
  `lop` double NOT NULL,
  `net` double NOT NULL,
  `covid_contribution` double NOT NULL,
  `net_payable` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_salary_summer`
--

INSERT INTO `bee_salary_summer` (`id`, `month`, `name`, `designation`, `basic`, `da`, `hra`, `cca`, `gross`, `ma`, `ta`, `total_gross`, `gratuity`, `medical_insurance`, `org_pf`, `ctc`, `pf`, `itax`, `ptax`, `sat`, `lop`, `net`, `covid_contribution`, `net_payable`) VALUES
(1, ' S.No', ' NAME ', ' DESIGNATION ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '25', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 1, 25),
(3, '25', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 26),
(4, '24', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(5, '25', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(6, '25', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(7, '25', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(8, '25', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(9, '25', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(10, '26', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(11, '27', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(12, '27', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(13, '24', 'ABHA SINHA ', ' FO ', 9, 936, 2, 936, 14, 0, 0, 14, 0, 1, 29, 1, 0, 0, 0, 0, 0, 12, 0, 0),
(14, '22', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 500, 21),
(15, '22', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 21),
(16, '21', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(17, '22', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(18, '22', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(19, '22', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(20, '22', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(21, '22', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(22, '23', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(23, '24', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(24, '24', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(25, '21', 'AMBUJ KUMAR GHOREI', ' FO ', 7, 750, 2, 750, 11, 0, 0, 0, 0, 1, 12, 990, 0, 0, 0, 0, 0, 10, 0, 0),
(26, '14', 'AMIT KUMAR SHARMA', ' OA ', 1, 172, 515, 172, 2, 0, 0, 2, 0, 1, 246, 6, 227, 0, 0, 0, 0, 4, 0, 0),
(27, '14A', 'AMIT KUMAR SHARMA', ' OA ', 3, 365, 1, 365, 5, 0, 0, 5, 0, 0, 522, 11, 482, 0, 0, 0, 0, 10, 0, 0),
(28, '11', 'AMIT KUMAR SHARMA', ' OA ', 3, 365, 1, 365, 5, 0, 0, 0, 0, 522, 6, 482, 0, 0, 0, 0, 0, 4, 0, 0),
(29, '12A', 'AMIT KUMAR SHARMA', ' OA ', 2, 243, 731, 243, 3, 0, 0, 0, 0, 348, 4, 321, 0, 0, 0, 0, 0, 3, 0, 0),
(30, '52', 'AMITY PURTY', '', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 500, 12),
(31, '52', 'AMITY PURTY', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 13),
(32, '51', 'AMITY PURTY', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(33, '51', 'AMITY PURTY', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(34, '50', 'AMITY PURTY', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(35, '50', 'AMITY PURTY', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(36, '50', 'AMITY PURTY', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(37, '49', 'AMITY PURTY', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(38, '48', 'AMRITA BHATTACHARJEE', ' LS Coor. - 1 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 1, 32),
(39, '47', 'AMRITA BHATTACHARJEE', ' LS Coor. - 1 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 33),
(40, '46', 'AMRITA BHATTACHARJEE', ' LS Coor. - 1 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(41, '46', 'AMRITA BHATTACHARJEE', ' LS Coor. - 1 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(42, '45', 'AMRITA BHATTACHARJEE', ' LS Coor. - 1 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(43, '45', 'AMRITA BHATTACHARJEE', ' LS Coor. - 1 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(44, '45', 'AMRITA BHATTACHARJEE', ' LS Coor. - 1 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(45, '44', 'AMRITA BHATTACHARJEE', ' LS Coor. - 1 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(46, '35', 'ANAND MAHATO', 'PA', 15, 1, 4, 1, 23, 0, 0, 23, 0, 0, 2, 48, 2, 0, 200, 0, 0, 43, 0, 0),
(47, '32', 'ANAND MAHATO', 'PA', 17, 1, 5, 1, 25, 0, 0, 0, 0, 2, 28, 2, 0, 200, 0, 0, 0, 23, 0, 0),
(48, '31', 'ANANDA MAHATO', ' PGS -TRAINER ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 47, 900, 46),
(49, '50', 'ANIL KUMAR GOPE', '', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 500, 12),
(50, '50', 'ANIL KUMAR GOPE', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 13),
(51, '49', 'ANIL KUMAR GOPE', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(52, '49', 'ANIL KUMAR GOPE', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(53, '48', 'ANIL KUMAR GOPE', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(54, '48', 'ANIL KUMAR GOPE', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(55, '48', 'ANIL KUMAR GOPE', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(56, '47', 'ANIL KUMAR GOPE', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(57, '47', 'ARUN KUMAR', ' SR Coor. ', 13, 1, 4, 1, 20, 0, 0, 20, 0, 0, 1, 43, 1, 0, 200, 0, 0, 39, 1, 38),
(58, '46', 'ARUN KUMAR', ' SR Coor. ', 13, 1, 4, 1, 20, 0, 0, 20, 0, 0, 1, 43, 1, 0, 200, 0, 0, 39, 0, 39),
(59, '45', 'ARUN KUMAR', ' SR Coor. ', 13, 1, 4, 1, 20, 0, 0, 20, 0, 0, 1, 43, 1, 0, 200, 0, 0, 39, 0, 0),
(60, '45', 'ARUN KUMAR', ' SR Coor. ', 13, 1, 4, 1, 20, 0, 0, 20, 0, 0, 1, 43, 1, 0, 200, 0, 0, 39, 0, 0),
(61, '44', 'ARUN KUMAR', ' SR Coor. ', 13, 1, 4, 1, 20, 0, 0, 20, 0, 0, 1, 43, 1, 0, 200, 0, 0, 39, 0, 0),
(62, '44', 'ARUN KUMAR', ' SR Coor. ', 13, 1, 4, 1, 20, 0, 0, 20, 0, 0, 1, 43, 1, 0, 200, 0, 0, 39, 0, 0),
(63, '44', 'ARUN KUMAR', ' SR Coor. ', 13, 1, 4, 1, 20, 0, 0, 20, 0, 0, 1, 43, 1, 0, 200, 0, 0, 39, 0, 0),
(64, '43', 'ARUN KUMAR', ' SR Coor. ', 13, 1, 4, 1, 20, 0, 0, 20, 0, 0, 1, 43, 1, 0, 200, 0, 0, 39, 0, 0),
(65, '41', 'BABITA DEVI', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 1, 16),
(66, '40', 'BABITA DEVI', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 17),
(67, '39', 'BABITA DEVI', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(68, '39', 'BABITA DEVI', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(69, '38', 'BABITA DEVI', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(70, '38', 'BABITA DEVI', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(71, '38', 'BABITA DEVI', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(72, '37', 'BABITA DEVI', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(73, '6', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 2, 73),
(74, '6', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 75),
(75, '5', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(76, '6', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(77, '6', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(78, '6', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(79, '6', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(80, '6', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(81, '7', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(82, '8', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(83, '8', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 2, 716, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(84, '6', 'BALAKRUSHNA PANDA', 'PC', 25, 2, 7, 2, 38, 800, 500, 39, 716, 3, 3, 3, 3, 0, 200, 0, 0, 0, 0, 0),
(85, '55', 'BIMAL KHANDIAT', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(86, '54', 'BIMAL KHANDIAT', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 5, 0, 8, 0, 0),
(87, '54', 'BIMAL KHANDIAT', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(88, '53', 'BIMAL KHANDIAT', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(89, '34', 'BISWAJIT PATRA', 'PM', 24, 2, 7, 2, 36, 0, 0, 36, 0, 0, 3, 76, 3, 0, 200, 0, 0, 69, 1, 68),
(90, '33', 'BISWAJIT PATRA', 'PM', 23, 2, 7, 2, 35, 0, 0, 35, 0, 0, 3, 75, 3, 0, 200, 0, 0, 68, 0, 68),
(91, '32', 'BISWAJIT PATRA', 'PM', 24, 2, 7, 2, 36, 0, 0, 36, 0, 0, 3, 75, 3, 0, 200, 0, 0, 68, 0, 0),
(92, '32', 'BISWAJIT PATRA', 'PM', 24, 2, 7, 2, 36, 0, 0, 36, 0, 0, 3, 75, 3, 0, 200, 0, 0, 68, 0, 0),
(93, '31', 'BISWAJIT PATRA', 'PM', 24, 2, 7, 2, 36, 0, 0, 36, 0, 0, 3, 75, 3, 0, 200, 0, 0, 68, 0, 0),
(94, '31', 'BISWAJIT PATRA', 'PM', 24, 2, 7, 2, 36, 0, 0, 36, 0, 0, 3, 75, 3, 0, 200, 0, 0, 68, 0, 0),
(95, '40', 'CHANDAN KUMAR SAW', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 400, 17),
(96, '39', 'CHANDAN KUMAR SAW', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 17),
(97, '38', 'CHANDAN KUMAR SAW', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(98, '38', 'CHANDAN KUMAR SAW', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(99, '37', 'CHANDAN KUMAR SAW', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(100, '37', 'CHANDAN KUMAR SAW', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(101, '37', 'CHANDAN KUMAR SAW', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(102, '36', 'CHANDAN KUMAR SAW', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(103, '51', 'CHANDRA JAMUDA', '', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 500, 12),
(104, '51', 'CHANDRA JAMUDA', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 13),
(105, '50', 'CHANDRA JAMUDA', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(106, '50', 'CHANDRA JAMUDA', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(107, '49', 'CHANDRA JAMUDA', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(108, '49', 'CHANDRA JAMUDA', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(109, '49', 'CHANDRA JAMUDA', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(110, '48', 'CHANDRA JAMUDA', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(111, '14', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 1, 69),
(112, '14', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 70),
(113, '13', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 0),
(114, '13', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 0),
(115, '13', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 0),
(116, '13', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 0),
(117, '13', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 0),
(118, '13', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 0),
(119, '14', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 0),
(120, '15', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 0),
(121, '15', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 2, 661, 3, 80, 3, 0, 200, 0, 0, 70, 0, 0),
(122, '12', 'D KALYANI', ' PO - F & A ', 23, 2, 7, 2, 35, 800, 500, 37, 661, 3, 78, 3, 3, 200, 200, 0, 0, 30, 0, 0),
(123, '35', 'DAIMANTI SAVAIYA', 'FF', 6, 669, 2, 670, 10, 0, 0, 0, 0, 957, 11, 884, 0, 0, 0, 0, 0, 9, 0, 0),
(124, '38', 'DAMAYANTI', 'FF', 6, 603, 1, 603, 9, 0, 0, 9, 0, 0, 862, 18, 795, 0, 0, 0, 0, 17, 0, 0),
(125, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 0, 0, 76, 1, 74),
(126, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 0, 0, 76, 0, 76),
(127, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 6, 0, 70, 0, 0),
(128, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 6, 0, 70, 0, 0),
(129, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 6, 0, 70, 0, 0),
(130, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 6, 0, 70, 0, 0),
(131, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 6, 0, 70, 0, 0),
(132, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 6, 0, 70, 0, 0),
(133, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 6, 0, 70, 0, 0),
(134, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 6, 0, 70, 0, 0),
(135, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 2, 957, 3, 86, 3, 0, 200, 16, 0, 60, 0, 0),
(136, '1', 'G MADHAVI', 'PO', 25, 2, 7, 2, 38, 800, 500, 39, 957, 3, 84, 3, 3, 200, 16, 0, 0, 16, 0, 0),
(137, '32', 'G SUCHARITA', ' Consultant ', 35, 0, 0, 0, 35, 0, 0, 35, 0, 0, 0, 70, 0, 5, 0, 0, 0, 64, 0, 0),
(138, '29', 'G SUCHARITA', ' Consultant ', 35, 0, 0, 0, 35, 0, 0, 0, 0, 0, 35, 0, 2, 0, 0, 0, 0, 32, 0, 0),
(139, '3', 'GNANA PRAKASAM', 'ED', 19, 1, 5, 1, 29, 400, 750, 30, 1, 605, 2, 65, 2, 0, 200, 0, 0, 57, 5, 52),
(140, '3 A', 'GNANA PRAKASAM', ' ED ', 45, 4, 13, 4, 68, 400, 750, 69, 4, 606, 6, 149, 6, 0, 0, 0, 0, 132, 0, 132),
(141, '3', 'GNANA PRAKASAM', 'ED', 19, 1, 5, 1, 29, 400, 750, 30, 1, 605, 2, 65, 2, 0, 200, 0, 0, 57, 0, 57),
(142, '3 A', 'GNANA PRAKASAM', ' ED ', 45, 4, 13, 4, 68, 400, 750, 69, 4, 606, 6, 149, 6, 0, 0, 0, 0, 132, 0, 132),
(143, '35', 'HELINA FRANCIS', ' ACCOUNTANT ', 14, 1, 4, 1, 21, 0, 300, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 800, 41),
(144, '34', 'HELINA FRANCIS', ' ACCOUNTANT ', 14, 1, 4, 1, 21, 0, 300, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 42),
(145, '33', 'HELINA FRANCIS', ' ACCOUNTANT ', 14, 1, 4, 1, 21, 0, 300, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(146, '33', 'HELINA FRANCIS', ' ACCOUNTANT ', 14, 1, 4, 1, 21, 0, 300, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(147, '32', 'HELINA FRANCIS', ' ACCOUNTANT ', 14, 1, 4, 1, 21, 0, 300, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(148, '32', 'HELINA FRANCIS', ' ACCOUNTANT ', 14, 1, 4, 1, 21, 0, 300, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(149, '32', 'HELINA FRANCIS', ' ACCOUNTANT ', 14, 1, 4, 1, 21, 0, 300, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(150, '31', 'HELINA FRANCIS', ' ACCOUNTANT ', 14, 1, 4, 1, 21, 0, 300, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(151, '31', 'HELINA FRANCIS', ' ACCOUNTANT ', 14, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(152, '31', 'HELINA FRANCIS', 'ACCOUNTANT', 14, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(153, '31', 'HELINA FRANCIS', 'ACCOUNTANT', 14, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(154, '28', 'HELINA FRANCIS', 'ACCOUNTANT', 14, 1, 4, 1, 22, 0, 0, 22, 0, 2, 46, 1, 1, 200, 200, 0, 0, 17, 0, 0),
(155, '46', 'INDRAJIT KUMAR', ' MIS & DOC OFF ', 14, 1, 4, 1, 22, 0, 200, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 1, 41),
(156, '45', 'INDRAJIT KUMAR', ' MIS & DOC OFF ', 14, 1, 4, 1, 22, 0, 200, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 42),
(157, '44', 'INDRAJIT KUMAR', ' MIS & DOC OFF ', 14, 1, 4, 1, 22, 0, 200, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(158, '44', 'INDRAJIT KUMAR', ' MIS & DOC OFF ', 14, 1, 4, 1, 22, 0, 200, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(159, '43', 'INDRAJIT KUMAR', ' MIS & DOC OFF ', 14, 1, 4, 1, 22, 0, 200, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(160, '43', 'INDRAJIT KUMAR', ' MIS & DOC OFF ', 14, 1, 4, 1, 22, 0, 200, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(161, '43', 'INDRAJIT KUMAR', ' MIS & DOC OFF ', 14, 1, 4, 1, 22, 0, 200, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(162, '42', 'INDRAJIT KUMAR', ' MIS & DOC OFF ', 14, 1, 4, 1, 22, 0, 200, 22, 0, 0, 2, 46, 1, 0, 200, 0, 0, 42, 0, 0),
(163, '53', 'INTESAM BANO  ', '', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 500, 12),
(164, '53', 'INTESAM BANO  ', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 13),
(165, '52', 'INTESAM BANO  ', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(166, '52', 'INTESAM BANO  ', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(167, '51', 'INTESAM BANO  ', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(168, '51', 'INTESAM BANO  ', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(169, '51', 'INTESAM BANO  ', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(170, '50', 'INTESAM BANO  ', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(171, '65', 'JAGDISH PARAIYA', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(172, '64', 'JAGDISH PARAIYA', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(173, '64', 'JAGDISH PARAIYA', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(174, '63', 'JAGDISH PARAIYA', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(175, '37', 'JANO SOY', 'FF', 5, 513, 1, 513, 7, 0, 0, 7, 0, 0, 734, 16, 678, 0, 0, 0, 0, 14, 0, 0),
(176, '34', 'JANO SOY', 'FF', 11, 0, 0, 0, 11, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0),
(177, '62', 'JITENDRA KUMAR ', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(178, '61', 'JITENDRA KUMAR ', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(179, '61', 'JITENDRA KUMAR ', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(180, '60', 'JITENDRA KUMAR ', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(181, '61', 'JITENDRA KUMAR MISHRA', ' CHILD PROT.COOR ', 10, 1, 3, 1, 15, 0, 0, 15, 0, 0, 1, 32, 1, 0, 150, 0, 0, 29, 0, 0),
(182, '60', 'JITENDRA KUMAR MISHRA', ' CHILD PROT.COOR ', 10, 1, 3, 1, 15, 0, 0, 15, 0, 0, 1, 32, 1, 0, 150, 0, 0, 29, 0, 0),
(183, '60', 'JITENDRA KUMAR MISHRA', ' CHILD PROT.COOR ', 10, 1, 3, 1, 15, 0, 0, 15, 0, 0, 1, 32, 1, 0, 150, 0, 0, 29, 0, 0),
(184, '59', 'JITENDRA KUMAR MISHRA', ' CHILD PROT.COOR ', 10, 1, 3, 1, 15, 0, 0, 15, 0, 0, 1, 32, 1, 0, 150, 0, 0, 29, 0, 0),
(185, '31', 'JOHN BIRENDRA LAKRA ', 'PM', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 52, 0, 0),
(186, '30', 'JOHN BIRENDRA LAKRA ', 'PM', 23, 2, 6, 2, 34, 0, 0, 34, 0, 0, 3, 72, 3, 0, 200, 0, 0, 66, 0, 0),
(187, '10', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 1, 88),
(188, '10', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 90),
(189, '9', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 0),
(190, '10', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 0),
(191, '9', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 0),
(192, '9', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 0),
(193, '9', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 0),
(194, '9', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 0),
(195, '10', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 0),
(196, '11', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 0),
(197, '10', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 2, 991, 4, 102, 4, 0, 200, 0, 0, 90, 0, 0),
(198, '8', 'K K PANDEY', ' PROG.CO ', 30, 3, 9, 3, 45, 800, 500, 47, 991, 4, 99, 0, 4, 0, 200, 0, 0, 42, 0, 0),
(199, '15', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 0, 0, 24, 500, 23),
(200, '15', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 0, 0, 24, 0, 24),
(201, '14', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 0, 0, 24, 0, 0),
(202, '14', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 2, 0, 22, 0, 0),
(203, '14', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 2, 0, 22, 0, 0),
(204, '14', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 2, 0, 22, 0, 0),
(205, '14', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 2, 0, 22, 0, 0),
(206, '14', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 2, 0, 22, 0, 0),
(207, '15', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 2, 0, 22, 0, 0),
(208, '16', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 2, 0, 22, 0, 0),
(209, '16', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 12, 706, 476, 1, 27, 1, 0, 0, 3, 0, 21, 0, 0),
(210, '13', 'K PRAMEELA', ' OA ', 7, 771, 2, 771, 11, 800, 300, 706, 476, 1, 14, 1, 0, 0, 3, 0, 0, 8, 0, 0),
(211, '64', 'KARTIK KAPRI', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(212, '63', 'KARTIK KAPRI', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(213, '63', 'KARTIK KAPRI', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(214, '62', 'KARTIK KAPRI', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(215, '45', 'KAUSHIK SAMANTO', ' LS COOR - Livehood ', 16, 1, 5, 1, 25, 0, 0, 25, 0, 0, 2, 52, 2, 0, 200, 0, 0, 47, 1, 46),
(216, '44', 'KAUSHIK SAMANTO', ' LS COOR - Livehood ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 47, 0, 47),
(217, '43', 'KAUSHIK SAMANTO', ' LS COOR - Livehood ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 52, 2, 0, 200, 0, 0, 47, 0, 0),
(218, '43', 'KAUSHIK SAMANTO', ' LS COOR - Livehood ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 52, 2, 0, 200, 0, 0, 47, 0, 0),
(219, '42', 'KAUSHIK SAMANTO', ' LS COOR - Livehood ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 52, 2, 0, 200, 0, 0, 47, 0, 0),
(220, '42', 'KAUSHIK SAMANTO', ' LS COOR - Livehood ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 52, 2, 0, 200, 0, 0, 47, 0, 0),
(221, '42', 'KAUSHIK SAMANTO', ' LS COOR - Livehood ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 52, 2, 0, 200, 0, 0, 47, 0, 0),
(222, '41', 'KAUSHIK SAMANTO', ' LS COOR - Livehood ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 52, 2, 0, 200, 0, 0, 47, 0, 0),
(223, '2', 'KAUSHIK SAMANTO', 'PO', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 52, 2, 0, 200, 0, 0, 47, 0, 0),
(224, '2', 'KAUSHIK SAMANTO', 'PO', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 52, 2, 0, 200, 0, 0, 47, 0, 0),
(225, '33', 'KAUSHIK SAMANTO', 'PO-Finance', 14, 1, 4, 1, 22, 800, 500, 23, 1, 350, 2, 50, 1, 0, 200, 0, 0, 44, 0, 0),
(226, '31', 'KAUSHIK SAMANTO', 'PO-Finance', 14, 1, 4, 1, 22, 800, 500, 23, 350, 2, 49, 1, 1, 200, 200, 0, 0, 19, 0, 0),
(227, '13', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 900, 43),
(228, '13', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 0, 44),
(229, '12', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 0, 0),
(230, '12', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 0, 0),
(231, '12', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 0, 0),
(232, '12', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 0, 0),
(233, '12', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 0, 0),
(234, '12', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 0, 0),
(235, '13', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 0, 0),
(236, '14', 'KISHORE KUMAR RAZAK', ' SOA ', 14, 1, 4, 1, 22, 800, 300, 23, 1, 1, 2, 51, 1, 0, 200, 0, 0, 44, 0, 0),
(237, '20', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 500, 18),
(238, '20', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 19),
(239, '19', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(240, '20', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(241, '20', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(242, '20', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(243, '20', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(244, '20', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(245, '21', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(246, '22', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(247, '22', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(248, '19', 'LAXMI SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 965, 21, 891, 891, 0, 0, 0, 0, 8, 0, 0),
(249, '38', 'MAJHESWAR KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 500, 17),
(250, '37', 'MAJHESWAR KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 17),
(251, '36', 'MAJHESWAR KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(252, '36', 'MAJHESWAR KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(253, '35', 'MAJHESWAR KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(254, '35', 'MAJHESWAR KISKU', ' Comm. Mobilizer ', 7, 721, 2, 721, 10, 0, 0, 10, 0, 0, 1, 22, 952, 0, 0, 0, 0, 20, 0, 0),
(255, '35', 'MAJHESWAR KISKU', ' Comm. Mobilizer ', 7, 721, 2, 721, 10, 0, 0, 10, 0, 0, 1, 22, 952, 0, 0, 0, 0, 20, 0, 0),
(256, '34', 'MAJHESWAR KISKU', ' Comm. Mobilizer ', 7, 721, 2, 721, 10, 0, 0, 10, 0, 0, 1, 22, 952, 0, 0, 0, 0, 20, 0, 0),
(257, '19', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 500, 18),
(258, '19', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 19),
(259, '18', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(260, '19', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(261, '19', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(262, '19', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(263, '19', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(264, '19', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(265, '20', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(266, '21', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(267, '21', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(268, '18', 'MANDODARI MAHATO', ' FO ', 6, 675, 2, 675, 10, 0, 0, 0, 0, 965, 11, 891, 0, 0, 0, 0, 0, 9, 0, 0),
(269, '17', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 1, 58),
(270, '17', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 59),
(271, '16', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(272, '17', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(273, '17', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(274, '17', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(275, '17', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(276, '17', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(277, '18', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(278, '19', 'MD SHABAN', ' PO ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(279, '34', 'MD SHABAN', ' PC ', 19, 1, 5, 1, 29, 800, 500, 31, 1, 375, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(280, '63', 'MD SHAHUD ANSARI', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(281, '62', 'MD SHAHUD ANSARI', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(282, '62', 'MD SHAHUD ANSARI', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(283, '61', 'MD SHAHUD ANSARI', ' ANIMATOR ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(284, '54', 'MENKA BOIPAI', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(285, '54', 'MENKA BOIPAI', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(286, '54', 'MENKA BOIPAI', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(287, '53', 'MENKA BOIPAI', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(288, '53', 'MENKA BOIPAI', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(289, '52', 'MENKA BOIPAI', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(290, '24', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 500, 20),
(291, '24', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 20),
(292, '23', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 0),
(293, '24', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 0),
(294, '24', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 0),
(295, '24', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 0),
(296, '24', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 0),
(297, '24', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 0),
(298, '25', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 0),
(299, '26', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 0),
(300, '26', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 0, 1, 22, 950, 0, 0, 0, 0, 20, 0, 0),
(301, '23', 'MIRZA RAM SOREN', ' FO ', 7, 720, 2, 720, 10, 0, 0, 10, 0, 1, 22, 950, 950, 0, 0, 0, 0, 8, 0, 0),
(302, '12', 'MONIMOY SINHA', ' DIRECTOR  ', 10, 1, 3, 1, 16, 400, 500, 16, 980, 0, 1, 36, 1, 0, 200, 0, 0, 32, 0, 32),
(303, '12 A', 'MONIMOY SINHA', ' DIRECTOR ', 29, 2, 8, 2, 44, 400, 500, 45, 2, 902, 4, 98, 3, 0, 0, 0, 0, 87, 10, 77),
(304, '12', 'MONIMOY SINHA', ' DIRECTOR  ', 10, 1, 3, 1, 15, 400, 500, 16, 953, 0, 1, 35, 1, 1, 200, 0, 0, 30, 0, 30),
(305, '12 A', 'MONIMOY SINHA', ' DIRECTOR ', 30, 3, 9, 3, 45, 400, 500, 45, 2, 902, 4, 99, 3, 0, 0, 0, 0, 87, 0, 87),
(306, '11', 'MONIMOY SINHA', ' DIRECTOR  ', 28, 2, 8, 2, 42, 400, 500, 43, 2, 0, 3, 93, 3, 4, 200, 0, 0, 78, 0, 0),
(307, '11 A', 'MONIMOY SINHA', ' DIRECTOR ', 29, 2, 8, 2, 43, 400, 500, 44, 2, 902, 3, 96, 3, 0, 0, 0, 0, 85, 0, 0),
(308, '4', 'MONIMOY SINHA', 'EXECUTIVE DIRECTOR', 16, 1, 5, 1, 25, 800, 500, 26, 1, 0, 2, 57, 2, 0, 200, 0, 0, 50, 0, 0),
(309, '4 A', 'MONIMOY SINHA', ' DIRECTOR  ', 40, 4, 12, 4, 60, 0, 1, 61, 3, 902, 5, 132, 5, 4, 200, 0, 0, 112, 0, 0),
(310, '11', 'MONIMOY SINHA', ' DIRECTOR  ', 36, 3, 10, 3, 54, 0, 1, 55, 3, 902, 5, 120, 4, 4, 0, 0, 0, 102, 0, 0),
(311, '11A', 'MONIMOY SINHA', 'EXECUTIVE DIRECTOR', 20, 2, 6, 2, 31, 800, 500, 32, 1, 0, 2, 69, 2, 0, 200, 0, 0, 61, 0, 0),
(312, '11', 'MONIMOY SINHA', ' DIRECTOR  ', 36, 3, 10, 3, 54, 0, 1, 55, 3, 902, 4, 120, 4, 4, 0, 0, 0, 102, 0, 0),
(313, '11A', 'MONIMOY SINHA', 'EXECUTIVE DIRECTOR', 20, 2, 6, 2, 31, 800, 500, 32, 1, 0, 2, 69, 2, 0, 200, 0, 0, 61, 0, 0),
(314, '11', 'MONIMOY SINHA', ' DIRECTOR  ', 36, 3, 10, 3, 54, 0, 1, 55, 3, 902, 4, 119, 4, 4, 0, 0, 0, 101, 0, 0),
(315, '11A', 'MONIMOY SINHA', 'EXECUTIVE DIRECTOR', 20, 2, 6, 2, 31, 800, 500, 32, 1, 0, 2, 70, 2, 0, 200, 0, 0, 62, 0, 0),
(316, '11', 'MONIMOY SINHA', ' DIRECTOR  ', 36, 3, 10, 3, 54, 0, 1, 55, 3, 902, 4, 119, 4, 4, 0, 0, 0, 101, 0, 0),
(317, '11A', 'MONIMOY SINHA', 'EXECUTIVE DIRECTOR', 20, 2, 6, 2, 31, 800, 500, 32, 1, 0, 2, 70, 2, 0, 200, 0, 0, 62, 0, 0),
(318, '12', 'MONIMOY SINHA', ' DIRECTOR  ', 35, 3, 10, 3, 53, 0, 1, 54, 3, 902, 4, 117, 4, 4, 0, 0, 0, 100, 0, 0),
(319, '12A', 'MONIMOY SINHA', 'EXECUTIVE DIRECTOR', 21, 2, 6, 2, 32, 800, 500, 33, 1, 0, 3, 72, 2, 0, 200, 0, 0, 63, 0, 0),
(320, '6', 'MONIMOY SINHA', ' ED ', 22, 2, 6, 2, 34, 0, 500, 34, 2, 0, 3, 74, 3, 0, 200, 0, 0, 66, 0, 0),
(321, ' \'6 A', 'MONIMOY SINHA', ' DIRECTOR  ', 34, 3, 10, 3, 51, 800, 1, 53, 3, 902, 4, 115, 4, 10, 0, 0, 0, 91, 0, 0),
(322, '6', 'MONIMOY SINHA', ' ED ', 22, 2, 6, 2, 34, 0, 500, 34, 2, 0, 3, 74, 3, 0, 200, 0, 0, 66, 0, 0),
(323, ' \'6 A', 'MONIMOY SINHA', ' DIRECTOR  ', 34, 3, 10, 3, 51, 800, 1, 53, 3, 902, 4, 115, 4, 10, 0, 0, 0, 91, 0, 0),
(324, '4', 'MONIMOY SINHA', ' ED ', 22, 2, 6, 2, 34, 0, 500, 34, 0, 3, 72, 3, 0, 0, 200, 0, 0, 31, 0, 0),
(325, ' \'4 A', 'MONIMOY SINHA', ' DIRECTOR  ', 34, 3, 10, 3, 51, 800, 1, 53, 902, 4, 111, 4, 0, 22, 0, 0, 0, 0, 0, 0),
(326, '2', 'N RAJENDRA PRASAD', 'DIR - F & A', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 3, 25),
(327, '2 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 63),
(328, '2', 'N RAJENDRA PRASAD', 'DIR - F & A', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 28),
(329, '2 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 63),
(330, '2', 'N RAJENDRA PRASAD', 'DIR - F & A', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(331, '2 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 0),
(332, '2', 'N RAJENDRA PRASAD', 'DIR - F & A', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(333, '2 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 0),
(334, '2', 'N RAJENDRA PRASAD', 'DIR - F & A', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(335, '2 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 0),
(336, '2', 'N RAJENDRA PRASAD', 'DIR - F & A', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(337, '2 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 0),
(338, '2', 'N RAJENDRA PRASAD', 'DIR - F & A', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(339, '2 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 0),
(340, '2', 'N RAJENDRA PRASAD', 'DIR - F & A', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(341, '2 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 0),
(342, '6', 'N RAJENDRA PRASAD', 'FD', 16, 1, 5, 1, 25, 400, 500, 25, 1, 716, 2, 56, 2, 0, 200, 0, 0, 49, 0, 0),
(343, '6A', 'N RAJENDRA PRASAD', 'DIR - F & A', 13, 1, 4, 1, 20, 400, 500, 21, 1, 0, 1, 47, 1, 0, 0, 0, 0, 41, 0, 0),
(344, '4', 'N RAJENDRA PRASAD', 'FD', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(345, '4 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 0),
(346, '4', 'N RAJENDRA PRASAD', 'FD', 9, 921, 2, 921, 13, 400, 500, 14, 844, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(347, '4 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 1, 716, 3, 71, 2, 0, 200, 0, 0, 63, 0, 0),
(348, '2', 'N RAJENDRA PRASAD', 'FD', 9, 921, 2, 921, 13, 400, 500, 14, 0, 1, 30, 1, 1, 0, 0, 0, 0, 12, 0, 0),
(349, '2 A', 'N RAJENDRA PRASAD', 'FD', 21, 2, 6, 2, 32, 400, 500, 33, 716, 3, 69, 2, 2, 200, 200, 0, 0, 27, 0, 0),
(350, '37', 'NAND GOPAL NAG', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 500, 17),
(351, '36', 'NAND GOPAL NAG', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 17),
(352, '35', 'NAND GOPAL NAG', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(353, '35', 'NAND GOPAL NAG', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(354, '34', 'NAND GOPAL NAG', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(355, '34', 'NAND GOPAL NAG', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(356, '34', 'NAND GOPAL NAG', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(357, '33', 'NAND GOPAL NAG', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(358, '59', 'NARESH DAS', ' MOBILIZER ', 8, 855, 2, 855, 12, 0, 0, 12, 0, 0, 1, 26, 1, 0, 0, 0, 0, 24, 0, 0),
(359, '58', 'NARESH DAS', ' MOBILIZER ', 8, 855, 2, 855, 12, 0, 0, 12, 0, 0, 1, 26, 1, 0, 0, 0, 0, 24, 0, 0),
(360, '58', 'NARESH DAS', ' MOBILIZER ', 8, 855, 2, 855, 12, 0, 0, 12, 0, 0, 1, 26, 1, 0, 0, 0, 0, 24, 0, 0),
(361, '57', 'NARESH DAS', ' MOBILIZER ', 8, 855, 2, 855, 12, 0, 0, 12, 0, 0, 1, 26, 1, 0, 0, 0, 0, 24, 0, 0),
(362, '36', 'NONI GOPAL SINGH ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 500, 17),
(363, '35', 'NONI GOPAL SINGH ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 17),
(364, '34', 'NONI GOPAL SINGH ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(365, '34', 'NONI GOPAL SINGH ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(366, '33', 'NONI GOPAL SINGH ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(367, '33', 'NONI GOPAL SINGH ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(368, '33', 'NONI GOPAL SINGH ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(369, '32', 'NONI GOPAL SINGH ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(370, '8', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 3, 86),
(371, '8', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 89),
(372, '7', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 0),
(373, '8', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 0),
(374, '8', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 0),
(375, '8', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 0),
(376, '8', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 0),
(377, '8', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 0),
(378, '9', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 0),
(379, '10', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 0),
(380, '9', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 2, 531, 4, 108, 4, 0, 200, 6, 0, 89, 0, 0),
(381, '7', 'P L NARAYANA', ' JD ', 32, 3, 9, 3, 48, 800, 1, 50, 531, 4, 105, 0, 4, 0, 200, 0, 0, 45, 0, 0),
(382, '4', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 500, 45),
(383, '4', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 46),
(384, '3', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 0),
(385, '3', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 0),
(386, '3', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 0),
(387, '3', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 0),
(388, '3', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 0),
(389, '3', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 0),
(390, '3', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 0),
(391, '5', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 0),
(392, '5', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 1, 550, 2, 52, 2, 0, 200, 0, 0, 46, 0, 0),
(393, '3', 'P VIMALA', 'PA', 15, 1, 4, 1, 23, 800, 400, 24, 550, 2, 51, 2, 2, 200, 200, 0, 0, 19, 0, 0),
(394, '33', 'PRAMOD KUMAR', ' PO ', 18, 1, 5, 1, 28, 0, 0, 28, 0, 0, 2, 59, 2, 0, 200, 0, 0, 53, 1, 52),
(395, '32', 'PRAMOD KUMAR', ' PO ', 18, 1, 5, 1, 28, 0, 0, 28, 0, 0, 2, 59, 2, 0, 200, 0, 0, 53, 0, 53),
(396, '31', 'PRAMOD KUMAR', ' PO ', 18, 1, 5, 1, 28, 0, 0, 28, 0, 0, 2, 59, 2, 0, 200, 0, 0, 53, 0, 0),
(397, '31', 'PRAMOD KUMAR', ' PO ', 18, 1, 5, 1, 28, 0, 0, 28, 0, 0, 2, 59, 2, 0, 200, 0, 0, 53, 0, 0),
(398, '30', 'PRAMOD KUMAR', ' PO ', 18, 1, 5, 1, 28, 0, 0, 28, 0, 0, 2, 59, 2, 0, 200, 0, 0, 53, 0, 0),
(399, '30', 'PRAMOD KUMAR', ' PO ', 18, 1, 5, 1, 28, 0, 0, 28, 0, 0, 2, 59, 2, 0, 200, 0, 0, 53, 0, 0),
(400, '30', 'PRAMOD KUMAR', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 0, 2, 65, 2, 0, 200, 0, 0, 59, 0, 0),
(401, '29', 'PRAMOD KUMAR', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 0, 2, 65, 2, 0, 200, 0, 0, 59, 0, 0),
(402, '30', 'PRAMOD KUMAR', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 0, 2, 65, 2, 0, 200, 0, 0, 59, 0, 0),
(403, '3', 'PRAMOD KUMAR', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 0, 2, 65, 2, 0, 200, 0, 0, 59, 0, 0),
(404, '19', 'PRAMOD KUMAR', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 0, 2, 65, 2, 0, 200, 0, 0, 59, 0, 0),
(405, '16', 'PRAMOD KUMAR', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 2, 65, 2, 2, 200, 200, 0, 0, 25, 0, 0),
(406, '32', 'RAHUL KUMAR SINGH', ' PO ', 34, 0, 0, 0, 0, 0, 0, 34, 0, 0, 0, 34, 0, 0, 200, 0, 0, 33, 1, 32),
(407, '31', 'RAHUL KUMAR SINGH', ' PO ', 34, 0, 0, 0, 34, 0, 0, 34, 0, 0, 0, 34, 0, 0, 200, 0, 0, 33, 0, 33),
(408, '30', 'RAHUL KUMAR SINGH', ' PO ', 34, 0, 0, 0, 34, 0, 0, 34, 0, 0, 0, 34, 0, 0, 200, 0, 0, 33, 0, 0),
(409, '30', 'RAHUL KUMAR SINGH', ' PO ', 34, 0, 0, 0, 34, 0, 0, 34, 0, 0, 0, 34, 0, 0, 200, 0, 0, 33, 0, 0),
(410, '66', 'RAHUL KUMAR SINGH', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 0, 2, 65, 2, 0, 200, 0, 0, 59, 0, 0),
(411, '65', 'RAHUL KUMAR SINGH', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 0, 2, 65, 2, 0, 200, 0, 0, 59, 0, 0),
(412, '65', 'RAHUL KUMAR SINGH', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 0, 2, 65, 2, 0, 200, 0, 0, 59, 0, 0),
(413, '64', 'RAHUL KUMAR SINGH', ' PO ', 20, 2, 6, 2, 31, 0, 0, 31, 0, 0, 2, 65, 2, 0, 200, 0, 0, 59, 0, 0),
(414, '18', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 1, 52),
(415, '18', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 53),
(416, '17', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 0),
(417, '18', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 0),
(418, '18', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 0),
(419, '18', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 0),
(420, '18', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 0),
(421, '18', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 0),
(422, '19', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 0),
(423, '20', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 0),
(424, '20', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 0, 2, 58, 2, 0, 200, 0, 0, 53, 0, 0),
(425, '17', 'RAJ LAXMI PURTY', ' PO ', 18, 1, 5, 1, 27, 0, 0, 27, 0, 2, 58, 2, 2, 200, 200, 0, 0, 22, 0, 0),
(426, '7', 'RAJESH KUMAR JHA', ' JD ', 9, 963, 2, 963, 14, 400, 500, 15, 883, 0, 1, 32, 1, 0, 200, 0, 0, 29, 5, 24),
(427, '7 A', 'RAJESH KUMAR JHA', ' JD ', 24, 2, 7, 2, 36, 400, 500, 37, 2, 902, 3, 81, 3, 0, 0, 0, 0, 71, 0, 71),
(428, '7', 'RAJESH KUMAR JHA', ' JD ', 9, 953, 2, 953, 14, 400, 500, 15, 873, 0, 1, 32, 1, 500, 200, 0, 0, 28, 0, 28),
(429, '7 A', 'RAJESH KUMAR JHA', ' JD ', 24, 2, 7, 2, 36, 400, 500, 37, 2, 902, 3, 82, 3, 0, 0, 0, 0, 72, 0, 72),
(430, '6', 'RAJESH KUMAR JHA', ' JD ', 9, 925, 2, 925, 13, 400, 500, 14, 848, 0, 1, 31, 1, 500, 200, 0, 0, 27, 0, 0),
(431, '6 A', 'RAJESH KUMAR JHA', ' JD ', 24, 2, 7, 2, 37, 400, 500, 38, 2, 902, 3, 82, 3, 0, 0, 0, 0, 73, 0, 0),
(432, '7', 'RAJESH KUMAR JHA', ' JD ', 16, 1, 4, 1, 24, 400, 500, 25, 1, 0, 2, 53, 2, 3, 200, 0, 0, 44, 0, 0),
(433, '7 A', 'RAJESH KUMAR JHA', ' JD ', 24, 2, 7, 2, 37, 400, 500, 38, 2, 902, 3, 83, 3, 0, 0, 0, 0, 73, 0, 0),
(434, '7', 'RAJESH KUMAR JHA', ' JD ', 15, 1, 4, 1, 23, 400, 500, 24, 1, 0, 2, 53, 2, 3, 200, 0, 0, 44, 0, 0),
(435, '7 A', 'RAJESH KUMAR JHA', ' JD ', 25, 2, 7, 2, 37, 400, 500, 38, 2, 902, 3, 83, 3, 0, 0, 0, 0, 73, 0, 0),
(436, '7', 'RAJESH KUMAR JHA', ' JD ', 15, 1, 4, 1, 23, 400, 500, 24, 1, 0, 2, 53, 2, 3, 200, 0, 0, 44, 0, 0),
(437, '7 A', 'RAJESH KUMAR JHA', ' JD ', 25, 2, 7, 2, 37, 400, 500, 38, 2, 902, 3, 84, 3, 0, 0, 0, 0, 74, 0, 0),
(438, '7', 'RAJESH KUMAR JHA', ' JD ', 15, 1, 4, 1, 23, 400, 500, 24, 1, 0, 2, 52, 2, 3, 200, 0, 0, 43, 0, 0),
(439, '7 A', 'RAJESH KUMAR JHA', ' JD ', 25, 2, 7, 2, 38, 400, 500, 38, 2, 902, 3, 84, 3, 0, 0, 10, 0, 64, 0, 0),
(440, '7', 'RAJESH KUMAR JHA', ' JD ', 15, 1, 4, 1, 23, 400, 500, 24, 1, 0, 2, 52, 2, 3, 200, 0, 0, 43, 0, 0),
(441, '7 A', 'RAJESH KUMAR JHA', ' JD ', 25, 2, 7, 2, 38, 400, 500, 39, 2, 902, 3, 84, 3, 0, 0, 10, 0, 64, 0, 0),
(442, '8', 'RAJESH KUMAR JHA', ' JD ', 15, 1, 4, 1, 23, 400, 500, 24, 1, 0, 2, 51, 2, 3, 200, 0, 0, 42, 0, 0),
(443, '8 A', 'RAJESH KUMAR JHA', ' JD ', 25, 2, 7, 2, 38, 400, 500, 39, 2, 902, 3, 85, 3, 0, 0, 10, 0, 65, 0, 0),
(444, '9', 'RAJESH KUMAR JHA', ' JD ', 15, 1, 4, 1, 23, 400, 500, 24, 1, 0, 2, 51, 2, 100, 200, 0, 0, 45, 0, 0),
(445, '9 A', 'RAJESH KUMAR JHA', ' JD ', 25, 2, 7, 2, 38, 400, 500, 39, 2, 902, 3, 85, 3, 0, 0, 10, 0, 65, 0, 0),
(446, '13', 'RAJESH KUMAR JHA', ' PM ', 15, 1, 4, 1, 22, 400, 500, 23, 1, 0, 2, 50, 2, 0, 200, 0, 0, 45, 0, 0),
(447, '13A', 'RAJESH KUMAR JHA', ' JD ', 25, 2, 7, 2, 38, 400, 500, 39, 2, 902, 3, 86, 3, 0, 0, 10, 0, 66, 0, 0),
(448, '15', 'RAJESH KUMAR JHA', ' JD ', 26, 2, 7, 2, 39, 400, 500, 40, 902, 3, 84, 3, 0, 0, 0, 10, 0, 26, 0, 0),
(449, '15 A', 'RAJESH KUMAR JHA', ' DIRECTOR ', 15, 1, 4, 1, 22, 400, 500, 23, 0, 2, 48, 1, 0, 0, 200, 0, 0, 0, 0, 0),
(450, '66', 'RAJKUMARI KISKU', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0);
INSERT INTO `bee_salary_summer` (`id`, `month`, `name`, `designation`, `basic`, `da`, `hra`, `cca`, `gross`, `ma`, `ta`, `total_gross`, `gratuity`, `medical_insurance`, `org_pf`, `ctc`, `pf`, `itax`, `ptax`, `sat`, `lop`, `net`, `covid_contribution`, `net_payable`) VALUES
(451, '66', 'RAJKUMARI KISKU', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(452, '65', 'RAJKUMARI KISKU', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(453, '26', 'RAJSHREE', ' PO ', 9, 914, 2, 914, 13, 400, 250, 14, 838, 0, 1, 30, 1, 0, 0, 0, 0, 27, 1, 26),
(454, '26 A', 'RAJSHREE', ' PO ', 12, 1, 3, 1, 19, 400, 250, 20, 1, 1, 1, 44, 1, 0, 200, 0, 0, 38, 0, 38),
(455, '25 B', 'RAJSHREE', '', 2, 296, 889, 296, 4, 0, 0, 4, 272, 0, 408, 9, 391, 0, 0, 0, 0, 8, 0, 8),
(456, '26', 'RAJSHREE', ' PO ', 9, 914, 2, 914, 13, 400, 250, 14, 838, 0, 1, 30, 1, 0, 0, 0, 0, 27, 0, 27),
(457, '26 A', 'RAJSHREE', ' PO ', 12, 1, 3, 1, 19, 400, 250, 19, 1, 1, 1, 43, 1, 0, 200, 0, 0, 37, 0, 37),
(458, '25 B', 'RAJSHREE', '', 3, 317, 952, 317, 4, 0, 0, 4, 291, 0, 436, 10, 419, 0, 0, 0, 0, 9, 0, 9),
(459, '25', 'RAJSHREE', ' PO ', 9, 917, 2, 917, 13, 400, 250, 14, 840, 0, 1, 30, 1, 0, 0, 0, 0, 27, 0, 0),
(460, '25 A', 'RAJSHREE', ' PO ', 12, 1, 3, 1, 18, 400, 250, 19, 1, 1, 1, 43, 1, 0, 200, 0, 0, 37, 0, 0),
(461, '25 B', 'RAJSHREE', ' PO - ADMN & FIN ', 3, 322.8, 968.4, 322.8, 4, 0, 0, 4, 296, 0, 444, 10, 426, 0, 0, 0, 0, 9, 0, 0),
(462, '26', 'RAJSHREE', ' PO ', 9, 916, 2, 916, 13, 400, 250, 14, 839, 0, 1, 30, 1, 0, 0, 0, 0, 27, 0, 0),
(463, '26 A', 'RAJSHREE', ' PO ', 13, 1, 3, 1, 19, 400, 250, 20, 1, 1, 1, 44, 1, 0, 200, 0, 0, 38, 0, 0),
(464, '26 B', 'RAJSHREE', ' PO - ADMN & FIN ', 2, 276, 829, 276, 4, 0, 0, 4, 253, 0, 380, 8, 365, 0, 0, 0, 0, 7, 0, 0),
(465, '26', 'RAJSHREE', ' PO ', 8, 897, 2, 897, 13, 400, 250, 14, 822, 0, 1, 30, 1, 0, 0, 0, 0, 27, 0, 0),
(466, '26 A', 'RAJSHREE', ' PO ', 12, 1, 3, 1, 19, 400, 250, 19, 1, 1, 1, 44, 1, 0, 200, 0, 0, 38, 0, 0),
(467, '53', 'RAJSHREE', ' PO - ADMN & FIN ', 3, 317, 949, 317, 4, 0, 0, 4, 290, 0, 435, 10, 418, 0, 0, 0, 0, 9, 0, 0),
(468, '26', 'RAJSHREE', ' PO ', 8, 885, 2, 885, 13, 400, 250, 13, 811, 0, 1, 29, 1, 0, 0, 0, 0, 26, 0, 0),
(469, '26 A', 'RAJSHREE', ' PO ', 13, 1, 3, 1, 19, 400, 250, 20, 1, 1, 1, 44, 1, 0, 200, 0, 0, 38, 0, 0),
(470, '26 B', 'RAJSHREE', ' PO - ADMN & FIN ', 3, 317, 952, 317, 4, 0, 0, 4, 291, 0, 436, 10, 419, 0, 0, 0, 0, 9, 0, 0),
(471, '26', 'RAJSHREE', ' PO ', 9, 957, 2, 957, 14, 400, 250, 15, 877, 0, 1, 32, 1, 0, 0, 0, 0, 28, 0, 0),
(472, '26 A', 'RAJSHREE', ' PO ', 13, 1, 3, 1, 19, 400, 250, 20, 1, 1, 1, 45, 1, 0, 200, 0, 0, 38, 0, 0),
(473, '26 B', 'RAJSHREE', ' PO - ADMN & FIN ', 2, 226, 678, 226, 3, 0, 0, 3, 207, 0, 311, 7, 298, 0, 0, 0, 0, 6, 0, 0),
(474, '58', 'RAM PRASAD DAS', ' Edu.Coor. ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(475, '57', 'RAM PRASAD DAS', ' Edu.Coor. ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(476, '57', 'RAM PRASAD DAS', ' Edu.Coor. ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(477, '56', 'RAM PRASAD DAS', ' Edu.Coor. ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(478, '11', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 2, 0, 0, 0, 137, 10, 127),
(479, '11', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 5, 123),
(480, '10', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 0, 0),
(481, '11', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 0, 0),
(482, '10', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 0, 0),
(483, '10', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 0, 0),
(484, '10', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 0, 0),
(485, '10', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 0, 0),
(486, '11', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 0, 0),
(487, '12', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 0, 0),
(488, '11', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 70, 0, 0, 0, 140, 0, 10, 0, 0, 0, 129, 0, 0),
(489, '9', 'RAMKUMAR BENDAPUDI', ' DIRECTOR-PROG. ', 70, 0, 0, 0, 70, 0, 0, 0, 0, 0, 70, 0, 5, 0, 0, 0, 0, 64, 0, 0),
(490, '48', 'RAMRAI JAMUDA', ' ANIMATOR ', 5, 561, 1, 561, 8, 0, 0, 8, 0, 0, 803, 17, 741, 0, 0, 0, 0, 16, 0, 16),
(491, '47', 'RAMRAI JAMUDA', ' ANIMATOR ', 5, 561, 1, 561, 8, 0, 0, 8, 0, 0, 803, 17, 741, 0, 0, 0, 0, 16, 0, 0),
(492, '47', 'RAMRAI JAMUDA', ' ANIMATOR ', 5, 561, 1, 561, 8, 0, 0, 8, 0, 0, 803, 17, 741, 0, 0, 0, 0, 16, 0, 0),
(493, '46', 'RAMRAI JAMUDA', ' ANIMATOR ', 5, 561, 1, 561, 8, 0, 0, 8, 0, 0, 803, 17, 741, 0, 0, 0, 0, 16, 0, 0),
(494, '46', 'RAMRAI JAMUDA', ' ANIMATOR ', 5, 561, 1, 561, 8, 0, 0, 8, 0, 0, 803, 17, 741, 0, 0, 0, 0, 16, 0, 0),
(495, '46', 'RAMRAI JAMUDA', ' ANIMATOR ', 5, 561, 1, 561, 8, 0, 0, 8, 0, 0, 803, 17, 741, 0, 0, 0, 0, 16, 0, 0),
(496, '45', 'RAMRAI JAMUDA', ' ANIMATOR ', 5, 561, 1, 561, 8, 0, 0, 8, 0, 0, 803, 17, 741, 0, 0, 0, 0, 16, 0, 0),
(497, '42', 'ROSE MARY KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 500, 17),
(498, '41', 'ROSE MARY KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 17),
(499, '40', 'ROSE MARY KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(500, '40', 'ROSE MARY KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(501, '39', 'ROSE MARY KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(502, '39', 'ROSE MARY KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(503, '39', 'ROSE MARY KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(504, '38', 'ROSE MARY KISKU', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(505, '16', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 500, 27),
(506, '16', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 27),
(507, '15', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 0),
(508, '15', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 0),
(509, '15', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 0),
(510, '15', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 0),
(511, '15', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 0),
(512, '15', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 0),
(513, '16', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 0),
(514, '17', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 0),
(515, '17', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 14, 809, 902, 1, 31, 1, 0, 0, 0, 0, 27, 0, 0),
(516, '14', 'S ANASUYA', 'OA', 8, 883, 2, 883, 13, 800, 300, 809, 902, 1, 17, 1, 0, 0, 0, 0, 0, 13, 0, 0),
(517, '21', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 500, 18),
(518, '21', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 19),
(519, '20', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(520, '21', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(521, '21', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(522, '21', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(523, '21', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(524, '21', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(525, '22', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(526, '23', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(527, '23', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 10, 0, 0, 965, 21, 891, 0, 0, 0, 0, 19, 0, 0),
(528, '20', 'SABITA SOREN', ' FO ', 6, 675, 2, 675, 10, 0, 0, 0, 0, 965, 11, 891, 0, 0, 0, 0, 0, 9, 0, 0),
(529, '23', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 700, 20),
(530, '23', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 21),
(531, '22', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(532, '23', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(533, '23', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(534, '23', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(535, '23', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(536, '23', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(537, '24', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(538, '25', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(539, '25', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 0, 1, 23, 990, 0, 0, 0, 0, 21, 0, 0),
(540, '22', 'SANJAY MUKHERJEE', ' FO ', 7, 750, 2, 750, 11, 0, 0, 11, 0, 1, 23, 990, 990, 0, 0, 0, 0, 9, 0, 0),
(541, '29', 'SEFALI RANI', ' FO ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(542, '29', 'SEFALI RANI', ' FO ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(543, '29', 'SEFALI RANI', ' FO ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(544, '28', 'SEFALI RANI', ' FO ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(545, '29', 'SEFALI RANI', ' FO ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(546, '30', 'SEFALI RANI', ' FO ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(547, '30', 'SEFALI RANI', ' FO ', 8, 0, 0, 0, 8, 0, 0, 8, 0, 0, 0, 16, 0, 0, 0, 0, 0, 16, 0, 0),
(548, '27', 'SEFALI RANI', ' FO ', 8, 0, 0, 0, 8, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 8, 0, 0),
(549, '31', 'MD SHABAN', ' PC ', 23, 2, 7, 2, 35, 800, 500, 36, 703, 3, 77, 3, 3, 200, 200, 0, 0, 30, 0, 0),
(550, '33', 'SHANKAR KAIBARTA', 'FF', 8, 852, 2, 852, 12, 0, 0, 0, 0, 1, 14, 1, 0, 0, 0, 0, 0, 11, 0, 0),
(551, '36', 'SHANKAR KEWAT', 'FF', 6, 653, 1, 653, 9, 0, 0, 9, 0, 0, 934, 20, 862, 0, 0, 0, 0, 18, 0, 0),
(552, '27', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 500, 16),
(553, '27', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 17),
(554, '26', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 0),
(555, '27', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 0),
(556, '27', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 0),
(557, '27', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 0),
(558, '27', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 0),
(559, '26', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 0),
(560, '27', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 0),
(561, '28', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 0),
(562, '28', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 8, 0, 0, 856, 18, 790, 0, 0, 0, 0, 17, 0, 0),
(563, '25', 'SHANTANU BADHUK', ' FO ', 5, 598, 1, 598, 8, 0, 0, 0, 0, 856, 9, 790, 0, 0, 0, 0, 0, 8, 0, 0),
(564, '56', 'SHARMISTHA DAS', ' PROJECT INCHARGE ', 21, 2, 6, 2, 31, 0, 0, 31, 0, 0, 3, 66, 2, 0, 200, 0, 0, 60, 0, 0),
(565, '55', 'SHARMISTHA DAS', ' PROJECT INCHARGE ', 21, 2, 6, 2, 31, 0, 0, 31, 0, 0, 3, 66, 2, 0, 200, 0, 0, 60, 0, 0),
(566, '55', 'SHARMISTHA DAS', ' PROJECT INCHARGE ', 21, 2, 6, 2, 31, 0, 0, 31, 0, 0, 3, 66, 2, 0, 200, 0, 0, 60, 0, 0),
(567, '54', 'SHARMISTHA DAS', ' PROJECT INCHARGE ', 21, 2, 6, 2, 31, 0, 0, 31, 0, 0, 3, 66, 2, 0, 200, 0, 0, 60, 0, 0),
(568, '28', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 900, 46),
(569, '28', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 46),
(570, '27', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 0),
(571, '28', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 0),
(572, '28', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 0),
(573, '28', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 0),
(574, '28', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 0),
(575, '27', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 0),
(576, '28', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 0),
(577, '29', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 0),
(578, '29', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 0, 2, 51, 2, 0, 200, 0, 0, 46, 0, 0),
(579, '26', 'SHUBHANGI ANAND', ' PO ', 16, 1, 4, 1, 24, 0, 0, 24, 0, 2, 51, 2, 2, 200, 200, 0, 0, 19, 0, 0),
(580, '49', 'SILAS PURTY', ' S R COOR ', 15, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 47, 2, 0, 200, 0, 0, 43, 500, 42),
(581, '49', 'SILAS PURTY', ' S R COOR ', 15, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 47, 2, 0, 200, 0, 0, 43, 0, 43),
(582, '48', 'SILAS PURTY', ' S R COOR ', 15, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 47, 2, 0, 200, 0, 0, 43, 0, 0),
(583, '48', 'SILAS PURTY', ' S R COOR ', 15, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 47, 2, 0, 200, 0, 0, 43, 0, 0),
(584, '47', 'SILAS PURTY', ' S R COOR ', 15, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 47, 2, 0, 200, 0, 0, 43, 0, 0),
(585, '47', 'SILAS PURTY', ' S R COOR ', 15, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 47, 2, 0, 200, 0, 0, 43, 0, 0),
(586, '47', 'SILAS PURTY', ' S R COOR ', 15, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 47, 2, 0, 200, 0, 0, 43, 0, 0),
(587, '46', 'SILAS PURTY', ' S R COOR ', 15, 1, 4, 1, 22, 0, 0, 22, 0, 0, 2, 47, 2, 0, 200, 0, 0, 43, 0, 0),
(588, '44', 'SUKUMAR SINGH', ' LS Coor - 3 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 850, 33),
(589, '43', 'SUKUMAR SINGH', ' LS Coor - 3 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 33),
(590, '42', 'SUKUMAR SINGH', ' LS Coor - 3 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(591, '42', 'SUKUMAR SINGH', ' LS Coor - 3 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(592, '41', 'SUKUMAR SINGH', ' LS Coor - 3 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(593, '41', 'SUKUMAR SINGH', ' LS Coor - 3 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(594, '41', 'SUKUMAR SINGH', ' LS Coor - 3 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(595, '40', 'SUKUMAR SINGH', ' LS Coor - 3 ', 11, 1, 3, 1, 17, 0, 0, 17, 0, 0, 1, 37, 1, 0, 150, 0, 0, 33, 0, 0),
(596, '43', 'SUNITA HANSDA ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 500, 17),
(597, '42', 'SUNITA HANSDA ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 17),
(598, '41', 'SUNITA HANSDA ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(599, '41', 'SUNITA HANSDA ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(600, '40', 'SUNITA HANSDA ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(601, '40', 'SUNITA HANSDA ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(602, '40', 'SUNITA HANSDA ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(603, '39', 'SUNITA HANSDA ', ' ANIMATOR ', 6, 616, 1, 616, 9, 0, 100, 9, 0, 0, 881, 19, 814, 0, 0, 0, 0, 17, 0, 0),
(604, '29', 'SUNITE KERKETTA', ' FO ', 9, 913, 2, 913, 13, 0, 0, 13, 0, 0, 1, 28, 1, 0, 0, 0, 0, 26, 1, 24),
(605, '29', 'SUNITE KERKETTA', ' FO ', 9, 913, 2, 913, 13, 0, 0, 13, 0, 0, 1, 28, 1, 0, 0, 0, 0, 26, 0, 26),
(606, '28', 'SUNITE KERKETTA', ' FO ', 9, 913, 2, 913, 13, 0, 0, 13, 0, 0, 1, 28, 1, 0, 0, 0, 0, 26, 0, 0),
(607, '29', 'SUNITE KERKETTA', ' FO ', 9, 913, 2, 913, 13, 0, 0, 13, 0, 0, 1, 28, 1, 0, 0, 0, 0, 26, 0, 0),
(608, '57', 'SUNITE KERKETTA', '', 9, 913, 2, 913, 13, 0, 0, 13, 0, 0, 1, 28, 1, 0, 0, 0, 0, 26, 0, 0),
(609, '56', 'SUNITE KERKETTA', ' LS 1 Coordinator ', 9, 913, 2, 913, 13, 0, 0, 13, 0, 0, 1, 28, 1, 0, 0, 0, 0, 26, 0, 0),
(610, '56', 'SUNITE KERKETTA', ' LS 1 Coordinator ', 9, 991, 2, 991, 14, 0, 0, 14, 0, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(611, '55', 'SUNITE KERKETTA', ' LS 1 Coordinator ', 9, 991, 2, 991, 14, 0, 0, 14, 0, 0, 1, 31, 1, 0, 0, 0, 0, 28, 0, 0),
(612, '30', 'SURABHI SHARMA', 'PO', 19, 1, 5, 1, 29, 800, 500, 31, 1, 185, 2, 67, 2, 0, 200, 0, 0, 59, 1, 58),
(613, '30', 'SURABHI SHARMA', 'PO', 19, 1, 5, 1, 29, 800, 500, 31, 1, 185, 2, 67, 2, 0, 200, 0, 0, 59, 0, 59),
(614, '29', 'SURABHI SHARMA', 'PO', 19, 1, 5, 1, 29, 800, 500, 31, 1, 185, 2, 67, 2, 0, 200, 0, 0, 59, 0, 0),
(615, '16', 'SURABHI SHARMA', 'MIS & COMM. OFFICER', 22, 2, 6, 2, 33, 800, 500, 34, 2, 185, 3, 75, 2, 0, 200, 0, 0, 66, 0, 0),
(616, '16', 'SURABHI SHARMA', 'MIS & COMM. OFFICER', 22, 2, 6, 2, 33, 800, 500, 34, 2, 185, 3, 75, 2, 0, 200, 0, 0, 66, 0, 0),
(617, '16', 'SURABHI SHARMA', 'MIS & COMM. OFFICER', 22, 2, 6, 2, 33, 800, 500, 34, 2, 185, 3, 75, 2, 0, 200, 0, 0, 66, 0, 0),
(618, '16', 'SURABHI SHARMA', 'MIS & COMM. OFFICER', 22, 2, 6, 2, 33, 800, 500, 34, 2, 185, 3, 75, 2, 0, 200, 0, 0, 66, 0, 0),
(619, '16', 'SURABHI SHARMA', 'MIS & COMM. OFFICER', 22, 2, 6, 2, 33, 800, 500, 34, 2, 185, 3, 75, 2, 0, 200, 0, 0, 66, 0, 0),
(620, '17', 'SURABHI SHARMA', 'MIS & COMM. OFFICER', 22, 2, 6, 2, 33, 800, 500, 34, 2, 185, 3, 75, 2, 0, 200, 0, 0, 66, 0, 0),
(621, '18', 'SURABHI SHARMA', 'MIS & COMM. OFFICER', 22, 2, 6, 2, 33, 800, 500, 34, 2, 185, 3, 75, 2, 0, 200, 0, 0, 66, 0, 0),
(622, '18', 'SURABHI SHARMA', 'MIS & COMM. OFFICER', 22, 2, 6, 2, 33, 800, 500, 34, 2, 185, 3, 75, 2, 0, 200, 0, 0, 66, 0, 0),
(623, '55', 'SURESH KAYAM', '', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 500, 12),
(624, '55', 'SURESH KAYAM', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 13),
(625, '53', 'SURESH KAYAM', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(626, '53', 'SURESH KAYAM', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(627, '52', 'SURESH KAYAM', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(628, '52', 'SURESH KAYAM', ' ANIMATOR ', 4, 456, 1, 456, 6, 0, 0, 6, 0, 0, 653, 14, 603, 0, 0, 0, 0, 13, 0, 0),
(629, '52', 'SURESH KAYAM', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(630, '51', 'SURESH KAYAM', ' ANIMATOR ', 4, 495, 1, 495, 7, 0, 0, 7, 0, 0, 708, 15, 654, 0, 0, 0, 0, 14, 0, 0),
(631, '60', 'UPENDRA KUMAR SAH', ' MOBILIZER ', 3, 399, 1, 399, 5, 0, 0, 5, 0, 0, 571, 12, 527, 0, 0, 0, 0, 11, 0, 0),
(632, '59', 'UPENDRA KUMAR SAH', ' Comm. MOBILIZER ', 8, 855, 2, 855, 12, 0, 0, 12, 0, 0, 1, 26, 1, 0, 0, 0, 0, 24, 0, 0),
(633, '59', 'UPENDRA KUMAR SAH', ' Comm. MOBILIZER ', 8, 855, 2, 855, 12, 0, 0, 12, 0, 0, 1, 26, 1, 0, 0, 0, 0, 24, 0, 0),
(634, '58', 'UPENDRA KUMAR SAH', ' Comm. MOBILIZER ', 8, 855, 2, 855, 12, 0, 0, 12, 0, 0, 1, 26, 1, 0, 0, 0, 0, 24, 0, 0),
(635, '39', 'UPENDRA KUMAR YADAV', ' SR Coor. ', 17, 1, 5, 1, 26, 0, 300, 26, 0, 0, 2, 56, 2, 0, 200, 0, 0, 51, 3, 48),
(636, '38', 'UPENDRA KUMAR YADAV', ' SR Coor. ', 17, 1, 5, 1, 26, 0, 300, 26, 0, 0, 2, 55, 2, 0, 200, 0, 0, 50, 0, 50),
(637, '37', 'UPENDRA KUMAR YADAV', ' SR Coor. ', 17, 1, 5, 1, 26, 0, 300, 26, 0, 0, 2, 55, 2, 0, 200, 0, 0, 50, 0, 0),
(638, '37', 'UPENDRA KUMAR YADAV', ' SR Coor. ', 17, 1, 5, 1, 26, 0, 300, 26, 0, 0, 2, 55, 2, 0, 200, 0, 0, 50, 0, 0),
(639, '36', 'UPENDRA KUMAR YADAV', ' SR Coor. ', 17, 1, 5, 1, 26, 0, 300, 26, 0, 0, 2, 55, 2, 0, 200, 0, 0, 50, 0, 0),
(640, '36', 'UPENDRA KUMAR YADAV', ' SR Coor. ', 17, 1, 5, 1, 26, 0, 300, 26, 0, 0, 2, 55, 2, 0, 200, 0, 0, 50, 0, 0),
(641, '36', 'UPENDRA KUMAR YADAV', ' SR Coor. ', 17, 1, 5, 1, 26, 0, 300, 26, 0, 0, 2, 55, 2, 0, 200, 0, 0, 50, 0, 0),
(642, '35', 'UPENDRA KUMAR YADAV', ' SR Coor. ', 17, 1, 5, 1, 26, 0, 300, 26, 0, 0, 2, 55, 2, 0, 200, 0, 0, 50, 0, 0),
(643, '5', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 3, 62),
(644, '5', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 65),
(645, '4', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 0),
(646, '5', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 0),
(647, '5', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 0),
(648, '5', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 0),
(649, '5', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 0),
(650, '5', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 0),
(651, '5', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 0),
(652, '7', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 0),
(653, '7', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 2, 238, 3, 73, 2, 0, 200, 0, 0, 65, 0, 0),
(654, '5', 'VAISHALI', 'PO', 21, 2, 6, 2, 32, 800, 500, 34, 238, 3, 71, 2, 2, 200, 200, 0, 0, 28, 0, 0),
(655, '9', 'VRINDA RAMAN', ' PROG.CO ', 25, 2, 7, 2, 38, 800, 500, 39, 2, 806, 3, 85, 3, 0, 200, 0, 0, 75, 5, 70),
(656, '9', 'VRINDA RAMAN', ' PROG.CO ', 25, 2, 7, 2, 38, 800, 500, 39, 2, 806, 3, 85, 3, 0, 200, 0, 0, 75, 0, 75),
(657, '8', 'VRINDA RAMAN', ' PROG.CO ', 25, 2, 7, 2, 38, 800, 500, 39, 2, 806, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(658, '9', 'VRINDA RAMAN', ' PROG.CO ', 25, 2, 7, 2, 38, 800, 500, 39, 2, 806, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(659, '4', 'VRINDA RAMAN', ' PROG.CO ', 25, 2, 7, 2, 38, 800, 500, 39, 2, 806, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(660, '4', 'VRINDA RAMAN', ' PROG.CO ', 25, 2, 7, 2, 38, 800, 500, 39, 2, 806, 3, 85, 3, 0, 200, 0, 0, 75, 0, 0),
(661, '4', 'VRINDA RAMAN', ' CONSULTANT ', 21, 0, 0, 0, 21, 0, 0, 21, 0, 0, 0, 42, 0, 3, 0, 0, 0, 39, 0, 0),
(662, '4', 'VRINDA RAMAN', ' CONSULTANT ', 40, 0, 0, 0, 40, 0, 0, 40, 0, 0, 0, 80, 0, 6, 0, 0, 0, 74, 0, 0),
(663, '4', 'VRINDA RAMAN', ' CONSULTANT ', 40, 0, 0, 0, 40, 0, 0, 40, 0, 0, 0, 80, 0, 6, 0, 0, 0, 74, 0, 0),
(664, '13', 'VRINDA RAMAN', ' CONSULTANT ', 40, 0, 0, 0, 40, 0, 0, 40, 0, 0, 0, 80, 0, 6, 0, 0, 0, 74, 0, 0),
(665, '12', 'VRINDA RAMAN', ' CONSULTANT ', 40, 0, 0, 0, 40, 0, 0, 40, 0, 0, 0, 80, 0, 6, 0, 0, 0, 74, 0, 0),
(666, '10', 'VRINDA RAMAN', ' CONSULTANT ', 40, 0, 0, 0, 40, 0, 0, 40, 0, 0, 80, 0, 6, 0, 0, 0, 0, 34, 0, 0),
(667, '54', 'XAVIER SORENG', '', 12, 1, 3, 1, 18, 0, 0, 18, 0, 0, 1, 38, 1, 0, 150, 0, 0, 34, 500, 34),
(668, '54', 'XAVIER SORENG', ' LS Coordinator ', 6, 608, 1, 608, 9, 0, 0, 9, 0, 0, 870, 19, 803, 0, 0, 0, 0, 17, 0, 17),
(669, '', '', '', 0, 0, 0, 0, 0, 0, 0, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bee_sub_modules`
--

CREATE TABLE `bee_sub_modules` (
  `id` int(11) NOT NULL,
  `module_id` varchar(50) NOT NULL,
  `sm_id` varchar(50) NOT NULL,
  `sm_name` varchar(50) NOT NULL,
  `sm_url` varchar(100) NOT NULL,
  `sm_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_sub_modules`
--

INSERT INTO `bee_sub_modules` (`id`, `module_id`, `sm_id`, `sm_name`, `sm_url`, `sm_status`) VALUES
(1, 'banks', 'bank_control_sheet', 'Bank Control Sheet', 'bank/bank-control-sheet', 1),
(2, 'settings', 'email', 'Email', 'email', 1),
(3, 'settings', 'role_and_permission', 'Role and Permission', 'role-and-permission', 1),
(4, 'settings', 'module_and_submodule', 'Module and Submodule', 'modules', 1),
(5, 'settings', 'appearance', 'Appearance', 'appearance', 1),
(6, 'settings', 'manage_roles', 'Manage Roles', 'roles', 1),
(7, 'dashboard', 'dashboard', 'Dashboard', 'dashboard', 1),
(8, 'user', 'profile', 'Profile', 'my-profile', 1),
(9, 'cws_forms', 'forms', 'Forms', 'forms', 1),
(10, 'cws_forms', 'form_settings', 'Form Settings', 'form/settings', 1),
(11, 'notification', 'notification', 'Notification', 'notification', 1),
(12, 'projects', 'view_project', 'View Project', 'project/id/?', 1),
(13, 'projects', 'project_tasks', 'Project Tasks', 'project/task/?', 1),
(14, 'projects', 'create_task', 'Create Task', 'create-task', 1),
(15, 'organigram', 'organigram', 'Organigram', 'organigram', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bee_superuser`
--

CREATE TABLE `bee_superuser` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_superuser`
--

INSERT INTO `bee_superuser` (`id`, `username`, `password`, `last_modified`) VALUES
(1, 'super_user', '5e161f55e3396c3932bbebd794335c34', '2021-06-21 06:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `bee_system_default`
--

CREATE TABLE `bee_system_default` (
  `id` int(11) NOT NULL,
  `type_of` varchar(15) NOT NULL,
  `functionality` varchar(50) NOT NULL,
  `default_value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_system_default`
--

INSERT INTO `bee_system_default` (`id`, `type_of`, `functionality`, `default_value`) VALUES
(1, 'email', 'welcome', 'welcome_to_cws_-_confirm_email'),
(2, 'email', 'forgot_password', 'reset_your_cws_password'),
(3, 'language', 'system', 'english');

-- --------------------------------------------------------

--
-- Table structure for table `bee_tasks`
--

CREATE TABLE `bee_tasks` (
  `id` int(11) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `task_id` varchar(50) NOT NULL,
  `task_title` varchar(100) NOT NULL,
  `task_content` text NOT NULL,
  `user_id` varchar(35) NOT NULL,
  `task_priority` enum('high','medium','low') NOT NULL,
  `due_date` date NOT NULL,
  `task_status` enum('pending','complete') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL,
  `last_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bee_task_media`
--

CREATE TABLE `bee_task_media` (
  `id` int(11) NOT NULL,
  `task_id` varchar(35) NOT NULL,
  `media_type` enum('images','document','video') NOT NULL,
  `media` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_task_media`
--

INSERT INTO `bee_task_media` (`id`, `task_id`, `media_type`, `media`) VALUES
(1, '20210709083506', 'document', ''),
(2, '20210709101645', '', '{%base_url%}media/images/profile_female.png');

-- --------------------------------------------------------

--
-- Table structure for table `bee_users`
--

CREATE TABLE `bee_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `first_name` varchar(35) NOT NULL,
  `middle_name` varchar(35) DEFAULT NULL,
  `last_name` varchar(35) NOT NULL,
  `email` varchar(70) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `dob` varchar(15) DEFAULT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_users`
--

INSERT INTO `bee_users` (`id`, `user_id`, `first_name`, `middle_name`, `last_name`, `email`, `mobile`, `dob`, `email_verified`, `created_at`, `updated_at`) VALUES
(10, '20210903105132', 'Raj', 'D', 'Sharma', 'raj@gmail.comm', '8888888888', '2021-07-07', 0, '2021-09-03 10:51:32', '2021-09-03 10:51:32'),
(12, 'CON_RAM', 'RAM', '', 'KUMAR', 'b_ram_kumar@cws.com', 'NA', '02-01-1970', 1, '2021-09-05 10:51:32', '2021-09-05 10:51:32'),
(13, '96047', 'G', '', 'MADHAVI', 'g.madhavi@cws.com', 'NA', '03-01-1970', 1, '2021-09-06 10:51:32', '2021-09-06 10:51:32'),
(14, '96120', 'D', '', 'KALYANI', 'd.kalyani@cws.com', 'NA', '04-01-1970', 1, '2021-09-07 10:51:32', '2021-09-07 10:51:32'),
(15, '96134', 'ANASUYA', '', '', 'anasuya@cws.com', 'NA', '05-01-1970', 1, '2021-09-08 10:51:32', '2021-09-08 10:51:32'),
(16, 'CON_VRI', 'VRINDA', '', 'RAMAN', 'vrinda_raman@cws.com', 'NA', '06-01-1970', 1, '2021-09-09 10:51:32', '2021-09-09 10:51:32'),
(17, '96196', 'RAJENDRA', '', 'PRASAD', 'n_rajendra_prasad@cws.com', 'NA', '07-01-1970', 1, '2021-09-10 10:51:32', '2021-09-10 10:51:32'),
(18, '96208', 'P', '', 'VIMALA', 'p_vimala@cws.com', 'NA', '08-01-1970', 1, '2021-09-11 10:51:32', '2021-09-11 10:51:32'),
(19, '96136', 'K', '', 'PRAMEELA', 'k.prameela@cws.com', 'NA', '09-01-1970', 1, '2021-09-12 10:51:32', '2021-09-12 10:51:32'),
(20, '96145', 'P.LAKSHMINARAYANA', '', '', 'p.lakshminarayana@cws.com', 'NA', '10-01-1970', 1, '2021-09-13 10:51:32', '2021-09-13 10:51:32'),
(21, '96178', 'VAISHALI', '', '', 'vaishali@cws.com', 'NA', '11-01-1970', 1, '2021-09-14 10:51:32', '2021-09-14 10:51:32'),
(22, '96324', 'ANITHA', '', 'PRASANNA', 'd_anitha_prasanna@cws.com', 'NA', '12-01-1970', 1, '2021-09-15 10:51:32', '2021-09-15 10:51:32'),
(23, '96325', 'M', '', 'SURESH', 'm_suresh@cws.com', 'NA', '13-01-1970', 1, '2021-09-16 10:51:32', '2021-09-16 10:51:32'),
(24, '96326', 'BALA', '', 'RAJU', 'k_bala_raju@cws.com', 'NA', '14-01-1970', 1, '2021-09-17 10:51:32', '2021-09-17 10:51:32'),
(25, '96327', 'KOTESWARA', '', 'RAO', 'b_koteswara_rao@cws.com', 'NA', '15-01-1970', 1, '2021-09-18 10:51:32', '2021-09-18 10:51:32'),
(26, '96328', 'B', '', 'KARUNA', 'b_karuna@cws.com', 'NA', '16-01-1970', 1, '2021-09-19 10:51:32', '2021-09-19 10:51:32'),
(27, '96329', 'E', '', 'SRIKANTH', 'e_srikanth@cws.com', 'NA', '17-01-1970', 1, '2021-09-20 10:51:32', '2021-09-20 10:51:32'),
(28, '96341', 'K', '', 'VIJAYALAXMI', 'k_vijayalaxmi@cws.com', 'NA', '18-01-1970', 1, '2021-09-21 10:51:32', '2021-09-21 10:51:32'),
(29, '96344', 'B', '', 'SRINIVAS', 'b_srinivas@cws.com', 'NA', '19-01-1970', 1, '2021-09-22 10:51:32', '2021-09-22 10:51:32'),
(30, '96346', 'S', '', 'NARESH', 's_naresh@cws.com', 'NA', '20-01-1970', 1, '2021-09-23 10:51:32', '2021-09-23 10:51:32'),
(31, '96347', 'SHYAMALA', '', 'ASHOK', 'shyamala_ashok@cws.com', 'NA', '21-01-1970', 1, '2021-09-24 10:51:32', '2021-09-24 10:51:32'),
(32, '96352', 'K', '', 'THIRPATHI', 'k_thirpathi@cws.com', 'NA', '22-01-1970', 1, '2021-09-25 10:51:32', '2021-09-25 10:51:32'),
(33, '96353', 'KRISHNA', '', 'RAO', 'a_krishna_rao@cws.com', 'NA', '23-01-1970', 1, '2021-09-26 10:51:32', '2021-09-26 10:51:32'),
(34, '96354', 'B', '', 'DAVID', 'b_david@cws.com', 'NA', '24-01-1970', 1, '2021-09-27 10:51:32', '2021-09-27 10:51:32'),
(35, '96355', 'N', '', 'MEENA', 'n_meena@cws.com', 'NA', '25-01-1970', 1, '2021-09-28 10:51:32', '2021-09-28 10:51:32'),
(36, '96356', 'A', '', 'SRINIVAS', 'a_srinivas@cws.com', 'NA', '26-01-1970', 1, '2021-09-29 10:51:32', '2021-09-29 10:51:32'),
(37, '96358', 'V', '', 'MANGAIAH', 'v_mangaiah@cws.com', 'NA', '27-01-1970', 1, '2021-09-30 10:51:32', '2021-09-30 10:51:32'),
(38, '96359', 'K', '', 'VIDYASAGAR', 'k_vidyasagar@cws.com', 'NA', '28-01-1970', 1, '2021-10-01 10:51:32', '2021-10-01 10:51:32'),
(39, 'CON_NAGA', 'A', '', 'NAGAMANI', 'a_nagamani@cws.com', 'NA', '29-01-1970', 1, '2021-10-02 10:51:32', '2021-10-02 10:51:32'),
(40, 'CON_MAHE', 'K', '', 'MAHESH', 'k_mahesh@cws.com', 'NA', '30-01-1970', 1, '2021-10-03 10:51:32', '2021-10-03 10:51:32'),
(41, '96372', 'SUNEEL', '', 'KUMAR', 'k_suneel_kumar@cws.com', 'NA', '31-01-1970', 1, '2021-10-04 10:51:32', '2021-10-04 10:51:32'),
(42, '96375', 'ANIL', '', 'KUMAR', 'r_anil_kumar@cws.com', 'NA', '01-02-1970', 1, '2021-10-05 10:51:32', '2021-10-05 10:51:32'),
(43, '96376', 'S', '', 'LATCHANNA', 's_latchanna@cws.com', 'NA', '02-02-1970', 1, '2021-10-06 10:51:32', '2021-10-06 10:51:32'),
(44, '96377', 'H', '', 'DIGAMBER', 'h_digamber@cws.com', 'NA', '03-02-1970', 1, '2021-10-07 10:51:32', '2021-10-07 10:51:32'),
(45, '96379', 'M', '', 'SIMHACHALAM', 'm_simhachalam@cws.com', 'NA', '04-02-1970', 1, '2021-10-08 10:51:32', '2021-10-08 10:51:32'),
(46, '96391', 'A', '', 'VIJAY', 'a_vijay@cws.com', 'NA', '05-02-1970', 1, '2021-10-09 10:51:32', '2021-10-09 10:51:32'),
(47, '96394', 'UMA', '', 'DEVI', 's_uma_devi@cws.com', 'NA', '06-02-1970', 1, '2021-10-10 10:51:32', '2021-10-10 10:51:32'),
(48, '96393', 'BHASKARA', '', 'RAO', 'k_bhaskara_rao@cws.com', 'NA', '07-02-1970', 1, '2021-10-11 10:51:32', '2021-10-11 10:51:32'),
(49, '96115', 'K.K.', '', 'PANDEY', 'k.k.pandey@cws.com', 'NA', '08-02-1970', 1, '2021-10-12 10:51:32', '2021-10-12 10:51:32'),
(50, '96335', 'RAMDEV', '', 'PRASAD', 'ramdev_prasad@cws.com', 'NA', '09-02-1970', 1, '2021-10-13 10:51:32', '2021-10-13 10:51:32'),
(51, '96371', 'BIMLA', '', 'SHARMA', 'bimla_sharma@cws.com', 'NA', '10-02-1970', 1, '2021-10-14 10:51:32', '2021-10-14 10:51:32'),
(52, 'CON_RAMLA', 'RAMLAKHAN', '', 'PRASAD', 'ramlakhan_prasad@cws.com', 'NA', '11-02-1970', 1, '2021-10-15 10:51:32', '2021-10-15 10:51:32'),
(53, 'CON_KAPIL', 'KAPILESHWAR', '', 'RAM', 'kapileshwar_ram@cws.com', 'NA', '12-02-1970', 1, '2021-10-16 10:51:32', '2021-10-16 10:51:32'),
(54, '96364', 'RENU', '', 'KUMARI', 'renu_kumari@cws.com', 'NA', '13-02-1970', 1, '2021-10-17 10:51:32', '2021-10-17 10:51:32'),
(55, '96365', 'MUKESH', '', 'PRASAD RAY', 'mukesh_prasad_ray@cws.com', 'NA', '14-02-1970', 1, '2021-10-18 10:51:32', '2021-10-18 10:51:32'),
(56, '96366', 'DHANANJAY', '', 'KUMAR', 'dhananjay_kumar@cws.com', 'NA', '15-02-1970', 1, '2021-10-19 10:51:32', '2021-10-19 10:51:32'),
(57, 'CON_SUBH', 'SUBHASH CHANDRA', '', 'DUBEY', 'subhash_chandra_dubey@cws.com', 'NA', '16-02-1970', 1, '2021-10-20 10:51:32', '2021-10-20 10:51:32'),
(58, '96378', 'RAMBALI', '', 'KUMAR', 'rambali_kumar@cws.com', 'NA', '17-02-1970', 1, '2021-10-21 10:51:32', '2021-10-21 10:51:32'),
(59, 'CON_RAMA', 'RAMACHANDRA', '', 'RAI', 'ramachandra_rai@cws.com', 'NA', '18-02-1970', 1, '2021-10-22 10:51:32', '2021-10-22 10:51:32'),
(60, 'CON_SUSH', 'SUSHEELA', '', 'DEVI', 'susheela_devi@cws.com', 'NA', '19-02-1970', 1, '2021-10-23 10:51:32', '2021-10-23 10:51:32'),
(61, '', 'KHAJAL', '', 'KUMARI', 'khajal_kumari@cws.com', 'NA', '20-02-1970', 1, '2021-10-24 10:51:32', '2021-10-24 10:51:32'),
(62, '96054', 'RAJESH KUMAR', '', 'JHA', 'rajesh_kumar_jha@cws.com', 'NA', '21-02-1970', 1, '2021-10-25 10:51:32', '2021-10-25 10:51:32'),
(63, '96205', 'MD', '', 'SHABAN', 'md_shaban@cws.com', 'NA', '22-02-1970', 1, '2021-10-26 10:51:32', '2021-10-26 10:51:32'),
(64, '96230', 'HELINA', '', 'FRANCIS', 'helina_francis@cws.com', 'NA', '23-02-1970', 1, '2021-10-27 10:51:32', '2021-10-27 10:51:32'),
(65, '96253', 'MANDODARI', '', 'MAHTO', 'mandodari_mahto@cws.com', 'NA', '24-02-1970', 1, '2021-10-28 10:51:32', '2021-10-28 10:51:32'),
(66, '96258', 'RAJ LAXMI', '', 'PURTY', 'raj_laxmi_purty@cws.com', 'NA', '25-02-1970', 1, '2021-10-29 10:51:32', '2021-10-29 10:51:32'),
(67, '96259', 'SABITA', '', 'SOREN', 'sabita_soren@cws.com', 'NA', '26-02-1970', 1, '2021-10-30 10:51:32', '2021-10-30 10:51:32'),
(68, '96260', 'AMBUJ KUMAR', '', 'GHOREI', 'ambuj_kumar_ghorei@cws.com', 'NA', '27-02-1970', 1, '2021-10-31 10:51:32', '2021-10-31 10:51:32'),
(69, '96262', 'LAXMI', '', 'SOREN', 'laxmi_soren@cws.com', 'NA', '28-02-1970', 1, '2021-11-01 10:51:32', '2021-11-01 10:51:32'),
(70, '96267', 'SANJAY', '', 'MUKHERJEE', 'sanjay_mukherjee@cws.com', 'NA', '01-03-1970', 1, '2021-11-02 10:51:32', '2021-11-02 10:51:32'),
(71, '96301', 'PRAMOD', '', 'KUMAR', 'pramod_kumar__@cws.com', 'NA', '02-03-1970', 1, '2021-11-03 10:51:32', '2021-11-03 10:51:32'),
(72, '96270', 'MIRZA RAM', '', 'SOREN', 'mirza_ram_soren@cws.com', 'NA', '03-03-1970', 1, '2021-11-04 10:51:32', '2021-11-04 10:51:32'),
(73, '96271', 'ABHA', '', 'SINHA', 'abha_sinha@cws.com', 'NA', '04-03-1970', 1, '2021-11-05 10:51:32', '2021-11-05 10:51:32'),
(74, '96287', 'SHANTANU', '', 'BADHUK', 'shantanu_badhuk@cws.com', 'NA', '05-03-1970', 1, '2021-11-06 10:51:32', '2021-11-06 10:51:32'),
(75, '96298', 'SHUBHANGI', '', 'ANAND', 'shubhangi_anand@cws.com', 'NA', '06-03-1970', 1, '2021-11-07 10:51:32', '2021-11-07 10:51:32'),
(76, '96320', 'AMIT KUMAR', '', 'SHARMA', 'amit_kumar_sharma@cws.com', 'NA', '07-03-1970', 1, '2021-11-08 10:51:32', '2021-11-08 10:51:32'),
(77, '96321', 'SHANKAR', '', 'KAIBARTA', 'shankar_kaibarta@cws.com', 'NA', '08-03-1970', 1, '2021-11-09 10:51:32', '2021-11-09 10:51:32'),
(78, '96322', 'ANANDA', '', 'MAHATO', 'ananda_mahato@cws.com', 'NA', '09-03-1970', 1, '2021-11-10 10:51:32', '2021-11-10 10:51:32'),
(79, '96323', 'DAIMANTI', '', 'SAVAIYA', 'daimanti_savaiya@cws.com', 'NA', '10-03-1970', 1, '2021-11-11 10:51:32', '2021-11-11 10:51:32'),
(80, '96338', 'AAYNO', '', 'MURMU', 'aayno_murmu@cws.com', 'NA', '11-03-1970', 1, '2021-11-12 10:51:32', '2021-11-12 10:51:32'),
(81, '96339', 'SEPHALI RANI', '', 'MAHATO', 'sephali_rani_mahato@cws.com', 'NA', '12-03-1970', 1, '2021-11-13 10:51:32', '2021-11-13 10:51:32'),
(82, '96340', 'SABITA', '', 'MAHATO', 'sabita_mahato@cws.com', 'NA', '13-03-1970', 1, '2021-11-14 10:51:32', '2021-11-14 10:51:32'),
(83, 'CON_JANO', 'JANO', '', 'SOY', 'jano_soy@cws.com', 'NA', '14-03-1970', 1, '2021-11-15 10:51:32', '2021-11-15 10:51:32'),
(84, 'CON_MADAN', 'MADANESHWAR', '', 'JHA', 'madaneshwar_jha__@cws.com', 'NA', '15-03-1970', 1, '2021-11-16 10:51:32', '2021-11-16 10:51:32'),
(85, '96357', 'AYUSH', '', 'KUMAR', 'ayush_kumar@cws.com', 'NA', '16-03-1970', 1, '2021-11-17 10:51:32', '2021-11-17 10:51:32'),
(86, '96367', 'SHUBHA PHILOMINA', '', 'TIRKEY', 'shubha_philomina_tirkey@cws.com', 'NA', '17-03-1970', 1, '2021-11-18 10:51:32', '2021-11-18 10:51:32'),
(87, '96368', 'SONI', '', 'KUMARI', 'soni_kumari@cws.com', 'NA', '18-03-1970', 1, '2021-11-19 10:51:32', '2021-11-19 10:51:32'),
(88, '96369', 'MUNNI', '', 'KACHHAP', 'munni_kachhap@cws.com', 'NA', '19-03-1970', 1, '2021-11-20 10:51:32', '2021-11-20 10:51:32'),
(89, '96370', 'RAVIRANJAN', '', 'KUMAR', 'raviranjan_kumar@cws.com', 'NA', '20-03-1970', 1, '2021-11-21 10:51:32', '2021-11-21 10:51:32'),
(90, '96374', 'SUKURMONI', '', 'KARMAKAR', 'sukurmoni_karmakar@cws.com', 'NA', '21-03-1970', 1, '2021-11-22 10:51:32', '2021-11-22 10:51:32'),
(91, '96384', 'BINOD KUMAR', '', 'SINGH', 'binod_kumar_singh@cws.com', 'NA', '22-03-1970', 1, '2021-11-23 10:51:32', '2021-11-23 10:51:32'),
(92, '96385', 'HARISH CHANDRA', '', 'MAHATO', 'harish_chandra_mahato@cws.com', 'NA', '23-03-1970', 1, '2021-11-24 10:51:32', '2021-11-24 10:51:32'),
(93, '96386', 'SARASWATI', '', 'BARAM', 'saraswati_baram@cws.com', 'NA', '24-03-1970', 1, '2021-11-25 10:51:32', '2021-11-25 10:51:32'),
(94, '96387', 'RAJESH KUMAR', '', 'NAYAK', 'rajesh_kumar_nayak@cws.com', 'NA', '25-03-1970', 1, '2021-11-26 10:51:32', '2021-11-26 10:51:32'),
(95, '96388', 'BANDANA', '', 'MAHATO', 'bandana_mahato@cws.com', 'NA', '26-03-1970', 1, '2021-11-27 10:51:32', '2021-11-27 10:51:32'),
(96, '96389', 'SAVITRI', '', 'MAHATO', 'savitri_mahato@cws.com', 'NA', '27-03-1970', 1, '2021-11-28 10:51:32', '2021-11-28 10:51:32'),
(97, '96390', 'MERICA', '', 'MURMU', 'merica_murmu@cws.com', 'NA', '28-03-1970', 1, '2021-11-29 10:51:32', '2021-11-29 10:51:32'),
(98, '96392', 'BADAL', '', 'TUDU', 'badal_tudu@cws.com', 'NA', '29-03-1970', 1, '2021-11-30 10:51:32', '2021-11-30 10:51:32'),
(99, '96191', 'BALAKRUSHNA', '', 'PANDA', 'balakrushna_panda@cws.com', 'NA', '30-03-1970', 1, '2021-12-01 10:51:32', '2021-12-01 10:51:32'),
(100, '96331', 'JAGANANDA', '', 'LABALA', 'jagananda_labala@cws.com', 'NA', '31-03-1970', 1, '2021-12-02 10:51:32', '2021-12-02 10:51:32'),
(101, '96332', 'SURYANARAYANA', '', 'PADHY', 'suryanarayana_padhy@cws.com', 'NA', '01-04-1970', 1, '2021-12-03 10:51:32', '2021-12-03 10:51:32'),
(102, '96333', 'AKSHAYA KUMAR', '', 'SUTAR', 'akshaya_kumar_sutar@cws.com', 'NA', '02-04-1970', 1, '2021-12-04 10:51:32', '2021-12-04 10:51:32'),
(103, '96334', 'AMRUTA', '', 'BADI', 'amruta_badi@cws.com', 'NA', '03-04-1970', 1, '2021-12-05 10:51:32', '2021-12-05 10:51:32'),
(104, '96342', 'RAMACHANDRA', '', 'KHILLA', 'ramachandra_khilla@cws.com', 'NA', '04-04-1970', 1, '2021-12-06 10:51:32', '2021-12-06 10:51:32'),
(105, '96343', 'KRISHNA', '', 'RAO', 'm_krishna_rao@cws.com', 'NA', '05-04-1970', 1, '2021-12-07 10:51:32', '2021-12-07 10:51:32'),
(106, '96348', 'AMIT', '', 'PRADHAN', 'amit_kumar_pradhan@cws.com', 'NA', '06-04-1970', 1, '2021-12-08 10:51:32', '2021-12-08 10:51:32'),
(107, '96351', 'MANASHA', '', 'MAHARANA', 'manasha_chandra_maharana@cws.com', 'NA', '07-04-1970', 1, '2021-12-09 10:51:32', '2021-12-09 10:51:32'),
(108, '96362', 'TAPAN', '', 'KADRAKA', 'tapan_kumar_kadraka@cws.com', 'NA', '08-04-1970', 1, '2021-12-10 10:51:32', '2021-12-10 10:51:32'),
(109, '96363', 'SK', '', 'AKTAR', 'sk_siraj_aktar@cws.com', 'NA', '09-04-1970', 1, '2021-12-11 10:51:32', '2021-12-11 10:51:32'),
(110, '96373', 'JAYASHREE', '', 'NAYAK', 'jayashree_nayak@cws.com', 'NA', '10-04-1970', 1, '2021-12-12 10:51:32', '2021-12-12 10:51:32'),
(111, '96381', 'RAJESWAR', '', 'MAHURIA', 'rajeswar_mahuria@cws.com', 'NA', '11-04-1970', 1, '2021-12-13 10:51:32', '2021-12-13 10:51:32'),
(112, '96382', 'BINOD', '', 'SUNAMUDI', 'binod_kumar_sunamudi@cws.com', 'NA', '12-04-1970', 1, '2021-12-14 10:51:32', '2021-12-14 10:51:32'),
(113, '96345', 'BALKEIS', '', 'BEGUM', 's_balkeis_begum@cws.com', 'NA', '13-04-1970', 1, '2021-12-15 10:51:32', '2021-12-15 10:51:32'),
(114, '96349', 'R', '', 'JAIBUNISHA', 'r_jaibunisha@cws.com', 'NA', '14-04-1970', 1, '2021-12-16 10:51:32', '2021-12-16 10:51:32'),
(115, '96360', 'JAYALAKSHMI', '', 'RAJENDRAN', 'jayalakshmi_rajendran@cws.com', 'NA', '15-04-1970', 1, '2021-12-17 10:51:32', '2021-12-17 10:51:32'),
(116, '96361', 'ANBUMANI', '', 'RAMASAMY', 'anbumani_ramasamy@cws.com', 'NA', '16-04-1970', 1, '2021-12-18 10:51:32', '2021-12-18 10:51:32'),
(117, '96380', 'AKASH', '', 'RAJENDRAN', 'akash_rajendran@cws.com', 'NA', '17-04-1970', 1, '2021-12-19 10:51:32', '2021-12-19 10:51:32'),
(118, '96383', 'S', '', 'HEMALATHA', 's_hemalatha@cws.com', 'NA', '18-04-1970', 1, '2021-12-20 10:51:32', '2021-12-20 10:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `bee_user_login_log`
--

CREATE TABLE `bee_user_login_log` (
  `id` int(11) NOT NULL,
  `user_id` varchar(35) NOT NULL,
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_user_login_log`
--

INSERT INTO `bee_user_login_log` (`id`, `user_id`, `last_login`) VALUES
(5, 'CON_RAM', '2021-09-28 15:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `bee_vehicle_insurance`
--

CREATE TABLE `bee_vehicle_insurance` (
  `id` int(11) NOT NULL,
  `name_of_the_office` text NOT NULL,
  `vehicle_reg_no` text NOT NULL,
  `vehicle_name` text NOT NULL,
  `model_year` text NOT NULL,
  `engine_no` text NOT NULL,
  `insurance_provider_name` text NOT NULL,
  `insurance_premium_amt` text NOT NULL,
  `insurance_valid_up_to` text NOT NULL,
  `custodian_of_the_vehicle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_vehicle_insurance`
--

INSERT INTO `bee_vehicle_insurance` (`id`, `name_of_the_office`, `vehicle_reg_no`, `vehicle_name`, `model_year`, `engine_no`, `insurance_provider_name`, `insurance_premium_amt`, `insurance_valid_up_to`, `custodian_of_the_vehicle`) VALUES
(1, 'BRC', '(BR-AC-5387)', 'Hero honda Motorbike', '19.05.2006', '06E15M09347', 'United indua Insurance company Ltd', '795', '24.01.2018', 'BRC'),
(2, 'BRC', ' (BR-AL-4609)', 'Hero honda Motorbike', '14.10.2008', 'HAIOEA8HJ27046', 'United indua Insurance company Ltd', '833', '24.01.2018', 'BRC'),
(3, 'BRC', ' BR 01-BU 5260', 'Hero Honda - pleasure S Scootee', '17.06.2013', 'JF16EFD23005', 'United indua Insurance company Ltd', '1098', '12.02.2019', 'BRC'),
(4, 'CO', 'TS 10 EF 0883 ', 'TATA ZEST Motor Car', '19.10.2015', '101A2000-9597317', 'The New Indian Assurance Co Ltd', '14753', '18/10/2018', 'R Janga Reddy'),
(5, 'JRC', '', 'Honda Activa', '14.02.2017', 'JF48E81093002', '', '', '', ''),
(6, 'JRC', '', 'Honda CB SHINE', '20.04.2017', 'JC65E71089174', '', '', '', ''),
(7, 'JRC', '', 'Honda CB SHINE', '16.09.2017', 'JC65E71194860', '', '', '', ''),
(8, 'BRC', 'BR01BU 5261', 'Hero Honda Motorbike alloy wheel', '17.06.2013', 'HA1OEJDHE66736', 'United indua Insurance company Ltd', '1098', '12.02.2019', 'Ballendu Sekhar Magalmurty.'),
(9, 'ORC', 'OR 02 BM 7145', 'Hero Honda Pleasure', '08.03.2011', 'JE16EBBGB32794', 'United India Insurance co.Ltd', '1181', '18/4/2018', 'Digambar Sabar'),
(10, 'JRC', '', 'TVS star-100CC', '18/8/2005', 'OFG51185332', '', '', '', ''),
(11, 'JRC', '', 'TVS star-110 CC', '10/8/2012', 'OF1FB-1083462', '', '', '', ''),
(12, 'JRC', '', 'TVS star sport', '30.04.2016', 'DF5BG11251063', '', '', '', ''),
(13, 'JRC', '', 'TVS sports ES', '16.09.2017', 'PF5GH1434606', '', '', '', ''),
(14, 'JRC', '', 'TVS sports ES', '16.09.2017', 'PF5GH1236928', '', '', '', ''),
(15, 'CO', '', 'Honda Activa', '07.03.2011', 'JC44E1873083', 'The New Indian Assurance Co Ltd', '1359', '31/8/2018', 'R Janga Reddy');

-- --------------------------------------------------------

--
-- Table structure for table `bee_verify_account`
--

CREATE TABLE `bee_verify_account` (
  `id` int(11) NOT NULL,
  `temp_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bee_verify_account`
--

INSERT INTO `bee_verify_account` (`id`, `temp_id`, `user_id`, `created_at`) VALUES
(5, '202106290443071281395', '20210623125240', '2021-06-29 04:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `form_20210630063320`
--

CREATE TABLE `form_20210630063320` (
  `id` int(11) NOT NULL,
  `q20210630122843` varchar(50) NOT NULL,
  `q20210630011956` varchar(50) NOT NULL,
  `q20210630012020` varchar(50) NOT NULL,
  `q20210630012046` varchar(50) NOT NULL,
  `q20210630012106` varchar(50) NOT NULL,
  `q20210630012121` varchar(50) NOT NULL,
  `q20210630012136` varchar(50) NOT NULL,
  `q20210630012151` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_20210630063320`
--

INSERT INTO `form_20210630063320` (`id`, `q20210630122843`, `q20210630011956`, `q20210630012020`, `q20210630012046`, `q20210630012106`, `q20210630012121`, `q20210630012136`, `q20210630012151`, `created_at`) VALUES
(3, 'Yes', 'Janvai', '23', 'Raj', '4', 'Raj', 'Male', 'NA', '2021-07-02 06:50:21'),
(4, 'Yes', 'Test', 'test', 'test', 'test', 'test', 'test', 'test', '2021-07-02 07:01:47'),
(5, 'Yes', 'Janki', '36', 'Mahesh', '4', 'Mahesh', 'Male', 'NA', '0000-00-00 00:00:00'),
(6, 'Yes', 'Test1', 'Test1', 'Test1', 'Test1', 'Test1', 'Test1', 'Test1', '0000-00-00 00:00:00'),
(7, 'Yes', 'Janvai', '23', 'Mahesh', '5', 'Mahesh', 'Male', 'NA', '0000-00-00 00:00:00'),
(8, 'Yes', 'Janvai', '23', 'Mahesh', '4', 'Raj', 'male', 'NA', '0000-00-00 00:00:00'),
(9, 'Yes', 'Janvai', '23', 'Mahesh', '5', 'Mahesh', 'Male', 'NA', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `form_20210702055527`
--

CREATE TABLE `form_20210702055527` (
  `id` int(11) NOT NULL,
  `q20210702055543` varchar(50) DEFAULT NULL,
  `q20210702055554` varchar(50) DEFAULT NULL,
  `q20210702055603` varchar(50) DEFAULT NULL,
  `q20210702055630` varchar(50) DEFAULT NULL,
  `q20210702055641` varchar(50) DEFAULT NULL,
  `q20210702055650` varchar(50) DEFAULT NULL,
  `q20210702055700` varchar(50) DEFAULT NULL,
  `q20210702055710` varchar(50) DEFAULT NULL,
  `q20210702055718` varchar(50) DEFAULT NULL,
  `q20210702055726` varchar(50) DEFAULT NULL,
  `q20210702055737` varchar(50) DEFAULT NULL,
  `q20210702055743` varchar(50) DEFAULT NULL,
  `q20210702055749` varchar(50) DEFAULT NULL,
  `q20210702055756` varchar(50) DEFAULT NULL,
  `q20210702055810` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form_20210702055905`
--

CREATE TABLE `form_20210702055905` (
  `id` int(11) NOT NULL,
  `q20210702055923` varchar(50) DEFAULT NULL,
  `q20210702055933` varchar(50) DEFAULT NULL,
  `q20210702055944` varchar(50) DEFAULT NULL,
  `q20210702055955` varchar(50) DEFAULT NULL,
  `q20210702060015` varchar(50) DEFAULT NULL,
  `q20210702060024` varchar(50) DEFAULT NULL,
  `q20210702060032` varchar(50) DEFAULT NULL,
  `q20210702060046` varchar(50) DEFAULT NULL,
  `q20210702060130` varchar(50) DEFAULT NULL,
  `q20210702060139` varchar(50) DEFAULT NULL,
  `q20210702060146` varchar(50) DEFAULT NULL,
  `q20210702060154` varchar(50) DEFAULT NULL,
  `q20210702060159` varchar(50) DEFAULT NULL,
  `q20210702060204` varchar(50) DEFAULT NULL,
  `q20210702060211` varchar(50) DEFAULT NULL,
  `q20210702060218` varchar(50) DEFAULT NULL,
  `q20210702060224` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_20210702055905`
--

INSERT INTO `form_20210702055905` (`id`, `q20210702055923`, `q20210702055933`, `q20210702055944`, `q20210702055955`, `q20210702060015`, `q20210702060024`, `q20210702060032`, `q20210702060046`, `q20210702060130`, `q20210702060139`, `q20210702060146`, `q20210702060154`, `q20210702060159`, `q20210702060204`, `q20210702060211`, `q20210702060218`, `q20210702060224`) VALUES
(1, 'fdf', 'dsfds', 'dsgdg', 'sdgdsg', 'Male', 'dsgdg', 'dsg', 'dsg', 'dsgds', 'dsgd', 'gdsg', 'dgds', 'sdg', 'dsgds', 'gsg', 'dsg', 'dsgsg');

-- --------------------------------------------------------

--
-- Table structure for table `form_20210702070303`
--

CREATE TABLE `form_20210702070303` (
  `id` int(11) NOT NULL,
  `q20210702070350` varchar(50) NOT NULL,
  `q20210702050824` varchar(50) DEFAULT NULL,
  `q20210702050833` varchar(50) DEFAULT NULL,
  `q20210702050904` varchar(50) DEFAULT NULL,
  `q20210702050914` varchar(50) DEFAULT NULL,
  `q20210702050924` varchar(50) DEFAULT NULL,
  `q20210702050933` varchar(50) DEFAULT NULL,
  `q20210702050947` varchar(50) DEFAULT NULL,
  `q20210702050958` varchar(50) DEFAULT NULL,
  `q20210702051006` varchar(50) DEFAULT NULL,
  `q20210702051017` varchar(50) DEFAULT NULL,
  `q20210702051032` varchar(50) DEFAULT NULL,
  `q20210702051037` varchar(50) DEFAULT NULL,
  `q20210702051046` varchar(50) DEFAULT NULL,
  `q20210702051054` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_20210702070303`
--

INSERT INTO `form_20210702070303` (`id`, `q20210702070350`, `q20210702050824`, `q20210702050833`, `q20210702050904`, `q20210702050914`, `q20210702050924`, `q20210702050933`, `q20210702050947`, `q20210702050958`, `q20210702051006`, `q20210702051017`, `q20210702051032`, `q20210702051037`, `q20210702051046`, `q20210702051054`) VALUES
(1, 'Yes', 'safsaf', 'fasfsaf', 'Male', 'saf', 'sfsaf', 'safaasf', 'asfsa', 'fasf', 'saf', 'safsa', 'fasf', 'saf', 'af', 'safasfsa');

-- --------------------------------------------------------

--
-- Table structure for table `form_20210702073415`
--

CREATE TABLE `form_20210702073415` (
  `id` int(11) NOT NULL,
  `q20210702084219` varchar(50) DEFAULT NULL,
  `q20210702084233` varchar(50) DEFAULT NULL,
  `q20210702084341` varchar(50) DEFAULT NULL,
  `q20210702084525` varchar(50) DEFAULT NULL,
  `q20210702084637` varchar(50) DEFAULT NULL,
  `q20210702084706` varchar(50) DEFAULT NULL,
  `q20210702084749` varchar(50) DEFAULT NULL,
  `q20210702084812` varchar(50) DEFAULT NULL,
  `q20210702084841` varchar(50) DEFAULT NULL,
  `q20210702084930` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form_20210702085125`
--

CREATE TABLE `form_20210702085125` (
  `id` int(11) NOT NULL,
  `q20210702085202` varchar(50) DEFAULT NULL,
  `q20210702085339` varchar(50) DEFAULT NULL,
  `q20210702091218` varchar(50) DEFAULT NULL,
  `q20210702091252` varchar(50) DEFAULT NULL,
  `q20210702091319` varchar(50) DEFAULT NULL,
  `q20210702091341` varchar(50) DEFAULT NULL,
  `q20210702091421` varchar(50) DEFAULT NULL,
  `q20210702091513` varchar(50) DEFAULT NULL,
  `q20210702091536` varchar(50) DEFAULT NULL,
  `q20210702091555` varchar(50) DEFAULT NULL,
  `q20210702091626` varchar(50) DEFAULT NULL,
  `q20210702091649` varchar(50) DEFAULT NULL,
  `q20210702091717` varchar(50) DEFAULT NULL,
  `q20210702091801` varchar(50) DEFAULT NULL,
  `q20210702091820` varchar(50) DEFAULT NULL,
  `q20210702091838` varchar(50) DEFAULT NULL,
  `q20210702091857` varchar(50) DEFAULT NULL,
  `q20210702091917` varchar(50) DEFAULT NULL,
  `q20210702091933` varchar(50) DEFAULT NULL,
  `q20210702091949` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form_20210702123306`
--

CREATE TABLE `form_20210702123306` (
  `id` int(11) NOT NULL,
  `q20210702124848` varchar(50) DEFAULT NULL,
  `q20210702125017` varchar(50) DEFAULT NULL,
  `q20210702125313` varchar(50) DEFAULT NULL,
  `q20210702125407` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form_20210702125515`
--

CREATE TABLE `form_20210702125515` (
  `id` int(11) NOT NULL,
  `q20210702125546` varchar(50) DEFAULT NULL,
  `q20210702125616` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form_20210702125659`
--

CREATE TABLE `form_20210702125659` (
  `id` int(11) NOT NULL,
  `q20210702125747` varchar(50) DEFAULT NULL,
  `q20210702125819` varchar(50) DEFAULT NULL,
  `q20210702125910` varchar(50) DEFAULT NULL,
  `q20210702010054` varchar(50) DEFAULT NULL,
  `q20210702010128` varchar(50) DEFAULT NULL,
  `q20210702010148` varchar(50) DEFAULT NULL,
  `q20210702010212` varchar(50) DEFAULT NULL,
  `q20210702010257` varchar(50) DEFAULT NULL,
  `q20210702010328` varchar(50) DEFAULT NULL,
  `q20210702010412` varchar(50) DEFAULT NULL,
  `q20210702010439` varchar(50) DEFAULT NULL,
  `q20210702010457` varchar(50) DEFAULT NULL,
  `q20210702010513` varchar(50) DEFAULT NULL,
  `q20210702010539` varchar(50) DEFAULT NULL,
  `q20210702010707` varchar(50) DEFAULT NULL,
  `q20210702050209` varchar(50) DEFAULT NULL,
  `q20210702050225` varchar(50) DEFAULT NULL,
  `q20210702050240` varchar(50) DEFAULT NULL,
  `q20210702050258` varchar(50) DEFAULT NULL,
  `q20210702050311` varchar(50) DEFAULT NULL,
  `q20210702050335` varchar(50) DEFAULT NULL,
  `q20210702050345` varchar(50) DEFAULT NULL,
  `q20210702050400` varchar(50) DEFAULT NULL,
  `q20210702050421` varchar(50) DEFAULT NULL,
  `q20210702050438` varchar(50) DEFAULT NULL,
  `q20210702050453` varchar(50) DEFAULT NULL,
  `q20210702050526` varchar(50) DEFAULT NULL,
  `q20210702050544` varchar(50) DEFAULT NULL,
  `q20210702050646` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form_20210703075315`
--

CREATE TABLE `form_20210703075315` (
  `id` int(11) NOT NULL,
  `q20210703075450` varchar(50) DEFAULT NULL,
  `q20210703075523` varchar(50) DEFAULT NULL,
  `q20210703075826` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form_20210703091955`
--

CREATE TABLE `form_20210703091955` (
  `id` int(11) NOT NULL,
  `q20210703092154` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_20210703091955`
--

INSERT INTO `form_20210703091955` (`id`, `q20210703092154`) VALUES
(1, 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bee_auth_users`
--
ALTER TABLE `bee_auth_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `bee_bank_control_sheet`
--
ALTER TABLE `bee_bank_control_sheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bee_email_templates`
--
ALTER TABLE `bee_email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `template_id` (`template_id`);

--
-- Indexes for table `bee_forms`
--
ALTER TABLE `bee_forms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form_id` (`form_id`),
  ADD KEY `form_id_2` (`form_id`);

--
-- Indexes for table `bee_form_question`
--
ALTER TABLE `bee_form_question`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_id` (`question_id`),
  ADD KEY `question_id_2` (`question_id`),
  ADD KEY `form_id` (`form_id`);

--
-- Indexes for table `bee_modules`
--
ALTER TABLE `bee_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `module_id` (`module_id`),
  ADD KEY `module_id_2` (`module_id`);

--
-- Indexes for table `bee_notification`
--
ALTER TABLE `bee_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bee_permissions`
--
ALTER TABLE `bee_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_id` (`role_id`,`sub_module_id`) USING BTREE;

--
-- Indexes for table `bee_permissions_user`
--
ALTER TABLE `bee_permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_module_id_fk` (`sub_module_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bee_permission_module`
--
ALTER TABLE `bee_permission_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id_fk` (`role_id`),
  ADD KEY `module_id_fk` (`module_id`);

--
-- Indexes for table `bee_projects`
--
ALTER TABLE `bee_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`project_id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `bee_project_member`
--
ALTER TABLE `bee_project_member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`project_id`,`user_id`),
  ADD KEY `user_id_fk_1` (`user_id`);

--
-- Indexes for table `bee_rent_tracker`
--
ALTER TABLE `bee_rent_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bee_roles`
--
ALTER TABLE `bee_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_id_2` (`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `bee_salary_summer`
--
ALTER TABLE `bee_salary_summer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bee_sub_modules`
--
ALTER TABLE `bee_sub_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sm_id` (`sm_id`),
  ADD KEY `sm_id_2` (`sm_id`);

--
-- Indexes for table `bee_superuser`
--
ALTER TABLE `bee_superuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bee_system_default`
--
ALTER TABLE `bee_system_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bee_tasks`
--
ALTER TABLE `bee_tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`task_id`,`user_id`),
  ADD KEY `project_id_fk1` (`project_id`),
  ADD KEY `user_id_fk2` (`user_id`);

--
-- Indexes for table `bee_task_media`
--
ALTER TABLE `bee_task_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `bee_users`
--
ALTER TABLE `bee_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `bee_user_login_log`
--
ALTER TABLE `bee_user_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bee_vehicle_insurance`
--
ALTER TABLE `bee_vehicle_insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bee_verify_account`
--
ALTER TABLE `bee_verify_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210630063320`
--
ALTER TABLE `form_20210630063320`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210702055527`
--
ALTER TABLE `form_20210702055527`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210702055905`
--
ALTER TABLE `form_20210702055905`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210702070303`
--
ALTER TABLE `form_20210702070303`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210702073415`
--
ALTER TABLE `form_20210702073415`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210702085125`
--
ALTER TABLE `form_20210702085125`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210702123306`
--
ALTER TABLE `form_20210702123306`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210702125515`
--
ALTER TABLE `form_20210702125515`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210702125659`
--
ALTER TABLE `form_20210702125659`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210703075315`
--
ALTER TABLE `form_20210703075315`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_20210703091955`
--
ALTER TABLE `form_20210703091955`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bee_auth_users`
--
ALTER TABLE `bee_auth_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `bee_bank_control_sheet`
--
ALTER TABLE `bee_bank_control_sheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bee_email_templates`
--
ALTER TABLE `bee_email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bee_forms`
--
ALTER TABLE `bee_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bee_form_question`
--
ALTER TABLE `bee_form_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `bee_modules`
--
ALTER TABLE `bee_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bee_notification`
--
ALTER TABLE `bee_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bee_permissions`
--
ALTER TABLE `bee_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `bee_permissions_user`
--
ALTER TABLE `bee_permissions_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bee_permission_module`
--
ALTER TABLE `bee_permission_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `bee_projects`
--
ALTER TABLE `bee_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bee_project_member`
--
ALTER TABLE `bee_project_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bee_rent_tracker`
--
ALTER TABLE `bee_rent_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bee_roles`
--
ALTER TABLE `bee_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bee_salary_summer`
--
ALTER TABLE `bee_salary_summer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=670;

--
-- AUTO_INCREMENT for table `bee_sub_modules`
--
ALTER TABLE `bee_sub_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bee_superuser`
--
ALTER TABLE `bee_superuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bee_system_default`
--
ALTER TABLE `bee_system_default`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bee_tasks`
--
ALTER TABLE `bee_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bee_task_media`
--
ALTER TABLE `bee_task_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bee_users`
--
ALTER TABLE `bee_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `bee_user_login_log`
--
ALTER TABLE `bee_user_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bee_vehicle_insurance`
--
ALTER TABLE `bee_vehicle_insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bee_verify_account`
--
ALTER TABLE `bee_verify_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `form_20210630063320`
--
ALTER TABLE `form_20210630063320`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `form_20210702055527`
--
ALTER TABLE `form_20210702055527`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_20210702055905`
--
ALTER TABLE `form_20210702055905`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_20210702070303`
--
ALTER TABLE `form_20210702070303`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `form_20210702073415`
--
ALTER TABLE `form_20210702073415`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_20210702085125`
--
ALTER TABLE `form_20210702085125`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_20210702123306`
--
ALTER TABLE `form_20210702123306`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_20210702125515`
--
ALTER TABLE `form_20210702125515`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_20210702125659`
--
ALTER TABLE `form_20210702125659`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_20210703075315`
--
ALTER TABLE `form_20210703075315`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_20210703091955`
--
ALTER TABLE `form_20210703091955`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bee_auth_users`
--
ALTER TABLE `bee_auth_users`
  ADD CONSTRAINT `bee_auth_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bee_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_id` FOREIGN KEY (`role_id`) REFERENCES `bee_roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bee_form_question`
--
ALTER TABLE `bee_form_question`
  ADD CONSTRAINT `form_id` FOREIGN KEY (`form_id`) REFERENCES `bee_forms` (`form_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bee_permissions_user`
--
ALTER TABLE `bee_permissions_user`
  ADD CONSTRAINT `bee_permissions_user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bee_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_module_id_fk` FOREIGN KEY (`sub_module_id`) REFERENCES `bee_sub_modules` (`sm_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `bee_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bee_permission_module`
--
ALTER TABLE `bee_permission_module`
  ADD CONSTRAINT `module_id_fk` FOREIGN KEY (`module_id`) REFERENCES `bee_modules` (`module_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `bee_roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bee_project_member`
--
ALTER TABLE `bee_project_member`
  ADD CONSTRAINT `project_id_fk` FOREIGN KEY (`project_id`) REFERENCES `bee_projects` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_fk_1` FOREIGN KEY (`user_id`) REFERENCES `bee_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bee_tasks`
--
ALTER TABLE `bee_tasks`
  ADD CONSTRAINT `project_id_fk1` FOREIGN KEY (`project_id`) REFERENCES `bee_projects` (`project_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_fk2` FOREIGN KEY (`user_id`) REFERENCES `bee_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bee_user_login_log`
--
ALTER TABLE `bee_user_login_log`
  ADD CONSTRAINT `bee_user_login_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `bee_users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
