-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2021 at 11:42 AM
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
(1, '20210623125240', '7f125dd8c17fc02ab20338fbcf27abfe', 'ro_administrator', 1, '0000-00-00 00:00:00'),
(2, '20210703034809', '202cb962ac59075b964b07152d234b70', 'ro_field_user', 1, '0000-00-00 00:00:00'),
(3, '20210703054126', 'e54122057617c775191186f920741503', 'ro_administrator', 1, '0000-00-00 00:00:00'),
(4, '20210703064425', 'c5bbabbb406e41e8ef6e9e2004117d27', 'ro_executive_director', 1, '0000-00-00 00:00:00'),
(5, '20210703064502', '50b1b286aab06020883d49d875059a18', 'ro_program_director', 1, '0000-00-00 00:00:00'),
(6, '20210703064532', '1b7e3d818eb7ed04e84d3852f53b2522', 'ro_finance_director', 1, '0000-00-00 00:00:00'),
(7, '20210703064634', '2682dfe1f8946efe1cbf583582a7cf39', 'ro_state_directors', 1, '0000-00-00 00:00:00'),
(8, '20210703064718', 'e88d0f0b9785236a7aa506a16928f7d0', 'ro_administrator', 1, '0000-00-00 00:00:00'),
(9, '20210703082410', NULL, 'ro_program_officers', 0, '0000-00-00 00:00:00');

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
(1, '20210630063320', 'Questions have to be asked to Mothers between  15 to 49 yrs of age', 'Consent Question Information: You were randomly selected to participate in a survey of the NGO Welthungerhilfe which will help to improve its projects. I would like to ask you to provide your open and objective responses regarding your situation. There are no right or wrong answers. Your participation is entirely voluntary. The information you provide will be kept confidential and will in no way affect your participation in our projects. ', 'ये प्रश्न घर के 15 से 49 वर्ष की माताओं से ही  पूछे', '.सहमति सवाल 1: आपका परिवार वेल्थुन्गरहिल्फे नामक एक  संस्था द्वारा यादृच्छिक रूप से इस सर्वेक्षण में भाग लेने के लिए चुना गया है| ये सर्वेक्षण उन्हें उनकी परियोजनाओं में सुधार करने में मदद करेगा। इन सवालों की मदत से हम आपके परिवार की  स्तिथि का आकलन करने की कोशिश करेंगे| यहाँकोई भी सवाल सही या गलत नहीं है| आपसे प्राप्त  जानकारीयों  को गोपनीय रखा जाएगा और हमारी परियोजनाओं में आपकी भागीदारी को प्रभावित नहीं करेगा।', NULL, NULL, NULL, NULL, 1, '2021-06-30 06:33:20'),
(2, '20210702070303', 'Screening', 'test', '', '', NULL, NULL, NULL, NULL, 1, '2021-07-02 07:03:03'),
(3, '20210702073415', 'MDDW', 'MDDW', '', '', NULL, NULL, NULL, NULL, 1, '2021-07-02 07:34:15'),
(4, '20210702085125', 'MDDC', 'MDDC', 'एमडीडीसी', 'एमडीडीसी', NULL, NULL, NULL, NULL, 1, '2021-07-02 08:51:25'),
(5, '20210702123306', 'Drinking Water', 'Drinking Water', 'पेय जल', 'पेय जल\r\n', NULL, NULL, NULL, NULL, 1, '2021-07-02 12:33:06'),
(6, '20210702125515', 'MAHFP', 'MAHFP', 'एमएएचएफपी', 'एमएएचएफपी', NULL, NULL, NULL, NULL, 1, '2021-07-02 12:55:15'),
(7, '20210702125659', 'Access to services', 'Access to services', 'सेवाओं तक पहुंच', 'सेवाओं तक पहुंच', NULL, NULL, NULL, NULL, 1, '2021-07-02 12:56:59'),
(8, '20210702055527', 'Screening during Census', 'Screening during Census', '', '', NULL, NULL, NULL, NULL, 1, '2021-07-02 17:55:27'),
(9, '20210702055905', 'Screening before PD', 'Screening before PD', '', '', NULL, NULL, NULL, NULL, 1, '2021-07-02 17:59:05'),
(10, '20210703075315', 'Survey for literacy', 'Survey for literacy', 'साक्षरता के लिए सर्वेक्षण', 'साक्षरता के लिए सर्वेक्षण', NULL, NULL, NULL, NULL, 1, '2021-07-03 07:53:15'),
(11, '20210703091955', 'Gender gap analysis', 'Gender gap analysis', 'जेंडर गैप जेंडर गैप विश्लेषण', 'जेंडर गैप जेंडर गैप विश्लेषण\r\n', NULL, NULL, NULL, NULL, 1, '2021-07-03 09:19:55');

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
(6, '20210630063320', '20210630122843', 'Do you want to participate in the survey?', 'क्या आप सर्वेक्षण में भाग लेना चाहते हैं?', 'input', 'Yes', 'हाँ', 'No', 'नहीं', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, '', NULL),
(7, '20210630063320', '20210630011236', 'Proceed only if Yes', 'जवाब हाँ होने पर ही आगे बढ़े', 'none', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '20210630063320', '20210630011956', 'Name of Mother', 'माँ का नाम', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '20210630063320', '20210630012020', 'Age of Mother', 'मां की आयु', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, '20210630063320', '20210630012046', 'Name of Father', 'पिता का नाम', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '20210630063320', '20210630012106', 'How many members in the household', 'घर में कितने सदस्य हैं', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '20210630063320', '20210630012121', 'What is the name of the head of the household', 'परिवार के मुखिया का नाम क्या है?', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '20210630063320', '20210630012136', 'What is the sex of the head of household?', 'मुखिया का लिंग क्या है?', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '20210630063320', '20210630012151', 'Location-admin boundary cascade', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '20210702070303', '20210702070350', 'Do you have children less than 5 years age in the family?', 'क्या आपके परिवार में 5 साल से कम उम्र के बच्चे हैं?', 'input', 'Yes', 'हाँ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, '20210702073415', '20210702084219', 'During the day and night of yesterday, did you consume', 'क्या आपने कल पूरे दिन आपने कुछ खाया था ?', 'input', 'GRAINS, WHITE ROOTS AND TUBERS (potatoes, white sweet-potatoes; Raw green banana; Yam- elephant foot, casava, colocassia; Crereals-rice, white maize, orange maize, wheat, different types of millets,Oats , Wheat- Flour ( Maida & Ata), dalia, suji, noodles; rice - Puffed rice, flattened rice, poped rice, rice powder, rice cakes)', 'अनाज जड़ एवं कन्द- जैसे आलू ,कच्चा केला, कच्चू,चावल , गेंहूँ ,मक्का ,बाजरा, रागी ,कोदो साबू दाना मैदा , नूडल्स, मुढ़ी,चुडा इत्यादि', 'PULSES (Pulses- lentiles, chick pea, black gram, green gram, dried peas, kurthi, ; Legumes; soya beans, soya chunks / mince, horse gram, Cow pea,Flat bean seeds (dried), cluster beans, Kidney beans)', 'दाल एवं दलहन', 'NUTS AND SEEDS (Nuts- peanuts / ground nuts,; Seeds- sesame ( naru); pumpkin seed, jackfruit seeds, poppy seeds)', 'दाने व बीज जैसे मूंगफली, बादाम, कोहड़ा का बीज, ', 'DAIRY (milk, curd, cheese; NOT condensed milk; NOT butter -> 13; NOT sweetened / flavoured curds; NOT cream; NOT Dairy whitener (amulya, everyday, local milk powders for making tea/coffee), Cottage cheese (paneer))', 'दूध एवं दूध से बने उत्पाद (चाय ,कॉफ़ी, क्रीम,मक्खन,घी  या  पाउडर दूध  से बने किसी भी उत्पाद को छोड़ कर )', 'MEAT, POULTRY AND FISH (any meat; any fish (fresh / dried) ; any organ meats (liver, heart,brain,...), snail, Rodents, Birds, crabs, oyster, Rabbit, frog, prawns)', 'पशु प्रोटीन - मांस ,मछली,मुर्गा,मेंढक ,खरगोश, पचौनी ,गुर्दा इत्यादि ', 'DARK GREEN LEAFY VEGETABLES (amaranth; pumpkin leaves ; spinach; cow pea leaves ; cauliflower leaves, spinach, potato leaves, morenga leaves,bottle gourd leaves,  casava leaves, other uncultivated local leafy vegetables)', 'हरी पत्तेदार सब्जियां जैसे- पलक,गांधारी, मुली साक, बथुआ  लौकी का साग , सहजन का पत्ता , गोभी का पत्ता , कोहड़ा का पत्ता इत्यादि', 'OTHER VITAMIN A-RICH FRUITS AND VEGETABLES (Orange- ripe mango; ripe Papaya; ripe pumpkin; Melon (kharbuja); carrots (yellow/orange))', 'विटामिन A युक्त फल एवं  सब्जियां (पिला एवं नारंगी) . जैसे पका  पपीता, गाजर ,कोहड़ा ,खरबूजा ,पका आम इत्यादि', 'Vanaspati OIL', 'वनस्पति तेल', 'OTHER OILS AND FATS (cooking oil (soya bean, sun flower canola, mustard, sesame,); butter, Fish oil; lard (animal fat);   Ghee, Mahua seed oil, Rape seed oil)', 'तेल व घी- सोयाबीन का तेल, सरसोँ का तेल,टिल का तेल, नारियल तेल, मक्खन , मछली का तेल , कोडी का तेल  इत्यादि ', 'SAVOURY AND FRIED SNACKS (potatoe crisps; corn snacks (Kurkure, nachos, others); fried doughnuts(goja, khaja,) / samosa / fat cook; NOT fresh potatoe french fries, Bhujia, Chanachur mix)', 'मुखरोचक ताला नास्ता जैसे- चिप्स ,कुरकुरे,खाजा, बालूसाही ,समोसा ,भुजिया ,चनाचूर इत्यादि'),
(18, '20210702073415', '20210702084233', 'During the day and night of yesterday, did you consume', 'क्या आपने कल पूरे दिन आपने कुछ खाया था ?', 'input', 'GRAINS, WHITE ROOTS AND TUBERS (potatoes, white sweet-potatoes; Raw green banana; Yam- elephant foot, casava, colocassia; Crereals-rice, white maize, orange maize, wheat, different types of millets,Oats , Wheat- Flour ( Maida & Ata), dalia, suji, noodles; rice - Puffed rice, flattened rice, poped rice, rice powder, rice cakes)', 'अनाज जड़ एवं कन्द- जैसे आलू ,कच्चा केला, कच्चू,चावल , गेंहूँ ,मक्का ,बाजरा, रागी ,कोदो साबू दाना मैदा , नूडल्स, मुढ़ी,चुडा इत्यादि', 'PULSES (Pulses- lentiles, chick pea, black gram, green gram, dried peas, kurthi, ; Legumes; soya beans, soya chunks / mince, horse gram, Cow pea,Flat bean seeds (dried), cluster beans, Kidney beans)', 'दाल एवं दलहन', 'NUTS AND SEEDS (Nuts- peanuts / ground nuts,; Seeds- sesame ( naru); pumpkin seed, jackfruit seeds, poppy seeds)', 'दाने व बीज जैसे मूंगफली, बादाम, कोहड़ा का बीज, ', 'DAIRY (milk, curd, cheese; NOT condensed milk; NOT butter -> 13; NOT sweetened / flavoured curds; NOT cream; NOT Dairy whitener (amulya, everyday, local milk powders for making tea/coffee), Cottage cheese (paneer))', 'दूध एवं दूध से बने उत्पाद (चाय ,कॉफ़ी, क्रीम,मक्खन,घी  या  पाउडर दूध  से बने किसी भी उत्पाद को छोड़ कर )', 'MEAT, POULTRY AND FISH (any meat; any fish (fresh / dried) ; any organ meats (liver, heart,brain,...), snail, Rodents, Birds, crabs, oyster, Rabbit, frog, prawns)', 'पशु प्रोटीन - मांस ,मछली,मुर्गा,मेंढक ,खरगोश, पचौनी ,गुर्दा इत्यादि ', 'DARK GREEN LEAFY VEGETABLES (amaranth; pumpkin leaves ; spinach; cow pea leaves ; cauliflower leaves, spinach, potato leaves, morenga leaves,bottle gourd leaves,  casava leaves, other uncultivated local leafy vegetables)', 'हरी पत्तेदार सब्जियां जैसे- पलक,गांधारी, मुली साक, बथुआ  लौकी का साग , सहजन का पत्ता , गोभी का पत्ता , कोहड़ा का पत्ता इत्यादि', 'OTHER VITAMIN A-RICH FRUITS AND VEGETABLES (Orange- ripe mango; ripe Papaya; ripe pumpkin; Melon (kharbuja); carrots (yellow/orange))', 'विटामिन A युक्त फल एवं  सब्जियां (पिला एवं नारंगी) . जैसे पका  पपीता, गाजर ,कोहड़ा ,खरबूजा ,पका आम इत्यादि', 'Vanaspati OIL', 'वनस्पति तेल', 'OTHER OILS AND FATS (cooking oil (soya bean, sun flower canola, mustard, sesame,); butter, Fish oil; lard (animal fat);   Ghee, Mahua seed oil, Rape seed oil)', 'तेल व घी- सोयाबीन का तेल, सरसोँ का तेल,टिल का तेल, नारियल तेल, मक्खन , मछली का तेल , कोडी का तेल  इत्यादि ', 'SAVOURY AND FRIED SNACKS (potatoe crisps; corn snacks (Kurkure, nachos, others); fried doughnuts(goja, khaja,) / samosa / fat cook; NOT fresh potatoe french fries, Bhujia, Chanachur mix)', 'मुखरोचक ताला नास्ता जैसे- चिप्स ,कुरकुरे,खाजा, बालूसाही ,समोसा ,भुजिया ,चनाचूर इत्यादि'),
(19, '20210702073415', '20210702084341', 'Do you have a kitchen garden now ', ' क्या आपके पास अभी रसोईघर का बगीचा है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '20210702073415', '20210702084525', 'If Yes, Do you get from the kitchen garden now', 'क्या अभी आपको आपके पोषण बगीचे से मिल पता है ?', 'input', 'Green leafy vegetables', 'हरी पत्तेदार सब्जियां', 'Other vegetables', 'अन्य सब्जियां', 'Yellow and orange vegetables', 'पिला तथा  नारंगी सब्जियां', 'Pulses/legumes', 'दाल / दलहन', 'Air potato, yam, colocasia, other roots/tubers', 'खमालू , कच्चू, अन्य जड़ एव कंद', 'Oil seeds', 'तिलहन', 'Fruits', ' फल', '', '', '', '', '', ''),
(21, '20210702073415', '20210702084637', 'You get your cereals from', 'आप आनाज कहाँ से प्राप्त करते है?', 'input', 'mostly own production', 'ज़्यादातर अपना उत्पादन', 'mostly PDS', 'ज़्यादातर राशन से', 'Mostly buy from market', 'ज़्यादातर बाज़ार से', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, '20210702073415', '20210702084706', 'Do you consume animal products', 'क्या आप पशु उत्पाद लेते है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, '20210702073415', '20210702084749', 'If Yes, You get animal products from', '', 'input', 'mostly own production', 'ज़्यादातर अपना उत्पादन', 'Mostly buy from market', 'ज़्यादातर बाज़ार से', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, '20210702073415', '20210702084812', 'Do have farm land', 'क्या आपके पास खेती करने के लिए अपना ज़मींन है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, '20210702073415', '20210702084841', 'If Yes, What do you grow on your land', 'आप क्या क्या उगते है?', 'input', 'Grains- Rice, wheat, corn etc.', 'धान्य- धान,गेहूँ,मक्का इत्यादि', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, '20210702073415', '20210702084930', 'Do you dry/pickle and preserve vegetables, fruits, leafy vegetables, meat/fish, tubers, roots, etc?', 'क्या आप हरी पत्तेदार सब्जियां ,सब्जियां एवं फल को सुखाकर या अंचार बनाकर रखते है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, '20210702085125', '20210702085202', 'Is your child 6 m to 23 m of age?', 'क्या आपके बच्चे की उम्र 6 महीने से 23 महीने के बीच है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, '20210702085125', '20210702085339', 'Only If \"Yes\"  the MDD-C questions appear', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, '20210702085125', '20210702091218', 'Do you still Breast feed your child?', ' क्या आप अभी भी अपने बच्चे को स्तनपान करते हैं?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, '20210702085125', '20210702091252', 'Other than breast milk What else did your child eat in the last 24 hrs? Dietary Diversity', 'स्तन दूध के अलावा पिछले 24 घंटों में आपके बच्चे ने और क्या खाया? आहार विविधता', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, '20210702085125', '20210702091319', 'Grains, Roots Tubers', 'अनाज, जड़ें ट्यूबर', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, '20210702085125', '20210702091341', 'Legumes , Nuts, pulses', 'फल, नट, दालें', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, '20210702085125', '20210702091421', 'Dairy products (milk, yogurt, cheese)', 'डेयरी उत्पादों (दूध, दही, पनीर)', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, '20210702085125', '20210702091513', 'Flesh food ( meat, fish, Poultry, liver /organ)', 'मांस भोजन (मांस, मछली, मुर्गी, यकृत / अंग)', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, '20210702085125', '20210702091536', 'Eggs ', 'अंडे', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, '20210702085125', '20210702091555', 'Vitamin A rich fruits & vegetables', 'विटामिन-ए समृद्ध फल और सब्जियां', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, '20210702085125', '20210702091626', 'Other fruits and vegetables', 'अन्य फल और सब्जियां', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, '20210702085125', '20210702091649', 'How many times in day do to feed complementary food? Meal frequency', 'आप दिन में कितनी बार पूरक भोजन खिलाते हैं? भोजन आवृत्ति', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, '20210702085125', '20210702091717', 'If the child is breast fed', 'अगर बच्चे को स्तनपान कराया जाता है', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, '20210702085125', '20210702091801', '2 or more times for infants 6-8 months', '6-8 महीने की उम्र के शिशुओं के लिए 2 या अधिक बार', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, '20210702085125', '20210702091820', ' 3 or more times for children 9-23 months', '9-23 महीने की उम्र के बच्चों के लिए 3 या अधिक बार', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, '20210702085125', '20210702091838', ' 4 or more times for children 6-23 months', '6-23 महीने की उम्र के बच्चों के लिए 4 या अधिक बार ', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, '20210702085125', '20210702091857', 'If the child is not breast fed', 'अगर बच्चे को स्तनपान नहीं कराया जाता है', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, '20210702085125', '20210702091917', '2 or more times for  infants 6-8 months', '6-8 महीने की उम्र के शिशुओं के लिए 2 या अधिक बार', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, '20210702085125', '20210702091933', ' 3 or more times for children 9-23 months', '9-23 महीने की उम्र के बच्चों के लिए 3 या अधिक बार', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, '20210702085125', '20210702091949', ' 4 or more times for children 6-23 months', '6-23 महीने की उम्र के बच्चों के लिए 4 या अधिक बार', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, '20210702123306', '20210702124848', 'What is your MAIN drinking water source during DRY season? (Select one)', 'सूखे मौसम के दौरान आपका मुख्य पेय जल का स्रोत क्या है? (एक चुनो)', 'input', 'Public tap/stand post (improved)', '(सार्वजनिक / सांप्रदायिक टैप (सुधार)', ' Private tap at the house (improved)', 'घर पर निजी नल (सुधार)', ' Borehole with handpump (improved)', 'चपा नल  के साथ बोरहोल (सुधार)', ' Protected spring (improved)', '', ' Open dug well (not improved)', 'खुला कुंआ (सुधार नही हुआ)', ' Protected dug well (improved)', 'अच्छी तरह से संरक्षित कुंआ) (सुधार किया हुआ) ', ' Protected rainwater storage systems (improved)', 'संरक्षित वर्षा जल संग्रहण प्रणाली (सुधार किया हुआ)', 'Pond, stream, river, swamp (not improved)', 'तालाब, धारा, नदी, दलदल (सुधार नहीं हुआ)', 'Other (not improved)', 'अन्य (सुधार नहीं हुआ)', 'Don’t know/ No answer (not improved)', 'पता नहीं / कोई जवाब नहीं (सुधार नहीं हुआ)'),
(48, '20210702123306', '20210702125017', 'What is your MAIN drinking water during RAINY season? Select one', 'बरसात के मौसम में आपका पेय जल का मुख्य स्रोत क्या है? एक चुनो', 'input', 'Public tap/stand post (improved)', '(सार्वजनिक / सांप्रदायिक टैप (सुधार)', ' Private tap at the house (improved)', 'घर पर निजी नल (सुधार)', ' Borehole with handpump (improved)', 'चपा नल  के साथ बोरहोल (सुधार)', ' Protected spring (improved)', 'दाल / दलहन', ' Open dug well (not improved)', 'खुला कुंआ (सुधार नही हुआ)', ' Protected dug well (improved)', 'अच्छी तरह से संरक्षित कुंआ) (सुधार किया हुआ) ', ' Protected rainwater storage systems (improved)', 'संरक्षित वर्षा जल संग्रहण प्रणाली (सुधार किया हुआ)', 'Pond, stream, river, swamp (not improved)', 'तालाब, धारा, नदी, दलदल (सुधार नहीं हुआ)', 'Other (not improved)', 'अन्य (सुधार नहीं हुआ)', 'Don’t know/ No answer (not improved)', 'पता नहीं / कोई जवाब नहीं (सुधार नहीं हुआ)'),
(49, '20210702123306', '20210702125313', 'OBSERVATION: Check the drinking water storage arrangement for the following', 'निरीक्षण: निम्नलिखित के लिए पेयजल भंडारण व्यवस्था की जांच करें', 'input', 'Drinking water kept in a separate container (ask to look at the container)?', 'पानी को एक अलग बरतन में रखा जाता है (बरतन को देखने के लिए पूछें)?', 'Drinking water container kept above floor level and away from contamination? ', 'पीने का पानी का बरतन को जमीन ऊपर और प्रदूषण से दूर है', 'Water containers used for drinking water collection and water storage have a narrow mouth / opening. ', 'जल संग्रहण या पानी का पानी रखने का बर्तन का मुह संकरा हुआ है?', 'Containers used for drinking water storage have a lid/ cover', 'पीने के पानी को ढक कर रखते है ', 'The utensil used to draw water from the drinking water container clean and stored in a hygienic manner', 'पीने के पानी के कंटेनर से पानी निकालने के लिए इस्तेमाल किया जाता है जो स्वच्छ और स्वच्छ तरीके से संग्रहीत होता है', 'INSIDE of the drinking water container clean', 'पीने के पानी का बरतन अंदर से साफ है?', 'OUTSIDE of the drinking water container clean?', 'पीने के पानी का बरतन बाहर से साफ है?', 'None of these', 'इनमें से कोई नहीं', '', '', '', ''),
(50, '20210702123306', '20210702125407', 'What is the condition of the platform around the water source?', 'जल स्रोत के चारों ओर मंच की स्थिति क्या है?', 'input', 'Good condition', 'अच्छी हालत', 'Cracked / Broken platform', 'क्रैक / टूटा मंच', 'No platform', 'कोई मंच नहीं', 'Under construction', 'निर्माणाधीन', 'Could not observe', 'देख नहीं सका', '', '', '', '', '', '', '', '', '', ''),
(51, '20210702125515', '20210702125546', 'In the past 12 months - starting from ... [specify the month or an event which is commonly known] until now - were there months in which you did not have enough food to meet your family\'s household\'s needs? ', 'पिछले 12 महीनों में -  शुरू से ... [कोई निर्दिष्ट महीना या त्योहार जो आमतौर पर याद रहता हो] अब तक - क्या कोई ऐसा महिना गुज़रा है, जिसमे आपको या आपके परिवार के सदस्यों को पर्याप्त भोजन नहीं मिला?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, '20210702125515', '20210702125616', 'Which were the months in the past 12 months during which you did not have enough food to meet your family\'s needs?', 'पिछले 12 महीनों में कौन सा ऐसा महीने थे, जिसमे आपकी या  आपके परिवार की जरूरतों को पूरा करने के लिए आपके पास पर्याप्त भोजन नहीं था?', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, '20210702125659', '20210702125747', 'How many adolescent girls are there in the Household?', 'आपके परिवार में कितने किशोरियां है?', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, '20210702125659', '20210702125819', 'Do you have a Anganwadi in the village', 'क्या  आपके गावं में आंगनवाड़ी केंद्र है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, '20210702125659', '20210702125910', 'Does the AWC open regularly?', 'क्या आंगनवाडी केंद्र रोज़ खुलता है ?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, '20210702125659', '20210702010054', 'Does/did any one from your family access the servives available at the centre?', 'आपके परिवार का कोई सदस्य आंगनवाडी केंद्र से सुविधा प्राप्त किये या करते है? ', 'input', 'Supplementary Nutrition Programme', 'पूरक पोषण कार्यक्रम', 'Growth monitoring', 'विकास निगरानी', 'Health and Nutrition education', 'स्वास्थ्य और पोषण शिक्षा', 'Referral', 'रेफरल', 'Health check-up', 'स्वास्थ्य जांच', 'pre school education', 'पूर्व विद्यालयी शिक्षा', 'Take Home Ration (THR)', 'राशन जिसे घर ले जाया जा सकता है(टि हेच आर)', 'Ante Natal Care (ANC)', 'प्रसवपूर्व देखभाल (ए एन सि)', 'Post Natal Care (PNC)', ' प्रसवोत्तर देखरेख (पि एन सि)', 'Immunisation and on the spot feeding', 'टीकाकरण और स्पॉट फीडिंग'),
(57, '20210702125659', '20210702010128', 'Do you have a Ration shop/dealer in the village?', 'क्या आपके गावं में राशन विक्रेता है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, '20210702125659', '20210702010148', 'Do you get subsidised Ration from the PDS?', 'क्या आप नजदीकी राशन दुकान से सब्सिडी में राशन  उठाते है ?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '20210702125659', '20210702010212', 'Do you get subsidised Ration from the PDS every month', 'क्या आप प्रतिमाह नजदीकी राशन दुकान से सब्सिडी में राशन  उठाते है ?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '20210702125659', '20210702010257', 'Do you have a MGNREGS Job card?', 'क्या आपके पास मंरेगा जॉब कार्ड है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, '20210702125659', '20210702010328', 'Do get demand work?', 'क्या आपने काम माँगा था ?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, '20210702125659', '20210702010412', 'Do you get work?', 'क्या आपको काम मिला?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, '20210702125659', '20210702010439', 'Are the wages paid within 15 days?', 'क्या आपको 15 दिनों के अन्दर मानदेह प्राप्त हुआ ?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, '20210702125659', '20210702010457', 'Are you aware about Unemployment dole?', 'क्या आप बेरोजगारी भत्ता के बारे में जानते है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, '20210702125659', '20210702010513', 'Do you have a Immunization day/VHND in the village?', 'क्या आपके गावं में ग्राम पोषण दिवस / टीकाकरण मनाया जाता है ?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, '20210702125659', '20210702010539', 'Is the VHND held every month?', 'क्या ग्राम स्वस्थ पोषण दिवस प्रति माह मनाया जाता है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, '20210702125659', '20210702010707', 'Do you/family get all services from the VHND?- ANC, PNC, vaccination, ORS, basic medicine, etc ', 'क्या आप या आपका परिवार ग्राम स्वस्थ पोषण दिवस के दौरान सभी स्वस्थ सुविधाएं जैसे  गर्भ जाँच,टीकाकरण ,एवं ज़रूरी दवाएं इत्यादि प्राप्त हो जाती है', 'input', 'Ante Natal Care (ANC)', 'प्रसवपूर्व देखभाल (ए एन सि)', 'Post Natal Care (PNC)', ' प्रसवोत्तर देखरेख (पि एन सि)', 'Vaccination', 'टीकाकरण', 'Oral Rehydration Salts (ORS)', 'मौखिक निर्जलीकरण नमक (ओआरएस)', 'Basic Medicine', 'मूल चिकित्सा', 'Others', 'अन्य', 'None ', 'कोई नहीं', '', '', '', '', '', ''),
(68, '20210702125659', '20210702050209', 'Do you know the ASHA (Sahiya)?', 'क्या आप सहिया को जानते हो?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(69, '20210702125659', '20210702050225', 'Is ther a VHSNC in the village?', 'क्या गावं में ग्राम स्वास्थ स्वच्छता एवं पोषण समिति है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, '20210702125659', '20210702050240', 'Did the VHSNC do any community development work in the village in the last 1 year? ', 'क्या  ग्राम स्वास्थ स्वच्छता एवं पोषण समिति ने पिछले १ साल में समुदाय के विकास के लिए कुछ काम किया है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(71, '20210702125659', '20210702050258', 'Is there a active VWSC in the village ?', 'क्या गावं में गांव जल और स्वच्छता समिति है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, '20210702125659', '20210702050311', 'Did the VWSC do any community development work in the village in the last 1 year?', ' क्या  गांव जल और स्वच्छता समिति ने पिछले १ साल में समुदाय के विकास के लिए कुछ काम किया है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(73, '20210702125659', '20210702050335', 'Number of Gram Sabhas held in the village in the last year?', 'पिछले साल गांव में आयोजित ग्राम सभा की संख्या?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(74, '20210702125659', '20210702050345', 'Do you attend the Gram Sabha meetings? ', 'क्या आप ग्राम सभा की बैठक में भाग लेते है ?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, '20210702125659', '20210702050400', 'Has the village prepared a micro-plan in the last one year? ', 'क्या गांव ने पिछले एक साल में माइक्रो-प्लान तैयार किया है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, '20210702125659', '20210702050421', 'Did you participate/ contribute to the preparation of this plan? ', 'क्या आपने भाग लिया और इस योजना की तैयारी में योगदान दिया?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(77, '20210702125659', '20210702050438', 'Has there been any development work in the village in the last 1 year related to these micro plans?', 'क्या इन सूक्ष्म योजनाओं से संबंधित पिछले 1 साल में गांव में कोई विकास कार्य रहा है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, '20210702125659', '20210702050453', 'Do you have access to safe drinking water in all seasons? ', 'क्या आपको सभी मौसम में  स्वच्छ पेय जल मिलता है?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, '20210702125659', '20210702050526', 'Water for irrigation? ', 'सिचाई की सुविधा?', 'input', 'None ', 'कोई नहीं', 'Irrigation for few months in the year', 'साल में कुछ महीनों के लिए', 'Irrigation throughout the year', 'साल भर सिंचाई उपलब्ध है', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, '20210702125659', '20210702050544', 'Does the village have roads & access to block head quarters?', ' क्या गावं से प्रखंड कार्यालय तक पहुचने के लिए पक्की सड़क या पी.सी.सी है ?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, '20210702125659', '20210702050646', 'What are the government schemes that you or your family member have been able to access? ', 'आपके परिवार द्वारा उपयोग की जाने वाली अन्य सरकारी योजनाएं क्या हैं?', 'input', 'Janani Suraksha Yojana', 'जननी सुरक्षा योजना', 'Aajeevika / Sanjivani (JSLPS)', 'आजीविका / संजीवनी (जेएसएलपीएस)', 'Adarsh Gram Yojana', 'आदर्श ग्राम योजना', 'Pradhan Mantri Awas Yojona', 'प्रधान मंत्री आवास योजना', 'Pension Schemes', 'पेंशन योजनाएँ', 'Swatch Barat Mission- Toilet', 'स्वच्छ भारत मिशन- शौचालय', 'National Rural Drinking Water schemes', 'राष्ट्रीय ग्रामीण पेयजल योजनाएं', 'School Mid-Day Meals', 'स्कूल दोपहर का भोजन', 'Laxmi Ladli Yajana', 'लक्ष्मी लाडली योजना', 'Saraswati Yojana', 'सरस्वती योजना'),
(82, '20210702070303', '20210702050824', 'If Yes, How many children less than 5 years age in the family ? ', 'परिवार में 5 साल से कम बच्चे कितने हैं?', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, '20210702070303', '20210702050833', 'Name of child who was screened/ ', 'स्क्रीनिंग किया गया बच्चा का नाम', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, '20210702070303', '20210702050904', 'Sex', 'लिंग', 'input', 'Male', 'पुरुष', 'Female', 'महिला', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, '20210702070303', '20210702050914', 'Date of Screening', 'स्क्रीनिंग की तारीख', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, '20210702070303', '20210702050924', 'Date of Birth of Child', 'बच्चे का जन्मतिथि', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, '20210702070303', '20210702050933', 'Age in Months', 'महीनों में आयु', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, '20210702070303', '20210702050947', 'If Child is 24 months old or less, Length in CM', 'लंबाई से.मी', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, '20210702070303', '20210702050958', 'If Child is older than 24 months, Height in CM', 'ऊचाई से.मी', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, '20210702070303', '20210702051006', 'Weight in KG', 'वजन किलोंग्राम में', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, '20210702070303', '20210702051017', 'Select Weight Range of Child', 'चाइल्ड वेट रेंज', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(92, '20210702070303', '20210702051032', 'WAZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(93, '20210702070303', '20210702051037', 'WHZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(94, '20210702070303', '20210702051046', 'MUAC   Red/Yellow/Green', 'एम. यू. ए. सी- लाल / पीला/ हरा', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(95, '20210702070303', '20210702051054', 'Oedema/ओडिमा- 0/+/++/+++ ', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(96, '20210702055527', '20210702055543', 'Location-admin boundary cascade', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(97, '20210702055527', '20210702055554', 'Name of Mother', 'माँ का नाम', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(98, '20210702055527', '20210702055603', 'Name of child who was screened', 'स्क्रीनिंग किया गया बच्चा का नाम', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(99, '20210702055527', '20210702055630', 'Sex', 'लिंग', 'input', 'Male', 'पुरुष', 'Female', 'महिला', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(100, '20210702055527', '20210702055641', 'Date of Screening', 'स्क्रीनिंग की तारीख', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(101, '20210702055527', '20210702055650', 'Date of Birth of Child', 'बच्चे का जन्मतिथि', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(102, '20210702055527', '20210702055700', 'Age in Months', 'महीनों में आयु', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(103, '20210702055527', '20210702055710', 'If Child is 24 months old or less, Length in CM', 'लंबाई से.मी', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(104, '20210702055527', '20210702055718', 'If Child is older than 24 months, Height in CM', 'ऊचाई से.मी', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(105, '20210702055527', '20210702055726', 'Weight in KG', 'वजन किलोंग्राम में', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(106, '20210702055527', '20210702055737', 'Select Weight Range of Child', 'चाइल्ड वेट रेंज', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(107, '20210702055527', '20210702055743', 'WAZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(108, '20210702055527', '20210702055749', 'WHZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(109, '20210702055527', '20210702055756', 'MUAC   Red/Yellow/Green/', ' एम. यू. ए. सी- लाल / पीला/ हरा', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, '20210702055527', '20210702055810', 'Oedema- 0/+/++/+++ ', 'ओडिमा', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(111, '20210702055905', '20210702055923', 'Select Village', 'गांव का चयन करें', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(112, '20210702055905', '20210702055933', 'Name of Mother', 'माँ का नाम', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(113, '20210702055905', '20210702055944', 'HH Id', 'एचएच आईडी', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(114, '20210702055905', '20210702055955', 'Name of child', 'बच्चा का नाम', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(115, '20210702055905', '20210702060015', 'Sex', 'लिंग', 'input', 'Male', 'पुरुष', 'Female', 'महिला', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(116, '20210702055905', '20210702060024', 'Date of Screening', 'स्क्रीनिंग की तारीख', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(117, '20210702055905', '20210702060032', 'Date of Birth of Child', 'बच्चे का जन्मतिथि', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(118, '20210702055905', '20210702060046', 'Age in Months', 'महीनों में आयु', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(119, '20210702055905', '20210702060130', 'If Child is 24 months old or less, Length in CM', 'लंबाई से.मी', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, '20210702055905', '20210702060139', 'If Child is older than 24 months, Height in CM', 'ऊचाई से.मी', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(121, '20210702055905', '20210702060146', 'Weight in KG', 'वजन किलोंग्राम में', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(122, '20210702055905', '20210702060154', 'Select Weight Range of Child', 'चाइल्ड वेट रेंज', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(123, '20210702055905', '20210702060159', 'WAZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(124, '20210702055905', '20210702060204', 'WHZ-WHO', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(125, '20210702055905', '20210702060211', 'MUAC   Red/Yellow/Green/ ', 'एम. यू. ए. सी- लाल / पीला/ हरा', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(126, '20210702055905', '20210702060218', 'Oedema- 0/+/++/+++ ', 'ओडिमा', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(127, '20210702055905', '20210702060224', 'Photo of Child', '', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, '20210703075315', '20210703075450', 'How many people are educated upto10th class', 'दसवीं कक्षा तक कितने लोग शिक्षित हैं', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, '20210703075315', '20210703075523', 'How many them are girls/women', 'उनमें कितनी लड़कियां/महिलाएं हैं', 'input', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(130, '20210703075315', '20210703075826', 'Do you have schools in village?', 'क्या आपके गाँव में स्कूल हैं?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', 'Don’t Know', 'पता नहीं', 'Referral', 'रेफरल', '', '', '', '', '', '', '', '', '', '', '', ''),
(131, '20210703091955', '20210703092154', 'Do you want to participate in the survey?', '  क्या आप सर्वेक्षण में भाग लेना चाहते हैं?', 'input', 'Yes', 'हाँ ', 'No', 'नहीं', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

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
(21, 'ro_field_user', 'dashboard', 0),
(22, 'ro_field_user', 'profile', 0),
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
(42, 'ro_executive_director', 'dashboard', 0),
(43, 'ro_executive_director', 'profile', 0),
(44, 'ro_executive_director', 'forms', 0),
(45, 'ro_executive_director', 'form_settings', 0),
(46, 'ro_executive_director', 'notification', 0),
(47, 'ro_executive_director', 'view_project', 0),
(48, 'ro_executive_director', 'project_tasks', 0),
(49, 'ro_executive_director', 'create_task', 0),
(50, 'ro_executive_director', 'organigram', 0);

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

--
-- Dumping data for table `bee_permissions_user`
--

INSERT INTO `bee_permissions_user` (`id`, `user_id`, `sub_module_id`, `sub_module_url`, `permission`) VALUES
(11, '20210623125240', 'bank_control_sheet', 'bank/bank-control-sheet', 0),
(12, '20210623125240', 'email', 'email', 0),
(13, '20210623125240', 'role_and_permission', 'role-and-permission', 0),
(14, '20210623125240', 'module_and_submodule', 'modules', 0),
(15, '20210623125240', 'appearance', 'appearance', 0),
(16, '20210623125240', 'manage_roles', 'roles', 0),
(17, '20210623125240', 'dashboard', 'dashboard', 1),
(18, '20210623125240', 'profile', 'my-profile', 0),
(19, '20210623125240', 'forms', 'forms', 0),
(20, '20210623125240', 'form_settings', 'form/settings', 0),
(21, '20210623125240', 'notification', 'notification', 0),
(22, '20210623125240', 'view_project', 'project/id/?', 0),
(23, '20210623125240', 'project_tasks', 'project/task/?', 0),
(24, '20210623125240', 'create_task', 'create-task', 0),
(25, '20210623125240', 'organigram', 'organigram', 0),
(26, '20210703034809', 'bank_control_sheet', 'bank/bank-control-sheet', 0),
(27, '20210703034809', 'email', 'email', 0),
(28, '20210703034809', 'role_and_permission', 'role-and-permission', 0),
(29, '20210703034809', 'module_and_submodule', 'modules', 0),
(30, '20210703034809', 'appearance', 'appearance', 0),
(31, '20210703034809', 'manage_roles', 'roles', 0),
(32, '20210703034809', 'dashboard', 'dashboard', 1),
(33, '20210703034809', 'profile', 'my-profile', 0),
(34, '20210703034809', 'forms', 'forms', 0),
(35, '20210703034809', 'form_settings', 'form/settings', 0),
(36, '20210703034809', 'notification', 'notification', 0),
(37, '20210703034809', 'view_project', 'project/id/?', 0),
(38, '20210703034809', 'project_tasks', 'project/task/?', 0),
(39, '20210703034809', 'create_task', 'create-task', 0),
(40, '20210703034809', 'organigram', 'organigram', 0);

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
(12, 'ro_field_user', 'user', 0),
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
(23, 'ro_executive_director', 'user', 0),
(24, 'ro_executive_director', 'cws_forms', 0),
(25, 'ro_executive_director', 'projects', 0),
(26, 'ro_executive_director', 'notification', 0),
(27, 'ro_executive_director', 'organigram', 0);

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

--
-- Dumping data for table `bee_project_member`
--

INSERT INTO `bee_project_member` (`id`, `project_id`, `user_id`, `status`, `is_team_leader`) VALUES
(1, 'human-dignity', '20210623125240', 1, 0),
(3, 'human-dignity', '20210703054126', 1, 0),
(4, 'livelihood', '20210703054126', 1, 0),
(5, 'livelihood', '20210623125240', 1, 0),
(6, 'human-dignity', '20210703034809', 1, 0);

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
(11, 'ro_field_user', 'field user', 'Field User limited access', '2021-07-03 03:45:10');

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

--
-- Dumping data for table `bee_tasks`
--

INSERT INTO `bee_tasks` (`id`, `project_id`, `task_id`, `task_title`, `task_content`, `user_id`, `task_priority`, `due_date`, `task_status`, `created_at`, `last_modified`) VALUES
(1, 'human-dignity', '20210709083506', 'Collect Project Details', 'Collect Project Details', '20210703054126', 'medium', '2021-07-11', 'pending', '2021-07-09 08:35:06', '2021-07-09 08:35:06'),
(2, 'human-dignity', '20210709083506', 'Collect Project Details', 'Collect Project Details', '20210623125240', 'medium', '2021-07-11', 'pending', '2021-07-09 08:35:06', '2021-07-09 08:35:06'),
(3, 'livelihood', '20210709101645', 'Base Line Survey', 'Base Line Survey', '20210703054126', 'high', '2021-07-11', 'pending', '2021-07-09 10:16:45', '2021-07-09 10:16:45');

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
(1, '20210623125240', 'Shailesh', 'J', 'Umbardand', 'shailesh@pioniumtech.com', '8618203373', '1992-04-19', 1, '2021-06-23 12:52:40', '2021-06-27 04:43:25'),
(2, '20210703034809', 'Mahesh', 'J', 'Kumar', 'mahesh@gmail.com', '8888888888', '1990-12-31', 1, '2021-07-03 03:48:09', '2021-07-03 03:48:09'),
(3, '20210703054126', 'Mayuri', 'P', 'Pimple', 'mayuri@pioniumtech.com', '8888888888', '1990-01-01', 0, '2021-07-03 05:41:26', '2021-07-03 05:41:26'),
(4, '20210703064425', 'Test', 'T', 'Executive', 'executive@gmail.com', '888888888', '1990-01-01', 0, '2021-07-03 06:44:25', '2021-07-03 06:44:25'),
(5, '20210703064502', 'Program', 'P', 'Director', 'program@gmail.com', '8888888888', '1990-01-01', 0, '2021-07-03 06:45:02', '2021-07-03 06:45:02'),
(6, '20210703064532', 'Finance', 'D', 'Director', 'finance@gmail.com', '8811223344', '1990-01-01', 0, '2021-07-03 06:45:32', '2021-07-03 06:45:32'),
(7, '20210703064634', 'State', 'S', 'Directors', 'state-director@gmail.com', '7878787878', '1990-01-01', 0, '2021-07-03 06:46:34', '2021-07-03 06:46:34'),
(8, '20210703064718', 'Program', 'P', 'Officers', 'program-officer@gmail.com', '8989898989', '1992-01-01', 0, '2021-07-03 06:47:18', '2021-07-03 06:47:18'),
(9, '20210703082410', 'Rajesh', '', 'Jha', 'rajesh.jha@cws.org', '8888888888', '1990-01-01', 0, '2021-07-03 08:24:10', '2021-07-03 08:24:10'),
(10, '20210903105132', 'Raj', 'D', 'Sharma', 'raj@gmail.comm', '8888888888', '2021-07-07', 0, '2021-09-03 10:51:32', '2021-09-03 10:51:32');

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
(1, '20210703034809', '2021-07-07 17:30:33'),
(2, '20210703034809', '2021-07-09 09:02:45'),
(3, '20210703034809', '2021-07-09 10:11:14'),
(4, '20210703034809', '2021-07-09 10:11:58');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `bee_permissions_user`
--
ALTER TABLE `bee_permissions_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `bee_permission_module`
--
ALTER TABLE `bee_permission_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bee_user_login_log`
--
ALTER TABLE `bee_user_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
