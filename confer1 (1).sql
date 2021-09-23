-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2021 at 05:13 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `confer1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `notifid` int(11) NOT NULL,
  `notification` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`notifid`, `notification`, `date`) VALUES
(6, 'user <b>kiran</b> joined Confer Space', '2019-05-03 13:23:59'),
(19, 'user <b>sheela</b> joined Confer Space', '2019-05-22 23:20:25'),
(20, 'user <b>ajanta</b> joined Confer Space', '2019-05-22 23:56:58'),
(21, 'user <b>ankit</b> joined Confer Space', '2020-03-02 13:22:16'),
(22, 'user <b>alokk</b> joined Confer Space', '2020-03-02 13:23:43');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `rating` float DEFAULT NULL,
  `qid` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `rating`, `qid`, `userid`) VALUES
(4, 'Electric Vehicles offer significantly lower fuel costs compared with traditional gas-powered cars. On average, a gallon of gasoline costs about twice as much as the comparable cost to run an electric Vehicles. That’s especially true if drivers take advantage of off-peak electricity rates while charging at home. And electric rates tend to be more stable than oil prices. (Compare how much you’d save in your state using the Department of Energy’s e Gallon tool.)', 4, 1, 'sinchana'),
(35, 'Electric Vehicles offer significantly lower fuel costs compared with traditional gas-powered cars. On average, a gallon of gasoline costs about twice as much as the comparable cost to run an electric Vehicles. That’s especially true if drivers take advantage of off-peak electricity rates while charging at home. And electric rates tend to be more stable than oil prices. (Compare how much you’d save in your state using the Department of Energy’s e Gallon tool.)', 3, 69, 'sinchana'),
(36, 'Yes. Your electric vehicle will usually come with a tri-plug adaptor cable which can be plugged into mains electricity at home, though this isn\'t the most efficient way of charging your vehicle. A wallbox charger will recharge your EV much quicker and get you back up to 100% much sooner. You can save money on the installation of an at-home charging station through the Electric Vehicle Homecharge Scheme (EVHS).', 2, 70, 'saanvi'),
(37, 'The types of electric vehicles that are capable of charging themselves are called Self-Charging Hybrids (also referred to as Mild Hybrids) and Plug-In Hybrids. Here, the hybrid vehicle will use regenerative braking technology to charge a small electric motor that will support the petrol engine.\r\n\r\nA Plug-In Hybrid Electric Vehicle (PHEV) can also be charged using a plug-in charging point and provides a sufficient number of pure-electric miles for short trips.\r\n', 4.5, 71, 'sinchana'),
(38, '       This depends on how and where you charge. Using a high-voltage DC charger at a public         charging station, you can charge your battery from 20% to 80% in 42 minutes. Using an installed battery wall-box at home, you’ll be able to drive off with a fully recharged battery after around 9.5 hours*.', 3, 72, 'alokk'),
(39, ' There are thousands of utilities each with their own policy on high power charging, \r\nwhich can either include demand chargers or not - there\'s no uniform method, but what we see now \r\nwhich has been a very effective, that is to provide energy only rates for low utilization stations. In \r\nexchange for a higher cost per kilowatt hour on a low use station, you can get reasonable amounts of, at \r\na reasonable cost. The problem is with a very low utilization station and high demand charge, the cost \r\nper kilowatt hour is prohibitive and it ruins the business model for a nascent network. Having two \r\ndifferent rate structures, one is an energy only rate in the beginning and then you can switch to demand\r\ncharges later would be a good strategy and it\'s being pursued in California utilities.\r\n', 3, 73, 'anisa'),
(40, 'Yes, you can even charge your electric car in the rain with no fear of electric shock or damage to the car. Both the car and the charger itself have several levels of protection for these cases. For example, the current doesn’t run until it’s securely plugged into the socket and both car and charger aren’t sure that everything’s ready.\r\n\r\nConversely, when you pull the cable from the socket, the electricity stops flowing before the socket is exposed. In the same way, it’s also completely safe to take your electric car through all types of car washes. And as for your next question – no, when an electric car falls into a pond or pool, nothing happens to the people or fish.\r\n', 4, 74, 'askeee'),
(41, 'Battery life in electric vehicles is very long. Experience from countries where electric cars are widely used, even as taxis, for example, shows that the batteries maintain 75 to 90% of their original capacity even after 200,000 or 300,000 kilometers, depending on the technology used. Moreover, with the development of eMobility, the cost of replacing batteries is rapidly declining. Batteries can be exchanged by parts, and warranty and service programs are developing to deal with these costs.\r\n\r\nEven batteries that are no longer suitable for driving a car are still very valuable. They still have most of their capacity, making them increasingly useful in community and industrial projects. Recycling is \r\nalso being rapidly developed in this sector. Traditional lead car batteries in onventional cars are recycled up to nearly 100%; in electric cars this process is much more demanding, but the materials obtained are also much more valuable.\r\n', 3.5, 75, 'alokk'),
(42, 'Like conventional cars, electric cars also go through standard crash tests with good results. Batteries are not explosive in an accident, and electric cars can also operate without a clutch and without gearbox or engine oil, which is usually a cause of fires in a crash. Overall, they have much fewer components, which further reduces the likelihood of failure. The batteries are completely insulated from the rest of the car, and in the event of an accident, the whole system is disconnected.\r\n\r\nThe batteries even have special cooling. At the same time, batteries have very good thermal resistance, so even if they do ignite when they happen to break, the course of the fire is usually milder, although they take longer to extinguish (using ordinary water from a greater distance).\r\n', 4, 76, 'lavanya'),
(43, 'The boom of electric cars and autonomous control arrived at the same time, but these are two independent technologies. Conventional cars also offer autonomous control, and most of the current electric vehicles can get by without it. Both of these trends represent the future, however, so they are being connected. The degree of autonomous driving falls into one of five levels, depending on the number of activities the smart car can handle on behalf of the driver.\r\n\r\nAt present, most cars are at level one or two, where adaptive cruise control can accelerate and brake and even help with the steering. At level three, the driver doesn’t even have to keep his eyes on the road in selected areas, such as long-distance motorways. This is the level of autonomous driving that the ŠKODA VISION E concept is capable of, but the laws that permit this are still under preparation. The biggest breakthrough will be level four, when the car can handle the entire journey without driver intervention. The fifth level also includes off-road driving and other extreme conditions.\r\n', 5, 77, 'anuj'),
(44, 'Yes. Your electric vehicle will usually come with a tri-plug adaptor cable which can be plugged into mains electricity at home, though this isn\'t the most efficient way of charging your vehicle. A wallbox charger will recharge your EV much quicker and get you back up to 100% much sooner. You can save money on the installation of an at-home charging station through the Electric Vehicle Homecharge Scheme (EVHS).\r\n\r\nEVHS provides grant funding to domestic properties across the UK who wish to install electric vehicle charging points. The grant can cover up to 75% of installation costs.\r\n\r\nWe also run offers from time to time offering fully installed charge stations at a fixed price and sometimes for free, so keep an eye out on on our electric car offers!\r\n', 4, 78, 'sinchana'),
(45, 'There are 3 different ways you can charge your electric or plug-in hybrid vehicle:\r\n\r\n1. Mains electricity\r\nYou can charge your electric or hybrid car using your main electricity at home. Your vehicle will come with an adaptor cable to do this.\r\n\r\n2. At-home wallbox\r\nYou may choose to get a wall box installed at your home for the most convenient type of charging. It’s also surprisingly cost effective and many manufacturers may offer installation for free or at a fixed rate.\r\n\r\nCharging speeds vary depending on the power of your charge station, so be aware of this when choosing your wallbox (the higher the voltage, the faster your vehicle will regain its electric miles).\r\n\r\n3. Public charging station\r\nYou’ll also be able to charge your car on-the-go by making use of public charging stations. Again, different power chargers will provide different charging times. At the moment, there are approximately 8,000 rapid charging connectors in the UK.\r\n', 5, 79, 'lavanya'),
(46, 'Frequently filling up on gas can be a real budget buster. While every car is different, electric vehicle owners are likely to spend about 60% less to power their ride. This translates to an annual savings of about $800 to $1,300 — or $6,000 to $10,000 over the life of your car.', 3, 80, 'saanvi'),
(47, 'Both types are equipped with a socket for charging, but otherwise they’re fundamentally different. The plug-in hybrid, sometimes referred to as PHEV (Plug-in Hybrid Electric Vehicle), combines a classic internal combustion engine with an electric motor which can be recharged from an electrical outlet as well as energy recovery while driving. Even the PHEV can be driven in pure electric mode, but the range is limited to 30 to 50 kilometers.\r\n\r\nToday’s leading-edge plug-in hybrids, however, manage their energy so efficiently that they can utilize the topography of route navigation to choose the best sections for driving with the internal combustion engine, in electric mode, and a combination of both. The result is low fuel consumption and a quiet electric drive, especially around the city. Electric cars, on the other hand, are powered by electric motors only. Their batteries have a much higher capacity, which means that the range is up to ten times longer on electric power in contrast to the PHEV.\r\n', 5, 81, 'alokk'),
(48, 'With every generation of electric vehicles, the range for a single charge gets better. The ŠKODA VISION E study anticipates a range of up to 500 kilometers, which is sufficient for full and unrestricted travel. Just like cars with a combustion engine whose consumption in winter slightly increases, electric cars also have to use more energy in cold weather. What’s more, they’re so energy efficient that the engine generates virtually no residual heat, so the cabin heating is fully electric. The batteries are also warmed up to maintain their properties while driving. But all this can be compensated for in electric cars.\r\n\r\nFor example, a car can be heated while charging using smart applications, thus reducing the energy consumption while driving. Advanced heating systems in modern cars are also exceptionally economical, so the reduction in driving distance is not so drastic – in fact, Norway or Canada are two countries with the largest number of electric vehicles.\r\n', 5, 82, 'lavanya'),
(49, 'Battery life in electric vehicles is very long. Experience from countries where electric cars are widely used, even as taxis, for example, shows that the batteries maintain 75 to 90% of their original capacity even after 200,000 or 300,000 kilometers, depending on the technology used. Moreover, with the development of eMobility, the cost of replacing batteries is rapidly declining. Batteries can be exchanged by parts, and warranty and service programs are developing to deal with these costs.\r\n\r\nEven batteries that are no longer suitable for driving a car are still very valuable. They still have most of their capacity, making them increasingly useful in community and industrial projects. Recycling is \r\nalso being rapidly developed in this sector. Traditional lead car batteries in onventional cars are recycled up to nearly 100%; in electric cars this process is much more demanding, but the materials obtained are also much more valuable.\r\n', 5, 83, 'sinchana'),
(50, 'Like conventional cars, electric cars also go through standard crash tests with good results. Batteries are not explosive in an accident, and electric cars can also operate without a clutch and without gearbox or engine oil, which is usually a cause of fires in a crash. Overall, they have much fewer components, which further reduces the likelihood of failure. The batteries are completely insulated from the rest of the car, and in the event of an accident, the whole system is disconnected.\r\n\r\nThe batteries even have special cooling. At the same time, batteries have very good thermal resistance, so even if they do ignite when they happen to break, the course of the fire is usually milder, although they take longer to extinguish (using ordinary water from a greater distance).\r\n\r\n', 4, 84, 'lavanya'),
(52, 'Electric vehicles must meet the same federal safety standards as other cars. And you won\'t be hauling around gallons of combustible fuel wherever you go.', 3, 86, 'alokk'),
(53, 'Right now, it\'s still tough to say. Electric cars tend to be more expensive than their traditional counterparts. And you\'ll have to eventually replace the batteries in your car, which can cost thousands of dollars. On the other hand, electricity is cheaper than gasoline and you\'ll usually save money on a per-mile basis. And some regions -- like California -- offer major tax incentives and rebates for drivers who purchase electric vehicles.', 3.5, 87, 'alokk'),
(54, 'What Kind of Do You Need to Perform on Electric Cars?', 2, 85, 'askeee'),
(55, 'Recharging the vehicle regularly is important as is replacing the battery when it nears the end of its life. Otherwise, much of the maintenance you need to do is the same as for gas-powered cars.', 2.5, 87, 'alokk'),
(56, 'That depends on the type of battery your car uses. Lead-acid batteries, the kind that you find in gas-powered vehicles, may not last a full year. Other types of batteries -- like lithium-iron-phosphate batteries -- can last up to 10 years or longer.', 2, 88, 'sinchana'),
(57, 'It\'s a loaded question, but in general the answer is yes. Electric vehicles need to be recharged and must draw that electricity from somewhere else. If the electricity comes from a coal-burning power plant, the electric vehicle is still part of a pollution cycle even though it doesn\'t emit greenhouse gases itself. Even so, it\'s easier to control emissions on a single point of origin -- the power plant -- than it is on a fleet of vehicles on the road. And electric cars can also get electricity from renewable resources such as hydro-electric facilities or solar cells.', 3, 89, 'saanvi'),
(58, ' There are thousands of utilities each with their own policy on high power charging, \r\nwhich can either include demand chargers or not - there\'s no uniform method, but what we see now \r\nwhich has been a very effective, that is to provide energy only rates for low utilization stations. In \r\nexchange for a higher cost per kilowatt hour on a low use station, you can get reasonable amounts of, at \r\na reasonable cost. The problem is with a very low utilization station and high demand charge, the cost \r\nper kilowatt hour is prohibitive and it ruins the business model for a nascent network. Having two \r\ndifferent rate structures, one is an energy only rate in the beginning and then you can switch to demand\r\ncharges later would be a good strategy and it\'s being pursued in California utilities.\r\n', 2, 90, 'lavanya'),
(59, 'Electric Vehicles offer significantly lower fuel costs compared with traditional gas-powered cars. On average, a gallon of gasoline costs about twice as much as the comparable cost to run an electric Vehicles. That’s especially true if drivers take advantage of off-peak electricity rates while charging at home. And electric rates tend to be more stable than oil prices. (Compare how much you’d save in your state using the Department of Energy’s e Gallon tool.)', NULL, 91, 'alokk'),
(60, 'I was considering to buy Nexon EV as it have good range of nearly 300km.\r\n\r\nI live in Mumbai so I assumed I\'d come back from Lonavala with full power (200–220km)\r\n\r\nBut only problem I\'ve is charging spot. My apartment does not have charging points & highways also don\'t have super charger like Tesla have in US & some other countries.\r\n\r\nI\'d love to consider electric car once every petrol pump has charging point too or atleast few have just like CNG.\r\n\r\nI\'d also consider ev when my society consider my request for charging near my parking spot.\r\n\r\nTill then I\'m gonna hang back to my petrol car', NULL, 92, 'alokk'),
(61, 'Electric vehicles fall into three main categories:\r\n\r\nBattery electric vehicles are powered by electricity stored in a battery pack.\r\nPlug-in hybrids combine a gasoline or diesel engine with an electric motor and large rechargeable battery.\r\nFuel cell vehicles split electrons from hydrogen molecules to produce electricity to run the motor.\r\nIt’s more than just passenger cars now — from New York to Mississippi, you may find yourself on a quiet, zipping electric transit bus. The first electric fire truck in the nation will be welcomed by Angelenos in 2021 — and in the coming years, electric sanitation trucks will be quietly gliding through neighborhoods to pick up garbage and recycling, and more electric trucks will be delivering packages from warehouses to homes, air pollution-free.\r\nCharging up an electric car in St. Petersburg, Florida (left). An electric heavy duty truck used to move freight at the Port of Long Beach. California passed the nation\'s first electric truck standard in June 2020.', NULL, 93, 'alokk'),
(62, '•	Lower Operating Costs\r\n\r\nEVs have overall lower fueling costs.\r\n\r\nMost EVs have lower maintenance costs because they have fewer and simpler components and don’t require fluid changes or tuneups.\r\n\r\nWhen combined with a home solar system, “fuel” costs could be completely eliminated, although it can take some time to recoup the cost of installing solar panels.\r\n\r\n•	Less Pollution\r\n\r\nEVs produce no particulate or smog-causing tailpipe emissions, which are a significant contributing factor in causing asthma and other air pollution-related illnesses.\r\n\r\nEVs have lower carbon emissions than gasoline powered vehicles over their service life.\r\n\r\n•	Unique Features\r\n\r\nEVs are quiet because of their lack of engine noise.\r\n\r\nMost EVs provide instant power and can be fun to drive.\r\n\r\nCharging at home is convenient.\r\n', NULL, 94, 'alokk');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `question` text NOT NULL,
  `rating` float DEFAULT NULL,
  `userid` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `rating`, `userid`, `date`) VALUES
(1, 'Why Should I Buy an Electric Vehicles?', 3, 'lavanya', '2019-04-27 09:32:46'),
(69, '1.	Why Should I Buy an Electric Vehicles?', 3, 'sinchana', '2021-09-22 12:55:20'),
(70, 'Can I charge my electric car at home?', 4, 'lavanya', '2021-09-22 13:01:44'),
(71, '	Can electric cars charge themselves?', 4.5, 'lavanya', '2021-09-22 13:18:12'),
(72, 'How long does it take to charge an electric car?', 3, 'alokk', '2021-09-22 13:19:07'),
(73, 'What could states or utilities do to help lower costs of demand charges for fast charging and make fast charging more accessible?', 4, 'lavanya', '2021-09-22 13:27:42'),
(74, 'CAN I CHARGE AN ELECTRIC CAR IN THE RAIN?', 4, 'lavanya', '2021-09-22 13:28:34'),
(75, 'HOW MANY KILOMETERS OR RECHARGES DOES THE BATTERY LAST FOR?', 4, 'lavanya', '2021-09-22 13:29:32'),
(76, 'AREN’T ELECTRIC CARS DANGEROUS IN AN ACCIDENT?', 3.5, 'saanvi', '2021-09-22 13:30:32'),
(77, '	DO ALL ELECTRIC CARS HAVE AUTONOMOUS DRIVING? WHAT IS THIS EXACTLY?', 4, 'lavanya', '2021-09-22 13:31:34'),
(78, '	Can I charge my electric car at home?', 3.5, 'alokk', '2021-09-22 13:32:15'),
(79, '	How can I charge an electric car?', 4, 'sinchana', '2021-09-22 13:33:20'),
(80, 'Are electric cars worth their price? Why?', 5, 'sinchana', '2021-09-22 13:35:26'),
(81, '	WHAT’S THE DIFFERENCE BETWEEN AN ELECTRIC CAR AND A PLUG-IN HYBRID?', 3, 'sinchana', '2021-09-22 13:38:59'),
(82, '	HOW FAR CAN I DRIVE IN THE WINTER?', 3, 'lavanya', '2021-09-22 13:40:48'),
(83, 'HOW MANY KILOMETERS OR RECHARGES DOES THE BATTERY LAST FOR?', 4, 'sinchana', '2021-09-22 13:42:03'),
(84, 'AREN’T ELECTRIC CARS DANGEROUS IN AN ACCIDENT?', 4, 'archi', '2021-09-22 13:42:46'),
(85, 'DO ALL ELECTRIC CARS HAVE AUTONOMOUS DRIVING? WHAT IS THIS EXACTLY?', 4, 'sinchana', '2021-09-22 13:43:56'),
(86, 'Are Electric Cars as Safe as Other Vehicles?', 5, 'sinchana', '2021-09-22 13:45:01'),
(87, 'In the Long Run, Does it Make Financial Sense to Purchase an Electric Car Instead of a Gas-Powered Vehicle?', 3, 'alokk', '2021-09-22 13:45:48'),
(88, 'What\'s the Lifespan of an Electric Car Battery?', 3, 'sinchana', '2021-09-22 13:49:09'),
(89, 'Are electric Cars Really More Environmentally Friendly Than Gas-Powered Vehicles, Hydrogen-Fueled Cars?', 4, 'saanvi', '2021-09-22 13:49:58'),
(90, 'What could states or utilities do to help lower costs of demand charges for fast charging and make fast charging more accessible?', 3, 'sinchana', '2021-09-22 13:51:16'),
(91, '1.	Why Should I Buy an Electric Vehicles?', 2, 'sinchana', '2021-09-22 13:52:10'),
(92, 'Is it worth buying an electric car in India now, or should I wait for some more time?', 3.5, 'anuj', '2021-09-22 13:53:11'),
(93, 'Why the cost of Electric Vehicles is so high in India?', NULL, 'alokk', '2021-09-22 13:55:47'),
(94, 'What are the advantages of EV?', NULL, 'alokk', '2021-09-22 14:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` varchar(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `password`, `email`, `mobile`, `gender`) VALUES
('alokk', 'alok kumar', '1234', 'alok@gmail.com', 9479396744, 'Male'),
('anisa', 'anisa rani', '12345', 'ani@gmail.com', 9087654321, 'Female'),
('anki', 'ankit', '1234', 'ank@g.com', 9479396742, 'Male'),
('ankit', 'ankit', '546', 'ankit@gmail.com', 123, 'Male'),
('anuj', 'anuj srivastav', '123', 'anuj@gmail.com', 8907654321, 'Male'),
('archi', 'archana', '123', 'arch@gmail.com', 2087654321, 'Female'),
('askeee', 'Astha', '123', 'askee@gmail.com', 9087654321, 'Male'),
('lavanya', 'lavanya ', '1234', 'lavi@gmail.com', 9886992413, 'Female'),
('saanvi', 'saanvi', '1234', 'sanvi2@gmail.com', 9774658912, 'Female'),
('sinchana', 'sinchana ', '1234', 'sinchana@gmail.com', 9479396744, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `notifid` int(11) NOT NULL,
  `notification` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`notifid`, `notification`, `userid`, `date`) VALUES
(1, 'Welcome to Confer Space', 'anki', '2019-05-02 21:27:55'),
(2, 'Welcome to Confer Space ', 'archi', '2019-05-02 21:27:55'),
(3, 'Welcome to Confer Space', 'askeee', '2019-05-02 21:27:55'),
(19, 'User <b>anki</b> answered your question : <b>hello</b><br/>Answer: <b>hi there</b>', 'anki', '2019-05-02 22:49:49'),
(21, 'Welcome to Confer Space', 'anisa', '2019-05-02 23:01:02'),
(22, 'User <b>renu</b> answered your question : <b>duration of the course?</b><br/>Answer: <b>three years\r\n</b>', 'archi', '2019-05-02 23:42:06'),
(23, 'User <b>anki</b> answered your question : <b>timings for web lab sem 4?\r\n</b><br/>Answer: <b>8 am to 10:40 am</b>', 'anki', '2019-05-03 10:37:39'),
(24, 'Welcome to Confer Space', 'anuj', '2019-05-03 10:44:07'),
(25, 'User <b>anuj</b> answered your question : <b>Are Saturdays holiday? </b><br/>Answer: <b>not necessarily</b>', 'archi', '2019-05-03 11:10:26'),
(26, 'User <b>archi</b> answered your question : <b>what is the duration of each semester?</b><br/>Answer: <b>around 4 to 5 months</b>', 'anuj', '2019-05-03 11:11:05'),
(28, 'User <b>kiran</b> answered your question : <b>who am i?</b><br/>Answer: <b>fool</b>', 'anuj', '2019-05-03 13:24:22'),
(29, 'User <b>anki</b> answered your question : <b>who am i?</b><br/>Answer: <b>hey there\r\n</b>', 'anuj', '2019-05-03 13:51:57'),
(30, 'User <b>anki</b> answered your question : <b>what is the duration of each semester?</b><br/>Answer: <b>6 months\r\n</b>', 'anuj', '2019-05-09 13:11:25'),
(31, 'User <b>sheeku</b> answered your question : <b>timings for web lab sem 4?\r\n</b><br/>Answer: <b>8</b>', 'anki', '2019-05-22 21:57:44'),
(35, 'User <b>sheela</b> answered your question : <b>Are Saturdays holiday? </b><br/>Answer: <b>funny</b>', 'archi', '2019-05-22 23:21:03'),
(38, 'User <b>ajanta</b> answered your question : <b>Are Saturdays holiday? </b><br/>Answer: <b>funny</b>', 'archi', '2019-05-22 23:57:49'),
(40, 'Welcome to Confer Space', 'ankit', '2020-03-02 13:22:16'),
(41, 'Welcome to Confer Space', 'alokk', '2020-03-02 13:23:43'),
(42, 'User <b>alokk</b> answered your question : <b>1.	Why Should I Buy an Electric Vehicles?</b><br/>Answer: <b>Electric Vehicles offer significantly lower fuel costs compared with traditional gas-powered cars. On average, a gallon of gasoline costs about twice as much as the comparable cost to run an electric Vehicles. That’s especially true if drivers take advantage of off-peak electricity rates while charging at home. And electric rates tend to be more stable than oil prices. (Compare how much you’d save in your state using the Department of Energy’s e Gallon tool.)</b>', 'alokk', '2021-09-22 12:56:08'),
(43, 'User <b>alokk</b> answered your question : <b>Can I charge my electric car at home?</b><br/>Answer: <b>Yes. Your electric vehicle will usually come with a tri-plug adaptor cable which can be plugged into mains electricity at home, though this isn\'t the most efficient way of charging your vehicle. A wallbox charger will recharge your EV much quicker and get you back up to 100% much sooner. You can save money on the installation of an at-home charging station through the Electric Vehicle Homecharge Scheme (EVHS).</b>', 'alokk', '2021-09-22 13:02:05'),
(44, 'User <b>alokk</b> answered your question : <b>	Can electric cars charge themselves?</b><br/>Answer: <b>The types of electric vehicles that are capable of charging themselves are called Self-Charging Hybrids (also referred to as Mild Hybrids) and Plug-In Hybrids. Here, the hybrid vehicle will use regenerative braking technology to charge a small electric motor that will support the petrol engine.\r\n\r\nA Plug-In Hybrid Electric Vehicle (PHEV) can also be charged using a plug-in charging point and provides a sufficient number of pure-electric miles for short trips.\r\n</b>', 'alokk', '2021-09-22 13:18:33'),
(45, 'User <b>alokk</b> answered your question : <b>How long does it take to charge an electric car?</b><br/>Answer: <b>       This depends on how and where you charge. Using a high-voltage DC charger at a public         charging station, you can charge your battery from 20% to 80% in 42 minutes. Using an installed battery wall-box at home, you’ll be able to drive off with a fully recharged battery after around 9.5 hours*.</b>', 'sinchana', '2021-09-22 13:27:03'),
(46, 'User <b>alokk</b> answered your question : <b>What could states or utilities do to help lower costs of demand charges for fast charging and make fast charging more accessible?</b><br/>Answer: <b> There are thousands of utilities each with their own policy on high power charging, \r\nwhich can either include demand chargers or not - there\'s no uniform method, but what we see now \r\nwhich has been a very effective, that is to provide energy only rates for low utilization stations. In \r\nexchange for a higher cost per kilowatt hour on a low use station, you can get reasonable amounts of, at \r\na reasonable cost. The problem is with a very low utilization station and high demand charge, the cost \r\nper kilowatt hour is prohibitive and it ruins the business model for a nascent network. Having two \r\ndifferent rate structures, one is an energy only rate in the beginning and then you can switch to demand\r\ncharges later would be a good strategy and it\'s being pursued in California utilities.\r\n</b>', 'alokk', '2021-09-22 13:27:59'),
(47, 'User <b>alokk</b> answered your question : <b>CAN I CHARGE AN ELECTRIC CAR IN THE RAIN?</b><br/>Answer: <b>Yes, you can even charge your electric car in the rain with no fear of electric shock or damage to the car. Both the car and the charger itself have several levels of protection for these cases. For example, the current doesn’t run until it’s securely plugged into the socket and both car and charger aren’t sure that everything’s ready.\r\n\r\nConversely, when you pull the cable from the socket, the electricity stops flowing before the socket is exposed. In the same way, it’s also completely safe to take your electric car through all types of car washes. And as for your next question – no, when an electric car falls into a pond or pool, nothing happens to the people or fish.\r\n</b>', 'alokk', '2021-09-22 13:29:01'),
(48, 'User <b>alokk</b> answered your question : <b>HOW MANY KILOMETERS OR RECHARGES DOES THE BATTERY LAST FOR?</b><br/>Answer: <b>Battery life in electric vehicles is very long. Experience from countries where electric cars are widely used, even as taxis, for example, shows that the batteries maintain 75 to 90% of their original capacity even after 200,000 or 300,000 kilometers, depending on the technology used. Moreover, with the development of eMobility, the cost of replacing batteries is rapidly declining. Batteries can be exchanged by parts, and warranty and service programs are developing to deal with these costs.\r\n\r\nEven batteries that are no longer suitable for driving a car are still very valuable. They still have most of their capacity, making them increasingly useful in community and industrial projects. Recycling is \r\nalso being rapidly developed in this sector. Traditional lead car batteries in onventional cars are recycled up to nearly 100%; in electric cars this process is much more demanding, but the materials obtained are also much more valuable.\r\n</b>', 'alokk', '2021-09-22 13:29:51'),
(49, 'User <b>alokk</b> answered your question : <b>AREN’T ELECTRIC CARS DANGEROUS IN AN ACCIDENT?</b><br/>Answer: <b>Like conventional cars, electric cars also go through standard crash tests with good results. Batteries are not explosive in an accident, and electric cars can also operate without a clutch and without gearbox or engine oil, which is usually a cause of fires in a crash. Overall, they have much fewer components, which further reduces the likelihood of failure. The batteries are completely insulated from the rest of the car, and in the event of an accident, the whole system is disconnected.\r\n\r\nThe batteries even have special cooling. At the same time, batteries have very good thermal resistance, so even if they do ignite when they happen to break, the course of the fire is usually milder, although they take longer to extinguish (using ordinary water from a greater distance).\r\n</b>', 'alokk', '2021-09-22 13:31:04'),
(50, 'User <b>alokk</b> answered your question : <b>	DO ALL ELECTRIC CARS HAVE AUTONOMOUS DRIVING? WHAT IS THIS EXACTLY?</b><br/>Answer: <b>The boom of electric cars and autonomous control arrived at the same time, but these are two independent technologies. Conventional cars also offer autonomous control, and most of the current electric vehicles can get by without it. Both of these trends represent the future, however, so they are being connected. The degree of autonomous driving falls into one of five levels, depending on the number of activities the smart car can handle on behalf of the driver.\r\n\r\nAt present, most cars are at level one or two, where adaptive cruise control can accelerate and brake and even help with the steering. At level three, the driver doesn’t even have to keep his eyes on the road in selected areas, such as long-distance motorways. This is the level of autonomous driving that the ŠKODA VISION E concept is capable of, but the laws that permit this are still under preparation. The biggest breakthrough will be level four, when the car can handle the entire journey without driver intervention. The fifth level also includes off-road driving and other extreme conditions.\r\n</b>', 'alokk', '2021-09-22 13:31:50'),
(51, 'User <b>alokk</b> answered your question : <b>	Can I charge my electric car at home?</b><br/>Answer: <b>Yes. Your electric vehicle will usually come with a tri-plug adaptor cable which can be plugged into mains electricity at home, though this isn\'t the most efficient way of charging your vehicle. A wallbox charger will recharge your EV much quicker and get you back up to 100% much sooner. You can save money on the installation of an at-home charging station through the Electric Vehicle Homecharge Scheme (EVHS).\r\n\r\nEVHS provides grant funding to domestic properties across the UK who wish to install electric vehicle charging points. The grant can cover up to 75% of installation costs.\r\n\r\nWe also run offers from time to time offering fully installed charge stations at a fixed price and sometimes for free, so keep an eye out on on our electric car offers!\r\n</b>', 'alokk', '2021-09-22 13:32:39'),
(52, 'User <b>alokk</b> answered your question : <b>	How can I charge an electric car?</b><br/>Answer: <b>There are 3 different ways you can charge your electric or plug-in hybrid vehicle:\r\n\r\n1. Mains electricity\r\nYou can charge your electric or hybrid car using your main electricity at home. Your vehicle will come with an adaptor cable to do this.\r\n\r\n2. At-home wallbox\r\nYou may choose to get a wall box installed at your home for the most convenient type of charging. It’s also surprisingly cost effective and many manufacturers may offer installation for free or at a fixed rate.\r\n\r\nCharging speeds vary depending on the power of your charge station, so be aware of this when choosing your wallbox (the higher the voltage, the faster your vehicle will regain its electric miles).\r\n\r\n3. Public charging station\r\nYou’ll also be able to charge your car on-the-go by making use of public charging stations. Again, different power chargers will provide different charging times. At the moment, there are approximately 8,000 rapid charging connectors in the UK.\r\n</b>', 'alokk', '2021-09-22 13:34:00'),
(53, 'User <b>alokk</b> answered your question : <b>Are electric cars worth their price? Why?</b><br/>Answer: <b>Frequently filling up on gas can be a real budget buster. While every car is different, electric vehicle owners are likely to spend about 60% less to power their ride. This translates to an annual savings of about $800 to $1,300 — or $6,000 to $10,000 over the life of your car.</b>', 'alokk', '2021-09-22 13:38:27'),
(54, 'User <b>alokk</b> answered your question : <b>	WHAT’S THE DIFFERENCE BETWEEN AN ELECTRIC CAR AND A PLUG-IN HYBRID?</b><br/>Answer: <b>Both types are equipped with a socket for charging, but otherwise they’re fundamentally different. The plug-in hybrid, sometimes referred to as PHEV (Plug-in Hybrid Electric Vehicle), combines a classic internal combustion engine with an electric motor which can be recharged from an electrical outlet as well as energy recovery while driving. Even the PHEV can be driven in pure electric mode, but the range is limited to 30 to 50 kilometers.\r\n\r\nToday’s leading-edge plug-in hybrids, however, manage their energy so efficiently that they can utilize the topography of route navigation to choose the best sections for driving with the internal combustion engine, in electric mode, and a combination of both. The result is low fuel consumption and a quiet electric drive, especially around the city. Electric cars, on the other hand, are powered by electric motors only. Their batteries have a much higher capacity, which means that the range is up to ten times longer on electric power in contrast to the PHEV.\r\n</b>', 'alokk', '2021-09-22 13:39:38'),
(55, 'User <b>alokk</b> answered your question : <b>	HOW FAR CAN I DRIVE IN THE WINTER?</b><br/>Answer: <b>With every generation of electric vehicles, the range for a single charge gets better. The ŠKODA VISION E study anticipates a range of up to 500 kilometers, which is sufficient for full and unrestricted travel. Just like cars with a combustion engine whose consumption in winter slightly increases, electric cars also have to use more energy in cold weather. What’s more, they’re so energy efficient that the engine generates virtually no residual heat, so the cabin heating is fully electric. The batteries are also warmed up to maintain their properties while driving. But all this can be compensated for in electric cars.\r\n\r\nFor example, a car can be heated while charging using smart applications, thus reducing the energy consumption while driving. Advanced heating systems in modern cars are also exceptionally economical, so the reduction in driving distance is not so drastic – in fact, Norway or Canada are two countries with the largest number of electric vehicles.\r\n</b>', 'alokk', '2021-09-22 13:41:08'),
(56, 'User <b>alokk</b> answered your question : <b>HOW MANY KILOMETERS OR RECHARGES DOES THE BATTERY LAST FOR?</b><br/>Answer: <b>Battery life in electric vehicles is very long. Experience from countries where electric cars are widely used, even as taxis, for example, shows that the batteries maintain 75 to 90% of their original capacity even after 200,000 or 300,000 kilometers, depending on the technology used. Moreover, with the development of eMobility, the cost of replacing batteries is rapidly declining. Batteries can be exchanged by parts, and warranty and service programs are developing to deal with these costs.\r\n\r\nEven batteries that are no longer suitable for driving a car are still very valuable. They still have most of their capacity, making them increasingly useful in community and industrial projects. Recycling is \r\nalso being rapidly developed in this sector. Traditional lead car batteries in onventional cars are recycled up to nearly 100%; in electric cars this process is much more demanding, but the materials obtained are also much more valuable.\r\n</b>', 'alokk', '2021-09-22 13:42:20'),
(57, 'User <b>alokk</b> answered your question : <b>AREN’T ELECTRIC CARS DANGEROUS IN AN ACCIDENT?</b><br/>Answer: <b>Like conventional cars, electric cars also go through standard crash tests with good results. Batteries are not explosive in an accident, and electric cars can also operate without a clutch and without gearbox or engine oil, which is usually a cause of fires in a crash. Overall, they have much fewer components, which further reduces the likelihood of failure. The batteries are completely insulated from the rest of the car, and in the event of an accident, the whole system is disconnected.\r\n\r\nThe batteries even have special cooling. At the same time, batteries have very good thermal resistance, so even if they do ignite when they happen to break, the course of the fire is usually milder, although they take longer to extinguish (using ordinary water from a greater distance).\r\n\r\n</b>', 'alokk', '2021-09-22 13:43:14'),
(58, 'User <b>alokk</b> answered your question : <b>DO ALL ELECTRIC CARS HAVE AUTONOMOUS DRIVING? WHAT IS THIS EXACTLY?</b><br/>Answer: <b>The boom of electric cars and autonomous control arrived at the same time, but these are two independent technologies. Conventional cars also offer autonomous control, and most of the current electric vehicles can get by without it. Both of these trends represent the future, however, so they are being connected. The degree of autonomous driving falls into one of five levels, depending on the number of activities the smart car can handle on behalf of the driver.\r\n\r\nAt present, most cars are at level one or two, where adaptive cruise control can accelerate and brake and even help with the steering. At level three, the driver doesn’t even have to keep his eyes on the road in selected areas, such as long-distance motorways. This is the level of autonomous driving that the ŠKODA VISION E concept is capable of, but the laws that permit this are still under preparation. The biggest breakthrough will be level four, when the car can handle the entire journey without driver intervention. The fifth level also includes off-road driving and other extreme conditions.\r\n</b>', 'alokk', '2021-09-22 13:44:14'),
(59, 'User <b>alokk</b> answered your question : <b>Are Electric Cars as Safe as Other Vehicles?</b><br/>Answer: <b>Electric vehicles must meet the same federal safety standards as other cars. And you won\'t be hauling around gallons of combustible fuel wherever you go.</b>', 'alokk', '2021-09-22 13:45:17'),
(60, 'User <b>alokk</b> answered your question : <b>In the Long Run, Does it Make Financial Sense to Purchase an Electric Car Instead of a Gas-Powered Vehicle?</b><br/>Answer: <b>Right now, it\'s still tough to say. Electric cars tend to be more expensive than their traditional counterparts. And you\'ll have to eventually replace the batteries in your car, which can cost thousands of dollars. On the other hand, electricity is cheaper than gasoline and you\'ll usually save money on a per-mile basis. And some regions -- like California -- offer major tax incentives and rebates for drivers who purchase electric vehicles.</b>', 'alokk', '2021-09-22 13:46:04'),
(61, 'User <b>alokk</b> answered your question : <b>DO ALL ELECTRIC CARS HAVE AUTONOMOUS DRIVING? WHAT IS THIS EXACTLY?</b><br/>Answer: <b>What Kind of Do You Need to Perform on Electric Cars?</b>', 'alokk', '2021-09-22 13:46:59'),
(62, 'User <b>alokk</b> answered your question : <b>In the Long Run, Does it Make Financial Sense to Purchase an Electric Car Instead of a Gas-Powered Vehicle?</b><br/>Answer: <b>Recharging the vehicle regularly is important as is replacing the battery when it nears the end of its life. Otherwise, much of the maintenance you need to do is the same as for gas-powered cars.</b>', 'alokk', '2021-09-22 13:47:21'),
(63, 'User <b>alokk</b> answered your question : <b>Are electric Cars Really More Environmentally Friendly Than Gas-Powered Vehicles, Hydrogen-Fueled Cars?</b><br/>Answer: <b>It\'s a loaded question, but in general the answer is yes. Electric vehicles need to be recharged and must draw that electricity from somewhere else. If the electricity comes from a coal-burning power plant, the electric vehicle is still part of a pollution cycle even though it doesn\'t emit greenhouse gases itself. Even so, it\'s easier to control emissions on a single point of origin -- the power plant -- than it is on a fleet of vehicles on the road. And electric cars can also get electricity from renewable resources such as hydro-electric facilities or solar cells.</b>', 'alokk', '2021-09-22 13:50:16'),
(64, 'User <b>alokk</b> answered your question : <b>What could states or utilities do to help lower costs of demand charges for fast charging and make fast charging more accessible?</b><br/>Answer: <b> There are thousands of utilities each with their own policy on high power charging, \r\nwhich can either include demand chargers or not - there\'s no uniform method, but what we see now \r\nwhich has been a very effective, that is to provide energy only rates for low utilization stations. In \r\nexchange for a higher cost per kilowatt hour on a low use station, you can get reasonable amounts of, at \r\na reasonable cost. The problem is with a very low utilization station and high demand charge, the cost \r\nper kilowatt hour is prohibitive and it ruins the business model for a nascent network. Having two \r\ndifferent rate structures, one is an energy only rate in the beginning and then you can switch to demand\r\ncharges later would be a good strategy and it\'s being pursued in California utilities.\r\n</b>', 'alokk', '2021-09-22 13:51:33'),
(65, 'User <b>alokk</b> answered your question : <b>1.	Why Should I Buy an Electric Vehicles?</b><br/>Answer: <b>Electric Vehicles offer significantly lower fuel costs compared with traditional gas-powered cars. On average, a gallon of gasoline costs about twice as much as the comparable cost to run an electric Vehicles. That’s especially true if drivers take advantage of off-peak electricity rates while charging at home. And electric rates tend to be more stable than oil prices. (Compare how much you’d save in your state using the Department of Energy’s e Gallon tool.)</b>', 'alokk', '2021-09-22 13:52:29'),
(66, 'User <b>alokk</b> answered your question : <b>Is it worth buying an electric car in India now, or should I wait for some more time?</b><br/>Answer: <b>I was considering to buy Nexon EV as it have good range of nearly 300km.\r\n\r\nI live in Mumbai so I assumed I\'d come back from Lonavala with full power (200–220km)\r\n\r\nBut only problem I\'ve is charging spot. My apartment does not have charging points & highways also don\'t have super charger like Tesla have in US & some other countries.\r\n\r\nI\'d love to consider electric car once every petrol pump has charging point too or atleast few have just like CNG.\r\n\r\nI\'d also consider ev when my society consider my request for charging near my parking spot.\r\n\r\nTill then I\'m gonna hang back to my petrol car</b>', 'alokk', '2021-09-22 13:54:44'),
(67, 'User <b>alokk</b> answered your question : <b>Why the cost of Electric Vehicles is so high in India?</b><br/>Answer: <b>Electric vehicles fall into three main categories:\r\n\r\nBattery electric vehicles are powered by electricity stored in a battery pack.\r\nPlug-in hybrids combine a gasoline or diesel engine with an electric motor and large rechargeable battery.\r\nFuel cell vehicles split electrons from hydrogen molecules to produce electricity to run the motor.\r\nIt’s more than just passenger cars now — from New York to Mississippi, you may find yourself on a quiet, zipping electric transit bus. The first electric fire truck in the nation will be welcomed by Angelenos in 2021 — and in the coming years, electric sanitation trucks will be quietly gliding through neighborhoods to pick up garbage and recycling, and more electric trucks will be delivering packages from warehouses to homes, air pollution-free.\r\nCharging up an electric car in St. Petersburg, Florida (left). An electric heavy duty truck used to move freight at the Port of Long Beach. California passed the nation\'s first electric truck standard in June 2020.</b>', 'alokk', '2021-09-22 13:56:55'),
(68, 'User <b>alokk</b> answered your question : <b>What are the advantages of EV?</b><br/>Answer: <b>•	Lower Operating Costs\r\n\r\nEVs have overall lower fueling costs.\r\n\r\nMost EVs have lower maintenance costs because they have fewer and simpler components and don’t require fluid changes or tuneups.\r\n\r\nWhen combined with a home solar system, “fuel” costs could be completely eliminated, although it can take some time to recoup the cost of installing solar panels.\r\n\r\n•	Less Pollution\r\n\r\nEVs produce no particulate or smog-causing tailpipe emissions, which are a significant contributing factor in causing asthma and other air pollution-related illnesses.\r\n\r\nEVs have lower carbon emissions than gasoline powered vehicles over their service life.\r\n\r\n•	Unique Features\r\n\r\nEVs are quiet because of their lack of engine noise.\r\n\r\nMost EVs provide instant power and can be fun to drive.\r\n\r\nCharging at home is convenient.\r\n</b>', 'alokk', '2021-09-22 14:03:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`notifid`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `qid` (`qid`),
  ADD KEY `userid` (`userid`(10)),
  ADD KEY `userid_2` (`userid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`notifid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `notifid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `notifid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
