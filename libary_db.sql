-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2019 at 01:27 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libary_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` smallint(5) UNSIGNED NOT NULL,
  `address` varchar(50) NOT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `district` varchar(20) NOT NULL,
  `city_id` smallint(5) UNSIGNED NOT NULL,
  `postal_code` varchar(10) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(35) NOT NULL,
  `middle_initial` char(1) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `middle_initial`, `last_name`, `last_update`) VALUES
(1, 'Jordan', 'B', 'Peterson', '2019-04-17 11:24:48'),
(2, 'Nicole', '', 'Forsgren', '2019-04-16 12:41:30'),
(3, 'Jez', '', 'Humble', '2019-04-16 12:45:52'),
(4, 'Gene', '', 'Kim', '2019-04-16 12:45:52'),
(5, 'Reid', '', 'Hoffman', '2019-04-17 11:12:27'),
(6, 'Chris', '', 'Yeh', '2019-04-17 11:12:27'),
(7, 'Donald', '', 'Miller', '2019-04-17 11:19:25'),
(8, 'James', 'C', 'Collins', '2019-04-17 11:26:41'),
(9, 'Jerry', 'I', 'Porras', '2019-04-17 11:26:41'),
(10, ' Alexander', '', 'Osterwalder', '2019-04-17 11:33:47'),
(11, 'Eliyahu', 'M', 'Goldratt', '2019-04-17 11:33:47'),
(12, 'Gary', '', 'Vaynerchuk', '2019-04-17 11:38:30'),
(13, 'Steve', '', 'Krug', '2019-04-17 11:38:30'),
(14, 'Simon', '', 'Sinek', '2019-04-17 11:45:51'),
(15, 'David', '', 'Mead', '2019-04-17 11:45:51'),
(16, 'Peter', '', 'Docker', '2019-04-17 11:46:23'),
(18, 'Andrew', 'S', 'Grove', '2019-04-17 11:52:51'),
(19, 'Nir', '', 'Eyal', '2019-04-17 11:55:42'),
(20, 'Ryan', '', 'Hoover', '2019-04-17 11:55:42'),
(21, 'John', 'C', 'Maxwell', '2019-04-17 11:57:23'),
(22, 'Dale', '', 'Carnegie', '2019-04-17 12:02:35'),
(23, 'William', 'H', 'McRaven', '2019-04-17 12:02:35'),
(24, 'John', 'E', 'Doerr', '2019-04-17 12:09:13'),
(25, 'Malcolm', '', 'Gladwell', '2019-04-17 12:13:02'),
(26, 'Ray', '', 'Dalio', '2019-04-17 12:13:02'),
(27, 'Jason', '', 'Fried', '2019-04-17 12:17:20'),
(28, 'David', 'H', 'Hansson', '2019-04-17 12:17:20'),
(29, 'John', '', 'Daymond', '2019-04-17 12:29:49'),
(30, 'Daniel', '', 'Paisner', '2019-04-17 12:29:49'),
(31, 'Zig', '', 'Ziglar', '2019-04-17 12:37:12'),
(32, 'Allan', '', 'Dib', '2019-04-17 12:37:12'),
(33, 'Timothy', '', 'Ferriss ', '2019-04-17 12:59:55'),
(34, 'Stephen', 'R', 'Covey', '2019-04-17 12:59:55'),
(35, 'Paulo', '', 'Coelho', '2019-04-17 13:03:15'),
(36, 'Ben', '', 'Casnocha', '2019-04-17 13:06:53'),
(37, 'Miguel', '', 'Ruiz', '2019-04-21 01:29:54'),
(38, 'Daniel', '', 'Coyle', '2019-04-17 13:08:25'),
(39, 'Donald', 'A', 'Norman', '2019-04-17 13:15:45'),
(40, 'David', 'S', 'Rose', '2019-04-21 01:43:00'),
(41, 'Ben', '', 'Horowitz', '2019-04-17 13:20:15'),
(42, 'Eric', '', 'Ries', '2019-04-17 13:20:15'),
(43, 'Ken', '', 'Blanchard', '2019-04-17 13:22:21'),
(44, 'Spencer', '', 'Johnson', '2019-04-17 13:22:21'),
(45, 'Gene', '', 'Kim', '2019-04-17 13:25:23'),
(46, 'Kevin', '', 'Behr', '2019-04-17 13:25:23'),
(47, 'George', '', 'Spafford', '2019-04-17 13:25:55'),
(48, 'Eckhart', '', 'Tolle', '2019-04-17 13:28:43'),
(49, 'Bob', '', 'Dorf', '2019-04-17 13:33:35'),
(50, 'Steve', '', 'Blank', '2019-04-17 13:33:35'),
(51, 'Arianna', 'S', 'Huffington', '2019-04-17 13:40:45'),
(52, 'Gary John', '', 'Bishop', '2019-04-17 13:44:32'),
(53, 'Brad', '', 'Feld', '2019-04-17 13:45:07'),
(54, 'Jason', '', 'Mendelson', '2019-04-17 13:45:34'),
(55, 'Sam', '', 'Harris', '2019-04-17 13:48:20'),
(56, 'Daniel', 'H', 'Pink', '2019-04-17 13:48:20'),
(57, 'Jen', '', 'Sincero', '2019-04-17 13:53:04'),
(58, 'Peter', '', 'Thiel', '2019-04-17 13:53:04'),
(59, 'Blake', '', 'Masters', '2019-04-17 13:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `ISBN` bigint(13) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `pub_year` year(4) DEFAULT NULL,
  `pages` smallint(5) UNSIGNED DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LC_class` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ISBN`, `title`, `pub_year`, `pages`, `last_update`, `LC_class`) VALUES
(0, 'Waking Up: A Guide to Spirituality Without Religion', 2014, 245, '2019-04-21 03:38:29', 'BL624 .H333 2014'),
(66620996, 'Good to Great: Why Some Companies Make the Leap and Others Don\'t', 2001, 300, '2019-04-15 20:46:39', 'HD57.7 .C645 2001'),
(415922216, 'Maps of meaning : the architecture of belief', 1999, 541, '2019-04-15 21:06:35', 'BF175.5.A72 P48 1999'),
(425098478, 'The one minute manager', 1983, 111, '2019-04-16 11:53:05', 'HD31 .B527 1983'),
(679762884, 'High Output Management', 1995, 243, '2019-04-15 19:24:53', 'HD31 .G764 1995'),
(887306713, 'Built to Last: Successful Habits of Visionary Companies', 1994, 322, '2019-04-15 20:46:39', 'HF5386 .C735 1994'),
(1565547063, 'See You at the Top', 2000, 384, '2019-04-16 11:45:08', 'BJ1581.2 .Z53 2000'),
(9780061914171, 'Crush it! : why now is the time to cash in on your passion', 2009, 142, '2019-04-16 12:15:26', 'HD62.5 .V39 2009'),
(9780062273208, 'The Hard Thing About Hard Things: Building a Business When There Are No Easy Answers', 2014, 289, '2019-04-15 19:10:19', ''),
(9780062315007, 'The Alchemist', 1967, 208, '2019-04-16 11:18:05', 'PR2605 .A1 1967'),
(9780062674678, 'Crushing It!: How Great Entrepreneurs Build Their Business and Influence-and How You Can, Too', 2018, 272, '2019-04-15 21:01:13', 'HB615 .V385 2018'),
(9780062803832, 'Unfu*k Yourself: Get Out of Your Head and into Your Life', 2017, 209, '2019-04-16 12:06:00', 'BF697.5.S47 B57 2017'),
(9780143111726, 'Find your why : a practical guide to discovering purpose for you or your team', 2017, 242, '2019-04-15 19:52:08', 'BF327 .S56 2017'),
(9780307463746, 'Rework', 2010, 288, '2019-04-15 21:18:05', ''),
(9780307465351, 'The 4-Hour Workweek: Escape 9-5, Live Anywhere, and Join the New Rich', 2009, 416, '2019-04-16 11:41:02', 'HD6955 .F435 2009'),
(9780307887894, 'The Lean Startup: How Today\'s Entrepreneurs Use Continuous Innovation to Create Radically Successful Businesses', 2011, 320, '2019-04-15 21:11:54', 'HD62.5 .R545 2011'),
(9780307888907, 'The Start-up of You: Adapt to the Future, Invest in Yourself, and Transform Your Career', 2012, 260, '2019-04-16 11:24:52', 'HF5384 .H63 2012'),
(9780316017923, 'Outliers: The Story of Success', 2008, 309, '2019-04-16 12:10:33', 'BF637.S8 G533 2008'),
(9780321965516, 'Don\'t make me think, revisited : a common sense approach to Web usability', 2014, 200, '2019-04-15 21:29:02', 'TK5105.888 .K78 2014'),
(9780345530257, 'The Little Book of Talent: 52 Tips for Improving Your Skills', 2012, 160, '2019-04-15 19:41:51', ''),
(9780345816023, '12 Rules for Life: An Antidote to Chaos', 2018, 409, '2019-04-15 21:06:35', ''),
(9780385483827, 'Only the Paranoid Survive: How to Exploit the Crisis Points That Challenge Every Company', 1999, 240, '2019-04-15 19:24:53', ''),
(9780465050659, 'The Design of Everyday Things: Revised and Expanded Edition', 2013, 347, '2019-04-15 21:29:02', 'TS171.4 .N67 2013'),
(9780470876411, 'Business Model Generation: A Handbook for Visionaries, Game Changers, and Challengers', 2010, 278, '2019-04-15 21:50:07', 'HD30.28 .O778 2010'),
(9780525536222, 'Measure What Matters: How Google, Bono, and the Gates Foundation Rock the World with OKRs', 2018, 306, '2019-04-15 19:31:36', 'HD30.28 .D634 2018'),
(9780553806847, 'The Talent Code: Greatness Isn\'t Born. It\'s Grown. Here\'s How.', 2009, 246, '2019-04-15 19:41:51', '2008047674'),
(9780671027032, 'How to Win Friends and Influence People', 1937, 288, '2019-04-16 11:36:30', 'BF67 .C33 1937m'),
(9780718033323, 'Building a StoryBrand: Clarify Your Message So Customers Will Listen', 2017, 228, '2019-04-16 11:45:08', 'HF5415.1255 .M5473 2017'),
(9780735222977, 'You Are a Badass at Making Money: Master the Mindset of Wealth', 2017, 269, '2019-04-16 12:10:33', 'HG179 .S486 2017'),
(9780804139298, 'Zero to One: Notes on Startups, or How to Build the Future', 2014, 210, '2019-04-15 21:18:05', 'HD62.5 .T525 2014'),
(9780804140867, 'Thrive: The Third Metric to Redefining Success and Creating a Life of Well-Being, Wisdom, and Wonder', 2015, 342, '2019-04-16 11:36:30', 'HF5386 .H9125 2015'),
(9780804176989, 'The Culture Code: The Secrets of Highly Successful Groups', 2018, 280, '2019-04-15 19:31:36', 'HD66 .C675 2018'),
(9780804189958, 'Rise and Grind: Outperform, Outwork, and Outhustle Your Way to a More Successful and Rewarding Life', 2018, 309, '2019-04-16 11:58:13', 'HF5386 .J597 2018'),
(9780884271154, 'It\'s Not Luck', 1994, 283, '2019-04-15 19:19:38', ''),
(9780884271536, 'Critical Chain', 2002, 246, '2019-04-15 19:19:38', ''),
(9780884271956, 'The goal : a process of ongoing improvement', 1992, 337, '2019-04-15 19:10:19', 'PR9510.9.G64 G6 1992'),
(9780984999309, 'The Startup Owner\'s Manual: The Step-By-Step Guide for Building a Great Company', 2012, 608, '2019-04-15 21:36:28', ''),
(9781119163794, 'The Startup Checklist: 25 Steps to a Scalable, High-Growth Business', 2016, 306, '2019-04-15 21:36:28', 'HB615 .R656 2016'),
(9781119594857, 'Venture Deals: Be Smarter Than Your Lawyer and Venture Capitalist', 2019, 304, '2019-04-15 21:50:07', 'HG4751 .F45 2011'),
(9781328683786, 'Tools of Titans: The Tactics, Routines, and Habits of Billionaires, Icons, and World-Class Performers', 2016, 673, '2019-04-15 20:53:48', 'BF637.S8 F43 2016'),
(9781328994967, 'Tribe of Mentors: Short Life Advice from the Best in the World', 2017, 598, '2019-04-15 20:53:48', 'BF637.S8 F47 2017'),
(9781451639612, 'The 7 Habits of Highly Effective People: Powerful Lessons in Personal Change', 2013, 391, '2019-04-16 11:41:02', 'BF637.S8 C68 2013'),
(9781455570249, 'Make Your Bed: Little Things That Can Change Your Life...And Maybe the World', 2017, 144, '2019-04-16 11:58:13', 'SDD 15531'),
(9781501124020, 'Principles: Life and Work', 2017, 592, '2019-04-16 12:02:25', 'HF5386 .D167 2017'),
(9781524761417, 'Blitzscaling: The Lightning-Fast Path to Building Massively Valuable Companies', 2018, 325, '2019-04-16 11:29:45', 'HD62.5 .H624 2018'),
(9781577314806, 'The Power of Now: A Guide to Spiritual Enlightenment', 2004, 235, '2019-04-16 11:24:52', 'BL624 .T64 2004'),
(9781591842804, 'Start with Why: How Great Leaders Inspire Everyone to Take Action', 2009, 246, '2019-04-15 19:49:07', 'HD57.7 .S549 2009'),
(9781591845324, 'Leaders eat last : why some teams pull together and others don\'t', 2014, 244, '2019-04-15 19:49:07', 'HD57.7 .S5487 2014'),
(9781591847786, 'Hooked: How to Build Habit-Forming Products', 2014, 242, '2019-04-15 21:31:07', 'HF5415.153 .E93 2014'),
(9781591847854, 'Together is better : a little book of inspiration', 2016, 140, '2019-04-15 19:52:08', 'HD58.7 .S5933 2016'),
(9781599951683, 'How Successful People Think: Change Your Thinking, Change Your Life', 2009, 127, '2019-04-16 12:06:00', 'BF637.S8 M3417 2009'),
(9781625275776, 'The Alliance: Managing Talent in the Networked Age', 2014, 193, '2019-04-16 11:29:45', 'HD58.8 .H6444 2014'),
(9781782119883, 'When: The Scientific Secrets of Perfect Timing', 2018, 258, '2019-04-16 12:02:25', 'BF637.T5 P56 2018'),
(9781878424310, 'The Four Agreements: A Practical Guide to Personal Freedom', 1997, 138, '2019-04-16 11:18:05', 'BJ1581.2 .R85 1997'),
(9781942788294, 'The phoenix project : a novel about IT, DevOps, and helping your business win', 2018, 431, '2019-04-15 18:47:00', 'PS3611.I4538 P48 2018'),
(9781942788331, 'Accelerate : the science behind DevOps : building and scaling high performing technology organizations', 2018, 257, '2019-04-15 18:47:00', 'QA76.76.D47 F69 2018'),
(9781989025017, 'The 1-Page Marketing Plan: Get New Customers, Make More Money, And Stand out From The Crowd', 2018, 228, '2019-04-16 11:53:05', '');

-- --------------------------------------------------------

--
-- Table structure for table `book_author`
--

CREATE TABLE `book_author` (
  `author_id` smallint(5) UNSIGNED NOT NULL,
  `ISBN` bigint(13) UNSIGNED NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_author`
--

INSERT INTO `book_author` (`author_id`, `ISBN`, `last_update`) VALUES
(1, 415922216, '2019-04-21 01:15:40'),
(1, 9780345816023, '2019-04-21 00:24:33'),
(2, 9781942788331, '2019-04-21 00:24:33'),
(3, 9781942788331, '2019-04-21 00:25:54'),
(4, 9781942788294, '2019-04-21 01:38:25'),
(4, 9781942788331, '2019-04-21 00:25:54'),
(5, 9780307888907, '2019-04-21 01:40:50'),
(5, 9781524761417, '2019-04-21 00:45:00'),
(5, 9781625275776, '2019-04-21 01:24:57'),
(6, 9781524761417, '2019-04-21 00:28:38'),
(6, 9781625275776, '2019-04-21 01:27:11'),
(7, 9780718033323, '2019-04-21 00:42:10'),
(8, 66620996, '2019-04-21 01:08:14'),
(8, 887306713, '2019-04-21 00:42:10'),
(9, 887306713, '2019-04-21 00:54:52'),
(10, 9780470876411, '2019-04-21 00:54:52'),
(11, 9780884271154, '2019-04-21 01:13:56'),
(11, 9780884271536, '2019-04-21 00:58:58'),
(11, 9780884271956, '2019-04-21 01:33:33'),
(12, 9780061914171, '2019-04-21 00:58:58'),
(12, 9780062674678, '2019-04-21 00:59:42'),
(13, 9780321965516, '2019-04-21 00:59:42'),
(14, 9780143111726, '2019-04-21 01:00:52'),
(14, 9781591842804, '2019-04-21 01:22:04'),
(14, 9781591845324, '2019-04-21 01:13:56'),
(14, 9781591847854, '2019-04-21 01:51:07'),
(15, 66620996, '2019-04-21 01:00:52'),
(18, 679762884, '2019-04-21 01:08:14'),
(18, 9780385483827, '2019-04-21 01:17:16'),
(19, 9781591847786, '2019-04-21 01:09:21'),
(20, 9781591847786, '2019-04-21 01:09:21'),
(21, 9781599951683, '2019-04-21 01:10:27'),
(22, 9780671027032, '2019-04-21 01:10:27'),
(23, 9781455570249, '2019-04-21 01:15:40'),
(24, 9780525536222, '2019-04-21 01:17:16'),
(25, 9780316017923, '2019-04-21 01:18:51'),
(26, 9781501124020, '2019-04-21 01:18:51'),
(27, 9780307463746, '2019-04-21 01:19:38'),
(28, 9780307463746, '2019-04-21 01:19:38'),
(29, 9780804189958, '2019-04-21 01:20:55'),
(30, 9780804189958, '2019-04-21 01:22:04'),
(31, 1565547063, '2019-04-21 01:20:55'),
(32, 9781989025017, '2019-04-21 01:23:24'),
(33, 9780307465351, '2019-04-21 01:23:24'),
(33, 9781328683786, '2019-04-21 01:52:32'),
(33, 9781328994967, '2019-04-21 01:52:32'),
(34, 9781451639612, '2019-04-21 01:24:14'),
(35, 9780062315007, '2019-04-21 01:24:14'),
(36, 9780307888907, '2019-04-21 01:40:50'),
(36, 9781625275776, '2019-04-21 01:24:57'),
(37, 9781878424310, '2019-04-21 01:30:32'),
(38, 9780345530257, '2019-04-21 01:35:07'),
(38, 9780553806847, '2019-04-21 01:49:00'),
(38, 9780804176989, '2019-04-21 01:27:11'),
(39, 9780465050659, '2019-04-21 01:30:32'),
(40, 9781119163794, '2019-04-21 01:45:10'),
(41, 9780062273208, '2019-04-21 01:33:33'),
(42, 9780307887894, '2019-04-21 01:35:07'),
(43, 425098478, '2019-04-21 01:37:02'),
(44, 425098478, '2019-04-21 01:37:02'),
(46, 9781942788294, '2019-04-21 01:38:25'),
(47, 9781942788294, '2019-04-21 01:39:11'),
(48, 9781577314806, '2019-04-21 01:39:11'),
(49, 9780984999309, '2019-04-21 01:45:10'),
(50, 9780984999309, '2019-04-21 01:46:43'),
(51, 9780804140867, '2019-04-21 01:51:07'),
(52, 9780062803832, '2019-04-21 01:54:00'),
(53, 9781119594857, '2019-04-21 01:54:00'),
(54, 9781119594857, '2019-04-21 01:55:23'),
(55, 9781451636017, '2019-04-21 01:55:23'),
(56, 9781782119883, '2019-04-21 01:58:01'),
(57, 9780735222977, '2019-04-21 01:58:01'),
(58, 9780804139298, '2019-04-21 01:58:34'),
(59, 9780804139298, '2019-04-21 01:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `book_publisher`
--

CREATE TABLE `book_publisher` (
  `book_ISBN` bigint(13) UNSIGNED NOT NULL,
  `publisher_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_publisher`
--

INSERT INTO `book_publisher` (`book_ISBN`, `publisher_id`) VALUES
(66620996, 8),
(415922216, 17),
(425098478, 37),
(679762884, 13),
(887306713, 5),
(1565547063, 22),
(9780061914171, 8),
(9780062273208, 28),
(9780062315007, 23),
(9780062674678, 8),
(9780062803832, 33),
(9780143111726, 10),
(9780307463746, 20),
(9780307465351, 20),
(9780307887894, 20),
(9780307888907, 20),
(9780316017923, 19),
(9780321965516, 9),
(9780345530257, 25),
(9780345816023, 1),
(9780385483827, 18),
(9780465050659, 26),
(9780470876411, 6),
(9780525536222, 22),
(9780553806847, 25),
(9780671027032, 15),
(9780718033323, 4),
(9780735222977, 34),
(9780804139298, 35),
(9780804140867, 31),
(9780804176989, 25),
(9780804189958, 21),
(9780884271154, 7),
(9780884271536, 7),
(9780884271956, 7),
(9780984999309, 30),
(9781119163794, 6),
(9781119594857, 6),
(9781328683786, 32),
(9781328994967, 32),
(9781451636017, 15),
(9781451639612, 15),
(9781455570249, 16),
(9781501124020, 15),
(9781524761417, 3),
(9781577314806, 29),
(9781591842804, 11),
(9781591845324, 10),
(9781591847786, 10),
(9781591847854, 12),
(9781599951683, 14),
(9781625275776, 24),
(9781782119883, 38),
(9781878424310, 27),
(9781942788294, 2),
(9781942788331, 2);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` smallint(5) UNSIGNED NOT NULL,
  `city` varchar(50) NOT NULL,
  `country_id` smallint(5) UNSIGNED NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address_id` smallint(5) UNSIGNED NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `facalty_T/student_F` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` mediumint(8) UNSIGNED NOT NULL,
  `ISBN` bigint(13) UNSIGNED NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` smallint(5) UNSIGNED NOT NULL,
  `customer_id` smallint(5) UNSIGNED NOT NULL,
  `rental_id` int(11) DEFAULT NULL,
  `amount` decimal(5,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(4) NOT NULL,
  `publisher_name` varchar(45) CHARACTER SET ucs2 NOT NULL,
  `publisher_city` varchar(45) CHARACTER SET ucs2 NOT NULL,
  `publisher_state` char(2) CHARACTER SET ucs2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`, `publisher_city`, `publisher_state`) VALUES
(1, 'Random House Canada', 'Toronto', 'ON'),
(2, 'IT Revolution', 'Portland', 'OR'),
(3, 'Currency', 'New York', 'NY'),
(4, 'HarperCollins Leadership, an imprint of Harpe', 'New York', 'NY'),
(5, 'HarperBusiness', 'New York', 'NY'),
(6, 'Wiley', 'Hoboken', 'NJ'),
(7, 'North River Press', 'Great Barrington', 'MA'),
(8, 'HarperBusiness', 'New York', 'NY'),
(9, 'New Riders', 'Berkeley', 'CA'),
(10, 'Portfolio/Penguin, an imprint of Penguin Rand', 'New York', 'NY'),
(11, 'Portfolio', 'New York', 'NY'),
(12, 'Portfolio/Penguin', 'New York', 'NY'),
(13, 'Vintage', 'New York', 'NY'),
(14, 'Center Street', 'New York', 'NY'),
(15, 'Simon and Schuster', 'New York', 'NY'),
(16, 'Grand Central Publishing', 'New York', 'NY'),
(17, 'Routledge', 'New York', 'NY'),
(18, 'Currency Doubleday', 'New York', 'NY'),
(19, 'Little, Brown and Co', 'New York', 'NY'),
(20, 'Crown Business', 'New York', 'NY'),
(21, 'Currency, an imprint of the Crown Publishing ', 'New York', 'NY'),
(22, 'Pelican', 'Gretna', 'LA'),
(23, 'HarperOne', 'San Francisco', 'CA'),
(24, 'Harvard Business Review Press', 'Boston', 'MA'),
(25, 'Bantam Books', 'New York', 'NY'),
(26, 'Basic Books', 'New York', 'NY'),
(27, 'Amber-Allen', 'San Rafael', 'CA'),
(28, 'HarperCollins Publishers, cop.', 'New York', 'NY'),
(29, 'New World Library', 'Novato', 'CA'),
(30, 'K&S Ranch', 'Pescadero', 'CA'),
(31, 'Harmony Book', 'New York', 'NY'),
(32, 'Houghton Mifflin Harcourt', 'Boston', 'NY'),
(33, 'HarperOne, an imprint of HarperCollinsPublish', 'New York', 'NY'),
(34, 'Riverhead Books', 'New York', 'NY'),
(35, 'Penguin Books, an imprint of Penguin Random H', 'New York', 'NY'),
(36, 'Successwise', 'Miami', 'FL'),
(37, 'Berkley Books', 'New York', 'NY'),
(38, 'Canongate Books', 'Edinburgh', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `rental_id` int(11) NOT NULL,
  `rental_date` datetime NOT NULL,
  `inventory_id` mediumint(8) UNSIGNED NOT NULL,
  `customer_id` smallint(5) UNSIGNED NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `idx_actor_last_name` (`last_name`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `idx_title` (`title`);

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD PRIMARY KEY (`author_id`,`ISBN`);

--
-- Indexes for table `book_publisher`
--
ALTER TABLE `book_publisher`
  ADD PRIMARY KEY (`book_ISBN`,`publisher_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `idx_last_name` (`last_name`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`rental_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `rental_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
