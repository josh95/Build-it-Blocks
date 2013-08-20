-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 20, 2013 at 08:59 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `builditblocks`
--
CREATE DATABASE IF NOT EXISTS `builditblocks` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `builditblocks`;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` int(11) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `title` varchar(25) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `youtube-embedID` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`ID`, `moduleID`, `picture`, `description`, `title`, `link`, `youtube-embedID`) VALUES
(1, 1, 'module-images/applications-img/lego/clock-gear-train-overview.png', 'Here is one application of this module', 'Clock Thing', 'link', NULL),
(2, 1, 'module-images/applications-img/lego/hat-spinner.png', 'Here is another application of this module', 'Hat?', 'link', NULL),
(3, 2, 'module-images/applications-img/minecraft/not-minecraft.png', 'The NOT gate, otherwise known as an invertor, changes the output of the gate to the opposite of the input.  For instance, if the input is on, the output is off and vice versa.', 'Not Gate', NULL, NULL),
(4, 5, 'module-images/applications-img/minecraft/and-minecraft.png', 'The AND gate changes the output of the gate to on when both inputs are on and off when one of the inputs is or when they are both off.', 'And Gate', NULL, NULL),
(5, 6, 'module-images/applications-img/minecraft/t-flip-flop-minecraft.png', 'Changes a pulse into a constant output.  Changes a button into a lever essentially.', 'T Flip Flop', NULL, NULL),
(6, 7, 'module-images/applications-img/minecraft/nand-minecraft.png', 'When the two inputs are on the output is off.  Whatever other state the Gate is in the output is on.', 'NAND Gate', NULL, NULL),
(7, 8, 'module-images/applications-img/minecraft/xor-minecraft.png', 'If one input is on, the output is on.  In any other state the output is off.', 'XOR Gate', NULL, NULL),
(8, 9, 'module-images/applications-img/lego/app-lego-motor-mount-overview.jpg', 'Use the basic motor mount to ... ??', 'Overview', NULL, NULL),
(9, 9, 'module-images/applications-img/lego/app-lego-motor-mount-catapult.jpg', 'Use the motor mount to pull a pin that releases a catapult.', 'Catapult', NULL, 'vBjEgL4FM2E'),
(10, 2, 'module-images/applications-img/minecraft/not-minecraft.png', 'If you want a piston door to remain open even when the lever is off.', 'Piston Door', NULL, NULL),
(11, 5, 'module-images/applications-img/minecraft/and-minecraft.png', 'Can be used if you want a player to have to pull two levers in order to turn on a light or activate another Redstone device.', 'Two Lever Lights', NULL, NULL),
(12, 6, 'module-images/applications-img/minecraft/t-flip-flop-minecraft.png', 'If you want a door to remain open, but want it to be opened by a button.', 'Button Opened Door', NULL, NULL),
(13, 7, 'module-images/applications-img/minecraft/nand-minecraft.png', 'If you want a player to have to flip to levers to turn off a light.', 'Adventure Lights', NULL, NULL),
(14, 8, 'module-images/applications-img/minecraft/xor-minecraft.png', 'If you want to open a door on one side of a wall, but be able to close it on the other side.', 'Double Lever Door', NULL, NULL),
(15, 3, 'module-images/applications-img/junk/junk-catapult-overview.png', 'This is a catapult made entirely from junk.', 'Junk Catapult', NULL, NULL),
(16, 3, 'module-images/applications-img/junk/catapult-candy-launcher.png', 'Launch candy! for all of your friends! They will love it!', 'Candy Launcher', NULL, NULL),
(17, 4, 'module-images/applications-img/junk/coin-spillway-overview.png', 'Use this to collect coins into one place. How convenient!', 'Coin Spillway', NULL, NULL),
(18, 4, 'module-images/applications-img/junk/coin-spillway-make-money.png', 'Get money! Get Paid!', 'Go make that Cash Money!', NULL, NULL),
(19, 11, 'module-images/applications-img/junk/bridge-overview.png', 'The Premium Quality Junk Yard is on a remote island.  Most people don’t want to live near a dump.  Ugly sights, wicked foul smells, pesky pigeons who haven’t been toilet trained and more messiness! ', 'The Problem', NULL, NULL),
(20, 11, 'module-images/applications-img/junk/bridge-overview.png', 'Build a beautiful bridge!', 'Your Mission', NULL, NULL),
(21, 13, 'module-images/applications-img/art/air-head-1.png', 'Many moons into the future, lived a crew of colorful, creative critters.', 'Air Heads', NULL, NULL),
(22, 13, 'module-images/applications-img/art/air-head-2.png', 'These advanced humanoids evolved from the piles of garbage left by a world full of uncivilized, nat-brained humans.', 'Air Heads', NULL, NULL),
(23, 13, 'module-images/applications-img/art/air-head-3.png', 'Build-It-Yourself crew members are on a mission to morph premium quality junk into a new generation of super heroes.', 'Air Heads', NULL, NULL),
(24, 13, 'module-images/applications-img/art/air-head-4.png', 'This guy is swag. Bro Swag', 'Cool Robo Head', NULL, NULL),
(25, 12, NULL, 'Many moons into the future, lived a crew of colorful, creative critters.', 'Hard Heads', NULL, NULL),
(26, 12, NULL, 'These advanced humanoids evolved from the piles of garbage left by a world full of uncivilized, nat-brained humans.', 'Hard Heads', NULL, NULL),
(27, 12, NULL, 'Build-It-Yourself crew members are on a mission to morph premium quality junk into a new generation of super heroes.', NULL, NULL, NULL),
(28, 14, 'module-images/applications-img/junk/vertical-structure.jpg', 'You can use the Vertical Structure as a base that you can mount things on.', 'Vertical Structure', NULL, NULL),
(29, 14, 'module-images/applications-img/junk/vertical-structure-app.jpg', 'Here is and application of the Vertical Structure', 'Apply Vertical Structure', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `authorID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `bio` varchar(750) NOT NULL,
  `website` varchar(100) NOT NULL,
  PRIMARY KEY (`authorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`authorID`, `name`, `bio`, `website`) VALUES
(1, 'Val :))', 'We here at BIY are super amazing and awesome, me included.', 'http://www.invention-universe.com/val/'),
(2, 'John Galinato', '', 'http://build-it-yourself.com/john/johng-projects.html'),
(5, 'Dan Broun', '', 'http://www.build-it-yourself.com/dev/interns/dan-broun/index.html');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE IF NOT EXISTS `category_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `subcategoryID` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `image-path` varchar(100) DEFAULT NULL,
  `typeID` int(11) DEFAULT NULL,
  `subcategory-description` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`ID`, `subcategoryID`, `name`, `image-path`, `typeID`, `subcategory-description`) VALUES
(1, 1, 'Spin', NULL, 1, 'Things that spin'),
(2, 2, 'Locomote', NULL, 1, 'Moving forwards and back'),
(3, 3, 'Wiggle', NULL, 1, 'Wiggle, wiggle, wiggle, wiggle, wiggle, yeah.'),
(4, 4, 'Throw', NULL, 1, 'Throwing Stuff'),
(5, 5, 'Structure', NULL, 1, 'Yep. Structures.'),
(6, 2, 'Models', NULL, 3, 'Make some fly puppet pals!'),
(7, 2, 'Controls', NULL, 4, ''),
(8, 1, 'Animation', NULL, 4, ''),
(9, 4, 'Background', NULL, 4, ''),
(10, 3, 'Variables', NULL, 4, ''),
(11, 5, 'Detection', NULL, 4, ''),
(13, 1, 'Logic Gates', NULL, 5, 'Learn all about OR gates!'),
(14, 2, 'Mechanisms', NULL, 5, 'Learn all about Pistons and cool stuff!'),
(15, 3, 'Automation', NULL, 5, 'Automate stuff.  The clue is in the title.'),
(17, 4, 'Minigames', NULL, 5, 'Minigames IN MINECRAFT!!'),
(18, 1, 'Graphics', NULL, 3, 'Multi-dimensional graphics'),
(19, 3, 'Music', NULL, 3, 'Loops, tracks, etc.'),
(20, 4, 'Writing', NULL, 3, 'Stories and poems'),
(21, 1, 'Spin', NULL, 2, ''),
(22, 2, 'Locomote', NULL, 2, 'This is for LEGO; typeID=2 stands for LEGO'),
(23, 3, 'Wiggle', NULL, 2, 'typeID=2 stands for LEGO.'),
(24, 4, 'Throw', NULL, 2, 'typeID=2 stands for LEGO :)'),
(25, 5, 'Structure', NULL, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` int(11) DEFAULT NULL,
  `image-path` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `alt-text` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`ID`, `moduleID`, `image-path`, `description`, `alt-text`) VALUES
(1, 1, 'module-images/clock-lego-1.jpg', 'It''s a clock gear train. Let''s learn how to build one!', 'clock');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE IF NOT EXISTS `keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` int(11) DEFAULT NULL,
  `keywords` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `module_index`
--

CREATE TABLE IF NOT EXISTS `module_index` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `partnerID` int(11) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `date-posted` date DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `subcategoryID` int(11) DEFAULT NULL,
  `authorID` int(11) DEFAULT NULL,
  `popularity` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `icon-tooltip` varchar(150) NOT NULL,
  `icon-alt-text` varchar(50) NOT NULL,
  `download-link` varchar(250) NOT NULL,
  `download-type` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `module_index`
--

INSERT INTO `module_index` (`ID`, `partnerID`, `name`, `description`, `difficulty`, `date-posted`, `type`, `subcategoryID`, `authorID`, `popularity`, `icon`, `icon-tooltip`, `icon-alt-text`, `download-link`, `download-type`) VALUES
(1, 1, 'Clock Gear Train', 'It''s a clock gear train', 2, '2013-06-03', 2, 1, 1, 0, 'module-images/icons/lego-clock.jpg', 'http://1-ps.googleusercontent.com/h/www.catgifpage.com/gifs/186.gif.pagespeed.ce.Z_8F-7SNTG.gif', '', 'http://www.invention-universe.com/val/', 'Schematic'),
(2, 1, 'NOT Gate', 'The NOT gate, otherwise known as an invertor, changes the output of the gate to the opposite of the input.  For instance, if the input is on, the output is off and vice versa.', 1, '2013-07-15', 5, 1, 5, 0, 'module-images/icons/minecraft-not.png', 'http://1-ps.googleusercontent.com/h/www.catgifpage.com/gifs/185.gif.pagespeed.ce.yvDfYyj82d.gif', '', 'http://www.invention-universe.com/val/', 'Schematic'),
(3, 1, 'Junk Catapult', 'This is a catapult made entirely from junk.', 2, '2013-08-16', 1, 4, 2, 0, 'module-images/icons/junk-catapult-icon.png', 'module-images/icons/tooltip-icons/junk-catapult-overview.png', '', '', ''),
(4, 1, 'Coin Spillway', NULL, 2, '2013-08-16', 1, 5, 2, 0, 'module-images/icons/coin-spillway-icon.png', '', '', '', ''),
(5, 1, 'AND Gate', 'The AND gate changes the output of the gate to on when both inputs are on and off when one of the inputs is or when they are both off.', 1, '2013-07-18', 5, 1, 1, 0, 'module-images/icons/minecraft-and.png', 'http://www.catgifpage.com/gifs/184.gif', '', 'http://www.invention-universe.com/val/', 'Schematic'),
(6, 1, 'T-Flip-Flop', 'Changes a pulse into a constant output.  Changes a button into a lever essentially.', 2, '2013-07-18', 5, 1, 5, 0, 'module-images/icons/minecraft-t-flip-flop.png', 'http://www.catgifpage.com/gifs/179.gif', '', '', ''),
(7, 1, 'NAND Gate', 'When the two inputs are on the output is off.  Whatever other state the Gate is in the output is on.', 1, '2013-07-18', 5, 1, 5, 0, 'module-images/icons/minecraft-nand.png', 'http://www.catgifpage.com/gifs/176.gif', '', '', ''),
(8, 1, 'XOR Gate', 'If one input is on, the output is on.  In any other state the output is off.', 2, '2013-07-18', 5, 1, 5, 0, 'module-images/icons/minecraft-xor.png', 'http://24.media.tumblr.com/532e270364df9a8550381f0820cfcaf3/tumblr_mr0c6b3Wjl1s199fdo1_250.gif', '', '', ''),
(9, 1, 'Basic motor mount', NULL, 1, '2013-08-12', 2, 5, 1, 0, 'module-images/icons/lego-motor-mount.jpg', 'module-images/icons/tooltip-icons/app-lego-motor-mount-overview.jpg', 'Click for instructions.', '', ''),
(11, 1, 'Cardboard Bridge', NULL, 1, '2013-08-16', 1, 5, 2, 0, 'module-images/icons/bridge-icon.png', 'module-images/icons/tooltip-icons/bridge.png', '', '', ''),
(12, 1, 'Hard Heads', NULL, 1, '2013-08-16', 3, 2, 2, 0, 'module-images/icons/hard-heads-icon.png', '', '', '', ''),
(13, 1, 'Air Heads', NULL, 1, '2013-08-16', 3, 2, 2, 0, 'module-images/icons/air-heads-icon.png', '', '', '', ''),
(14, NULL, 'Vertical Structure', NULL, 1, '2013-08-19', 1, 3, 2, 0, 'module-images/icons/vertical-structure.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `partner_info`
--

CREATE TABLE IF NOT EXISTS `partner_info` (
  `partnerID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `header-file` varchar(100) DEFAULT NULL,
  `footer-file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`partnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `ID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `module1` int(11) NOT NULL,
  `module2` int(11) NOT NULL,
  `module3` int(11) NOT NULL,
  `module4` int(11) NOT NULL,
  `module5` int(11) NOT NULL,
  `module6` int(11) NOT NULL,
  `module7` int(11) NOT NULL,
  `module8` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `steps`
--

CREATE TABLE IF NOT EXISTS `steps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` int(11) DEFAULT NULL,
  `step-number` int(11) DEFAULT NULL,
  `image-path` varchar(100) DEFAULT NULL,
  `step-description` varchar(1000) DEFAULT NULL,
  `related-links` varchar(100) DEFAULT NULL,
  `rcxcode-robolab` varchar(100) DEFAULT NULL,
  `rcxcode-mindstorms` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `steps`
--

INSERT INTO `steps` (`ID`, `moduleID`, `step-number`, `image-path`, `step-description`, `related-links`, `rcxcode-robolab`, `rcxcode-mindstorms`) VALUES
(1, 1, 1, 'module-images/instruction-img/lego/clock-lego-01.jpg', 'Step 1 text', NULL, NULL, NULL),
(2, 1, 2, 'module-images/instruction-img/lego/clock-lego-02.jpg', 'Step 2 text', NULL, NULL, NULL),
(3, 1, 3, 'module-images/instruction-img/lego/clock-lego-03.jpg', 'Step 3 text', NULL, NULL, NULL),
(4, 5, 1, 'module-images/instruction-img/minecraft/and-minecraft-1.png', ' Place two levers one block apart with a line of Redstone coming out of each lever.', NULL, NULL, NULL),
(5, 5, 2, 'module-images/instruction-img/minecraft/and-minecraft-2.png', 'Place 3 blocks connecting the two Redstone lines.  Place a Redstone Torch on top of the blocks with Redstone leading into them.  Place Redstone linking the two torches.', NULL, NULL, NULL),
(6, 5, 3, 'module-images/instruction-img/minecraft/and-minecraft-3.png', 'Place a Redstone Torch on the side of the block with Redstone on top and take an output off of that Torch.', NULL, NULL, NULL),
(7, 6, 1, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-1.png', 'Place a block with a button on it.  Lead a Redstone line off of the block with the button.', NULL, NULL, NULL),
(8, 6, 2, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-2.png', 'Place a Dropper facing to the right of the button. ', NULL, NULL, NULL),
(9, 6, 3, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-3.png', 'Place two more Droppers.  One facing down and into the first Dropper.  The other facing upwards to the right of the original.', NULL, NULL, NULL),
(10, 6, 4, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-4.png', 'Place a Hopper facing into the topmost Dropper.', NULL, NULL, NULL),
(11, 6, 5, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-5.png', 'Place a Comparator facing out of the topmost Dropper and take you’re output off of that Comparator.', NULL, NULL, NULL),
(12, 7, 1, 'module-images/instruction-img/minecraft/nand-minecraft-1.png', 'Put two Levers one block apart.  Lead a Redstone line off of each Lever.', NULL, NULL, NULL),
(13, 7, 2, 'module-images/instruction-img/minecraft/nand-minecraft-2.png', 'Place three blocks in a line in front of the Redstone lines.  Place a torch on top of the blocks with Redstone leading into them.  On the last remaining block, place Redstone.', NULL, NULL, NULL),
(14, 7, 3, 'module-images/instruction-img/minecraft/nand-minecraft-3.png', 'Place a line of Redstone leading off of the Redstone on the middle block.', NULL, NULL, NULL),
(15, 8, 1, 'module-images/instruction-img/minecraft/xor-minecraft-1.png', 'Place two levers three blocks apart.  Lead a Redstone line out of the levers and in one block.', NULL, NULL, NULL),
(16, 8, 2, 'module-images/instruction-img/minecraft/xor-minecraft-2.png', 'Place blocks with Redstone Torches on them at the ends of the Redstone lines.', NULL, NULL, NULL),
(17, 8, 3, 'module-images/instruction-img/minecraft/xor-minecraft-3.png', 'Place lines of Redstone between the two blocks at the end of the Redstone lines.  Place another line in front of the two end blocks.   In the middle bring the line one block forward.  This is your output.', NULL, NULL, NULL),
(18, 2, 1, 'module-images/instruction-img/not-minecraft-1.png', 'Place a lever with a line of Redstone leading out of it.', NULL, NULL, NULL),
(19, 2, 2, 'module-images/instruction-img/not-minecraft-2.png', 'Place a block with a Redstone torch on the side of the block.', NULL, NULL, NULL),
(20, 2, 3, 'module-images/instruction-img/minecraft/not-minecraft-3.png', 'Put a Redstone line coming off of the torch.', NULL, NULL, NULL),
(21, 9, 1, 'module-images/instruction-img/lego/step-lego-motor-mount-1.jpg', 'We need these parts.', NULL, NULL, NULL),
(22, 9, 2, 'module-images/instruction-img/lego/step-lego-motor-mount-2.jpg', 'Insert the connector pegs to the angular beams.', NULL, NULL, NULL),
(23, 9, 3, 'module-images/instruction-img/lego/step-lego-motor-mount-3.jpg', 'Connect the angular beams with the straight beams.', NULL, NULL, NULL),
(24, 9, 4, 'module-images/instruction-img/lego/step-lego-motor-mount-4.jpg', 'Attach the motor to the angular beams.', NULL, NULL, NULL),
(25, 3, 1, 'module-images/instruction-img/junk/junk-catapult-1.png', 'Parts:  - 8.5” x 11” cardboard - 4”x6” Foamie - 1 Starbucks straw - 4 Starbucks coffee stirrer sticks - Paper clip 8” string  Tools:  Scissors Ruler Tape Hot Glue Gun', NULL, NULL, NULL),
(26, 3, 2, 'module-images/instruction-img/junk/junk-catapult-2.png', 'Base:      Cut the cardboard base and strengthen it by hot gluing coffee stirrer sticks.      Each line on the green mat is 1” square.      Therefore the base is 3” x 5”.', NULL, NULL, NULL),
(27, 3, 3, 'module-images/instruction-img/junk/junk-catapult-3.png', 'Arm parts and rubber band stops.', NULL, NULL, NULL),
(28, 3, 4, 'module-images/instruction-img/junk/junk-catapult-4.png', '    Base rubber band stops:      Hot glue foam strips on the middle coffee stirrer stick on the base.', NULL, NULL, NULL),
(29, 3, 5, 'module-images/instruction-img/junk/junk-catapult-5.png', 'Arm-1:  Cut the rubber band strips and hinge parts.  Hot glue half of hinge on arm stick.', NULL, NULL, NULL),
(30, 3, 6, 'module-images/instruction-img/junk/junk-catapult-6.png', 'Arm-2:      Hot glue the 2nd half of the hinge on the arm.  Measure and mark the middle of the base.', NULL, NULL, NULL),
(31, 3, 7, 'module-images/instruction-img/junk/junk-catapult-7.png', 'Arm-3:  Hot glue arm hinges on the base.', NULL, NULL, NULL),
(32, 3, 8, 'module-images/instruction-img/junk/junk-catapult-8.png', 'Arm-4:      Hot glue the rubber band strip on the arm.  It should be positioned so it aligns with the rubber band strip on the base coffee stirrer stick ', NULL, NULL, NULL),
(33, 3, 9, 'module-images/instruction-img/junk/junk-catapult-9.png', 'Rubber bands.   One rubber band will act as the arm spring.  The other rubber band will act as the arm stop to control the throwing trajectory.  You can twist the rubber bands to control the spring strength and arm stop position.', NULL, NULL, NULL),
(34, 3, 10, 'module-images/instruction-img/junk/junk-catapult-10.png', 'Hand-1:      Collect these parts to start the catapult hand (or bucket).', NULL, NULL, NULL),
(35, 3, 11, 'module-images/instruction-img/junk/junk-catapult-11.png', 'Hand-2:  Cut a slit in the top of the hand   Overlap the slit sides to make a pocket.  Hot glue.  Hot glue the foam piece so it wraps around the straw.  Slip the straw hand over the coffee stirrer stick arm.  Tape it to the arm.    Experiment with arm/hand length.', NULL, NULL, NULL),
(36, 3, 12, 'module-images/instruction-img/junk/junk-catapult-12.png', 'Catapult Trigger  Attach a string to pull the paper clip and release the catapult arm.  Hold the catapult arm down to the middle coffee stirrer stick with paper clip that has been opened.    Tape the base coffee stirrer sticks to a platform.  This will keep the catapult stable.', NULL, NULL, NULL),
(41, 4, 1, 'module-images/instruction-img/junk/coin-spillway-1.png', 'Build a reinforced base. Glue or tape coffee stirrer sticks to strengthen base', NULL, NULL, NULL),
(42, 4, 2, 'module-images/instruction-img/junk/coin-spillway-2.png', 'Score and cut vertical supports. 8.5”x11” cardboard  Cut in half the long way.    Then score lines 1” from the edges so the cardboard will bend in a straight line.', NULL, NULL, NULL),
(43, 4, 3, 'module-images/instruction-img/junk/coin-spillway-3.png', 'Bend cardboard along score lines. Tape base and vertical support together.', NULL, NULL, NULL),
(44, 4, 4, 'module-images/instruction-img/junk/coin-spillway-4.png', 'Tape base and 2nd vertical support.', NULL, NULL, NULL),
(45, 4, 5, 'module-images/instruction-img/junk/coin-spillway-5.png', 'Cut and score spillways.  Tape spillways to vertical supports.', NULL, NULL, NULL),
(46, 4, 6, 'module-images/instruction-img/junk/coin-spillway-6.png', 'Tape vertical supports at top.  Make sure that a quarter can roll down the spillway.', NULL, NULL, NULL),
(47, 4, 7, 'module-images/instruction-img/junk/coin-spillway-7.png', 'Add a 2nd spillway.', NULL, NULL, NULL),
(48, 11, 1, 'module-images/instruction-img/junk/bridge-1.png', 'Lay out a ruler where you want to bend the cardboard.  Score a line with a scissors tip.', NULL, NULL, NULL),
(49, 11, 2, 'module-images/instruction-img/junk/bridge-2.png', 'Tape 2 cardboard sheets together', NULL, NULL, NULL),
(50, 11, 3, 'module-images/instruction-img/junk/bridge-3.png', 'To keep the bridge from slipping, you can tape the ends to the floor.', NULL, NULL, NULL),
(51, 13, 1, 'module-images/instruction-img/art/air-heads-1.png', 'You’ll need these tools: Scissors Ruler Black Sharpie Pen Red, Green, Blue pencils Scotch Tape Glue Gun', NULL, NULL, NULL),
(52, 13, 2, 'module-images/instruction-img/art/air-heads-2.png', 'And you’ll need some premium quality junk: Pipe Cleaners 2”x4” sheets of paper Cloth Beads Nuts Rocks Corks Feathers Yarn Foamies', NULL, NULL, NULL),
(53, 13, 3, 'module-images/instruction-img/art/air-heads-3.png', 'Form a cylinder shape.', NULL, NULL, NULL),
(54, 13, 4, 'module-images/instruction-img/art/air-heads-4.png', 'First draw a face and color the hair. Cut slits in the top so you can bend the hair.', NULL, NULL, NULL),
(55, 13, 5, 'module-images/instruction-img/art/air-heads-5.png', 'Wrap the paper to form a cylinder.', NULL, NULL, NULL),
(56, 13, 6, 'module-images/instruction-img/art/air-heads-6.png', 'Tape a 6” pipe cleaner to the head.  This will be the neck.', NULL, NULL, NULL),
(57, 13, 7, 'module-images/instruction-img/art/air-heads-7.png', 'Wind the pipe cleaner around a pencil to make a neck.', NULL, NULL, NULL),
(58, 14, 2, 'module-images/instruction-img/junk/vertical-structure1.png', 'Cut cardboard 3" by 5" and tape(hot glue) 7" coffee stirrer sticks to cardboard to stiffen.', NULL, NULL, NULL),
(59, 14, 2, 'module-images/instruction-img/junk/vertical-structure2.png', 'Mark and score on the black lines. Then cut the base sections.', NULL, NULL, NULL),
(60, 14, 3, 'module-images/instruction-img/junk/vertical-structure3.png', 'Bend along the score lines and tape the triangular vertical structure to the base (triangles are the srtongest shape). Then cut 3" off of a straw and put tape on both sides.', NULL, NULL, NULL),
(61, 14, 4, 'module-images/instruction-img/junk/vertical-structure4.png', 'Tape/hot glue the straw to one side of the triangle. Then tape the arm to a different side in case you want to decorate it with pipe cleaners or other decorations.', NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
