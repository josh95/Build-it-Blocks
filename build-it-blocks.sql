-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-ipg07.eigbox.net
-- Generation Time: Dec 13, 2013 at 11:59 AM
-- Server version: 5.5.32
-- PHP Version: 4.4.9
-- 
-- Database: `builditblocks`
-- 
CREATE DATABASE `builditblocks` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `builditblocks`;

-- --------------------------------------------------------

-- 
-- Table structure for table `applications`
-- 

CREATE TABLE `applications` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` int(11) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `title` varchar(40) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `youtube-embedID` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

-- 
-- Dumping data for table `applications`
-- 

INSERT INTO `applications` VALUES (3, 2, 'module-images/applications-img/minecraft/not-minecraft.png', 'The NOT gate, otherwise known as an invertor, changes the output of the gate to the opposite of the input.  For instance, if the input is on, the output is off and vice versa.', 'Not Gate', NULL, NULL);
INSERT INTO `applications` VALUES (4, 5, 'module-images/applications-img/minecraft/and-minecraft.png', 'The AND gate changes the output of the gate to on when both inputs are on and off when one of the inputs is or when they are both off.', 'And Gate', NULL, NULL);
INSERT INTO `applications` VALUES (5, 6, 'module-images/applications-img/minecraft/t-flip-flop-minecraft.png', 'Changes a pulse into a constant output.  Changes a button into a lever essentially.', 'T Flip Flop', NULL, NULL);
INSERT INTO `applications` VALUES (6, 7, 'module-images/applications-img/minecraft/nand-minecraft.png', 'When the two inputs are on the output is off.  Whatever other state the Gate is in the output is on.', 'NAND Gate', NULL, NULL);
INSERT INTO `applications` VALUES (7, 8, 'module-images/applications-img/minecraft/xor-minecraft.png', 'If one input is on, the output is on.  In any other state the output is off.', 'XOR Gate', NULL, NULL);
INSERT INTO `applications` VALUES (8, 9, 'module-images/applications-img/lego/app-lego-motor-mount-overview.jpg', 'Use the basic motor mount to do many things.', 'Overview', NULL, NULL);
INSERT INTO `applications` VALUES (9, 9, 'module-images/applications-img/lego/app-lego-motor-mount-catapult.jpg', 'Use the motor mount to pull a pin that releases a catapult.', 'Catapult', NULL, 'vBjEgL4FM2E');
INSERT INTO `applications` VALUES (10, 2, 'module-images/applications-img/minecraft/not-minecraft.png', 'If you want a piston door to remain open even when the lever is off.', 'Piston Door', NULL, NULL);
INSERT INTO `applications` VALUES (11, 5, 'module-images/applications-img/minecraft/and-minecraft.png', 'Can be used if you want a player to have to pull two levers in order to turn on a light or activate another Redstone device.', 'Two Lever Lights', NULL, NULL);
INSERT INTO `applications` VALUES (12, 6, 'module-images/applications-img/minecraft/t-flip-flop-minecraft.png', 'If you want a door to remain open, but want it to be opened by a button.', 'Button Opened Door', NULL, NULL);
INSERT INTO `applications` VALUES (13, 7, 'module-images/applications-img/minecraft/nand-minecraft.png', 'If you want a player to have to flip to levers to turn off a light.', 'Adventure Lights', NULL, NULL);
INSERT INTO `applications` VALUES (14, 8, 'module-images/applications-img/minecraft/xor-minecraft.png', 'If you want to open a door on one side of a wall, but be able to close it on the other side.', 'Double Lever Door', NULL, NULL);
INSERT INTO `applications` VALUES (15, 3, 'module-images/applications-img/junk/junk-catapult-overview.png', 'This is a catapult made entirely from junk.', 'Junk Catapult', NULL, NULL);
INSERT INTO `applications` VALUES (16, 3, 'module-images/applications-img/junk/catapult-candy-launcher.png', 'Launch candy! for all of your friends! They will love it!', 'Candy Launcher', NULL, NULL);
INSERT INTO `applications` VALUES (17, 4, 'module-images/applications-img/junk/coin-spillway-overview.png', 'Use this to collect coins into one place. How convenient!', 'Coin Spillway', NULL, NULL);
INSERT INTO `applications` VALUES (18, 4, 'module-images/applications-img/junk/coin-spillway-make-money.png', 'Get money! Get Paid!', 'Go make that Cash Money!', NULL, NULL);
INSERT INTO `applications` VALUES (19, 11, 'module-images/applications-img/junk/bridge-overview.png', 'The Premium Quality Junk Yard is on a remote island.  Most people don’t want to live near a dump.  Ugly sights, wicked foul smells, pesky pigeons who haven’t been toilet trained and more messiness! ', 'The Problem', NULL, NULL);
INSERT INTO `applications` VALUES (20, 11, 'module-images/applications-img/junk/bridge-overview.png', 'A bridge to support the weight of a truck! A toy one anyways...', 'Your Mission', NULL, NULL);
INSERT INTO `applications` VALUES (21, 24, 'module-images/applications-img/art/air-head-1.png', 'Many moons into the future, lived a crew of colorful, creative critters.  These advanced humanoids evolved from the piles of garbage left by a world full of uncivilized, nat-brained humans.', 'Cone Heads', NULL, NULL);
INSERT INTO `applications` VALUES (22, 24, 'module-images/applications-img/art/air-head-2.png', 'Build-It-Yourself crew members are on a mission to morph premium quality junk into a new generation of super heroes.', 'Cone Heads', NULL, NULL);
INSERT INTO `applications` VALUES (23, 13, 'module-images/applications-img/art/air-head-3.png', 'Many moons into the future, lived a crew of colorful, creative critters.  These advanced humanoids evolved from the piles of garbage left by a world full of uncivilized, nat-brained humans.', 'Air Heads', NULL, NULL);
INSERT INTO `applications` VALUES (24, 13, 'module-images/applications-img/art/air-head-4.png', 'Build-It-Yourself crew members are on a mission to morph premium quality junk into a new generation of super heroes.', 'Air Heads', NULL, NULL);
INSERT INTO `applications` VALUES (25, 12, 'module-images/applications-img/art/hard-heads-app-1.png', 'Many moons into the future, lived a crew of colorful, creative critters.', 'Hard Heads', NULL, NULL);
INSERT INTO `applications` VALUES (26, 12, 'module-images/applications-img/art/hard-heads-app-2.png', 'These advanced humanoids evolved from the piles of garbage left by a world full of uncivilized, nat-brained humans.', 'Hard Heads', NULL, NULL);
INSERT INTO `applications` VALUES (27, 12, 'module-images/applications-img/art/hard-heads-app-3.png', 'Build-It-Yourself crew members are on a mission to morph premium quality junk into a new generation of super heroes.', NULL, NULL, NULL);
INSERT INTO `applications` VALUES (28, 14, 'module-images/applications-img/junk/vert-struc-app-1.png', 'You can use the Vertical Structure as a base that you can mount things on.', 'Vertical Structure', NULL, NULL);
INSERT INTO `applications` VALUES (29, 14, 'module-images/applications-img/junk/vert-struc-app-2.png', 'Here is and application of the Vertical Structure', 'Apply Vertical Structure', NULL, NULL);
INSERT INTO `applications` VALUES (30, 22, 'module-images/applications-img/code/bib-code-html-title-pg-500.jpg', 'Set up your website with this template.', 'Tile Page Template', NULL, NULL);
INSERT INTO `applications` VALUES (31, 22, 'module-images/applications-img/code/bib-code-html-title-pg-500.jpg', 'Set up your website with this template.', 'Tile Page Template', NULL, NULL);
INSERT INTO `applications` VALUES (32, 15, 'module-images/applications-img/lego/one-shot-catapult.png', 'This catapult fires one shot after its pin has been pulled', 'One Shot Catapult', NULL, NULL);
INSERT INTO `applications` VALUES (33, 15, 'module-images/applications-img/lego/app-lego-motor-mount-catapult.jpg', 'This is showing a motor pulling the realease pin of the catapult.', 'Launch', NULL, NULL);
INSERT INTO `applications` VALUES (34, 16, 'module-images/applications-img/lego/fwd-rev-chassis.png', 'Use this chassis for a robot that moves forward without turning.', 'Forward Reverse Chassis', NULL, NULL);
INSERT INTO `applications` VALUES (35, 16, 'module-images/applications-img/lego/fwd-rev-chassis.png', 'A moving robot.', 'An Application', NULL, NULL);
INSERT INTO `applications` VALUES (36, 18, 'module-images/applications-img/art/cartoons-app-1.png', 'Some silly cartoon faces', 'Cartoon Faces', NULL, NULL);
INSERT INTO `applications` VALUES (37, 18, 'module-images/applications-img/art/cartoons-app-2.png', 'More silly cartoon faces', 'Cartoon Faces', NULL, NULL);
INSERT INTO `applications` VALUES (38, 18, 'module-images/applications-img/art/cartoons-app-3.png', 'Even more silly faces', 'Cartoon Faces', NULL, NULL);
INSERT INTO `applications` VALUES (39, 17, 'module-images/applications-img/lego/up-down-swing-1.png', 'This module lets you move something up and down.', 'Up Down Swing', '', NULL);
INSERT INTO `applications` VALUES (40, 17, 'module-images/applications-img/lego/up-down-swing-2.png', 'It can be used for many things like waving a sign or beating a drum.', 'Uses', NULL, NULL);
INSERT INTO `applications` VALUES (41, 17, 'module-images/applications-img/lego/up-down-swing-explained-1.png', 'The arm motion is driven by a rotating cam.  The shape and position of the cam will change the arm motion.', 'Application Notes', NULL, NULL);
INSERT INTO `applications` VALUES (42, 17, 'module-images/applications-img/lego/up-down-swing-explained-2.png', 'The arm can lift a heavier load if the cam rotates such that it first hits the arm away from the fulcrum or arm rotating point.', 'Application Notes', NULL, NULL);
INSERT INTO `applications` VALUES (43, 17, 'module-images/applications-img/lego/up-down-swing-explained-3.png', 'Positioning the fulcrum can change the distance the arm moves or the load it can move.', 'Application Notes', NULL, NULL);
INSERT INTO `applications` VALUES (44, 24, 'module-images/applications-img/art/cone-heads-app.png', 'Say hello to my little friends.', 'Some other cone heads!', NULL, NULL);
INSERT INTO `applications` VALUES (45, 25, 'module-images/applications-img/junk/pinwheel-step-app.png', 'This modules is capable of spinning', 'Pinwheel', NULL, NULL);
INSERT INTO `applications` VALUES (46, 25, 'module-images/applications-img/junk/pinwheel-step-5.png', 'Use it to build a windmill, or some other cool rotating device.', 'Pinwheel', NULL, NULL);
INSERT INTO `applications` VALUES (47, 21, 'module-images/applications-img/code/scratch-rocket-controls-overview.png', 'Try this template if you would like to control your rocket in space to land of different planets. ', 'Scratch Rocket Controls', NULL, NULL);
INSERT INTO `applications` VALUES (48, 21, 'module-images/applications-img/code/scratch-rocket-controls-overview.png', 'Try this template if you would like to control your rocket in space to land of different planets. ', 'Scratch Rocket Controls', NULL, NULL);
INSERT INTO `applications` VALUES (49, 26, 'module-images/applications-img/code/biy-code-html-table-app2-500.jpg', 'Great layout for synchronizing text with pictures.', 'Pictures with Text', NULL, NULL);
INSERT INTO `applications` VALUES (50, 26, 'module-images/applications-img/code/biy-code-html-table-app1-500.jpg', 'You can easily add rows and columns to the table.  Study the comments in the code.', 'Basic Table Layout', NULL, NULL);
INSERT INTO `applications` VALUES (51, 22, 'module-images/applications-img/code/bib-code-html-title-app1-500.jpg', 'Title Page - Image Focus', 'HTML Image Page', NULL, NULL);
INSERT INTO `applications` VALUES (52, 22, 'module-images/applications-img/code/bib-code-html-title-app2-500.jpg', 'You can add several images', 'Basic HTML Image Page', NULL, NULL);
INSERT INTO `applications` VALUES (53, 27, 'module-images/applications-img/lego/lego-steering-chassis-overview.png', 'With this chassis, left and right steering is possible because the wheels on each side can move in different directions', 'Steering Chassis', NULL, NULL);
INSERT INTO `applications` VALUES (54, 27, 'module-images/applications-img/lego/lego-steering-chassis-overview.png', 'This is very important for robots, since they need to move up down and all around.', 'Steering Chassis', NULL, NULL);
INSERT INTO `applications` VALUES (55, 28, 'module-images/applications-img/lego/coaster-wheel-app.png', 'This wheel spins freely and is able to rotate.', 'Coaster Wheel', NULL, NULL);
INSERT INTO `applications` VALUES (56, 28, 'module-images/applications-img/lego/coaster-wheel-app.png', 'This makes the coaster wheel a useful support for lego vehicles that make turns.', 'Coaster Wheel', NULL, NULL);
INSERT INTO `applications` VALUES (57, 29, 'module-images/applications-img/junk/junk-chassis.png', 'This is a chassis made entirely from junk.', 'Junk Chassis', NULL, NULL);
INSERT INTO `applications` VALUES (58, 29, 'module-images/applications-img/junk/junk-chassis.png', 'No LEGO needed!', 'Junk Chassis', NULL, NULL);
INSERT INTO `applications` VALUES (59, 30, 'module-images/applications-img/lego/corkscrew-gear-train-overview.png', 'This compact gear train can generate a large amount of torque.', 'Corkscrew Gear Train', NULL, NULL);
INSERT INTO `applications` VALUES (60, 30, 'module-images/applications-img/lego/corkscrew-gear-train-overview.png', 'With this gear train, you trade speed for strength.', 'Corkscrew Gear Train', NULL, NULL);
INSERT INTO `applications` VALUES (61, 31, 'module-images/applications-img/lego/1-9-gear-train-overview.png', 'Use this gear train to convert power to speed or speed to power!', '1 to 9 Gear Train', NULL, NULL);
INSERT INTO `applications` VALUES (62, 31, 'module-images/applications-img/lego/1-9-gear-train-overview.png', 'Variety of uses!', '1 to 9 Gear Train', NULL, NULL);
INSERT INTO `applications` VALUES (63, 32, 'module-images/applications-img/minecraft/minecraft-double-door-overview.png', 'Have you ever wanted double doors that both open when you press a button?', 'Double Doors', NULL, NULL);
INSERT INTO `applications` VALUES (64, 32, 'module-images/applications-img/minecraft/minecraft-double-door-app-1.png', 'Ta-da! With this module, you can!', 'Double Doors', NULL, NULL);
INSERT INTO `applications` VALUES (65, 32, 'module-images/applications-img/minecraft/minecraft-double-door-app-2.png', 'Double doors look good on a lot of houses, like this one!', 'Double Doors', NULL, NULL);
INSERT INTO `applications` VALUES (66, 33, 'module-images/applications-img/minecraft/minecraft-doorbell-overview.png', 'The module shows you a way to make a tune play when someone comes through your door.', 'Doorbell', NULL, NULL);
INSERT INTO `applications` VALUES (67, 33, 'module-images/applications-img/minecraft/minecraft-doorbell-app-1.png', 'Play a jaunty little jingle when customers walk into your restaurant.', 'A tune for your restaurant', NULL, NULL);
INSERT INTO `applications` VALUES (68, 34, 'module-images/applications-img/minecraft/minecraft-redstone-lock-app-1.png', 'Sometimes you don\\''t want intruders to barge through the door.', 'Redstone Lock', NULL, NULL);
INSERT INTO `applications` VALUES (69, 34, 'module-images/applications-img/minecraft/minecraft-redstone-lock-app-1.png', 'Has this ever happened to you? <br> Gee! I really need to use the bathroom!', 'The Problem', NULL, NULL);
INSERT INTO `applications` VALUES (70, 34, 'module-images/applications-img/minecraft/minecraft-redstone-lock-app-2.png', 'Got to the bathroom in time.', 'Phew! Relief!', NULL, NULL);
INSERT INTO `applications` VALUES (71, 34, 'module-images/applications-img/minecraft/minecraft-redstone-lock-app-3.png', 'Oh! Who are you? This is awkward… <br> If I had been able to lock the door, this wouldn’t have happened.', 'Unwanted Intruder', NULL, NULL);
INSERT INTO `applications` VALUES (72, 34, 'module-images/applications-img/minecraft/minecraft-redstone-lock-app-4.png', 'I flip this switch right here, when I’m inside the bathroom.', 'Here’s how the lock works', NULL, NULL);
INSERT INTO `applications` VALUES (73, 34, 'module-images/applications-img/minecraft/minecraft-redstone-lock-app-5.png', 'Now, even if someone presses the button outside, the door will not open! Pretty sweet!', 'Here’s how the lock works', NULL, NULL);
INSERT INTO `applications` VALUES (74, 35, 'module-images/applications-img/lego/carabiner-app-1.jpg', 'This arm can pick up a small basket of candy.', 'Carabiner', NULL, NULL);
INSERT INTO `applications` VALUES (75, 35, 'module-images/applications-img/lego/carabiner-app-1.jpg', 'This arm can pick up a small basket of candy.', 'Carabiner', NULL, NULL);
INSERT INTO `applications` VALUES (76, 36, 'module-images/applications-img/lego/hook-grabber-finished.png', 'Use this grabber to sweep up things on the ground.', 'Hook Grabber', NULL, NULL);
INSERT INTO `applications` VALUES (77, 36, 'module-images/applications-img/lego/hook-grabber-finished.png', 'Useful in First Lego League Competitions', 'Hook Grabber', NULL, NULL);
INSERT INTO `applications` VALUES (78, 37, 'module-images/applications-img/minecraft/hidden-door-1-x-1-overview.png', 'This is a hidden door you can use to create a secret enterance to your lair. This module is small so it can fit in almost any house and makes it hard to detect.', 'Hidden Door 1x1', NULL, NULL);
INSERT INTO `applications` VALUES (79, 37, 'module-images/applications-img/minecraft/hidden-door-1-x-1-app-1.png', 'This seems like an ordinary house…', 'Hidden Door 1x1', NULL, NULL);
INSERT INTO `applications` VALUES (80, 37, 'module-images/applications-img/minecraft/hidden-door-1-x-1-app-2.png', 'Or is it?', 'Hidden Door 1x1', NULL, NULL);
INSERT INTO `applications` VALUES (81, 37, 'module-images/applications-img/minecraft/hidden-door-1-x-1-app-3.png', 'With the hidden door, you can have a crazy underground basement laboratory that no one will know about, except you.', 'Hidden Door 1x1', NULL, NULL);
INSERT INTO `applications` VALUES (84, 39, 'module-images/applications-img/lego/robot-catapult-overview.png', 'This catapult can be easily reset for a second shot.', 'Robot Catapult', NULL, NULL);
INSERT INTO `applications` VALUES (85, 39, 'module-images/applications-img/lego/robot-catapult-overview.png', 'This catapult can be easily reset for a second shot.', 'Robot Catapult', NULL, NULL);
INSERT INTO `applications` VALUES (86, 40, 'module-images/applications-img/lego/4-wheel-drive-chassis-step-13.png', 'This chassis drives 4 wheels with two motors, giving it increased traction.', 'Four-Wheel Drive Chassis', NULL, NULL);
INSERT INTO `applications` VALUES (87, 40, 'module-images/applications-img/lego/4-wheel-drive-chassis-step-13.png', 'However, this chassis has a bit less steering capability than other two motor chassis.', 'Four-Wheel Drive Chassis', NULL, NULL);
INSERT INTO `applications` VALUES (88, 41, 'module-images/applications-img/minecraft/torch-pulser-step-4.png', 'Use this circuit to create an alternating redstone signal. It’s very useful in a lot of fun devices.', 'Torch Pulser', NULL, NULL);
INSERT INTO `applications` VALUES (89, 41, 'module-images/applications-img/minecraft/torch-pulser-app-1.png', 'Hook it up to a dispenser and pelt your friends mercilessly with eggs.', 'Egg Cannon', NULL, NULL);
INSERT INTO `applications` VALUES (90, 41, 'module-images/applications-img/minecraft/torch-pulser-app-2.png', 'Produce an awesome fireworks show.', 'Fireworks Show', NULL, NULL);
INSERT INTO `applications` VALUES (91, 41, 'module-images/applications-img/minecraft/torch-pulser-app-3.png', 'You can even connect the pulser to a dropper that puts items in a chest. Since the pulser emits signals at exact intervals, you can make a very precise timer with a comparator.', 'Something more Advanced', NULL, NULL);
INSERT INTO `applications` VALUES (92, 42, 'module-images/applications-img/minecraft/ganged-and-gate-overview.png', 'This is a variation on the AND gate that allows you to string multiple inputs together to form one large AND gate. <br>Go and how the basic AND gate works first <a href=build-it-blocks-overview.php?id=5>here</a>.', 'Ganged AND Gate', NULL, NULL);
INSERT INTO `applications` VALUES (93, 42, 'module-images/applications-img/minecraft/ganged-and-gate-app-1.png', 'You can use buttons as your inputs to the AND gate in this archery minigame. Only when all of the buttons are activated, will you be rewarded.', 'Archery Minigame', NULL, NULL);
INSERT INTO `applications` VALUES (94, 42, 'module-images/applications-img/minecraft/ganged-and-gate-app-2.png', 'Using buttons, you can make this a teamwork trigger. Here, a firework will only launch if you have two other teammates with you pressing the button at the same time.', 'Teamwork Trigger', NULL, NULL);

-- --------------------------------------------------------

-- 
-- Table structure for table `author`
-- 

CREATE TABLE `author` (
  `authorID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `bio` varchar(750) NOT NULL,
  `website` varchar(100) NOT NULL,
  PRIMARY KEY (`authorID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `author`
-- 

INSERT INTO `author` VALUES (1, 'Val :))', 'We here at BIY are super amazing and awesome, me included.', 'http://www.invention-universe.com/val/');
INSERT INTO `author` VALUES (2, 'John Galinato', '', 'http://build-it-yourself.com/john/johng-projects.html');
INSERT INTO `author` VALUES (5, 'Dan Broun', '', 'http://www.build-it-yourself.com/dev/interns/dan-broun/index.html');
INSERT INTO `author` VALUES (3, 'Josh Ren', '', '');
INSERT INTO `author` VALUES (6, 'David Nguyen', '', '');
INSERT INTO `author` VALUES (7, 'Nick Zink', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `category_table`
-- 

CREATE TABLE `category_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `subcategoryID` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `typeID` int(11) DEFAULT NULL,
  `subcategory-description` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- 
-- Dumping data for table `category_table`
-- 

INSERT INTO `category_table` VALUES (1, 1, 'Spin', 1, 'Things that spin');
INSERT INTO `category_table` VALUES (2, 2, 'Locomote', 1, 'Moving forwards and back');
INSERT INTO `category_table` VALUES (3, 3, 'Wiggle', 1, 'Wiggle, wiggle, wiggle, wiggle, wiggle, yeah.');
INSERT INTO `category_table` VALUES (4, 4, 'Throw', 1, 'Throwing Stuff');
INSERT INTO `category_table` VALUES (5, 5, 'Structure', 1, 'Yep. Structures.');
INSERT INTO `category_table` VALUES (6, 1, 'Scratch', 4, '');
INSERT INTO `category_table` VALUES (7, 2, 'HTML', 4, '');
INSERT INTO `category_table` VALUES (8, 3, 'Javascript', 4, '');
INSERT INTO `category_table` VALUES (9, 4, 'Mindstorm', 4, '');
INSERT INTO `category_table` VALUES (11, 1, 'Logic Gates', 5, 'Learn all about OR gates!');
INSERT INTO `category_table` VALUES (12, 2, 'Mechanisms', 5, 'Learn all about Pistons and cool stuff!');
INSERT INTO `category_table` VALUES (13, 3, 'Automation', 5, 'Automate stuff.  The clue is in the title.');
INSERT INTO `category_table` VALUES (14, 4, 'Minigames', 5, 'Minigames IN MINECRAFT!!');
INSERT INTO `category_table` VALUES (15, 1, 'Graphics', 3, 'Multi-dimensional graphics');
INSERT INTO `category_table` VALUES (16, 2, 'Models', 3, 'Make some fly puppet pals!');
INSERT INTO `category_table` VALUES (17, 3, 'Music', 3, 'Loops, tracks, etc.');
INSERT INTO `category_table` VALUES (18, 4, 'Writing', 3, 'Stories and poems');
INSERT INTO `category_table` VALUES (19, 1, 'Spin', 2, '');
INSERT INTO `category_table` VALUES (20, 2, 'Locomote', 2, 'This is for LEGO; typeID=2 stands for LEGO');
INSERT INTO `category_table` VALUES (21, 3, 'Wiggle', 2, 'typeID=2 stands for LEGO.');
INSERT INTO `category_table` VALUES (22, 4, 'Throw', 2, 'typeID=2 stands for LEGO :)');
INSERT INTO `category_table` VALUES (23, 5, 'Structure', 2, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `keywords`
-- 

CREATE TABLE `keywords` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` int(11) DEFAULT NULL,
  `keywords` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `keywords`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `module_index`
-- 

CREATE TABLE `module_index` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `partnerID` int(11) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

-- 
-- Dumping data for table `module_index`
-- 

INSERT INTO `module_index` VALUES (2, 1, 'NOT Gate', 1, 'The NOT gate, otherwise known as an invertor, changes the output of the gate to the opposite of the input.  For instance, if the input is on, the output is off and vice versa.', '2013-07-15', 5, 1, 5, 0, 'module-images/icons/minecraft-not.png', 'http://1-ps.googleusercontent.com/h/www.catgifpage.com/gifs/185.gif.pagespeed.ce.yvDfYyj82d.gif', '', 'http://www.invention-universe.com/val/', 'Schematic');
INSERT INTO `module_index` VALUES (3, 1, 'Junk Catapult', 2, 'A catapult made from junk. Launch candy!', '2013-08-16', 1, 4, 2, 0, 'module-images/icons/junk-catapult-icon.png', 'module-images/icons/tooltip-icons/junk-catapult-overview.png', '', ' module-resources/bib-junk-catapult.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (4, 1, 'Coin Spillway', 2, 'A structure to direct your coins', '2013-08-16', 1, 5, 2, 0, 'module-images/icons/coin-spillway-icon.png', '', '', ' module-resources/bib-junk-coin-spillway.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (5, 1, 'AND Gate', 1, 'The AND gate changes the output of the gate to on when both inputs are on and off when one of the inputs is or when they are both off.', '2013-07-18', 5, 1, 1, 0, 'module-images/icons/minecraft-and.png', 'http://www.catgifpage.com/gifs/184.gif', '', 'http://www.invention-universe.com/val/', 'Schematic');
INSERT INTO `module_index` VALUES (6, 1, 'T-Flip-Flop', 2, 'Changes a pulse into a constant output.  Changes a button into a lever essentially.', '2013-07-18', 5, 1, 5, 0, 'module-images/icons/minecraft-t-flip-flop.png', 'http://www.catgifpage.com/gifs/179.gif', '', '', '');
INSERT INTO `module_index` VALUES (7, 1, 'NAND Gate', 1, 'When the two inputs are on the output is off.  Whatever other state the Gate is in the output is on.', '2013-07-18', 5, 1, 5, 0, 'module-images/icons/minecraft-nand.png', 'http://www.catgifpage.com/gifs/176.gif', '', '', '');
INSERT INTO `module_index` VALUES (8, 1, 'XOR Gate', 2, 'If one input is on, the output is on.  In any other state the output is off.', '2013-07-18', 5, 1, 5, 0, 'module-images/icons/minecraft-xor.png', 'http://24.media.tumblr.com/532e270364df9a8550381f0820cfcaf3/tumblr_mr0c6b3Wjl1s199fdo1_250.gif', '', '', '');
INSERT INTO `module_index` VALUES (9, 1, 'Basic motor mount', 1, 'Just a basic way to make a standing motor', '2013-08-12', 2, 5, 1, 0, 'module-images/icons/lego-motor-mount.jpg', 'module-images/icons/tooltip-icons/app-lego-motor-mount-overview.jpg', 'Click for instructions.', '', '');
INSERT INTO `module_index` VALUES (11, 1, 'Cardboard Bridge', 1, 'A bridge to support the weight of a truck! A toy one anyways...', '2013-08-16', 1, 5, 2, 0, 'module-images/icons/bridge-icon.png', 'module-images/icons/tooltip-icons/bridge.png', '', ' module-resources/bib-junk-bridge.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (12, 1, 'Hard Heads', 1, 'Make some cool friends from junk', '2013-08-16', 3, 2, 2, 0, 'module-images/icons/hard-heads-icon.png', '', '', ' module-resources/bib-art-hard-heads.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (13, 1, 'Air Heads', 1, 'Make an awesome paper head', '2013-08-16', 3, 2, 2, 0, 'module-images/icons/air-heads-icon.png', '', '', ' module-resources/bib-art-air-heads.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (14, NULL, 'Vertical Structure', 1, 'This stands something up', '2013-08-19', 1, 3, 2, 0, 'module-images/icons/vertical-structure.jpg', '', '', ' module-resources/bib-junk-structure-vert-3inch.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (15, NULL, 'One Shot Catapult', 2, 'A catapult made from legos that shoots once.', '2013-08-26', 2, 4, 2, 0, 'module-images/icons/bib-lego-nxt-catapult-one-shot-icon.jpg', '', '', ' module-resources/bib-lego-nxt-catapult-1-shot.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (16, NULL, 'Forward/Reverse Chassis', 2, 'A chassis for a lego vehicle that can move forward and back', '2013-08-26', 2, 2, 2, 0, 'module-images/icons/bib-lego-nxt-chassis-fwd-rev-icon.jpg', '', '', ' module-resources/bib-lego-nxt-chassis-fwd-rev-gear.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (17, NULL, 'Up Down Swing', 1, 'This moves a bar up and down', '2013-08-26', 2, 3, 2, 0, 'module-images/icons/bib-lego-nxt-up-dwn-swing-icon.jpg', '', '', ' module-resources/bib-lego-nxt-up-dwn-swing.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (18, NULL, 'Cartooning', 1, 'Use powerpoint to make some funky faces', '2013-08-26', 3, 1, 2, 0, 'module-images/icons/bib-art-cartoon-icon.jpg', '', '', ' module-resources/bib-art-cartoons.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (19, NULL, 'Animation', 3, 'Make some cool animated gifs', '2013-08-26', 3, 1, 2, 0, 'module-images/icons/bib-art-anim-icon.gif', '', '', '', '');
INSERT INTO `module_index` VALUES (20, NULL, 'Graffiti', 1, 'Awesome graffiti to get your message out!', '2013-08-26', 3, 1, 2, 0, 'module-images/icons/bib-art-graffiti-icon.jpg', '', '', '', '');
INSERT INTO `module_index` VALUES (21, NULL, 'Scratch Rocket Control', 1, 'Control a Scratch Rocket with the arrow keys', '2013-08-26', 4, 1, 2, 0, 'module-images/icons/bib-code-scratch-rkt-ctrl-arrow-icon.gif', '', '', 'http://scratch.mit.edu/projects/1491292/', 'a link to this program');
INSERT INTO `module_index` VALUES (22, NULL, 'Home Page Template', 1, 'A template for a home page of your website', '2013-08-26', 4, 2, 2, 0, 'module-images/icons/bib-code-html-title-icon.jpg', '', '', 'module-resources/home-page.htm', 'HTML Template');
INSERT INTO `module_index` VALUES (23, NULL, 'Scratch Coins', 2, 'Make some coins?', '2013-08-26', 4, 1, 2, 0, 'module-images/icons/bib-code-scratch-coins-icon.jpg', '', '', '', '');
INSERT INTO `module_index` VALUES (24, NULL, 'Cone Heads', 1, '', '2013-08-30', 3, 2, 2, 0, ' module-images/icons/cone-heads.png', '', '', ' module-resources/bib-art-air-heads.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (25, NULL, 'Pinwheel', 1, 'This is a a device that spins. Wee.', '0000-00-00', 1, 1, 2, 9, 'module-images/icons/pinwheel-icon.png', '', '', 'module-resources/bib-junk-pinwheel.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (26, NULL, 'HTML Table Page', 3, 'Make rows and columns of pictures and text.', '0000-00-00', 4, 2, 2, 9, 'module-images/icons/biy-code-html-table-pg-150.jpg', '', '', '', '');
INSERT INTO `module_index` VALUES (27, NULL, 'Steering Chassis', 3, 'This chassis has two wheel that can turn in different directions, allowing for steering.', '0000-00-00', 2, 2, 3, 9, 'module-images/icons/steering-chassis-icon.png', '', '', '', '');
INSERT INTO `module_index` VALUES (28, NULL, 'Coaster Wheel', 1, 'Use this to provide support for a chassis that  has steering.', '0000-00-00', 2, 5, 3, 9, 'module-images/icons/coaster-wheel-icon.png', 'module-images/icons/tooltip-icons/coaster-wheel-app.png', '', '', '');
INSERT INTO `module_index` VALUES (29, NULL, 'Junk Chassis', 2, 'This chassis can be made entirely out of junk! No LEGO needed.', '0000-00-00', 1, 2, 2, 9, 'module-images/icons/junk-chassis - icon.png', 'module-images/icons/tooltip-icons/junk-chassis.png', '', 'module-resources/bib-junk-chassis.ppt', 'Powerpoint');
INSERT INTO `module_index` VALUES (30, NULL, 'Corkscrew Gear Train', 3, 'This compact gear train can generate a large amount of torque.', '0000-00-00', 2, 2, 3, 9, 'module-images/icons/corkscrew-gear-train-icon.png', 'module-images/icons/tooltip-icons/corkscrew-gear-train-overview.png', '', '', '');
INSERT INTO `module_index` VALUES (31, NULL, '1 to 9 Gear Train', 1, 'This is a gear train that allows for conversion of strength to speed or speed to strength.', '0000-00-00', 2, 1, 2, 9, 'module-images/icons/1-9-gear-train-icon.png', 'module-images/icons/tooltip-icons/1-9-gear-train-overview.png', '', '', '');
INSERT INTO `module_index` VALUES (32, NULL, 'Double Door', 1, 'Double doors that both open when you press a button.', '0000-00-00', 5, 2, 3, 9, 'module-images/icons/minecraft-double-door-icon.png', 'module-images/icons/tooltip-icons/minecraft-double-door-overview.png', '', '', '');
INSERT INTO `module_index` VALUES (33, NULL, 'Doorbell', 1, 'The module shows you a way to make a tune play when someone comes through your door.', '0000-00-00', 5, 2, 3, 9, 'module-images/icons/minecraft-doorbell-icon.png', 'module-images/icons/tooltip-icons/minecraft-doorbell-overview.png', '', '', '');
INSERT INTO `module_index` VALUES (34, NULL, 'Redstone Lock', 1, 'Keep out intruders with this nifty lock.', '0000-00-00', 5, 2, 3, 9, 'module-images/icons/minecraft-redstone-lock-icon.png', 'module-images/icons/tooltip-icons/minecraft-redstone-lock-overview.png', '', '', '');
INSERT INTO `module_index` VALUES (35, NULL, 'Carabiner', 1, 'This is an arm that allows you to pick up objects easily.', '2013-11-02', 2, 3, 6, 9, 'module-images/icons/carabiner-icon.jpg', 'module-images/icons/tooltip-icons/carabiner-app-1.jpg', '', '', '');
INSERT INTO `module_index` VALUES (36, NULL, 'Hook Grabber', 1, 'Use this to grab things with your robot that are placed on the ground.', '2013-11-02', 2, 3, 3, 9, 'module-images/icons/hook-grabber-icon.png', '', '', '', '');
INSERT INTO `module_index` VALUES (37, NULL, 'Hidden Door 1x1', 2, 'Make a hidden enterance to your underground lair.', '0000-00-00', 5, 2, 3, 9, 'module-images/icons/hidden-door-1-x-1-icon.png', '', '', '', '');
INSERT INTO `module_index` VALUES (39, NULL, 'Robot Catapult', 2, 'This catapult is easy to reset for a second shot.', '2013-11-08', 2, 4, 3, 9, 'module-images/icons/robot-catapult-icon.png', '', '', '', '');
INSERT INTO `module_index` VALUES (40, NULL, 'Four-Wheel Drive Chassis', 3, 'This chassis drives 4 wheels with two motors, giving it increased traction.', '2013-11-13', 2, 2, 3, 9, 'module-images/icons/4-wheel-drive-chassis-icon.png', '', '', '', '');
INSERT INTO `module_index` VALUES (41, NULL, 'Torch Pulser', 1, 'Use this circuit to create an alternating redstone signal. It’s very useful in a lot of fun devices.', '2013-11-18', 5, 3, 3, 9, 'module-images/icons/torch-pulser-icon.png', '', '', '', '');
INSERT INTO `module_index` VALUES (42, NULL, 'Ganged AND Gate', 2, 'This is a variation on the AND gate that allows you to string multiple inputs together to form one large AND gate. ', '2013-11-19', 5, 1, 3, 9, 'module-images/icons/ganged-and-gate-icon.png', '', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `partner_info`
-- 

CREATE TABLE `partner_info` (
  `partnerID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `header-file` varchar(100) DEFAULT NULL,
  `footer-file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`partnerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `partner_info`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `projects`
-- 

CREATE TABLE `projects` (
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `projects`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `steps`
-- 

CREATE TABLE `steps` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` int(11) DEFAULT NULL,
  `step-number` int(11) DEFAULT NULL,
  `image-path` varchar(100) DEFAULT NULL,
  `step-description` varchar(1000) DEFAULT NULL,
  `related-links` varchar(100) DEFAULT NULL,
  `rcxcode-robolab` varchar(100) DEFAULT NULL,
  `rcxcode-mindstorms` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=266 DEFAULT CHARSET=latin1 AUTO_INCREMENT=266 ;

-- 
-- Dumping data for table `steps`
-- 

INSERT INTO `steps` VALUES (4, 5, 1, 'module-images/instruction-img/minecraft/and-minecraft-1.png', ' Place two levers one block apart with a line of Redstone coming out of each lever.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (5, 5, 2, 'module-images/instruction-img/minecraft/and-minecraft-2.png', 'Place 3 blocks connecting the two Redstone lines.  Place a Redstone Torch on top of the blocks with Redstone leading into them.  Place Redstone linking the two torches.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (6, 5, 3, 'module-images/instruction-img/minecraft/and-minecraft-3.png', 'Place a Redstone Torch on the side of the block with Redstone on top and take an output off of that Torch.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (7, 6, 1, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-1.png', 'Place a block with a button on it.  Lead a Redstone line off of the block with the button.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (8, 6, 2, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-2.png', 'Place a Dropper facing to the right of the button. ', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (9, 6, 3, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-3.png', 'Place two more Droppers.  One facing down and into the first Dropper.  The other facing upwards to the right of the original.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (10, 6, 4, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-4.png', 'Place a Hopper facing into the topmost Dropper.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (11, 6, 5, 'module-images/instruction-img/minecraft/t-flip-flop-minecraft-5.png', 'Place a Comparator facing out of the topmost Dropper and take you’re output off of that Comparator.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (12, 7, 1, 'module-images/instruction-img/minecraft/nand-minecraft-1.png', 'Put two Levers one block apart.  Lead a Redstone line off of each Lever.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (13, 7, 2, 'module-images/instruction-img/minecraft/nand-minecraft-2.png', 'Place three blocks in a line in front of the Redstone lines.  Place a torch on top of the blocks with Redstone leading into them.  On the last remaining block, place Redstone.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (14, 7, 3, 'module-images/instruction-img/minecraft/nand-minecraft-3.png', 'Place a line of Redstone leading off of the Redstone on the middle block.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (15, 8, 1, 'module-images/instruction-img/minecraft/xor-minecraft-1.png', 'Place two levers three blocks apart.  Lead a Redstone line out of the levers and in one block.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (16, 8, 2, 'module-images/instruction-img/minecraft/xor-minecraft-2.png', 'Place blocks with Redstone Torches on them at the ends of the Redstone lines.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (17, 8, 3, 'module-images/instruction-img/minecraft/xor-minecraft-3.png', 'Place lines of Redstone between the two blocks at the end of the Redstone lines.  Place another line in front of the two end blocks.   In the middle bring the line one block forward.  This is your output.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (18, 2, 1, 'module-images/instruction-img/minecraft/not-minecraft-1.png', 'Place a lever with a line of Redstone leading out of it.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (19, 2, 2, 'module-images/instruction-img/minecraft/not-minecraft-2.png', 'Place a block with a Redstone torch on the side of the block.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (20, 2, 3, 'module-images/instruction-img/minecraft/not-minecraft-3.png', 'Put a Redstone line coming off of the torch.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (21, 9, 1, 'module-images/instruction-img/lego/step-lego-motor-mount-1.jpg', 'We need these parts.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (22, 9, 2, 'module-images/instruction-img/lego/step-lego-motor-mount-2.jpg', 'Insert the connector pegs to the angular beams.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (23, 9, 3, 'module-images/instruction-img/lego/step-lego-motor-mount-3.jpg', 'Connect the angular beams with the straight beams.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (24, 9, 4, 'module-images/instruction-img/lego/step-lego-motor-mount-4.jpg', 'Attach the motor to the angular beams.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (25, 3, 1, 'module-images/instruction-img/junk/junk-catapult-1.png', 'Parts:  - 8.5” x 11” cardboard - 4”x6” Foamie - 1 Starbucks straw - 4 Starbucks coffee stirrer sticks - Paper clip 8” string  Tools:  Scissors Ruler Tape Hot Glue Gun', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (26, 3, 2, 'module-images/instruction-img/junk/junk-catapult-2.png', 'Base:      Cut the cardboard base and strengthen it by hot gluing coffee stirrer sticks.      Each line on the green mat is 1” square.      Therefore the base is 3” x 5”.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (27, 3, 3, 'module-images/instruction-img/junk/junk-catapult-3.png', 'Arm parts and rubber band stops.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (28, 3, 4, 'module-images/instruction-img/junk/junk-catapult-4.png', '    Base rubber band stops:      Hot glue foam strips on the middle coffee stirrer stick on the base.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (29, 3, 5, 'module-images/instruction-img/junk/junk-catapult-5.png', 'Arm-1:  Cut the rubber band strips and hinge parts.  Hot glue half of hinge on arm stick.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (30, 3, 6, 'module-images/instruction-img/junk/junk-catapult-6.png', 'Arm-2:      Hot glue the 2nd half of the hinge on the arm.  Measure and mark the middle of the base.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (31, 3, 7, 'module-images/instruction-img/junk/junk-catapult-7.png', 'Arm-3:  Hot glue arm hinges on the base.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (32, 3, 8, 'module-images/instruction-img/junk/junk-catapult-8.png', 'Arm-4:      Hot glue the rubber band strip on the arm.  It should be positioned so it aligns with the rubber band strip on the base coffee stirrer stick ', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (33, 3, 9, 'module-images/instruction-img/junk/junk-catapult-9.png', 'Rubber bands.   One rubber band will act as the arm spring.  The other rubber band will act as the arm stop to control the throwing trajectory.  You can twist the rubber bands to control the spring strength and arm stop position.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (34, 3, 10, 'module-images/instruction-img/junk/junk-catapult-10.png', 'Hand-1:      Collect these parts to start the catapult hand (or bucket).', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (35, 3, 11, 'module-images/instruction-img/junk/junk-catapult-11.png', 'Hand-2:  Cut a slit in the top of the hand   Overlap the slit sides to make a pocket.  Hot glue.  Hot glue the foam piece so it wraps around the straw.  Slip the straw hand over the coffee stirrer stick arm.  Tape it to the arm.    Experiment with arm/hand length.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (36, 3, 12, 'module-images/instruction-img/junk/junk-catapult-12.png', 'Catapult Trigger  Attach a string to pull the paper clip and release the catapult arm.  Hold the catapult arm down to the middle coffee stirrer stick with paper clip that has been opened.    Tape the base coffee stirrer sticks to a platform.  This will keep the catapult stable.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (41, 4, 1, 'module-images/instruction-img/junk/coin-spillway-1.png', 'Build a reinforced base. Glue or tape coffee stirrer sticks to strengthen base', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (42, 4, 2, 'module-images/instruction-img/junk/coin-spillway-2.png', 'Score and cut vertical supports. 8.5”x11” cardboard  Cut in half the long way.    Then score lines 1” from the edges so the cardboard will bend in a straight line.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (43, 4, 3, 'module-images/instruction-img/junk/coin-spillway-3.png', 'Bend cardboard along score lines. Tape base and vertical support together.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (44, 4, 4, 'module-images/instruction-img/junk/coin-spillway-4.png', 'Tape base and 2nd vertical support.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (45, 4, 5, 'module-images/instruction-img/junk/coin-spillway-5.png', 'Cut and score spillways.  Tape spillways to vertical supports.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (46, 4, 6, 'module-images/instruction-img/junk/coin-spillway-6.png', 'Tape vertical supports at top.  Make sure that a quarter can roll down the spillway.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (47, 4, 7, 'module-images/instruction-img/junk/coin-spillway-7.png', 'Add a 2nd spillway.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (48, 11, 1, 'module-images/instruction-img/junk/bridge-1.png', 'Lay out a ruler where you want to bend the cardboard.  Score a line with a scissors tip.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (49, 11, 2, 'module-images/instruction-img/junk/bridge-2.png', 'Tape 2 cardboard sheets together', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (50, 11, 3, 'module-images/instruction-img/junk/bridge-3.png', 'To keep the bridge from slipping, you can tape the ends to the floor.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (51, 13, 1, 'module-images/instruction-img/art/air-heads-1.png', 'You’ll need these tools: Scissors Ruler Black Sharpie Pen Red, Green, Blue pencils Scotch Tape Glue Gun', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (52, 13, 2, 'module-images/instruction-img/art/air-heads-2.png', 'And you’ll need some premium quality junk: Pipe Cleaners 2”x4” sheets of paper Cloth Beads Nuts Rocks Corks Feathers Yarn Foamies', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (53, 13, 3, 'module-images/instruction-img/art/air-heads-3.png', 'Form a cylinder shape.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (54, 13, 4, 'module-images/instruction-img/art/air-heads-4.png', 'First draw a face and color the hair. Cut slits in the top so you can bend the hair.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (55, 13, 5, 'module-images/instruction-img/art/air-heads-5.png', 'Wrap the paper to form a cylinder.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (56, 13, 6, 'module-images/instruction-img/art/air-heads-6.png', 'Tape a 6” pipe cleaner to the head.  This will be the neck.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (57, 13, 7, 'module-images/instruction-img/art/air-heads-7.png', 'Wind the pipe cleaner around a pencil to make a neck.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (58, 14, 1, 'module-images/instruction-img/junk/vert-struc-step-1.png', 'Mark and score on the black lines. Then cut the base sections.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (59, 14, 2, 'module-images/instruction-img/junk/vert-struc-step-2.png', 'Mark and score on the black lines. Then cut the base sections.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (60, 14, 3, 'module-images/instruction-img/junk/vert-struc-step-3.png', 'Bend along the score lines and tape the triangular vertical structure to the base (triangles are the srtongest shape). Then cut 3" off of a straw and put tape on both sides.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (61, 14, 4, 'module-images/instruction-img/junk/vert-struc-step-4.png', 'Tape/hot glue the straw to one side of the triangle. Then tape the arm to a different side in case you want to decorate it with pipe cleaners or other decorations.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (62, 22, 1, 'module-images/instruction-img/code/html-home-page-1.png', 'Download the template from the link.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (63, 22, 2, 'module-images/instruction-img/code/html-home-page-2.png', 'Open the file in a text editor and edit the code to fit your needs.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (64, 15, 1, 'module-images/instruction-img/lego/one-shot-catapult-1.png', 'Assemble these parts', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (65, 15, 2, 'module-images/instruction-img/lego/one-shot-catapult-2.png', 'Follow the image', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (66, 15, 3, 'module-images/instruction-img/lego/one-shot-catapult-3.png', 'Now assemble these parts', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (67, 15, 4, 'module-images/instruction-img/lego/one-shot-catapult-4.png', 'Put the parts together', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (68, 15, 5, 'module-images/instruction-img/lego/one-shot-catapult-5.png', 'Assemble more parts', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (69, 15, 6, 'module-images/instruction-img/lego/one-shot-catapult-6.png', 'Make the catapult arm.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (70, 15, 7, 'module-images/instruction-img/lego/one-shot-catapult-7.png', 'Put the arm on the catapult structure to finish', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (71, 16, 1, 'module-images/instruction-img/lego/fwd-rev-chassis-1.png', 'Get these parts', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (72, 16, 2, 'module-images/instruction-img/lego/fwd-rev-chassis-2.png', 'Make this according to image', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (73, 16, 3, 'module-images/instruction-img/lego/fwd-rev-chassis-3.png', 'Make this other part', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (74, 16, 4, 'module-images/instruction-img/lego/fwd-rev-chassis-4.png', 'Now, put these pieces together', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (75, 16, 5, 'module-images/instruction-img/lego/fwd-rev-chassis-5.png', 'Put this piece there', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (76, 16, 6, 'module-images/instruction-img/lego/fwd-rev-chassis-6.png', 'Follow the image', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (77, 16, 7, 'module-images/instruction-img/lego/fwd-rev-chassis-7.png', 'Almost done', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (78, 16, 8, 'module-images/instruction-img/lego/fwd-rev-chassis-8.png', 'Done!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (79, 18, 1, 'module-images/instruction-img/art/cartoons-1.png', 'Exaggerate your eyes!  They tell the soul of your character.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (80, 18, 2, 'module-images/instruction-img/art/cartoons-2.png', 'Think about layering your shapes in front or behind other shapes.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (81, 18, 3, 'module-images/instruction-img/art/cartoons-3.png', 'Create interesting, unusual 3-D structures by laying basic shapes on top of each other.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (82, 18, 4, 'module-images/instruction-img/art/cartoons-4.png', 'Your cartoon will look more life-like if you use 2 colors.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (83, 18, 5, 'module-images/instruction-img/art/cartoons-5.png', 'This rather complex nose shape is just 3 ovals on top of each other.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (84, 18, 6, 'module-images/instruction-img/art/cartoons-6.png', 'This could be a guy or a gal depending on the hair you add.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (85, 17, 1, 'module-images/instruction-img/lego/up-down-swing-step-1.png', 'You will need these parts.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (86, 17, 2, 'module-images/instruction-img/lego/up-down-swing-step-2.png', NULL, NULL, NULL, NULL);
INSERT INTO `steps` VALUES (87, 17, 3, 'module-images/instruction-img/lego/up-down-swing-step-3.png', NULL, NULL, NULL, NULL);
INSERT INTO `steps` VALUES (88, 17, 4, 'module-images/instruction-img/lego/up-down-swing-step-4.png', NULL, NULL, NULL, NULL);
INSERT INTO `steps` VALUES (89, 17, 5, 'module-images/instruction-img/lego/up-down-swing-step-5.png', 'Finished!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (90, 24, 1, 'module-images/instruction-img/art/air-heads-1.png', 'You’ll need these tools: Scissors Ruler Black Sharpie Pen Red, Green, Blue pencils Scotch Tape Glue Gun', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (91, 24, 2, 'module-images/instruction-img/art/air-heads-2.png', 'And you’ll need some premium quality junk: Pipe Cleaners 2”x4” sheets of paper Cloth Beads Nuts Rocks Corks Feathers Yarn Foamies', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (92, 24, 1, 'module-images/instruction-img/art/cone-heads-step-3.png', 'Cut a piece of paper  	2” x 3”. ', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (93, 24, 2, 'module-images/instruction-img/art/cone-heads-step-4.png', 'Wrap the paper like an ice cream cone. <br> Tape it. <br> Trim it', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (94, 24, 5, 'module-images/instruction-img/art/cone-heads-step-5.png', 'Draw a set of BIG eyes from a piece of white paper or foam rubber.   <br> Add a touch of color.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (95, 24, 6, 'module-images/instruction-img/art/cone-heads-step-6.png', 'Cut a piece of yarn 6” long.  <br>Wind 10-20 loops around your fingers.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (96, 24, 7, 'module-images/instruction-img/art/cone-heads-step-7.png', 'Position the string sections<br>Tie the string in the center.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (97, 24, 8, 'module-images/instruction-img/art/cone-heads-step-8.png', 'Cut the 2 loops <br> Glue or tape it onto your head and give your critter a hair cut.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (98, 24, 9, 'module-images/instruction-img/art/cone-heads-step-9.png', 'Feathers, pipe cleaners or wire can also be used for hair.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (99, 24, 10, 'module-images/instruction-img/art/cone-heads-step-10.png', 'Wrap a pipe cleaner around a pencil. <br> Curl the end so you have a large area to tape or glue the neck to the head.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (100, 24, 11, 'module-images/instruction-img/art/cone-heads-step-11.png', 'This neck enables you to mount your head on any small shaft like a pencil. <br> Also this neck enables your head to move.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (101, 24, 12, 'module-images/instruction-img/art/cone-heads-step-12.png', 'Arms and legs for a large critter. <br> Don’t be shy about exaggerating the hands and feet. ', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (102, 12, 1, 'module-images/instruction-img/art/air-heads-1.png', 'You’ll need these tools: Scissors Ruler Black Sharpie Pen Red, Green, Blue pencils Scotch Tape Glue Gun', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (103, 12, 2, 'module-images/instruction-img/art/air-heads-2.png', 'And you’ll need some premium quality junk: Pipe Cleaners 2”x4” sheets of paper Cloth Beads Nuts Rocks Corks Feathers Yarn Foamies', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (104, 12, 3, 'module-images/instruction-img/art/cone-heads-step-5.png', 'Draw a set of BIG eyes from a piece of white paper or foam rubber.   <br> Add a touch of color.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (105, 12, 4, 'module-images/instruction-img/art/cone-heads-step-6.png', 'Cut a piece of yarn 6” long.  <br>Wind 10-20 loops around your fingers.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (106, 12, 5, 'module-images/instruction-img/art/cone-heads-step-7.png', 'Position the string sections<br>Tie the string in the center.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (107, 12, 6, 'module-images/instruction-img/art/cone-heads-step-8.png', 'Cut the 2 loops <br> Glue or tape it onto your head and give your critter a hair cut.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (108, 12, 7, 'module-images/instruction-img/art/cone-heads-step-9.png', 'Feathers, pipe cleaners or wire can also be used for hair.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (109, 12, 8, 'module-images/instruction-img/art/cone-heads-step-10.png', 'Wrap a pipe cleaner around a pencil. <br> Curl the end so you have a large area to tape or glue the neck to the head.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (110, 12, 9, 'module-images/instruction-img/art/cone-heads-step-11.png', 'This neck enables you to mount your head on any small shaft like a pencil. <br> Also this neck enables your head to move.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (111, 12, 10, 'module-images/instruction-img/art/cone-heads-step-12.png', 'Arms and legs for a large critter. <br> Don’t be shy about exaggerating the hands and feet. ', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (112, 25, 1, 'module-images/instruction-img/junk/pinwheel-step-1.png', 'Materials 	- 1 piece of cardboard 	- 1 piece of foam 	- 1 paper clip 	- 1 chop stick 	- 4 coffee stirrer sticks <br><br>Tools 	- tape 	- scissors 	- pencil 	- hot glue gun 	- glue stick 	- ruler 	-cutting matt', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (113, 25, 2, 'module-images/instruction-img/junk/pinwheel-step-2.png', 'Collect pieces	 	- Cut 2”x2” inch square out of cardboard. 	- Cut two 1”x 0.5” rectangle out of foam. <br><br>Mark the center of the cardboard by drawing 2 diagonal lines from the corners.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (114, 25, 3, 'module-images/instruction-img/junk/pinwheel-step-3.png', 'Poke a hole 	- Use your pencil to poke a hole in the middle of the cardboard square 	- Position the scissors so your pencil pokes through the cardboard between the scissor blade.   (Not into your finger.)', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (115, 25, 4, 'module-images/instruction-img/junk/pinwheel-step-4.png', 'Glue coffee stirrer sticks to the cardboard.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (116, 25, 5, 'module-images/instruction-img/junk/pinwheel-step-5.png', 'Take your chopstick put it though the hole of your base Put pinwheel on your chopstick <br> Done!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (122, 21, 1, 'module-images/instruction-img/code/scratch-rocket-controls-step-1.png', 'Click on the link to the scratch program.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (123, 21, 2, 'module-images/instruction-img/code/scratch-rocket-controls-step-2.png', 'After getting to the MIT Scratch site, click on the "look inside" button to see the code.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (124, 21, 3, 'module-images/instruction-img/code/scratch-rocket-controls-step-3.png', 'Edit the code to your liking!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (125, 26, 1, 'module-images/instruction-img/code/placemark.jpg', 'Click on this link:<br><a href="http://www.build-it-yourself.com/website-templates/template-table.html" target="new">Click on this link</a>', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (126, 27, 1, 'module-images/instruction-img/lego/steering-chassis-step-1.png', 'Start by connecting the pieces shown to a 9 hole bar.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (127, 27, 2, 'module-images/instruction-img/lego/steering-chassis-step-2.png', 'Set the first piece you made aside for now. Attach a 3 hole bar to a motor with a peg.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (128, 27, 3, 'module-images/instruction-img/lego/steering-chassis-step-3.png', 'Using a peg and an axle, secure the L piece to the motor. Also insert another axle through the L piece.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (129, 27, 4, 'module-images/instruction-img/lego/steering-chassis-step-4.png', 'Attach the gears and wheels as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (130, 27, 5, 'module-images/instruction-img/lego/steering-chassis-step-5.png', 'Secure an 11 hole bar to the chassis as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (131, 27, 6, 'module-images/instruction-img/lego/steering-chassis-step-6.png', 'Attach the angle connector with pegs as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (132, 27, 7, 'module-images/instruction-img/lego/steering-chassis-step-7.png', 'Mirror steps 1 to 6 to make the other half of the chassis.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (133, 27, 8, 'module-images/instruction-img/lego/steering-chassis-step-8.png', 'Make the axle connector that will connect the two halves of the chassis.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (134, 27, 9, 'module-images/instruction-img/lego/steering-chassis-step-9.png', 'Connect the two halves of the chassis together.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (135, 27, 10, 'module-images/instruction-img/lego/steering-chassis-step-10.png', 'Attach a 7 hole bar across the angle connectors and you are DONE!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (136, 28, 1, 'module-images/instruction-img/lego/coaster-wheel-step-1.png', 'Start by building the column as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (137, 28, 2, 'module-images/instruction-img/lego/coaster-wheel-step-2.png', 'Put two axles through the connector piece.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (138, 28, 3, 'module-images/instruction-img/lego/coaster-wheel-step-3.png', 'Connect the two pieces you just made.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (139, 28, 4, 'module-images/instruction-img/lego/coaster-wheel-step-4.png', 'Secure this together with a yellow spacer. ', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (140, 28, 5, 'module-images/instruction-img/lego/coaster-wheel-step-5.png', 'Begin constructing some structure for the wheel.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (141, 28, 6, 'module-images/instruction-img/lego/coaster-wheel-step-6.png', 'Add the pieces shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (142, 28, 7, 'module-images/instruction-img/lego/coaster-wheel-step-7.png', 'Attach this to the part that you made before.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (143, 28, 8, 'module-images/instruction-img/lego/coaster-wheel-step-8.png', 'Make the other half of the structure.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (144, 28, 9, 'module-images/instruction-img/lego/coaster-wheel-step-9.png', 'Attach as shown to complete the structural part of the coaster wheel.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (145, 28, 10, 'module-images/instruction-img/lego/coaster-wheel-step-10.png', 'Make the wheels.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (146, 28, 11, 'module-images/instruction-img/lego/coaster-wheel-step-11.png', 'Attach the wheels and you are done!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (147, 29, 1, 'module-images/instruction-img/junk/junk-chassis-step-1.png', '	Materials 	- 3 piece of cardboard 	- 1 orange straw 	- 1 green straw 	- 2 coffee stirrer sticks <br><br>	Tools 	- tape 	- scissors 	- pencil 	- hot glue gun 	- glue stick 	- ruler 	-cutting mat', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (148, 29, 2, 'module-images/instruction-img/junk/junk-chassis-step-2.png', 'Mark and Cut wheels	 	- Mark 2”x2” inch square out of cardboard. 	 	- Mark X down center, draw circle', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (149, 29, 3, 'module-images/instruction-img/junk/junk-chassis-step-3.png', 'Cut out squares and cut out circles', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (150, 29, 4, 'module-images/instruction-img/junk/junk-chassis-step-4.png', '-Mark a line down the center and across the center like a plus sign (+) 	 	-Cut in to 4 equal parts', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (151, 29, 5, 'module-images/instruction-img/junk/junk-chassis-step-5.png', 'Punch hole in the center of cut pieces', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (152, 29, 6, 'module-images/instruction-img/junk/junk-chassis-step-6.png', 'Mark 6 inches on green straw and cut  	 	-Cut 6inch green straw into 2 even pieces 	 	-Cut orange straw into 2 even pieces', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (153, 29, 7, 'module-images/instruction-img/junk/junk-chassis-step-7.png', 'Foam Washers  	 	-Cut 4 long strips out of your 2x2 piece of foam', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (154, 29, 8, 'module-images/instruction-img/junk/junk-chassis-step-8.png', '-Take one of the long strips and wrap it around the end of your short Orange straw 	 	-Hot glue the foam strip into place, this foam washer will be what your wheel is sitting on.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (155, 29, 9, 'module-images/instruction-img/junk/junk-chassis-step-9.png', '4 wheels   	 	4 square cardboard washers  	2 cut green straws  	2 orange straws with foam washers on the end	', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (156, 29, 10, 'module-images/instruction-img/junk/junk-chassis-step-10.png', '-Put cardboard washer on to the orange straw 	 	-Slide green straw over the orange on to keep the washer in place.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (157, 29, 11, 'module-images/instruction-img/junk/junk-chassis-step-11.png', '	-Hot glue foam strip to the other end of your axel to complete your axel (repeat step 7)', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (158, 29, 12, 'module-images/instruction-img/junk/junk-chassis-step-12.png', 'Hot glue the center of your wheel 	 	-Place the foam end of your axel on the the center of the wheel. 	 	-Do the same for the other side of your axel', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (159, 29, 13, 'module-images/instruction-img/junk/junk-chassis-step-13.png', 'Hot glue the completed axles with wheels to the bottom end of your chasis 	 	-Hot glue coffee stirrer stick on to the top of your chasis  	 	-Take your complete chassis for a test run and make adjustments as needed', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (160, 30, 1, 'module-images/instruction-img/lego/corkscrew-gear-train-step-1.png', 'Start by assembling the parts on the 9 hole beam as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (161, 30, 2, 'module-images/instruction-img/lego/corkscrew-gear-train-step-2.png', 'Attach the cross beam and the angle beam.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (162, 30, 3, 'module-images/instruction-img/lego/corkscrew-gear-train-step-3.png', 'Secure another 9 hole beam with pegs.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (163, 30, 4, 'module-images/instruction-img/lego/corkscrew-gear-train-step-4.png', 'Put the corkscrew gear on an axle and hold it in place with the yellow spacers.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (164, 30, 5, 'module-images/instruction-img/lego/corkscrew-gear-train-step-5.png', 'Slide the assembly through the hole in the cross beam.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (165, 30, 6, 'module-images/instruction-img/lego/corkscrew-gear-train-step-6.png', 'Place a cross beam on the other side of the axle you just added and slide a 3M axle through its bottom hole. Then add a 3M beam as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (166, 30, 7, 'module-images/instruction-img/lego/corkscrew-gear-train-step-7.png', 'Add the pegs and 7 hole beam as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (167, 30, 8, 'module-images/instruction-img/lego/corkscrew-gear-train-step-8.png', 'Attach the 3 hole beam and slide the axle through as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (168, 30, 9, 'module-images/instruction-img/lego/corkscrew-gear-train-step-9.png', 'Add the gear and a spacer to the two sides of the axle.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (169, 30, 10, 'module-images/instruction-img/lego/corkscrew-gear-train-step-10.png', 'Turn your model to the other side and add the grey gear.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (170, 30, 11, 'module-images/instruction-img/lego/corkscrew-gear-train-step-11.png', 'Attach the pieces as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (171, 30, 12, 'module-images/instruction-img/lego/corkscrew-gear-train-step-12.png', 'Attach the pieces as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (172, 30, 13, 'module-images/instruction-img/lego/corkscrew-gear-train-step-13.png', 'Attach the pieces as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (173, 30, 14, 'module-images/instruction-img/lego/corkscrew-gear-train-step-14.png', 'Slide the axle through as shown, and you are done!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (174, 31, 1, 'module-images/instruction-img/lego/1-9-gear-train-step-1.png', 'Attach 2 angular beams to the motor.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (175, 31, 2, 'module-images/instruction-img/lego/1-9-gear-train-step-2.png', 'Put an axle through the angle beams and attach two L beams. These will be the “legs” of this motor mount.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (176, 31, 3, 'module-images/instruction-img/lego/1-9-gear-train-step-3.png', 'Attach 2 angular beams to the back of the motor and secure it with an axle.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (177, 31, 4, 'module-images/instruction-img/lego/1-9-gear-train-step-4.png', 'Stick 3 pegs into the holes as shown and put an axle through the motor.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (178, 31, 5, 'module-images/instruction-img/lego/1-9-gear-train-step-5.png', 'Attach a 13 hole beam to the motor and add the pegs as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (179, 31, 6, 'module-images/instruction-img/lego/1-9-gear-train-step-6.png', 'Do the same on the other side.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (180, 31, 7, 'module-images/instruction-img/lego/1-9-gear-train-step-7.png', 'Attach the gear as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (181, 31, 8, 'module-images/instruction-img/lego/1-9-gear-train-step-8.png', 'Attach the large gears.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (182, 31, 9, 'module-images/instruction-img/lego/1-9-gear-train-step-9.png', 'Add the spacer and small gear.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (183, 31, 10, 'module-images/instruction-img/lego/1-9-gear-train-step-10.png', 'Attach this piece to secure the model together.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (184, 31, 11, 'module-images/instruction-img/lego/1-9-gear-train-step-11.png', 'Do the same on the other side.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (185, 32, 1, 'module-images/instruction-img/minecraft/minecraft-double-door-step-1.png', 'Start out by placing down two doors. ', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (186, 32, 2, 'module-images/instruction-img/minecraft/minecraft-double-door-step-2.png', 'Then dig out a 6 x 3 x 2 area as shown in the picture. You will need space for that redstone circuitry.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (187, 32, 3, 'module-images/instruction-img/minecraft/minecraft-double-door-step-3.png', 'Make a loop of redstone that connects to the block below each door, as shown in the picture.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (188, 32, 4, 'module-images/instruction-img/minecraft/minecraft-double-door-step-4.png', 'Place a button down to check that it works. The button can be connected to any part of the redstone loop.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (189, 32, 5, 'module-images/instruction-img/minecraft/minecraft-double-door-step-5.png', 'You can now cover over the redstone with whatever your flooring is. NOTE: The two blocks to the left and right of the doors are not filled in for a reason.  If you fill them in, the circuit will be cut off and your door will not work.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (190, 32, 6, 'module-images/instruction-img/minecraft/minecraft-double-door-step-6.png', 'Instead cover over those blocks by putting down the walls of your house.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (191, 33, 1, 'module-images/instruction-img/minecraft/minecraft-doorbell-step-1.png', 'First, you need a door that opens with the press of a button. Alternatively, this can also work with door that open with pressure plates.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (192, 33, 2, 'module-images/instruction-img/minecraft/minecraft-doorbell-step-2.png', 'Dig some space underground and make a line of redstone that leads out from the button. Make sure that the redstone line travels at least 3 blocks below the button. Doorbells need space!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (193, 33, 3, 'module-images/instruction-img/minecraft/minecraft-doorbell-step-3.png', 'Hollow out a bit of space underground and place some notes blocks down. In this example, we use three but you can use any number you want. Make sure that the note block have one empty space between each other and an empty space above them or else this will not work. Connect the redstone line from the button to each note block.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (194, 33, 4, 'module-images/instruction-img/minecraft/minecraft-doorbell-step-4.png', 'Place repeaters in spaces shown to create delays.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (195, 33, 5, 'module-images/instruction-img/minecraft/minecraft-doorbell-step-5.png', 'You can right click on the repeaters to change the delay time and right click the note block to change its pitch. Experiment around to get different tunes!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (196, 33, 6, 'module-images/instruction-img/minecraft/minecraft-doorbell-step-6.png', 'When you are done, cover your circuitry up, but be sure to avoid cutting off the redstone line.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (197, 34, 1, 'module-images/instruction-img/minecraft/minecraft-redstone-lock-step-1.png', 'Start by placing down two repeaters, with one repeater pointing into the side of the other. The repeater that is facing the other one will be the lock. We will call this one repeater A. The repeater that is being pointed at will operate your redstone device. We will call this one Repeater B.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (198, 34, 2, 'module-images/instruction-img/minecraft/minecraft-redstone-lock-step-2.png', 'Place down a button that leads into the input side of repeater A.  The output of repeater A will connect to your redstone device. As an example, we have placed down a lamp.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (199, 34, 3, 'module-images/instruction-img/minecraft/minecraft-redstone-lock-step-3.png', 'To finish the lock, place a lever as an input to repeater B. When the lever is on, you should see a bar go across repeater A. This locks repeater A and it will no longer respond to inputs as long as repeater B is on.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (200, 35, 1, 'module-images/instruction-img/lego/carabiner-step-1.jpg', 'These are the pieces you will need.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (201, 36, 1, 'module-images/instruction-img/lego/hook-grabber-step-1.png', 'Step 1', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (202, 36, 2, 'module-images/instruction-img/lego/hook-grabber-step-2.png', 'Step 2', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (203, 36, 3, 'module-images/instruction-img/lego/hook-grabber-step-3.png', 'Step 3', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (204, 36, 4, 'module-images/instruction-img/lego/hook-grabber-step-4.png', 'Step 4', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (205, 36, 5, 'module-images/instruction-img/lego/hook-grabber-step-5.png', 'Step 5', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (206, 36, 6, 'module-images/instruction-img/lego/hook-grabber-step-6.png', 'Step 6', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (207, 36, 7, 'module-images/instruction-img/lego/hook-grabber-step-7.png', 'Step 7', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (208, 36, 8, 'module-images/instruction-img/lego/hook-grabber-step-8.png', 'Step 8', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (209, 36, 9, 'module-images/instruction-img/lego/hook-grabber-step-9.png', 'Step 9', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (210, 36, 10, 'module-images/instruction-img/lego/hook-grabber-step-10.png', 'Step 10', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (211, 35, 1, 'module-images/instruction-img/lego/carabiner-step-1.jpg', 'You will need these pieces to create this module.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (212, 35, 2, 'module-images/instruction-img/lego/carabiner-step-2.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (213, 35, 3, 'module-images/instruction-img/lego/carabiner-step-3.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (214, 35, 4, 'module-images/instruction-img/lego/carabiner-step-4.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (215, 35, 5, 'module-images/instruction-img/lego/carabiner-step-5.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (216, 35, 6, 'module-images/instruction-img/lego/carabiner-step-6.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (217, 35, 7, 'module-images/instruction-img/lego/carabiner-step-7.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (218, 35, 8, 'module-images/instruction-img/lego/carabiner-step-8.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (219, 35, 9, 'module-images/instruction-img/lego/carabiner-step-9.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (220, 35, 10, 'module-images/instruction-img/lego/carabiner-step-10.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (221, 35, 11, 'module-images/instruction-img/lego/carabiner-step-11.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (222, 35, 12, 'module-images/instruction-img/lego/carabiner-step-12.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (223, 35, 13, 'module-images/instruction-img/lego/carabiner-step-13.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (224, 35, 14, 'module-images/instruction-img/lego/carabiner-step-14.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (225, 35, 15, 'module-images/instruction-img/lego/carabiner-step-15.jpg', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (226, 35, 16, 'module-images/instruction-img/lego/carabiner-step-16.jpg', 'You have now finished this module.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (227, 37, 1, 'module-images/instruction-img/minecraft/hidden-door-1-x-1-step-1.png', 'Start with a 1x1 hole in the ground. You should place ladders on the side so you can climb down the hole. Be sure not to place a ladder at the very top block. You will see why in the next step.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (228, 37, 2, 'module-images/instruction-img/minecraft/hidden-door-1-x-1-step-2.png', 'Place a sticky piston positioned as shown. When activated, it will push the block to cover up the hole.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (229, 37, 3, 'module-images/instruction-img/minecraft/hidden-door-1-x-1-step-3.png', 'Connect a line of redstone to the sticky piston.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (230, 37, 4, 'module-images/instruction-img/minecraft/hidden-door-1-x-1-step-4.png', 'Now you can add a switch to the other end of the redstone line that will activate the sticky piston.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (231, 37, 5, 'module-images/instruction-img/minecraft/hidden-door-1-x-1-step-5.png', 'Finally, figure out a way to build your house so that the walls will cleverly hide the redstone and the piston.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (233, 39, 1, 'module-images/instruction-img/lego/robot-catapult-step-1.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (234, 39, 2, 'module-images/instruction-img/lego/robot-catapult-step-2.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (235, 39, 3, 'module-images/instruction-img/lego/robot-catapult-step-3.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (236, 39, 4, 'module-images/instruction-img/lego/robot-catapult-step-4.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (237, 39, 5, 'module-images/instruction-img/lego/robot-catapult-step-5.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (238, 39, 6, 'module-images/instruction-img/lego/robot-catapult-step-6.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (239, 39, 7, 'module-images/instruction-img/lego/robot-catapult-step-7.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (240, 39, 8, 'module-images/instruction-img/lego/robot-catapult-step-8.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (241, 39, 9, 'module-images/instruction-img/lego/robot-catapult-step-9.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (242, 39, 10, 'module-images/instruction-img/lego/robot-catapult-step-10.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (243, 39, 11, 'module-images/instruction-img/lego/robot-catapult-step-11.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (244, 39, 12, 'module-images/instruction-img/lego/robot-catapult-step-12.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (245, 39, 13, 'module-images/instruction-img/lego/robot-catapult-step-13.png', '', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (246, 40, 1, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-1.png', 'Start by inserting the two pegs as shown into a motor.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (247, 40, 2, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-2.png', 'Attach axle connectors.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (248, 40, 3, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-3.png', 'Connect a second motor.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (249, 40, 4, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-4.png', 'Insert 4 black pegs into the motors.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (250, 40, 5, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-5.png', 'Insert the axles into the motors and hold them in place with the gray spacers.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (251, 40, 6, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-6.png', 'Connect two 13-hole beams to the pegs. Then connect the angle connectors as shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (252, 40, 7, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-7.png', 'Insert the ten black pegs as shown on your chassis.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (253, 40, 8, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-8.png', 'Take three 9-hole beams and attach them to the places shown.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (254, 40, 9, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-9.png', 'Attach two 5x3 angle beams to the remaining black pegs.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (255, 40, 10, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-10.png', 'Insert two axles into the motors and secure them with spacers.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (256, 40, 11, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-11.png', 'Insert a brown peg into each side. Make sure that this is a peg that has low friction!', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (257, 40, 12, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-12.png', 'Insert the appropriately sized gears into the axles.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (258, 40, 13, 'module-images/instruction-img/lego/4-wheel-drive-chassis-step-13.png', 'Add wheels to the axles.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (259, 41, 1, 'module-images/instruction-img/minecraft/torch-pulser-step-1.png', 'Start with a redstone torch placed on the side of a block.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (260, 41, 2, 'module-images/instruction-img/minecraft/torch-pulser-step-2.png', 'Loop a line of redstone around and connect it back to the torch. For an instant, you will notice that the redstone flashes on and off very quickly before the torch burns out. When a redstone torch turns on and off too quickly, it will burn out, causing it to turn off.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (261, 41, 3, 'module-images/instruction-img/minecraft/torch-pulser-step-3.png', 'To fix this, place a redstone repeater into the circuit and right click on it to add a delay. This slows the signal down enough so that the torch does not burn out, providing a sustainable alternating signal. You can change the delay to make the frequency faster or slower.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (262, 41, 4, 'module-images/instruction-img/minecraft/torch-pulser-step-4.png', 'Finally, add a switch that connects to any part of the circuit. Turning the switch on will hold the entire circuit in the on state, therefore stopping it from alternating.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (263, 42, 1, 'module-images/instruction-img/minecraft/ganged-and-gate-step-1.png', 'Start by making your inputs. The picture shows three, but you can make as many or as few as you need. Placing a redstone torch on the block with the lever inverts the signal.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (264, 42, 2, 'module-images/instruction-img/minecraft/ganged-and-gate-step-2.png', 'Form a line of redstone that connects all of the torches.', NULL, NULL, NULL);
INSERT INTO `steps` VALUES (265, 42, 3, 'module-images/instruction-img/minecraft/ganged-and-gate-step-3.png', 'Add a torch to any spot on the back of the blocks shown. This torch is your output.', NULL, NULL, NULL);
