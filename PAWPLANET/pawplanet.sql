-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2024 at 10:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pawplanet`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` enum('dog','cat','bird','fish') NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `price`) VALUES
(1, 'Hills Science Diet Adult Large Breed 15kg', 'dog', 6950),
(2, 'Gnawlers Calcium Milk-Bone Medium 35 Pcs', 'dog', 1090),
(3, 'Petsworld Donut Bed For Dog Purple Medium', 'dog', 2500),
(4, 'DROOLS Cat Food Adult Tuna &amp; Salmon 1.2 Kg', 'cat', 299),
(5, 'SmartHeart Bird Food Cockatiel Lovebird 1 Kg', 'bird', 459),
(6, 'Aquadene Ruby Red Fish Food 1 Ltr', 'fish', 559),
(7, 'Optimum Betta Fish Food 20 Gms', 'fish', 50),
(8, 'Tropifit Exoten Food For Exotic Birds 700 gms', 'bird', 450),
(9, 'Farmina Matisse Kitten Food 400', 'cat', 349),
(10, 'Osaka Green-1 Spirulina  200 gms', 'fish', 275),
(11, 'Kiki Pigeon food', 'bird', 540),
(12, 'DROOLS Absolute Salmon Oil Syrup 150 ml', 'dog', 245),
(13, 'Farmina Vet Life Feline Formula Struvite 2Kg', 'cat', 1290),
(14, 'Rid All General Aid 120 ml', 'fish', 220),
(15, 'ZUPREEM Fruit Blend Premium Food 1.59 Kg', 'bird', 1775),
(16, 'Imac Carry Sport Dog and Cat Medium Carrier', 'cat', 4300);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `contact`, `city`) VALUES
(5, 'khizar', 'khizar@gmail.com', 'khizar123', '0349869741', 'karachi'),
(6, 'Hina Altaf', 'HinaAltaf@gmail.com', 'hinnna', '0123456789', 'lahore'),
(7, 'Laiba', 'laibamuzaffar@gmai.com', 'pawplanet', '0349869741', 'karachi');

-- --------------------------------------------------------

--
-- Table structure for table `user_items`
--

CREATE TABLE `user_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_items`
--

INSERT INTO `user_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(14, 5, 12, 'Added to cart'),
(15, 5, 8, 'Confirmed'),
(16, 6, 2, 'Added to cart'),
(17, 7, 4, 'Added to cart'),
(18, 7, 14, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_items`
--
ALTER TABLE `user_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_items`
--
ALTER TABLE `user_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_items`
--
ALTER TABLE `user_items`
  ADD CONSTRAINT `user_items_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
