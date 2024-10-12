-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2024 at 09:08 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `van`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `id_activity` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `activity` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `delete` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id_activity`, `id_user`, `activity`, `timestamp`, `delete`) VALUES
(1569, NULL, 'User Membuka View', '2024-09-08 07:37:54', NULL),
(1570, NULL, 'User megembalikan data', '2024-09-08 07:37:59', NULL),
(1571, NULL, 'User edit data', '2024-09-08 07:38:51', NULL),
(1572, NULL, 'User Membuka View', '2024-09-08 07:39:00', NULL),
(1573, NULL, 'User Membuka View', '2024-09-08 08:12:10', NULL),
(1574, NULL, 'User Membuka View', '2024-09-08 08:47:44', NULL),
(1575, NULL, 'User megembalikan data', '2024-09-08 08:47:48', NULL),
(1576, NULL, 'User Membuka View', '2024-09-08 08:48:11', NULL),
(1577, NULL, 'User Membuka View', '2024-09-08 08:48:54', NULL),
(1578, NULL, 'User Membuka View', '2024-09-08 08:48:59', NULL),
(1579, NULL, 'User megembalikan data', '2024-09-08 08:49:01', NULL),
(1580, NULL, 'User megembalikan data', '2024-09-08 08:49:04', NULL),
(1581, NULL, 'User megembalikan data', '2024-09-08 08:49:06', NULL),
(1582, NULL, 'User Membuka View', '2024-09-08 08:49:07', NULL),
(1583, NULL, 'User Membuka View', '2024-09-08 08:49:21', NULL),
(1584, NULL, 'User Membuka View', '2024-09-08 08:49:25', NULL),
(1585, NULL, 'User Membuka View', '2024-09-08 08:55:57', NULL),
(1586, NULL, 'User menabah jadwal', '2024-09-08 08:56:17', NULL),
(1587, NULL, 'User Membuka View', '2024-09-08 08:56:17', NULL),
(1588, NULL, 'User Membuka View', '2024-09-08 08:57:28', NULL),
(1589, NULL, 'User menabah jadwal', '2024-09-08 08:57:51', NULL),
(1590, NULL, 'User Membuka View', '2024-09-08 08:57:51', NULL),
(1591, NULL, 'User Membuka View', '2024-09-08 09:00:07', NULL),
(1592, NULL, 'User Membuka View', '2024-09-08 09:01:30', NULL),
(1593, NULL, 'User menabah jadwal', '2024-09-08 09:01:50', NULL),
(1594, NULL, 'User Membuka View', '2024-09-08 09:01:51', NULL),
(1595, NULL, 'User Membuka View', '2024-09-08 09:03:15', NULL),
(1596, NULL, 'User Membuka View', '2024-09-08 09:03:20', NULL),
(1597, NULL, 'User Membuka View', '2024-09-08 09:03:23', NULL),
(1598, NULL, 'User Membuka View', '2024-09-08 09:03:29', NULL),
(1599, NULL, 'User megembalikan data', '2024-09-08 09:03:30', NULL),
(1600, NULL, 'User Menghapus', '2024-09-08 09:03:34', NULL),
(1601, NULL, 'User Membuka View', '2024-09-08 09:03:34', NULL),
(1602, NULL, 'User megembalikan data', '2024-09-08 09:03:38', NULL),
(1603, NULL, 'User megembalikan data', '2024-09-08 09:03:38', NULL),
(1604, NULL, 'User megembalikan data', '2024-09-08 09:04:24', NULL),
(1605, NULL, 'User Membuka View', '2024-09-08 09:04:27', NULL),
(1606, NULL, 'User Membuka View', '2024-09-08 09:04:29', NULL),
(1607, NULL, 'User Membuka View', '2024-09-08 09:04:43', NULL),
(1608, NULL, 'User Membuka View', '2024-09-08 09:04:47', NULL),
(1609, NULL, 'User Membuka View', '2024-09-08 09:04:50', NULL),
(1610, NULL, 'User megembalikan data', '2024-09-08 09:04:52', NULL),
(1611, NULL, 'User megembalikan data', '2024-09-08 09:04:56', NULL),
(1612, NULL, 'User megembalikan data', '2024-09-08 09:04:58', NULL),
(1613, NULL, 'User Membuka View', '2024-09-08 09:05:00', NULL),
(1614, NULL, 'User Membuka View', '2024-09-08 09:05:04', NULL),
(1615, NULL, 'User megembalikan data', '2024-09-08 09:05:15', NULL),
(1616, NULL, 'User edit data', '2024-09-08 09:20:05', NULL),
(1617, NULL, 'User Membuka View', '2024-09-08 09:20:07', NULL),
(1618, NULL, 'User Membuka View', '2024-09-08 09:20:11', NULL),
(1619, NULL, 'User edit data', '2024-09-08 09:20:13', NULL),
(1620, NULL, 'User Membuka View', '2024-09-08 09:44:42', NULL),
(1621, NULL, 'User Membuka View', '2024-09-08 09:45:59', NULL),
(1622, NULL, 'User Membuka View', '2024-09-08 09:46:01', NULL),
(1623, NULL, 'User Membuka View', '2024-09-08 09:46:10', NULL),
(1624, NULL, 'User Membuka View', '2024-09-08 09:46:27', NULL),
(1625, NULL, 'User Membuka View', '2024-09-08 09:46:57', NULL),
(1626, NULL, 'User Membuka View', '2024-09-08 09:47:48', NULL),
(1627, NULL, 'User Membuka View', '2024-09-08 09:48:13', NULL),
(1628, NULL, 'User menabah jadwal', '2024-09-08 09:48:30', NULL),
(1629, NULL, 'User Membuka View', '2024-09-08 09:48:30', NULL),
(1630, NULL, 'User Membuka View', '2024-09-08 09:48:33', NULL),
(1631, NULL, 'User Membuka View', '2024-09-08 09:48:46', NULL),
(1632, NULL, 'User Membuka View', '2024-09-08 09:57:59', NULL),
(1633, NULL, 'User Membuka View', '2024-09-08 10:30:52', NULL),
(1634, NULL, 'User Membuka View', '2024-09-08 10:30:54', NULL),
(1635, NULL, 'User megembalikan data', '2024-09-08 10:32:01', NULL),
(1636, NULL, 'User edit data', '2024-09-08 10:32:05', NULL),
(1637, NULL, 'User edit data', '2024-09-08 10:32:27', NULL),
(1638, NULL, 'User Membuka View', '2024-09-08 10:33:18', NULL),
(1639, NULL, 'User megembalikan data', '2024-09-08 10:33:20', NULL),
(1640, NULL, 'User edit data', '2024-09-08 10:33:22', NULL),
(1641, NULL, 'User Membuka View', '2024-09-08 10:33:34', NULL),
(1642, NULL, 'User Membuka View', '2024-09-08 12:29:04', NULL),
(1643, NULL, 'User megembalikan data', '2024-09-08 12:29:05', NULL),
(1644, NULL, 'User edit data', '2024-09-08 12:29:08', NULL),
(1645, NULL, 'User megembalikan data', '2024-09-08 12:29:15', NULL),
(1646, NULL, 'User Membuka View', '2024-09-08 12:29:16', NULL),
(1647, NULL, 'User Membuka View', '2024-09-08 12:29:19', NULL),
(1648, NULL, 'User megembalikan data', '2024-09-08 12:29:21', NULL),
(1649, NULL, 'User megembalikan data', '2024-09-08 12:29:24', NULL),
(1650, NULL, 'User Membuka View', '2024-09-08 12:29:25', NULL),
(1651, NULL, 'User Membuka View', '2024-09-08 12:29:37', NULL),
(1652, NULL, 'User Membuka View', '2024-09-08 12:29:41', NULL),
(1653, NULL, 'User Membuka View', '2024-09-08 12:30:02', NULL),
(1654, NULL, 'User Membuka View', '2024-09-08 12:30:08', NULL),
(1655, NULL, 'User menabah jadwal', '2024-09-08 12:30:38', NULL),
(1656, NULL, 'User Membuka View', '2024-09-08 12:30:38', NULL),
(1657, NULL, 'User edit data', '2024-09-08 12:30:51', NULL),
(1658, NULL, 'User edit data', '2024-09-08 12:31:16', NULL),
(1659, NULL, 'User edit data', '2024-09-08 12:31:17', NULL),
(1660, NULL, 'User Membuka View', '2024-09-08 12:31:45', NULL),
(1661, NULL, 'User Membuka View', '2024-09-08 12:31:48', NULL),
(1662, NULL, 'User Membuka View', '2024-09-08 12:32:17', NULL),
(1663, NULL, 'User Membuka View', '2024-09-08 17:22:29', NULL),
(1664, NULL, 'User edit data', '2024-09-08 17:25:28', NULL),
(1665, NULL, 'User Membuka View', '2024-09-08 17:25:34', NULL),
(1666, NULL, 'User Membuka View', '2024-09-09 06:07:15', NULL),
(1667, NULL, 'User Membuka View', '2024-09-09 06:07:46', NULL),
(1668, NULL, 'User megembalikan data', '2024-09-09 06:07:48', NULL),
(1669, NULL, 'User megembalikan data', '2024-09-09 06:07:51', NULL),
(1670, NULL, 'User Membuka View', '2024-09-09 06:07:52', NULL),
(1671, NULL, 'User Membuka View', '2024-09-09 06:08:03', NULL),
(1672, NULL, 'User Membuka View', '2024-09-09 06:08:06', NULL),
(1673, NULL, 'User Membuka View', '2024-09-09 06:08:20', NULL),
(1674, NULL, 'User Membuka View', '2024-09-09 06:08:24', NULL),
(1675, NULL, 'User Membuka View', '2024-09-09 06:08:30', NULL),
(1676, NULL, 'User edit data', '2024-09-09 06:13:29', NULL),
(1677, NULL, 'User megembalikan data', '2024-09-09 06:13:31', NULL),
(1678, NULL, 'User edit data', '2024-09-09 06:13:38', NULL),
(1679, NULL, 'User edit data', '2024-09-09 06:13:58', NULL),
(1680, NULL, 'User edit data', '2024-09-09 06:14:23', NULL),
(1681, NULL, 'User megembalikan data', '2024-09-09 06:14:51', NULL),
(1682, NULL, 'User edit data', '2024-09-09 06:14:59', NULL),
(1683, NULL, 'User Membuka View', '2024-09-09 06:16:37', NULL),
(1684, NULL, 'User Membuka View', '2024-09-09 06:16:39', NULL),
(1685, NULL, 'User Membuka View', '2024-09-12 01:12:27', NULL),
(1686, NULL, 'User Membuka View', '2024-09-12 15:39:33', NULL),
(1687, NULL, 'User megembalikan data', '2024-09-12 15:39:34', NULL),
(1688, NULL, 'User edit data', '2024-09-12 15:39:35', NULL),
(1689, NULL, 'User edit data', '2024-09-12 16:14:28', NULL),
(1690, NULL, 'User edit data', '2024-09-12 16:15:30', NULL),
(1691, NULL, 'User edit data', '2024-09-12 16:17:06', NULL),
(1692, NULL, 'User Membuka View', '2024-09-12 16:17:10', NULL),
(1693, NULL, 'User Membuka View', '2024-09-12 16:18:05', NULL),
(1694, NULL, 'User Membuka View', '2024-09-12 16:19:00', NULL),
(1695, NULL, 'User Membuka View', '2024-09-12 16:19:02', NULL),
(1696, NULL, 'User edit data', '2024-09-13 13:08:23', NULL),
(1697, NULL, 'User megembalikan data', '2024-09-13 13:08:25', NULL),
(1698, NULL, 'User Membuka View', '2024-09-13 13:08:26', NULL),
(1699, NULL, 'User edit data', '2024-09-13 13:08:59', NULL),
(1700, NULL, 'User edit data', '2024-09-13 13:09:15', NULL),
(1701, NULL, 'User edit data', '2024-09-13 13:09:17', NULL),
(1702, NULL, 'User edit data', '2024-09-13 13:19:43', NULL),
(1703, 16, 'User edit data', '2024-09-17 18:06:59', NULL),
(1704, 16, 'User edit data', '2024-09-22 13:28:23', NULL),
(1705, 16, 'User edit data', '2024-09-22 13:28:36', NULL),
(1706, 16, 'User edit data', '2024-09-22 13:28:39', NULL),
(1707, 16, 'User edit data', '2024-09-22 13:28:41', NULL),
(1708, 16, 'User edit data', '2024-09-22 13:28:42', NULL),
(1709, 16, 'User edit data', '2024-09-22 13:28:42', NULL),
(1710, 16, 'User edit data', '2024-09-22 13:28:43', NULL),
(1711, 16, 'User edit data', '2024-09-22 13:29:25', NULL),
(1712, 16, 'User edit data', '2024-09-22 13:29:49', NULL),
(1713, 16, 'User edit data', '2024-09-22 14:09:11', NULL),
(1714, 16, 'User edit data', '2024-09-22 14:10:14', NULL),
(1715, 16, 'User edit data', '2024-09-22 14:10:22', NULL),
(1716, 16, 'User edit data', '2024-09-24 02:17:52', NULL),
(1717, 16, 'User edit data', '2024-09-24 02:18:15', NULL),
(1718, 16, 'User edit data', '2024-09-24 02:18:19', NULL),
(1719, 16, 'User edit data', '2024-10-07 05:54:20', NULL),
(1720, 16, 'User edit data', '2024-10-07 05:54:39', NULL),
(1721, 16, 'User edit data', '2024-10-07 05:54:43', NULL),
(1722, 16, 'User edit data', '2024-10-07 06:40:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `comment_text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `media_id`, `id_user`, `comment_text`, `created_at`) VALUES
(1, 1, 12, 'kok', '2024-09-13 03:12:04'),
(2, 8, NULL, 'ss', '2024-09-15 05:02:42'),
(3, 2, NULL, '', '2024-09-15 05:07:27'),
(4, 20, 16, 'asep kayak asep\r\n', '2024-09-18 16:26:03'),
(5, 27, 16, 'kongol', '2024-09-20 03:21:37'),
(6, 20, 16, '', '2024-09-20 03:25:03'),
(7, 27, 16, 'wow', '2024-09-20 03:26:58'),
(8, 27, 16, 'kk', '2024-09-20 03:42:39'),
(9, 28, 16, 'jj\r\n', '2024-09-20 03:44:36'),
(10, 20, 16, '', '2024-09-20 03:44:37'),
(11, 28, 16, '', '2024-09-20 03:47:46'),
(12, 28, 16, '', '2024-09-20 04:00:11'),
(13, 29, 16, '', '2024-09-20 04:02:53'),
(14, 29, 16, 'bb', '2024-09-20 04:25:33'),
(15, 30, 16, 'ee', '2024-09-20 04:31:38'),
(16, 31, 16, 'jsjss', '2024-09-20 04:33:05'),
(17, 29, 16, '', '2024-09-20 13:59:54'),
(18, 29, 16, '', '2024-09-20 14:10:53'),
(19, 30, 16, '', '2024-09-20 14:10:55'),
(20, 29, NULL, '', '2024-09-21 09:03:39'),
(21, 29, NULL, '', '2024-09-21 09:03:45'),
(22, 29, 16, 'anime\r\n', '2024-09-21 09:03:54'),
(23, 31, NULL, 'furt', '2024-09-21 09:06:35'),
(24, 31, NULL, '', '2024-09-21 09:14:55'),
(25, 31, NULL, 'kk', '2024-09-21 09:15:01'),
(26, 16, NULL, 'deren makan ayam bakar bersama kucing nya yang benama asep', '2024-09-21 09:15:48'),
(27, 31, NULL, 'xx', '2024-09-21 09:16:21'),
(28, 31, 16, 'dd', '2024-09-21 09:17:02'),
(29, 30, 16, ' m', '2024-09-21 09:45:29'),
(30, 29, 16, 'N', '2024-09-21 09:48:38'),
(31, 29, 16, '', '2024-09-21 11:42:03'),
(32, 16, 16, '', '2024-09-21 11:55:28'),
(33, 29, 16, '', '2024-09-21 12:09:51'),
(34, 31, 16, '', '2024-09-21 12:20:30'),
(35, 31, 16, '', '2024-09-21 12:20:35'),
(36, 31, 16, 'aha', '2024-09-21 12:23:58'),
(37, 32, 16, '', '2024-09-21 12:26:00'),
(38, 32, 16, 'aku mau di 10', '2024-09-21 12:26:12'),
(39, 32, 16, '', '2024-09-22 12:48:46'),
(40, 32, 16, 'sj', '2024-09-22 12:48:50'),
(41, 32, 16, '', '2024-09-24 02:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_p5`
--

CREATE TABLE `kegiatan_p5` (
  `id_kls` int(10) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `kegiatan_p5` varchar(50) DEFAULT NULL,
  `tgl` date NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `deleted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_p5`
--

INSERT INTO `kegiatan_p5` (`id_kls`, `jurusan`, `kegiatan_p5`, `tgl`, `kelas`, `deleted`) VALUES
(8, 'rpl', 'ikan', '2000-04-03', '12', NULL),
(10, 'ak', 'jjk', '2024-09-08', '15', '2024-09-09'),
(11, 'djd', 'jsjs', '3333-02-12', '12', '2024-09-08'),
(13, 'rpl', 'ss', '0001-11-11', '12', '2024-09-08'),
(14, 'bdp', 'masak ikan', '2222-02-12', '12', '2024-09-08'),
(15, 'bdp', 't', '2077-08-09', '12', '2024-09-09');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_p5_backup`
--

CREATE TABLE `kegiatan_p5_backup` (
  `id_kls` int(10) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `kegiatan_p5` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan_p5_backup`
--

INSERT INTO `kegiatan_p5_backup` (`id_kls`, `jurusan`, `kegiatan_p5`, `tgl`, `kelas`) VALUES
(8, 'rpl', 'ikan', '2000-04-03', '12');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `media_id` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `media_id`, `id_user`, `created_at`) VALUES
(26, 29, 16, '2024-09-20 04:17:23'),
(27, 30, 16, '2024-09-20 04:22:39'),
(28, 29, 16, '2024-09-20 04:25:38'),
(29, 29, 16, '2024-09-20 04:29:07'),
(30, 29, 16, '2024-09-20 04:30:03'),
(31, 30, 16, '2024-09-20 04:30:08'),
(32, 30, 16, '2024-09-20 04:31:34'),
(33, 31, 16, '2024-09-20 04:32:59'),
(34, 31, 16, '2024-09-20 04:35:18'),
(35, 29, 16, '2024-09-20 04:38:29'),
(36, 31, 16, '2024-09-20 04:42:51'),
(37, 30, 16, '2024-09-20 14:10:40'),
(38, 30, 16, '2024-09-20 14:10:45'),
(39, 30, 16, '2024-09-20 14:10:49'),
(40, 30, 16, '2024-09-20 14:11:14'),
(41, 29, 16, '2024-09-20 14:11:17'),
(42, 30, 16, '2024-09-20 14:11:30'),
(43, 30, 16, '2024-09-20 14:13:19'),
(44, 31, 16, '2024-09-20 14:13:29'),
(45, 29, 16, '2024-09-20 14:13:49'),
(46, 29, 16, '2024-09-20 14:18:57'),
(47, 31, 16, '2024-09-20 14:19:01'),
(48, 29, 16, '2024-09-20 14:26:12'),
(51, 30, 16, '2024-09-21 11:35:11'),
(52, 30, 16, '2024-09-21 11:37:22'),
(53, 30, 16, '2024-09-21 11:40:15'),
(54, 30, 16, '2024-09-21 11:40:19'),
(55, 29, 16, '2024-09-21 11:42:07'),
(56, 29, 16, '2024-09-21 11:43:21'),
(57, 29, 16, '2024-09-21 11:46:42'),
(58, 32, 16, '2024-09-21 11:47:00'),
(59, 31, 16, '2024-09-21 11:47:21'),
(60, 32, 16, '2024-09-22 12:48:45'),
(61, 33, 16, '2024-09-22 14:09:32'),
(62, 34, 16, '2024-09-24 02:18:30'),
(63, 35, 16, '2024-09-24 02:19:22'),
(64, 33, 16, '2024-09-24 02:19:29'),
(65, 36, 16, '2024-10-07 06:02:55'),
(66, 36, 16, '2024-10-07 06:02:55'),
(67, 36, 16, '2024-10-07 06:02:56'),
(68, 36, 16, '2024-10-07 06:02:56'),
(69, 36, 16, '2024-10-07 06:02:56'),
(70, 36, 16, '2024-10-07 06:02:57'),
(71, 36, 16, '2024-10-07 06:02:57'),
(72, 36, 16, '2024-10-07 06:02:57'),
(73, 36, 16, '2024-10-07 06:02:57');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `logo_id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `nama_web` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`logo_id`, `logo`, `icon`, `nama_web`) VALUES
(1, 'logo.png', 'icon.png', 'nn');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `media_type` enum('photo','video','text') DEFAULT NULL,
  `media_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `like_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `id_user`, `media_type`, `media_path`, `description`, `created_at`, `like_count`) VALUES
(64, 16, 'photo', 'Screenshot 2024-05-25 010017.png', 'hko', '2024-10-11 17:55:34', 0),
(66, 16, 'photo', 'Screenshot 2024-05-23 212252.png', 'gak tau', '2024-10-11 19:23:01', 0),
(67, 16, 'photo', 'Screenshot 2024-05-24 214006.png', 'j', '2024-10-11 19:27:04', 0),
(68, NULL, 'photo', 'Screenshot 2024-05-25 010328.png', 'test', '2024-10-11 19:29:15', 0),
(69, NULL, 'photo', 'Screenshot 2024-05-30 185442.png', 'wow', '2024-10-11 19:30:39', 0),
(71, 26, 'photo', 'green.jpg', 'hari yang indah', '2024-10-12 06:37:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `update_log`
--

CREATE TABLE `update_log` (
  `update_log_id` int(11) NOT NULL,
  `update_time` varchar(255) DEFAULT NULL,
  `update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `jenis_kelamin` enum('laki','perempuan') DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `level` int(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `create_by` int(255) DEFAULT NULL,
  `update_at` varchar(255) DEFAULT NULL,
  `update_by` int(255) DEFAULT NULL,
  `delete_at` varchar(255) DEFAULT NULL,
  `delete_by` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `alamat`, `level`, `create_at`, `create_by`, `update_at`, `update_by`, `delete_at`, `delete_by`) VALUES
(12, 'admin', '202cb962ac59075b964b07152d234b70', 'clara', 'perempuan', 'lorem ipsum', 1, '2024-08-14 08:34:45', 1, NULL, NULL, NULL, NULL),
(13, 'asep', '202cb962ac59075b964b07152d234b70', 'dd', 'laki', 'tm', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'morgen', '202cb962ac59075b964b07152d234b70', 'morgen taw', 'perempuan', 'orci', 3, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'epan', '202cb962ac59075b964b07152d234b70', 'uu', 'laki', 'aman', 4, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'manda', '202cb962ac59075b964b07152d234b70', 'ee', '', 'balaoi', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'buk alda', '$2y$10$ASqkDY.RiPHIs6wBewj7EeEh5e7aKnDrAczWDk26XE.ZSMEtSrb9e', 'as', 'perempuan', NULL, NULL, '2024-10-11 18:09:20', NULL, '2024-10-11 18:09:20', NULL, NULL, NULL),
(19, 'deren', '6a53c0a2839d37d49a1c3d7546060504', 'oo', 'perempuan', NULL, NULL, '2024-10-11 18:09:37', NULL, '2024-10-11 18:09:37', NULL, NULL, NULL),
(20, 'logi', '$2y$10$Ot08TBFIpVlYMlAHReLli.qyTOAyHQfQjO6x0OFy53pLBFzdQFv9e', 'kobi', 'laki', NULL, NULL, '2024-10-11 18:13:55', NULL, '2024-10-11 18:13:55', NULL, NULL, NULL),
(21, 'user', 'e10adc3949ba59abbe56e057f20f883e', 'rr', 'perempuan', NULL, NULL, '2024-10-11 18:17:40', NULL, '2024-10-11 18:17:40', NULL, NULL, NULL),
(22, 'van', '$2y$10$HVVsAgurtGpGxTCcRm3uDulOSnQnpEeH6YwjN2EtVQ87dUA8.n59m', 'ff', 'laki', NULL, NULL, '2024-10-11 18:35:23', NULL, '2024-10-11 18:35:23', NULL, NULL, NULL),
(23, 'asep', '$2y$10$5anbTGNo6H9C68mT4WHTgORfAgVul35cjOtYuCBfiV9MJBkkMp9Ry', 'pan', 'laki', NULL, NULL, '2024-10-11 18:53:45', NULL, '2024-10-11 18:53:45', NULL, NULL, NULL),
(24, 'asus', '$2y$10$.rqdRVpXHtp0xvcy0LHPKO260nRXM1elwaFh7NW4Y8UvugAD9P5fi', 'as', 'laki', NULL, NULL, '2024-10-11 18:58:27', NULL, '2024-10-11 18:58:27', NULL, NULL, NULL),
(25, 'tin', '202cb962ac59075b964b07152d234b70', 'hsh', 'laki', NULL, NULL, '2024-10-11 19:23:57', NULL, '2024-10-11 19:23:57', NULL, NULL, NULL),
(26, 'pak if', '202cb962ac59075b964b07152d234b70', 'pak if', 'laki', NULL, NULL, '2024-10-12 04:05:32', NULL, '2024-10-12 04:05:32', NULL, NULL, NULL),
(27, 'yoga', '$2y$10$6/8bqWak4BPXSxV0gGLVQOgpJxrUo9q/phyUxqa0HM2BBTZF6kOgW', 'yoga', 'laki', NULL, NULL, '2024-10-12 04:39:25', NULL, '2024-10-12 04:39:25', NULL, NULL, NULL),
(28, 'iphone', '$2y$10$iMb1wAx/TMW9XVZu0b2Wduod9FLB4OcX6zMs.3dekYee4zhkKAp0K', 'asep', 'laki', NULL, NULL, '2024-10-12 04:42:25', NULL, '2024-10-12 04:42:25', NULL, NULL, NULL),
(29, 'uauau', '$2y$10$iJD4HCTb8Qy3SYf388zQTue3SzAgmlYaGQvguP7u998s44pKaoJHW', 'hsh', 'perempuan', NULL, NULL, '2024-10-12 04:45:46', NULL, '2024-10-12 04:45:46', NULL, NULL, NULL),
(30, 'lampu', '202cb962ac59075b964b07152d234b70', 'haha', 'perempuan', NULL, NULL, '2024-10-12 04:48:55', NULL, '2024-10-12 04:48:55', NULL, NULL, NULL),
(31, 'asusvivobook', '$2y$10$7tgFuM1Yp0mUCdLP/fmbsu0M6MYN2EF8e9sLfOW.azHdvaZQnB2uW', 'iphone', 'perempuan', NULL, NULL, '2024-10-12 04:56:28', NULL, '2024-10-12 04:56:28', NULL, NULL, NULL),
(32, 't', 'd9b1d7db4cd6e70935368a1efb10e377', 'aha', 'laki', NULL, NULL, '2024-10-12 05:01:00', NULL, '2024-10-12 05:01:00', NULL, NULL, NULL),
(33, 'kk', 'd9b1d7db4cd6e70935368a1efb10e377', 'as', 'laki', NULL, NULL, '2024-10-12 05:04:18', NULL, '2024-10-12 05:04:18', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id_activity`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatan_p5`
--
ALTER TABLE `kegiatan_p5`
  ADD PRIMARY KEY (`id_kls`);

--
-- Indexes for table `kegiatan_p5_backup`
--
ALTER TABLE `kegiatan_p5_backup`
  ADD PRIMARY KEY (`id_kls`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`logo_id`) USING BTREE;

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `update_log`
--
ALTER TABLE `update_log`
  ADD PRIMARY KEY (`update_log_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id_activity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1723;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `kegiatan_p5`
--
ALTER TABLE `kegiatan_p5`
  MODIFY `id_kls` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kegiatan_p5_backup`
--
ALTER TABLE `kegiatan_p5_backup`
  MODIFY `id_kls` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `logo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `update_log`
--
ALTER TABLE `update_log`
  MODIFY `update_log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
