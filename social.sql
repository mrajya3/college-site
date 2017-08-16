-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2017 at 11:54 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_email`, `admin_pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Nice one', 'rajya_manandhar', 'reshma_tamang', '2017-08-11 14:37:43', 'no', 6),
(2, 'Will b Prepared', 'rajya_manandhar', 'reshma_tamang', '2017-08-11 14:38:05', 'no', 3),
(3, 'do we need extra knowledge on it??\r\n', 'reshma_tamang', 'rajya_manandhar', '2017-08-11 14:41:54', 'no', 8),
(4, 'No it is from basic line\r\n', 'rajya_manandhar', 'rajya_manandhar', '2017-08-11 14:42:18', 'no', 8);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `user_from` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(2, 'ashish_joshi', 'reshma_tamang'),
(3, 'anurag_pokhrel', 'reshma_tamang'),
(4, 'anima_piya', 'reshma_tamang'),
(5, 'piyush_amatya', 'reshma_tamang'),
(6, 'akshaya_manandhar', 'reshma_tamang'),
(8, 'reshma_maharjan', 'reshma_tamang'),
(10, 'suvash_vishwokarma', 'reshma_tamang'),
(11, 'bibek_shakya', 'reshma_tamang'),
(12, 'sudeep_shakya', 'reshma_tamang'),
(13, 'sudeshna_shakya', 'reshma_tamang'),
(14, 'pooja_pradhan', 'reshma_tamang'),
(17, 'reshma_maharjan', 'suprajna_sharma'),
(18, 'suvash_vishwokarma', 'suprajna_sharma'),
(21, 'sudeep_shakya', 'suprajna_sharma');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(9, 'rajya_manandhar', 7),
(10, 'rajya_manandhar', 6),
(11, 'rajya_manandhar', 5),
(12, 'rajya_manandhar', 4),
(13, 'rajya_manandhar', 3),
(14, 'rajya_manandhar', 2),
(15, 'rajya_manandhar', 1),
(17, 'reshma_tamang', 8),
(18, 'suprajna_sharma', 8),
(19, 'suprajna_sharma', 7),
(20, 'suprajna_sharma', 6),
(21, 'suprajna_sharma', 3),
(22, 'pranay_shrestha', 7),
(23, 'pranay_shrestha', 9);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `user_from` varchar(60) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'reshma_tamang', 'rajya_manandhar', 'hello', '2017-08-11 14:08:29', 'yes', 'yes', 'no'),
(2, 'reshma_tamang', 'rajya_manandhar', 'how r you\r\n', '2017-08-11 14:08:34', 'yes', 'yes', 'no'),
(3, 'rajya_manandhar', 'reshma_tamang', 'Hello', '2017-08-11 14:08:49', 'yes', 'yes', 'no'),
(4, 'rajya_manandhar', 'reshma_tamang', 'I am fine', '2017-08-11 14:08:55', 'yes', 'yes', 'no'),
(5, 'reshma_tamang', 'rajya_manandhar', 'how r you\r\n', '2017-08-11 14:09:00', 'yes', 'yes', 'no'),
(6, 'rajya_manandhar', 'reshma_tamang', 'I am fine', '2017-08-11 14:09:13', 'yes', 'yes', 'no'),
(7, 'reshma_tamang', 'rajya_manandhar', 'ok\r\n', '2017-08-11 14:10:25', 'yes', 'yes', 'no'),
(8, 'reshma_tamang', 'rajya_manandhar', 'ok\r\n', '2017-08-11 14:10:28', 'yes', 'yes', 'no'),
(9, 'reshma_tamang', 'rajya_manandhar', 'ok\r\n', '2017-08-11 14:10:50', 'yes', 'yes', 'no'),
(10, 'reshma_tamang', 'rajya_manandhar', 'Be prepared for exam\r\n', '2017-08-11 14:17:08', 'yes', 'yes', 'no'),
(11, 'rajya_manandhar', 'reshma_tamang', 'ok\r\n', '2017-08-11 14:17:42', 'yes', 'yes', 'no'),
(12, 'rajya_manandhar', 'reshma_tamang', 'best of luck', '2017-08-11 14:26:03', 'yes', 'yes', 'no'),
(13, 'reshma_tamang', 'rajya_manandhar', 'thanku \r\n', '2017-08-11 14:26:31', 'yes', 'yes', 'no'),
(14, 'rajya_manandhar', 'reshma_tamang', 'efn wlmrf', '2017-08-11 14:27:35', 'yes', 'yes', 'no'),
(15, 'reshma_tamang', 'shaleen_acharya', 'hello\r\n', '2017-08-11 15:51:29', 'yes', 'yes', 'no'),
(16, 'rajya_manandhar', 'suprajna_sharma', 'Send me the report for the tomorrow\'s lab.\r\n', '2017-08-11 17:20:14', 'no', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(11) NOT NULL,
  `note_name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `note_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `note_name`, `details`, `note_date`) VALUES
(1, 'Digital Signal Analysis And Processing notes available from IOE', 'https://drive.google.com/drive/folders/0B1Oa9ERhn4R9Z21hNkp6WFlsX0U', '2017-08-11 13:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `notice_id` int(11) NOT NULL,
  `notice_name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `notice_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`notice_id`, `notice_name`, `details`, `notice_date`) VALUES
(1, 'IOE has released the date to fill up the form for BE/B.Arch all year second part exam', 'https://drive.google.com/open?id=0B1etGwkQfRSRUlBRZ3JKYW1FN1E', '2017-08-11 13:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `user_from` varchar(60) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'reshma_tamang', 'suprajna_sharma', 'Suprajna Sharma liked your post', 'post.php?id=7', '2017-08-11 14:22:39', 'yes', 'yes'),
(2, 'reshma_tamang', 'suprajna_sharma', 'Suprajna Sharma liked your post', 'post.php?id=7', '2017-08-11 14:22:41', 'yes', 'yes'),
(3, 'reshma_tamang', 'suprajna_sharma', 'Suprajna Sharma liked your post', 'post.php?id=7', '2017-08-11 14:22:42', 'yes', 'yes'),
(4, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar liked your post', 'post.php?id=7', '2017-08-11 14:37:33', 'yes', 'yes'),
(5, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar liked your post', 'post.php?id=6', '2017-08-11 14:37:36', 'no', 'yes'),
(6, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar commented on your post', 'post.php?id=6', '2017-08-11 14:37:43', 'no', 'yes'),
(7, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar liked your post', 'post.php?id=5', '2017-08-11 14:37:46', 'no', 'yes'),
(8, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar liked your post', 'post.php?id=4', '2017-08-11 14:37:48', 'no', 'yes'),
(9, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar liked your post', 'post.php?id=3', '2017-08-11 14:37:50', 'yes', 'yes'),
(10, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar commented on your post', 'post.php?id=3', '2017-08-11 14:38:05', 'yes', 'yes'),
(11, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar liked your post', 'post.php?id=2', '2017-08-11 14:38:09', 'no', 'yes'),
(12, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar liked your post', 'post.php?id=1', '2017-08-11 14:38:10', 'no', 'yes'),
(13, 'rajya_manandhar', 'reshma_tamang', 'Reshma Tamang liked your post', 'post.php?id=8', '2017-08-11 14:39:27', 'yes', 'yes'),
(14, 'rajya_manandhar', 'reshma_tamang', 'Reshma Tamang commented on your post', 'post.php?id=8', '2017-08-11 14:41:54', 'yes', 'yes'),
(15, 'reshma_tamang', 'rajya_manandhar', 'Rajya Manandhar commented on a post you commented on', 'post.php?id=8', '2017-08-11 14:42:18', 'yes', 'yes'),
(16, 'rajya_manandhar', 'suprajna_sharma', 'Suprajna Sharma liked your post', 'post.php?id=8', '2017-08-11 15:25:12', 'no', 'yes'),
(17, 'reshma_tamang', 'suprajna_sharma', 'Suprajna Sharma liked your post', 'post.php?id=7', '2017-08-11 15:25:14', 'no', 'yes'),
(18, 'reshma_tamang', 'suprajna_sharma', 'Suprajna Sharma liked your post', 'post.php?id=6', '2017-08-11 15:25:17', 'no', 'yes'),
(19, 'reshma_tamang', 'suprajna_sharma', 'Suprajna Sharma liked your post', 'post.php?id=3', '2017-08-11 15:25:26', 'no', 'yes'),
(20, 'reshma_tamang', 'pranay_shrestha', 'Pranay Shrestha liked your post', 'post.php?id=7', '2017-08-11 15:48:51', 'no', 'yes'),
(21, 'suprajna_sharma', 'pranay_shrestha', 'Pranay Shrestha liked your post', 'post.php?id=9', '2017-08-11 15:48:55', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'A buddhist Book', 'reshma_tamang', 'none', '2017-08-11 13:04:29', 'no', 'no', 1, 'assets/images/posts/598d5a81ab804image-0-02-01-0a37eebcc3a57a433f935c3c12df2cd58bfca6e29f0f3070589a94000395f123-V.jpg'),
(2, 'Script', 'reshma_tamang', 'none', '2017-08-11 13:04:52', 'no', 'no', 1, 'assets/images/posts/598d5a98d097dimage-0-02-01-2a442e21a231933ed948e3a9770594870799f6505743d0bcaca8c538b370c941-V.jpg'),
(3, 'I would like to inform you that the final defense for the major project will<br /> be going to held on the 25th and 28th of this month shwaran 2074.I have<br /> attached the project list which is going to be held on 25th of shwaran at<br /> sharp 11am( remaining projects will be held on 28th of shwaran).the Please<br /> inform others.<br /> Regards,<br /> Reshma Maharjan<br /> Major Project Coordinator<br /> PS: 25th shrawan ma external hune haruko report submission deadline monday ho hai', 'reshma_tamang', 'none', '2017-08-11 13:05:37', 'no', 'yes', 2, ''),
(4, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/iBdRhNgdU7A\'></iframe><br>', 'reshma_tamang', 'none', '2017-08-11 13:09:32', 'no', 'no', 1, ''),
(5, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/JXdDEZKM0RY\'></iframe><br>', 'reshma_tamang', 'none', '2017-08-11 13:13:20', 'no', 'no', 1, ''),
(6, 'field visit to museum<br /> ', 'reshma_tamang', 'none', '2017-08-11 13:14:34', 'no', 'no', 2, 'assets/images/posts/598d5cde5f9edimage-0-02-01-ba22d9661d52cc04df7eadd8e1259222c219e4fd7dba5473261a6c7ff3496463-V.jpg'),
(7, 'Just a Sample<br /> ', 'reshma_tamang', 'none', '2017-08-11 13:16:25', 'no', 'no', 3, 'assets/images/posts/598d5d4d2e61emov_bbb.mp4'),
(8, 'Announcement!!!<br /> Coming Friday and Saturday Data Science ko workshop huna lageko cha re kupondol ma,<br /> Entry fee: 1000<br /> Certificate will be provided.<br /> Interested ones Contact: 9849336528', 'rajya_manandhar', 'none', '2017-08-11 13:29:28', 'no', 'no', 2, ''),
(9, 'The logo for Dristi Event is out now!!', 'suprajna_sharma', 'none', '2017-08-11 15:39:24', 'no', 'no', 1, 'assets/images/posts/598d7ed0a4180dristi.jpg'),
(10, 'INTERVIEW UPDATE:<br /> The IT Club Membership interview will take place on Monday, August 7, 2017 at 10 am at the 2nd floor of Block E(Club members will direct accordingly). All shortlisted candidates have already been notified with a text for their specific time and are expected to appear for a 5 - 10 min interview. You will be awarded with punctuality points so please be on time. Commiserations to the ones who haven\'t been selected. Good luck and see you all.<br /> Pranay Shrestha<br /> President <br /> KEC IT Club<br /> *Shortlisted Candidates*<br /> Drishtant Regmi <br /> Shreejal Kumar <br /> Shrijan bajracharya <br /> Samyoga Bhattarai<br /> Saurav Munankarmi <br /> Bibek Poudel<br /> Rabin Thapa <br /> Binaya Sharma <br /> Sanil Manandhar <br /> Sujan Poudel<br /> Palisha Shrestha <br /> Abhishek Wagle<br /> Samip Shrestha <br /> Arteey Giri<br /> Aavishkar Pokharel <br /> Saurav dhungana<br /> Sushmita Rai <br /> Sandesh Subedi<br /> Gaurav Pandeya <br /> Rabindra Joshi<br /> Dipti Gyawali <br /> Utsav RAtna Tuladhar<br /> Ojesh Manandhar <br /> Shrijal Tamrakar<br /> Kapil Chaulagain <br /> Prashant Thapa<br /> Abishkar Jung Shah <br /> Upasana Pradhan<br /> Bijay Kandel <br /> Aditi Khanal', 'pranay_shrestha', 'none', '2017-08-11 15:49:14', 'no', 'yes', 0, ''),
(11, 'For selection of new members, we are conducting a written test on coming Friday (Aug 4) at sharp 10:00 AM. Those who had filled the membership form are requested to be there.<br /> We\'ll gather in front of the canteen and proceed to assigned classes for exam.<br /> In the case of any queries you can contact:<br /> Kamal Paneru: 9860090688<br /> Safal Pandeyâ€‹: 9841761672<br /> All the best.', 'pranay_shrestha', 'none', '2017-08-11 15:49:41', 'no', 'no', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `question_name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `question_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_name`, `details`, `question_date`) VALUES
(1, 'Questions Collection all semester for COMPUTER ENGINEERING', 'https://drive.google.com/drive/folders/0B1etGwkQfRSRQkw3d1ZCcFNBZGs', '2017-08-11 12:49:04'),
(2, 'Questions Collection all semester for Electronics ENGINEERING', 'https://drive.google.com/open?id=0B1etGwkQfRSRUlBRZ3JKYW1FN1E', '2017-08-11 12:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(11) NOT NULL,
  `result_name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `result_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `result_name`, `details`, `result_date`) VALUES
(1, 'Result of BE/B.Arch for all faculty of first semester is out now.CLick on the link to view your result', 'https://drive.google.com/open?id=0B1etGwkQfRSRUlBRZ3JKYW1FN1E', '2017-08-11 13:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `routine_id` int(11) NOT NULL,
  `routine_name` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `routine_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`routine_id`, `routine_name`, `details`, `routine_date`) VALUES
(1, 'Examination Schedule for 2074 Bhadra', 'https://drive.google.com/open?id=0B1etGwkQfRSRUlBRZ3JKYW1FN1E', '2017-08-11 13:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(60) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Buddhist', 1),
('Book', 1),
('Script', 1),
('Inform', 2),
('Final', 1),
('Defense', 1),
('Major', 2),
('Project', 3),
('Willbr', 1),
('25th', 3),
('28th', 2),
('Month', 1),
('Shwaran', 2),
('2074I', 1),
('Havebr', 1),
('Attached', 1),
('List', 1),
('Atbr', 1),
('11am', 1),
('Remaining', 1),
('Projects', 1),
('Shwaranthe', 1),
('Pleasebr', 1),
('Othersbr', 1),
('Regardsbr', 1),
('Reshma', 1),
('Maharjanbr', 1),
('Coordinatorbr', 1),
('PS', 1),
('Shrawan', 1),
('Ma', 1),
('External', 1),
('Hune', 1),
('Haruko', 1),
('Report', 1),
('Submission', 1),
('Deadline', 1),
('Monday', 2),
('Ho', 1),
('Hai', 1),
('Field', 1),
('Visit', 1),
('Museumbr', 1),
('Samplebr', 1),
('Announcementbr', 1),
('Coming', 2),
('Friday', 2),
('Saturday', 1),
('Data', 1),
('Science', 1),
('Ko', 1),
('Workshop', 1),
('Huna', 1),
('Lageko', 1),
('Cha', 1),
('Re', 1),
('Kupondol', 1),
('Mabr', 1),
('Entry', 1),
('Fee', 1),
('1000br', 1),
('Certificate', 1),
('Providedbr', 1),
('Ones', 2),
('Contact', 1),
('9849336528', 1),
('Logo', 1),
('Dristi', 1),
('Event', 1),
('INTERVIEW', 3),
('UPDATEbr', 1),
('Club', 1),
('Membership', 2),
('August', 1),
('7', 1),
('2017', 1),
('10', 2),
('2nd', 1),
('Floor', 1),
('Block', 1),
('EClub', 1),
('Direct', 1),
('Accordingly', 1),
('Shortlisted', 2),
('Candidates', 1),
('Notified', 1),
('Text', 1),
('Specific', 1),
('Time', 2),
('Expected', 1),
('Appear', 1),
('5', 1),
('Min', 1),
('Awarded', 1),
('Punctuality', 1),
('Please', 1),
('Commiserations', 1),
('Havent', 1),
('Selected', 1),
('Luck', 1),
('Allbr', 1),
('Pranay', 1),
('Shresthabr', 1),
('President', 1),
('KEC', 1),
('Clubbr', 1),
('Candidatesbr', 1),
('Drishtant', 1),
('Regmi', 1),
('Shreejal', 1),
('Kumar', 1),
('Shrijan', 1),
('Bajracharya', 1),
('Samyoga', 1),
('Bhattaraibr', 1),
('Saurav', 2),
('Munankarmi', 1),
('Bibek', 1),
('Poudelbr', 2),
('Rabin', 1),
('Thapa', 1),
('Binaya', 1),
('Sharma', 1),
('Sanil', 1),
('Manandhar', 2),
('Sujan', 1),
('Palisha', 1),
('Shrestha', 2),
('Abhishek', 1),
('Waglebr', 1),
('Samip', 1),
('Arteey', 1),
('Giribr', 1),
('Aavishkar', 1),
('Pokharel', 1),
('Dhunganabr', 1),
('Sushmita', 1),
('Rai', 1),
('Sandesh', 1),
('Subedibr', 1),
('Gaurav', 1),
('Pandeya', 1),
('Rabindra', 1),
('Joshibr', 1),
('Dipti', 1),
('Gyawali', 1),
('Utsav', 1),
('RAtna', 1),
('Tuladharbr', 1),
('Ojesh', 1),
('Shrijal', 1),
('Tamrakarbr', 1),
('Kapil', 1),
('Chaulagain', 1),
('Prashant', 1),
('Thapabr', 1),
('Abishkar', 1),
('Jung', 1),
('Shah', 1),
('Upasana', 1),
('Pradhanbr', 1),
('Bijay', 1),
('Kandel', 1),
('Aditi', 1),
('Khanal', 1),
('Selection', 1),
('Conducting', 1),
('Written', 1),
('Test', 1),
('Aug', 1),
('4', 1),
('1000', 1),
('Filled', 1),
('Form', 1),
('Requested', 1),
('Therebr', 1),
('Gather', 1),
('Front', 1),
('Canteen', 1),
('Proceed', 1),
('Assigned', 1),
('Classes', 1),
('Exambr', 1),
('Queries', 1),
('Contactbr', 1),
('Kamal', 1),
('Paneru', 1),
('9860090688br', 1),
('Safal', 1),
('Pandey', 1),
('9841761672br', 1),
('Buddhist', 1),
('Book', 1),
('Script', 1),
('Inform', 2),
('Final', 1),
('Defense', 1),
('Major', 2),
('Project', 3),
('Willbr', 1),
('25th', 3),
('28th', 2),
('Month', 1),
('Shwaran', 2),
('2074I', 1),
('Havebr', 1),
('Attached', 1),
('List', 1),
('Atbr', 1),
('11am', 1),
('Remaining', 1),
('Projects', 1),
('Shwaranthe', 1),
('Pleasebr', 1),
('Othersbr', 1),
('Regardsbr', 1),
('Reshma', 1),
('Maharjanbr', 1),
('Coordinatorbr', 1),
('PS', 1),
('Shrawan', 1),
('Ma', 1),
('External', 1),
('Hune', 1),
('Haruko', 1),
('Report', 1),
('Submission', 1),
('Deadline', 1),
('Monday', 2),
('Ho', 1),
('Hai', 1),
('Field', 1),
('Visit', 1),
('Museumbr', 1),
('Samplebr', 1),
('Announcementbr', 1),
('Coming', 2),
('Friday', 2),
('Saturday', 1),
('Data', 1),
('Science', 1),
('Ko', 1),
('Workshop', 1),
('Huna', 1),
('Lageko', 1),
('Cha', 1),
('Re', 1),
('Kupondol', 1),
('Mabr', 1),
('Entry', 1),
('Fee', 1),
('1000br', 1),
('Certificate', 1),
('Providedbr', 1),
('Ones', 2),
('Contact', 1),
('9849336528', 1),
('Logo', 1),
('Dristi', 1),
('Event', 1),
('INTERVIEW', 3),
('UPDATEbr', 1),
('Club', 1),
('Membership', 2),
('August', 1),
('7', 1),
('2017', 1),
('10', 2),
('2nd', 1),
('Floor', 1),
('Block', 1),
('EClub', 1),
('Direct', 1),
('Accordingly', 1),
('Shortlisted', 2),
('Candidates', 1),
('Notified', 1),
('Text', 1),
('Specific', 1),
('Time', 2),
('Expected', 1),
('Appear', 1),
('5', 1),
('Min', 1),
('Awarded', 1),
('Punctuality', 1),
('Please', 1),
('Commiserations', 1),
('Havent', 1),
('Selected', 1),
('Luck', 1),
('Allbr', 1),
('Pranay', 1),
('Shresthabr', 1),
('President', 1),
('KEC', 1),
('Clubbr', 1),
('Candidatesbr', 1),
('Drishtant', 1),
('Regmi', 1),
('Shreejal', 1),
('Kumar', 1),
('Shrijan', 1),
('Bajracharya', 1),
('Samyoga', 1),
('Bhattaraibr', 1),
('Saurav', 2),
('Munankarmi', 1),
('Bibek', 1),
('Poudelbr', 2),
('Rabin', 1),
('Thapa', 1),
('Binaya', 1),
('Sharma', 1),
('Sanil', 1),
('Manandhar', 2),
('Sujan', 1),
('Palisha', 1),
('Shrestha', 2),
('Abhishek', 1),
('Waglebr', 1),
('Samip', 1),
('Arteey', 1),
('Giribr', 1),
('Aavishkar', 1),
('Pokharel', 1),
('Dhunganabr', 1),
('Sushmita', 1),
('Rai', 1),
('Sandesh', 1),
('Subedibr', 1),
('Gaurav', 1),
('Pandeya', 1),
('Rabindra', 1),
('Joshibr', 1),
('Dipti', 1),
('Gyawali', 1),
('Utsav', 1),
('RAtna', 1),
('Tuladharbr', 1),
('Ojesh', 1),
('Shrijal', 1),
('Tamrakarbr', 1),
('Kapil', 1),
('Chaulagain', 1),
('Prashant', 1),
('Thapabr', 1),
('Abishkar', 1),
('Jung', 1),
('Shah', 1),
('Upasana', 1),
('Pradhanbr', 1),
('Bijay', 1),
('Kandel', 1),
('Aditi', 1),
('Khanal', 1),
('Selection', 1),
('Conducting', 1),
('Written', 1),
('Test', 1),
('Aug', 1),
('4', 1),
('1000', 1),
('Filled', 1),
('Form', 1),
('Requested', 1),
('Therebr', 1),
('Gather', 1),
('Front', 1),
('Canteen', 1),
('Proceed', 1),
('Assigned', 1),
('Classes', 1),
('Exambr', 1),
('Queries', 1),
('Contactbr', 1),
('Kamal', 1),
('Paneru', 1),
('9860090688br', 1),
('Safal', 1),
('Pandey', 1),
('9841761672br', 1),
('Hibr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `student_id` varchar(8) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `student_id`, `designation`, `faculty`, `Gender`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Reshma', 'Tamang', 'reshma_tamang', 'Pakhrinreshma@gmail.com', 'Kec70062', 'Student', 'Computer', 'Female', 'a66cfd3d771703664d7ba768b8a7f835', '2017-07-07', 'assets/images/profile/defaults/head_alizarin.png', 8, 11, 'no', ',rajya_manandhar,suprajna_sharma,pranay_shrestha,shaleen_acharya,'),
(2, 'Rajya', 'Manandhar', 'rajya_manandhar', 'Rajya.manadhar@gmail.com', 'Kec70059', 'Student', 'Computer', 'Female', '8e84b0cd5b13153e1f772597067b274f', '2017-07-13', 'assets/images/profile/defaults/head_alizarin.png', 1, 2, 'no', ',reshma_tamang,suprajna_sharma,'),
(3, 'Suprajna', 'Sharma', 'suprajna_sharma', 'Suprajnasharma@gmail.com', 'Kec70082', 'Student', 'Computer', 'Male', 'a8eee3de7bb5f583116165aab9d5b443', '2017-07-12', 'assets/images/profile/defaults/head_belize_hole.png', 1, 1, 'no', ',reshma_tamang,rajya_manandhar,pranay_shrestha,shaleen_acharya,'),
(4, 'Suvash ', 'Vishwokarma', 'suvash_vishwokarma', 'Suvash@gmail.com', 'Kec70084', 'Student', 'Computer', 'Male', '3b2e6caf96b9d60031b3e43fe4d0c8a9', '2017-08-11', 'assets/images/profile/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(5, 'Pooja', 'Pradhan', 'pooja_pradhan', 'Poohpradhan@gmail.com', 'Kec70047', 'Student', 'Computer', 'Female', '9cbb6aebcf5ae14a9248b4c08165212e', '2017-08-11', 'assets/images/profile/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(6, 'Shaleen', 'Acharya', 'shaleen_acharya', 'Shaleenacharya@hotmail.com', 'Kec70072', 'Student', 'Computer', 'Female', 'd38b9f139db4e9509e5ffafe3e938521', '2017-08-11', 'assets/images/profile/defaults/head_belize_hole.png', 0, 0, 'no', ',reshma_tamang,suprajna_sharma,'),
(7, 'Bibek', 'Shakya', 'bibek_shakya', 'Bibekshakya@gmail.com', 'Kec70028', 'Student', 'Electronics', 'Male', 'b52100c453228b8eadd4a3642fc412f0', '2017-08-11', 'assets/images/profile/defaults/head_alizarin.png', 0, 0, 'no', ','),
(8, 'Pranay', 'Shrestha', 'pranay_shrestha', 'Pranay@gmail.com', 'Kec70053', 'Student', 'Computer', 'Male', 'e2ac3262e9b9d03f81032680c69aa61e', '2017-08-11', 'assets/images/profile/defaults/head_belize_hole.png', 2, 0, 'no', ',reshma_tamang,suprajna_sharma,'),
(9, 'Reshma', 'Maharjan', 'reshma_maharjan', 'Reshmamaharjan@gmail.com', 'Kec50012', 'Teacher', 'Electronics', 'Female', 'a66cfd3d771703664d7ba768b8a7f835', '2017-08-11', 'assets/images/profile/defaults/head_alizarin.png', 0, 0, 'no', ','),
(10, 'Sudeep', 'Shakya', 'sudeep_shakya', 'Sudeepshakya@gmail.com', 'Kec50001', 'Teacher', 'Computer', 'Male', '2425ba423812055b9da4453bddda212d', '2017-08-11', 'assets/images/profile/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(11, 'Ashish', 'Joshi', 'ashish_joshi', 'Ashishj@gmail.com', 'Kec50002', 'Teacher', 'Computer', 'Male', 'b3788bcd67c03c198bac32c51290f1cf', '2017-08-11', 'assets/images/profile/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(12, 'Priya', 'Pradhan', 'sudeshna_shakya', 'Sudeshnashak@gmail.com', 'Kec70080', 'Student', 'Computer', 'Female', '76e9847dd9598b7e3704c239f7383065', '2017-08-11', 'assets/images/profile/defaults/head_alizarin.png', 0, 0, 'no', ','),
(13, 'Shristi', 'Shakya', 'shristi_shakya', 'Shristi@gmail.com', 'Kec70100', 'Student', 'Architecture', 'Female', '3968f3bf0cc5f4f102681910939e1730', '2017-08-11', 'assets/images/profile/defaults/head_alizarin.png', 0, 0, 'no', ','),
(14, 'Anurag', 'Pokhrel', 'anurag_pokhrel', 'Anupokhrel@gmail.com', 'Kec70007', 'Student', 'Electrical', 'Male', 'd77d2953c546cb33e2d0bff4989f6aa2', '2017-08-11', 'assets/images/profile/defaults/head_alizarin.png', 0, 0, 'no', ','),
(16, 'Sarita', 'Maurya', 'sarita_maurya', 'Saritam@gmail.com', 'Kec70120', 'Student', 'Electronics', 'Female', 'fb4e529ea6b9320c8bd32577f78a7fdf', '2017-08-11', 'assets/images/profile/defaults/head_alizarin.png', 0, 0, 'no', ','),
(18, 'Anima', 'Piya', 'anima_piya', 'Animapiya@hotmail.com', 'Kec70001', 'Student', 'Civil', 'Female', '380000c85ecc4187faa4f50c1517920e', '2017-08-11', 'assets/images/profile/defaults/head_alizarin.png', 0, 0, 'no', ','),
(19, 'Piyush', 'Amatya', 'piyush_amatya', 'Piyush@gmail.com', 'Kec70056', 'Student', 'Civil', 'Male', '86f500cd7b7d38e5d4ae6cde3920f589', '2017-08-11', 'assets/images/profile/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(20, 'Akshaya', 'Manandhar', 'akshaya_manandhar', 'Akshaya@gmail.com', 'Kec70010', 'Student', 'Computer', 'Male', '3865561920e93145586963e63e94b226', '2017-08-11', 'assets/images/profile/defaults/head_belize_hole.png', 0, 0, 'no', ','),
(21, 'Dikhsya', 'Pokhrel', 'dikhsya_shrestha', 'Dikshyashrestha@gmail.com', 'Kec69038', 'Student', 'Architecture', 'Female', '738dcfeaea5a8ad926f93c7957c29607', '2017-08-11', 'assets/images/profile/defaults/head_alizarin.png', 0, 0, 'no', ','),
(22, 'Pratik', 'Tuladhar', 'pratik_tuladhar', 'Pratiktuladhar@gmail.com', 'Kec71007', 'Student', 'Electronics', 'Male', '0cb2b62754dfd12b6ed0161d4b447df7', '2017-08-11', 'assets/images/profile/defaults/head_alizarin.png', 0, 0, 'no', ','),
(23, 'Prabin', 'Sapkota', 'prabin_sapkota', 'Prabin@gmail.com', 'Kec69050', 'Student', 'Civil', 'Male', '65db11c35e330498cbe58380aad94c83', '2017-08-11', 'assets/images/profile/defaults/head_belize_hole.png', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`routine_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `routine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
