-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2016 at 03:30 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET FOREIGN_KEY_CHECKS=0;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `laraclassified`
--

--
-- Truncate table before insert `<<prefix>>advertising`
--

TRUNCATE TABLE `<<prefix>>advertising`;
--
-- Dumping data for table `<<prefix>>advertising`
--

INSERT INTO `<<prefix>>advertising` (`id`, `slug`, `provider_name`, `tracking_code_large`, `tracking_code_medium`, `tracking_code_small`, `active`) VALUES
(1, 'top', 'Advert Code', '', '', '', 0),
(2, 'bottom', 'Advert Code', '', '', '', 0);

--
-- Truncate table before insert `<<prefix>>categories`
--

TRUNCATE TABLE `<<prefix>>categories`;
--
-- Dumping data for table `<<prefix>>categories`
--

INSERT INTO `<<prefix>>categories` (`id`, `translation_lang`, `translation_of`, `parent_id`, `name`, `slug`, `description`, `picture`, `css_class`, `lft`, `rgt`, `depth`, `type`, `active`) VALUES
(1, 'en', 1, 0, 'Automobiles', 'automobiles', '', 'fa-car.png', 'fa fa-car', 26, 41, 1, 'classified', 1),
(2, 'en', 2, 1, 'Auto Parts, Accessories', 'auto-parts-accessories', NULL, NULL, NULL, 29, 30, 2, NULL, 1),
(3, 'en', 3, 1, 'Car, Motorcycle Rental', 'car-motorcycle-rental', NULL, NULL, NULL, 27, 28, 2, NULL, 1),
(4, 'en', 4, 1, 'Caravan and Boating', 'caravan-and-boating', NULL, NULL, NULL, 31, 32, 2, NULL, 1),
(5, 'en', 5, 1, 'Motorcycle parts, Accessories', 'motorcycle-parts-accessories', NULL, NULL, NULL, 33, 34, 2, NULL, 1),
(6, 'en', 6, 1, 'Motorcycles, Scooters, Quads', 'motorcycles-scooters-quads', NULL, NULL, NULL, 35, 36, 2, NULL, 1),
(7, 'en', 7, 1, 'Used Cars - New Cars', 'used-cars-new-cars', NULL, NULL, NULL, 37, 38, 2, NULL, 1),
(8, 'en', 8, 1, 'Utility Vehicles, Machinery', 'utility-vehicles-machinery', NULL, NULL, NULL, 39, 40, 2, NULL, 1),
(9, 'en', 9, 0, 'Real estate', 'real-estate', NULL, 'fa-home.png', 'icon-home', 42, 65, 1, 'classified', 1),
(10, 'en', 10, 9, 'Commercial Property - Offices - Premises', 'commercial-property-offices-premises', NULL, NULL, NULL, 47, 48, 2, NULL, 1),
(11, 'en', 11, 9, 'I''m looking for', 'im-looking-for', NULL, NULL, NULL, 51, 52, 2, NULL, 1),
(12, 'en', 12, 9, 'Roomates', 'roomates', NULL, NULL, NULL, 53, 54, 2, NULL, 1),
(13, 'en', 13, 9, 'Accommodation and Hotels', 'accommodation-and-hotels', NULL, NULL, NULL, 55, 56, 2, NULL, 1),
(14, 'en', 14, 9, 'Vacation Rental', 'vacation-rental', NULL, NULL, NULL, 57, 58, 2, NULL, 1),
(15, 'en', 15, 9, 'Garage, Parking, Farms', 'garage-parking-farms', NULL, NULL, NULL, 59, 60, 2, NULL, 1),
(16, 'en', 16, 9, 'Real Estate Services', 'real-estate-services', NULL, NULL, NULL, 61, 62, 2, NULL, 1),
(17, 'en', 17, 9, 'Rooms - Studio for Rent', 'rooms-studio-for-rent', NULL, NULL, NULL, 63, 64, 2, NULL, 1),
(18, 'en', 18, 9, 'Land for Sale, Rent', 'land-for-sale-rent', NULL, NULL, NULL, 49, 50, 2, NULL, 1),
(19, 'en', 19, 9, 'Property for sale', 'property-for-sale', NULL, NULL, NULL, 45, 46, 2, NULL, 1),
(20, 'en', 20, 9, 'Rentals', 'rentals', NULL, NULL, NULL, 43, 44, 2, NULL, 1),
(21, 'en', 21, 0, 'Services', 'services', NULL, 'ion-clipboard.png', 'fa fa-briefcase', 92, 127, 1, 'service', 1),
(22, 'en', 22, 21, 'Other services', 'other-services', NULL, NULL, NULL, 111, 112, 2, NULL, 1),
(23, 'en', 23, 21, 'Casting, Model, Photographer', 'casting-model-photographer', NULL, NULL, NULL, 123, 124, 2, NULL, 1),
(24, 'en', 24, 21, 'Carpooling', 'carpooling', NULL, NULL, NULL, 121, 122, 2, NULL, 1),
(25, 'en', 25, 21, 'Moving, Furniture Guard', 'moving-furniture-guard', NULL, NULL, NULL, 119, 120, 2, NULL, 1),
(26, 'en', 26, 21, 'Destocking - Commercial', 'destocking-commercial', NULL, NULL, NULL, 117, 118, 2, NULL, 1),
(27, 'en', 27, 21, 'Industrial Equipment', 'industrial-equipment', NULL, NULL, NULL, 115, 116, 2, NULL, 1),
(28, 'en', 28, 21, 'Aesthetics, Hairstyling', 'aesthetics-hairstyling', NULL, NULL, NULL, 93, 94, 2, NULL, 1),
(29, 'en', 29, 21, 'Horoscope - Tarot - Healers - Spell', 'horoscope-tarot-healers-spell', NULL, NULL, NULL, 113, 114, 2, NULL, 1),
(30, 'en', 30, 21, 'Materials and Equipment Pro', 'materials-and-equipment-pro', NULL, NULL, NULL, 109, 110, 2, NULL, 1),
(31, 'en', 31, 21, 'Event Organization Services', 'event-organization-services', NULL, NULL, NULL, 95, 96, 2, NULL, 1),
(32, 'en', 32, 21, 'Service Provision', 'service-provision', NULL, NULL, NULL, 107, 108, 2, NULL, 1),
(33, 'en', 33, 21, 'Health, Beauty', 'health-beauty', NULL, NULL, NULL, 105, 106, 2, NULL, 1),
(34, 'en', 34, 21, 'Artisan, Troubleshooting, Handyman', 'artisan-troubleshooting-handyman', NULL, NULL, NULL, 103, 104, 2, NULL, 1),
(35, 'en', 35, 21, 'Computing Services', 'computing-services', NULL, NULL, NULL, 101, 102, 2, NULL, 1),
(36, 'en', 36, 21, 'Tourism and Travel Services', 'tourism-and-travel-services', NULL, NULL, NULL, 99, 100, 2, NULL, 1),
(37, 'en', 37, 21, 'Translation, Writing', 'translation-writing', NULL, NULL, NULL, 125, 126, 2, NULL, 1),
(38, 'en', 38, 21, 'Construction - Renovation - Carpentry', 'construction-renovation-carpentry', NULL, NULL, NULL, 97, 98, 2, NULL, 1),
(39, 'en', 39, 0, 'Community', 'community', NULL, 'fa-users.png', 'icon-theatre', 266, 281, 1, 'classified', 1),
(40, 'en', 40, 39, 'Sporting goods, Exercise', 'sporting-goods-exercise', NULL, NULL, NULL, 267, 268, 2, NULL, 1),
(41, 'en', 41, 39, 'Artists, Musicians', 'artists-musicians', NULL, NULL, NULL, 269, 270, 2, NULL, 1),
(42, 'en', 42, 39, 'Associations, Voluntary', 'associations-voluntary', NULL, NULL, NULL, 271, 272, 2, NULL, 1),
(43, 'en', 43, 39, 'Friendships for Events', 'friendships-for-events', NULL, NULL, NULL, 273, 274, 2, NULL, 1),
(44, 'en', 44, 39, 'My neighborhood', 'my-neighborhood', NULL, NULL, NULL, 275, 276, 2, NULL, 1),
(45, 'en', 45, 39, 'Nightlife, Restaurant & Bar', 'nightlife-restaurant-bar', NULL, NULL, NULL, 277, 278, 2, NULL, 1),
(46, 'en', 46, 39, 'Outings, Entertainment', 'outings-entertainment', NULL, NULL, NULL, 279, 280, 2, NULL, 1),
(47, 'en', 47, 0, 'Multimedia', 'multimedia', NULL, 'fa-laptop.png', 'icon-laptop', 2, 25, 1, 'classified', 1),
(48, 'en', 48, 47, 'Multimedia & Phones Accessories', 'multimedia-phones-accessories', NULL, NULL, NULL, 5, 6, 2, NULL, 1),
(49, 'en', 49, 47, 'CD/DVD - Books - Movies', 'cddvd-books-movies', NULL, NULL, NULL, 7, 8, 2, NULL, 1),
(50, 'en', 50, 47, 'Consoles - Video Games', 'consoles-video-games', NULL, NULL, NULL, 11, 12, 2, NULL, 1),
(51, 'en', 51, 47, 'Computers - PC - Office Supplies', 'computers-pc-office-supplies', NULL, NULL, NULL, 13, 14, 2, NULL, 1),
(52, 'en', 52, 47, 'Wanted', 'wanted', NULL, NULL, NULL, 15, 16, 2, NULL, 1),
(53, 'en', 53, 47, 'Tablets - Touchscreens', 'tablets-touchscreens', NULL, NULL, NULL, 17, 18, 2, NULL, 1),
(54, 'en', 54, 47, 'Mobiles phones - Smartphones', 'mobiles-phones-smartphones', NULL, NULL, NULL, 19, 20, 2, NULL, 1),
(55, 'en', 55, 47, 'TV - Images - Sound', 'tv-images-sound', NULL, NULL, NULL, 21, 22, 2, NULL, 1),
(56, 'en', 56, 47, 'Clearance - Commercial', 'clearance-commercial', NULL, NULL, NULL, 23, 24, 2, NULL, 1),
(57, 'en', 57, 47, 'Industrial Equipment', 'industrial-equipment', NULL, NULL, NULL, 9, 10, 2, NULL, 1),
(58, 'en', 58, 47, 'Materials & Professional equipment', 'materials-professional-equipment', NULL, NULL, NULL, 3, 4, 2, NULL, 1),
(59, 'en', 59, 0, 'Fashion, Home & Garden', 'fashion-home-garden', NULL, 'fa-home.png', 'icon-basket-1', 66, 91, 1, 'classified', 1),
(60, 'en', 60, 59, 'Furniture - Tableware', 'furniture-tableware', NULL, NULL, NULL, 89, 90, 2, NULL, 1),
(61, 'en', 61, 59, 'Antiques - Art - Decoration', 'antiques-art-decoration', NULL, NULL, NULL, 69, 70, 2, NULL, 1),
(62, 'en', 62, 59, 'Appliances', 'appliances', NULL, NULL, NULL, 71, 72, 2, NULL, 1),
(63, 'en', 63, 59, 'Jewelry - Watches - Luggage', 'jewelry-watches-luggage', NULL, NULL, NULL, 73, 74, 2, NULL, 1),
(64, 'en', 64, 59, 'DIY - Gardening', 'diy-gardening', NULL, NULL, NULL, 75, 76, 2, NULL, 1),
(65, 'en', 65, 59, 'Various flea markets', 'various-flea-markets', NULL, NULL, NULL, 77, 78, 2, NULL, 1),
(66, 'en', 66, 59, 'Shoes', 'shoes', NULL, NULL, NULL, 79, 80, 2, NULL, 1),
(67, 'en', 67, 59, 'Toys - Games - Figurines', 'toys-games-figurines', NULL, NULL, NULL, 67, 68, 2, NULL, 1),
(68, 'en', 68, 59, 'Clothing, Fashion & Accessories', 'clothing-fashion-accessories', NULL, NULL, NULL, 81, 82, 2, NULL, 1),
(69, 'en', 69, 59, 'Stuffs for Baby and Child', 'stuffs-for-baby-and-child', NULL, NULL, NULL, 83, 84, 2, NULL, 1),
(70, 'en', 70, 59, 'Stuffs for Beauty and Health', 'stuffs-for-beauty-and-health', NULL, NULL, NULL, 85, 86, 2, NULL, 1),
(71, 'en', 71, 59, 'Wine & Gourmet - Recipes', 'wine-gourmet-recipes', NULL, NULL, NULL, 87, 88, 2, NULL, 1),
(72, 'en', 72, 0, 'Pets & Mascots', 'pets-mascots', NULL, 'map-icon-pet-store.png', 'icon-guidedog', 282, 287, 1, 'no-condition', 1),
(73, 'en', 73, 72, 'Accessories - Other Pets services', 'accessories-other-pets-services', NULL, NULL, NULL, 283, 284, 2, NULL, 1),
(74, 'en', 74, 72, 'Sales, Adoptions, Lost', 'sales-adoptions-lost', NULL, NULL, NULL, 285, 286, 2, NULL, 1),
(75, 'en', 75, 0, 'Free Dating', 'free-dating', NULL, 'ion-ios-heart.png', 'icon-heart', 288, 307, 1, 'not-salable', 1),
(76, 'en', 76, 75, 'Friendship - Friends', 'friendship-friends', NULL, NULL, NULL, 305, 306, 2, NULL, 1),
(77, 'en', 77, 75, 'Escorts - Adult Services', 'escorts-adult-services', NULL, NULL, NULL, 303, 304, 2, NULL, 1),
(78, 'en', 78, 75, 'Women Seeking Women', 'women-seeking-women', NULL, NULL, NULL, 299, 300, 2, NULL, 1),
(79, 'en', 79, 75, 'Women Seeking Men', 'women-seeking-men', NULL, NULL, NULL, 301, 302, 2, NULL, 1),
(80, 'en', 80, 75, 'Men Seeking Women', 'men-seeking-women', NULL, NULL, NULL, 289, 290, 2, NULL, 1),
(81, 'en', 81, 75, 'Men Seeking Men', 'men-seeking-men', NULL, NULL, NULL, 291, 292, 2, NULL, 1),
(82, 'en', 82, 75, 'Massage Services - Relaxation', 'massage-services-relaxation', NULL, NULL, NULL, 293, 294, 2, NULL, 1),
(83, 'en', 83, 75, 'Adults Products - Articles', 'adults-products-articles', NULL, NULL, NULL, 295, 296, 2, NULL, 1),
(84, 'en', 84, 75, 'Casual Encounter', 'casual-encounter', NULL, NULL, NULL, 297, 298, 2, NULL, 1),
(85, 'en', 85, 0, 'Jobs Offers', 'jobs-offers', NULL, 'mfglabs-users.png', 'icon-megaphone-1', 176, 223, 1, 'job-offer', 1),
(86, 'en', 86, 85, 'Agriculture - Environment', 'agriculture-environment', NULL, NULL, NULL, 197, 198, 2, NULL, 1),
(87, 'en', 87, 85, 'Assistantship - Secretariat - Helpdesk', 'assistantship-secretariat-helpdesk', NULL, NULL, NULL, 195, 196, 2, NULL, 1),
(88, 'en', 88, 85, 'Automotive - Mechanic', 'automotive-mechanic', NULL, NULL, NULL, 191, 192, 2, NULL, 1),
(89, 'en', 89, 85, 'Others Jobs Offer', 'others-jobs-offer', NULL, NULL, NULL, 189, 190, 2, NULL, 1),
(90, 'en', 90, 85, 'BTP - Construction - Building', 'btp-construction-building', NULL, NULL, NULL, 187, 188, 2, NULL, 1),
(91, 'en', 91, 85, 'Trade - Business Services', 'trade-business-services', NULL, NULL, NULL, 185, 186, 2, NULL, 1),
(92, 'en', 92, 85, 'Commercial - Sale Jobs Offer', 'commercial-sale-jobs-offer', NULL, NULL, NULL, 183, 184, 2, NULL, 1),
(93, 'en', 93, 85, 'Accounting - Management - Finance', 'accounting-management-finance', NULL, NULL, NULL, 181, 182, 2, NULL, 1),
(94, 'en', 94, 85, 'Steering - Manager', 'steering-manager', NULL, NULL, NULL, 221, 222, 2, NULL, 1),
(95, 'en', 95, 85, 'Aesthetics - Hair - Beauty', 'aesthetics-hair-beauty', NULL, NULL, NULL, 193, 194, 2, NULL, 1),
(96, 'en', 96, 85, 'Public Service Jobs Offer', 'public-service-jobs-offer', NULL, NULL, NULL, 179, 180, 2, NULL, 1),
(97, 'en', 97, 85, 'Real Estate Jobs Offer', 'real-estate-jobs-offer', NULL, NULL, NULL, 207, 208, 2, NULL, 1),
(98, 'en', 98, 85, 'Independent - Freelance - Telecommuting', 'independent-freelance-telecommuting', NULL, NULL, NULL, 199, 200, 2, NULL, 1),
(99, 'en', 99, 85, 'Computers - Internet - Telecommunications', 'computers-internet-telecommunications', NULL, NULL, NULL, 201, 202, 2, NULL, 1),
(100, 'en', 100, 85, 'Industry, Production & engineering', 'industry-production-engineering', NULL, NULL, NULL, 219, 220, 2, NULL, 1),
(101, 'en', 101, 85, 'Marketing - Communication', 'marketing-communication', NULL, NULL, NULL, 217, 218, 2, NULL, 1),
(102, 'en', 102, 85, 'Babysitting - Nanny Work', 'babysitting-nanny-work', NULL, NULL, NULL, 215, 216, 2, NULL, 1),
(103, 'en', 103, 85, 'HR - Training - Education', 'hr-training-education', NULL, NULL, NULL, 213, 214, 2, NULL, 1),
(104, 'en', 104, 85, 'Medical - Healthcare - Social', 'medical-healthcare-social', NULL, NULL, NULL, 211, 212, 2, NULL, 1),
(105, 'en', 105, 85, 'Security - Guarding', 'security-guarding', NULL, NULL, NULL, 177, 178, 2, NULL, 1),
(106, 'en', 106, 85, 'Household Services - Housekeeping', 'household-services-housekeeping', NULL, NULL, NULL, 209, 210, 2, NULL, 1),
(107, 'en', 107, 85, 'Tourism - Hotels - Restaurants - Leisure', 'tourism-hotels-restaurants-leisure', NULL, NULL, NULL, 205, 206, 2, NULL, 1),
(108, 'en', 108, 85, 'Transportation - Logistics', 'transportation-logistics', NULL, NULL, NULL, 203, 204, 2, NULL, 1),
(109, 'en', 109, 0, 'Job Search', 'job-search', NULL, 'fa-search.png', 'icon-search', 128, 175, 1, 'job-search', 1),
(110, 'en', 110, 109, 'Agriculture - Environment', 'agriculture-environment', NULL, NULL, NULL, 129, 130, 2, NULL, 1),
(111, 'en', 111, 109, 'Assistantship - Secretariat - Helpdesk', 'assistantship-secretariat-helpdesk', NULL, NULL, NULL, 153, 154, 2, NULL, 1),
(112, 'en', 112, 109, 'Automotive - Mechanic', 'automotive-mechanic', NULL, NULL, NULL, 171, 172, 2, NULL, 1),
(113, 'en', 113, 109, 'Others Jobs Search', 'others-jobs-search', NULL, NULL, NULL, 169, 170, 2, NULL, 1),
(114, 'en', 114, 109, 'BTP - Construction - Building', 'btp-construction-building', NULL, NULL, NULL, 165, 166, 2, NULL, 1),
(115, 'en', 115, 109, 'Trade - Business Services', 'trade-business-services', NULL, NULL, NULL, 167, 168, 2, NULL, 1),
(116, 'en', 116, 109, 'Commercial - Sale Jobs Search', 'commercial-sale-jobs-search', NULL, NULL, NULL, 163, 164, 2, NULL, 1),
(117, 'en', 117, 109, 'Accounting - Management - Finance', 'accounting-management-finance', NULL, NULL, NULL, 161, 162, 2, NULL, 1),
(118, 'en', 118, 109, 'Steering - Manager', 'steering-manager', NULL, NULL, NULL, 157, 158, 2, NULL, 1),
(119, 'en', 119, 109, 'Aesthetics - Hair - Beauty', 'aesthetics-hair-beauty', NULL, NULL, NULL, 155, 156, 2, NULL, 1),
(120, 'en', 120, 109, 'Public Service Jobs Search', 'public-service-jobs-search', NULL, NULL, NULL, 151, 152, 2, NULL, 1),
(121, 'en', 121, 109, 'Real Estate Jobs Search', 'real-estate-jobs-search', NULL, NULL, NULL, 131, 132, 2, NULL, 1),
(122, 'en', 122, 109, 'Independent - Freelance - Telecommuting', 'independent-freelance-telecommuting', NULL, NULL, NULL, 149, 150, 2, NULL, 1),
(123, 'en', 123, 109, 'Computers - Internet - Telecommunications', 'computers-internet-telecommunications', NULL, NULL, NULL, 147, 148, 2, NULL, 1),
(124, 'en', 124, 109, 'Industry, Production & engineering', 'industry-production-engineering', NULL, NULL, NULL, 145, 146, 2, NULL, 1),
(125, 'en', 125, 109, 'Marketing - Communication', 'marketing-communication', NULL, NULL, NULL, 159, 160, 2, NULL, 1),
(126, 'en', 126, 109, 'Babysitting - Nanny Work', 'babysitting-nanny-work', NULL, NULL, NULL, 143, 144, 2, NULL, 1),
(127, 'en', 127, 109, 'HR - Training - Education', 'hr-training-education', NULL, NULL, NULL, 141, 142, 2, NULL, 1),
(128, 'en', 128, 109, 'Medical - Healthcare - Social', 'medical-healthcare-social', NULL, NULL, NULL, 139, 140, 2, NULL, 1),
(129, 'en', 129, 109, 'Security - Guarding', 'security-guarding', NULL, NULL, NULL, 137, 138, 2, NULL, 1),
(130, 'en', 130, 109, 'Household Services - Housekeeping', 'household-services-housekeeping', NULL, NULL, NULL, 135, 136, 2, NULL, 1),
(131, 'en', 131, 109, 'Tourism - Hotels - Restaurants - Leisure', 'tourism-hotels-restaurants-leisure', NULL, NULL, NULL, 133, 134, 2, NULL, 1),
(132, 'en', 132, 109, 'Transportation - Logistics', 'transportation-logistics', NULL, NULL, NULL, 173, 174, 2, NULL, 1),
(133, 'en', 133, 0, 'Learning', 'learning', NULL, 'fa-graduation-cap.png', 'icon-book-open', 250, 265, 1, 'service', 1),
(134, 'en', 134, 133, 'Language Classes', 'language-classes', NULL, NULL, NULL, 263, 264, 2, NULL, 1),
(135, 'en', 135, 133, 'Computer Courses', 'computer-courses', NULL, NULL, NULL, 261, 262, 2, NULL, 1),
(136, 'en', 136, 133, 'Tutoring, Private Lessons', 'tutoring-private-lessons', NULL, NULL, NULL, 257, 258, 2, NULL, 1),
(137, 'en', 137, 133, 'Vocational Training', 'vocational-training', NULL, NULL, NULL, 259, 260, 2, NULL, 1),
(138, 'en', 138, 133, 'Maths, Physics, Chemistry', 'maths-physics-chemistry', NULL, NULL, NULL, 251, 252, 2, NULL, 1),
(139, 'en', 139, 133, 'Music, Theatre, Dance', 'music-theatre-dance', NULL, NULL, NULL, 253, 254, 2, NULL, 1),
(140, 'en', 140, 133, 'School support', 'school-support', NULL, NULL, NULL, 255, 256, 2, NULL, 1),
(141, 'en', 141, 0, 'Local Events', 'local-events', NULL, 'fa-calendar.png', 'icon-megaphone-1', 224, 249, 1, 'classified', 1),
(142, 'en', 142, 141, 'Concerts & Festivals', 'concerts-festivals', NULL, NULL, NULL, 227, 228, 2, NULL, 1),
(143, 'en', 143, 141, 'Networking & Meetups', 'networking-meetups', NULL, NULL, NULL, 229, 230, 2, NULL, 1),
(144, 'en', 144, 141, 'Sports & Outdoors', 'sports-outdoors', NULL, NULL, NULL, 225, 226, 2, NULL, 1),
(145, 'en', 145, 141, 'Trade Shows & Conventions', 'trade-shows-conventions', NULL, NULL, NULL, 231, 232, 2, NULL, 1),
(146, 'en', 146, 141, 'Training & Seminars', 'training-seminars', NULL, NULL, NULL, 233, 234, 2, NULL, 1),
(147, 'en', 147, 141, 'Ceremonies', 'ceremonies', NULL, NULL, NULL, 235, 236, 2, NULL, 1),
(148, 'en', 148, 141, 'Conferences', 'conferences', NULL, NULL, NULL, 237, 238, 2, NULL, 1),
(149, 'en', 149, 141, 'Weddings', 'weddings', NULL, NULL, NULL, 239, 240, 2, NULL, 1),
(150, 'en', 150, 141, 'Birthdays', 'birthdays', NULL, NULL, NULL, 241, 242, 2, NULL, 1),
(151, 'en', 151, 141, 'Family Events', 'family-events', NULL, NULL, NULL, 243, 244, 2, NULL, 1),
(152, 'en', 152, 141, 'Nightlife', 'nightlife', NULL, NULL, NULL, 245, 246, 2, NULL, 1),
(153, 'en', 153, 141, 'All others events', 'all-others-events', NULL, NULL, NULL, 247, 248, 2, NULL, 1),
(154, 'fr', 1, 0, 'Auto - Moto', 'auto-moto', NULL, 'fa-car.png', 'fa fa-car', 8, 9, 1, 'classified', 1),
(155, 'fr', 2, 1, 'Caravane et Nautisme', 'caravane-et-nautisme', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(156, 'fr', 3, 1, 'Location Véhicule, Motos', 'location-vehicule-motos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(157, 'fr', 4, 1, 'Motos, Quads - Scooters, Vélos', 'motos-quads-scooters-velos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(158, 'fr', 5, 1, 'Pièces détachées auto', 'pieces-detachees-auto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(159, 'fr', 6, 1, 'Pièces et accessoires moto', 'pieces-et-accessoires-moto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(160, 'fr', 7, 1, 'Véhicules Utilitaires et Engins', 'vehicules-utilitaires-et-engins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(161, 'fr', 8, 1, 'Voitures Occasion ou Neuves', 'voitures-occasion-ou-neuves', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(162, 'fr', 9, 0, 'Immobilier', 'immobilier', NULL, 'fa-home.png', 'icon-home', 4, 5, 1, NULL, 1),
(163, 'fr', 10, 9, 'Bureaux - Locaux commerciaux', 'bureaux-locaux-commerciaux', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(164, 'fr', 11, 9, 'Cherche à louer ou acheter', 'cherche-a-louer-ou-acheter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(165, 'fr', 12, 9, 'Colocations', 'colocations', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(166, 'fr', 13, 9, 'Hôtels et hébergements', 'hotels-et-hebergements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(167, 'fr', 14, 9, 'Location Maison, Appartement', 'location-maison-appartement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(168, 'fr', 15, 9, 'Location Vacances - Gîtes', 'location-vacances-gites', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(169, 'fr', 16, 9, 'Parkings, Garages, Fermes', 'parkings-garages-fermes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(170, 'fr', 17, 9, 'Services Immobiliers pro', 'services-immobiliers-pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(171, 'fr', 18, 9, 'Studio - Chambre à louer', 'studio-chambre-a-louer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(172, 'fr', 19, 9, 'Terrains à Vendre, Louer, Batir', 'terrains-a-vendre-louer-batir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(173, 'fr', 20, 9, 'Ventes immobilières', 'ventes-immobilieres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(174, 'fr', 21, 0, 'Services', 'services', NULL, 'ion-clipboard.png', 'fa fa-briefcase', 10, 11, 1, 'service', 1),
(175, 'fr', 22, 21, 'Autres services & Bons plans', 'autres-services-bons-plans', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(176, 'fr', 23, 21, 'Casting, Modèle, Photographe', 'casting-modele-photographe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(177, 'fr', 24, 21, 'Covoiturage - Auto-stop', 'covoiturage-auto-stop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(178, 'fr', 25, 21, 'Déménagement, Garde-Meubles', 'demenagement-garde-meubles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(179, 'fr', 26, 21, 'Déstockage - Fond de Commerce', 'destockage-fond-de-commerce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(180, 'fr', 27, 21, 'Équipements Industriels', 'equipements-industriels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(181, 'fr', 28, 21, 'Esthétique - Coiffure', 'esthetique-coiffure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(182, 'fr', 29, 21, 'Horoscope - Voyance - Astrologie', 'horoscope-voyance-astrologie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(183, 'fr', 30, 21, 'Matériaux et équipements pro', 'materiaux-et-equipements-pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(184, 'fr', 31, 21, 'Organisation Evènement', 'organisation-evenement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(185, 'fr', 32, 21, 'Prestations de services', 'prestations-de-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(186, 'fr', 33, 21, 'Santé, Forme, Beauté', 'sante-forme-beaute', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(187, 'fr', 34, 21, 'Services Dépannage - Artisan', 'services-depannage-artisan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(188, 'fr', 35, 21, 'Services Informatiques', 'services-informatiques', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(189, 'fr', 36, 21, 'Services tourisme et voyage', 'services-tourisme-et-voyage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(190, 'fr', 37, 21, 'Traduction - Rédaction', 'traduction-redaction', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(191, 'fr', 38, 21, 'Travaux - Rénovation - Menuiserie', 'travaux-renovation-menuiserie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(192, 'fr', 39, 0, 'Loisirs', 'loisirs', NULL, 'fa-users.png', 'icon-theatre', 20, 21, 1, NULL, 1),
(193, 'fr', 40, 39, 'Articles de sport, Exercice', 'articles-de-sport-exercice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(194, 'fr', 41, 39, 'Artistes, Musiciens', 'artistes-musiciens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(195, 'fr', 42, 39, 'Association, Bénévoles', 'association-benevoles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(196, 'fr', 43, 39, 'CD/DVD - Livres - Films', 'cddvd-livres-films', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(197, 'fr', 44, 39, 'Infos locales et Autres', 'infos-locales-et-autres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(198, 'fr', 45, 39, 'Restaurants, Bars, Snack', 'restaurants-bars-snack', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(199, 'fr', 46, 39, 'Sorties - Loisirs - Soirée', 'sorties-loisirs-soiree', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(200, 'fr', 47, 0, 'Multimédia', 'multimedia', NULL, 'fa-laptop.png', 'icon-laptop', 2, 3, 1, NULL, 1),
(201, 'fr', 48, 47, 'Accessoires Multimédia et Informatique', 'accessoires-multimedia-et-informatique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(202, 'fr', 49, 47, 'CD/DVD - Livres - Films', 'cddvd-livres-films', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(203, 'fr', 50, 47, 'Consoles - Jeux vidéos', 'consoles-jeux-videos', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(204, 'fr', 51, 47, 'Ordinateurs de bureau - Portables', 'ordinateurs-de-bureau-portables', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(205, 'fr', 52, 47, 'Recherche pour acheter', 'recherche-pour-acheter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(206, 'fr', 53, 47, 'Tablettes - Ecrans tactiles', 'tablettes-ecrans-tactiles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(207, 'fr', 54, 47, 'Téléphones mobiles - Smartphones', 'telephones-mobiles-smartphones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(208, 'fr', 55, 47, 'TV, Images, Son, Appareils photo', 'tv-images-son-appareils-photo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(209, 'fr', 56, 47, 'Liquidation - Commercial', 'liquidation-commercial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(210, 'fr', 57, 47, 'Equipement industriel', 'equipement-industriel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(211, 'fr', 58, 47, 'Matériaux et équipements professionnels', 'materiaux-et-equipements-professionnels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(212, 'fr', 59, 0, 'Mode, Maison & Déco', 'mode-maison-deco', NULL, 'fa-home.png', 'icon-basket-1', 6, 7, 1, NULL, 1),
(213, 'fr', 60, 59, 'Ameublement - Art de la table', 'ameublement-art-de-la-table', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(214, 'fr', 61, 59, 'Antiquités - Art - Décoration', 'antiquites-art-decoration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(215, 'fr', 62, 59, 'Appareils électroménagers', 'appareils-electromenagers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(216, 'fr', 63, 59, 'Bijoux - Montres - Bagagerie', 'bijoux-montres-bagagerie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(217, 'fr', 64, 59, 'Bricolage - Jardinage', 'bricolage-jardinage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(218, 'fr', 65, 59, 'Brocantes divers', 'brocantes-divers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(219, 'fr', 66, 59, 'Chaussures', 'chaussures', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(220, 'fr', 67, 59, 'Jeux - Jouets - Figurines', 'jeux-jouets-figurines', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(221, 'fr', 68, 59, 'Vêtements - Sacs - Accessoires Mode', 'vetements-sacs-accessoires-mode', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(222, 'fr', 69, 59, 'Puériculture et équipement Bébé', 'puericulture-et-equipement-bebe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(223, 'fr', 70, 59, 'Beauté, Santé', 'beaute-sante', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(224, 'fr', 71, 59, 'Vins & Gastronomie - Recettes', 'vins-gastronomie-recettes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(225, 'fr', 72, 0, 'Animaux, Mascottes', 'animaux-mascottes', NULL, 'map-icon-pet-store.png', 'icon-guidedog', 22, 23, 1, 'no-condition', 1),
(226, 'fr', 73, 72, 'Services, Accessoires et Autres', 'services-accessoires-et-autres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(227, 'fr', 74, 72, 'Ventes, Adoptions, Perdus', 'ventes-adoptions-perdus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(228, 'fr', 75, 0, 'Rencontres', 'rencontres', NULL, 'ion-ios-heart.png', 'icon-heart', 24, 25, 1, 'not-salable', 1),
(229, 'fr', 76, 75, 'Amitiés - Compagnons', 'amities-compagnons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(230, 'fr', 77, 75, 'Escorts - Services Adultes', 'escorts-services-adultes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(231, 'fr', 78, 75, 'Femme cherche Femme', 'femme-cherche-femme', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(232, 'fr', 79, 75, 'Femme cherche Homme', 'femme-cherche-homme', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(233, 'fr', 80, 75, 'Homme cherche Femme', 'homme-cherche-femme', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(234, 'fr', 81, 75, 'Homme cherche Homme', 'homme-cherche-homme', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(235, 'fr', 82, 75, 'Massage - Relaxation', 'massage-relaxation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(236, 'fr', 83, 75, 'Produits Adultes - Articles', 'produits-adultes-articles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(237, 'fr', 84, 75, 'Rencontre Occasionnelle', 'rencontre-occasionnelle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(238, 'fr', 85, 0, 'Offres Emploi', 'offres-emploi', NULL, 'mfglabs-users.png', 'icon-megaphone-1', 14, 15, 1, 'job-offer', 1),
(239, 'fr', 86, 85, 'Agriculture - Environnement', 'agriculture-environnement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(240, 'fr', 87, 85, 'Assistanat - Secrétariat - Accueil', 'assistanat-secretariat-accueil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(241, 'fr', 88, 85, 'Automobile - Mécanicien', 'automobile-mecanicien', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(242, 'fr', 89, 85, 'Autres offres d''emploi', 'autres-offres-demploi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(243, 'fr', 90, 85, 'BTP - Bâtiment Emplois', 'btp-batiment-emplois', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(244, 'fr', 91, 85, 'Commerce - Prestation de proximité', 'commerce-prestation-de-proximite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(245, 'fr', 92, 85, 'Commercial - Vente - Distribution', 'commercial-vente-distribution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(246, 'fr', 93, 85, 'Comptabilité - Gestion - Finance', 'comptabilite-gestion-finance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(247, 'fr', 94, 85, 'Direction - Responsable - Manager', 'direction-responsable-manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(248, 'fr', 95, 85, 'Esthétique - Coiffure - Beauté', 'esthetique-coiffure-beaute', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(249, 'fr', 96, 85, 'Fonction publique Emplois', 'fonction-publique-emplois', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(250, 'fr', 97, 85, 'Immobilier Emplois', 'immobilier-emplois', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(251, 'fr', 98, 85, 'Indépendant - Freelance - Télétravail', 'independant-freelance-teletravail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(252, 'fr', 99, 85, 'Informatique - Internet - Télécom - IT', 'informatique-internet-telecom-it', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(253, 'fr', 100, 85, 'Ingénierie - Industrie - Production', 'ingenierie-industrie-production', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(254, 'fr', 101, 85, 'Marketing - Communication', 'marketing-communication', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(255, 'fr', 102, 85, 'Nounou - Garde d''enfants', 'nounou-garde-denfants', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(256, 'fr', 103, 85, 'RH - Formation - Enseignement', 'rh-formation-enseignement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(257, 'fr', 104, 85, 'Santé - Paramédical - Social', 'sante-paramedical-social', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(258, 'fr', 105, 85, 'Sécurité - Gardiennage', 'securite-gardiennage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(259, 'fr', 106, 85, 'Services Ménagers - Entretien Ménager', 'services-menagers-entretien-menager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(260, 'fr', 107, 85, 'Tourisme - Hôtellerie - Restauration - Loisirs', 'tourisme-hotellerie-restauration-loisirs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(261, 'fr', 108, 85, 'Transport - Logistique', 'transport-logistique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(262, 'fr', 109, 0, 'Recherche Emploi', 'recherche-emploi', NULL, 'fa-search.png', 'icon-search', 12, 13, 1, 'job-search', 1),
(263, 'fr', 110, 109, 'Agriculture - Environnement', 'agriculture-environnement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(264, 'fr', 111, 109, 'Assistanat - Secrétariat - Accueil', 'assistanat-secretariat-accueil', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(265, 'fr', 112, 109, 'Automobile - Mécanicien', 'automobile-mecanicien', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(266, 'fr', 113, 109, 'Autres recherche d''emploi', 'autres-recherche-demploi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(267, 'fr', 114, 109, 'BTP - Bâtiment Emploi', 'btp-batiment-emploi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(268, 'fr', 115, 109, 'Commerce - Prestation de proximité', 'commerce-prestation-de-proximite', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(269, 'fr', 116, 109, 'Commercial - Vente - Distribution', 'commercial-vente-distribution', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(270, 'fr', 117, 109, 'Comptabilité - Gestion - Finance', 'comptabilite-gestion-finance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(271, 'fr', 118, 109, 'Direction - Responsable - Manager', 'direction-responsable-manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(272, 'fr', 119, 109, 'Esthétique - Coiffure - Beauté', 'esthetique-coiffure-beaute', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(273, 'fr', 120, 109, 'Fonction publique Emploi', 'fonction-publique-emploi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(274, 'fr', 121, 109, 'Immobilier Emploi', 'immobilier-emploi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(275, 'fr', 122, 109, 'Indépendant - Freelance - Télétravail', 'independant-freelance-teletravail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(276, 'fr', 123, 109, 'Informatique - Internet - Télécom - IT', 'informatique-internet-telecom-it', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(277, 'fr', 124, 109, 'Ingénierie - Industrie - Production', 'ingenierie-industrie-production', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(278, 'fr', 125, 109, 'Marketing - Communication', 'marketing-communication', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(279, 'fr', 126, 109, 'Nounou - Garde d''enfants', 'nounou-garde-denfants', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(280, 'fr', 127, 109, 'RH - Formation - Enseignement', 'rh-formation-enseignement', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(281, 'fr', 128, 109, 'Santé - Paramédical - Social', 'sante-paramedical-social', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(282, 'fr', 129, 109, 'Sécurité - Gardiennage', 'securite-gardiennage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(283, 'fr', 130, 109, 'Services Ménagers - Entretien Ménager', 'services-menagers-entretien-menager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(284, 'fr', 131, 109, 'Tourisme - Hôtellerie - Restauration - Loisirs', 'tourisme-hotellerie-restauration-loisirs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(285, 'fr', 132, 109, 'Transport - Logistique', 'transport-logistique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(286, 'fr', 133, 0, 'Formations', 'formations', NULL, 'fa-graduation-cap.png', 'icon-book-open', 18, 19, 1, NULL, 1),
(287, 'fr', 134, 133, 'Cours de Langues', 'cours-de-langues', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(288, 'fr', 135, 133, 'Cours Informatique', 'cours-informatique', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(289, 'fr', 136, 133, 'Cours Particuliers', 'cours-particuliers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(290, 'fr', 137, 133, 'Formation Professionnelle', 'formation-professionnelle', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(291, 'fr', 138, 133, 'Maths, physique, chimie', 'maths-physique-chimie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(292, 'fr', 139, 133, 'Musique, Théâtre, Danse', 'musique-theatre-danse', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(293, 'fr', 140, 133, 'Soutien scolaire', 'soutien-scolaire', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(294, 'fr', 141, 0, 'Evénements', 'evenements', NULL, 'fa-calendar.png', 'icon-megaphone-1', 16, 17, 1, NULL, 1),
(295, 'fr', 142, 141, 'Concerts et festivals', 'concerts-et-festivals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(296, 'fr', 143, 141, 'Réseautage et Meetups', 'reseautage-et-meetups', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(297, 'fr', 144, 141, 'Sport et Loisirs', 'sport-et-loisirs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(298, 'fr', 145, 141, 'Salons et Congrès', 'salons-et-congres', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(299, 'fr', 146, 141, 'Formations & Séminaires', 'formations-seminaires', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(300, 'fr', 147, 141, 'Cérémonies', 'ceremonies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(301, 'fr', 148, 141, 'Conférences', 'conferences', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(302, 'fr', 149, 141, 'Mariages', 'mariages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(303, 'fr', 150, 141, 'Anniversaires', 'anniversaires', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(304, 'fr', 151, 141, 'Les événements familiaux', 'les-evenements-familiaux', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(305, 'fr', 152, 141, 'Vie nocturne', 'vie-nocturne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(306, 'fr', 153, 141, 'Autres événements', 'autres-evenements', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(307, 'es', 1, 0, 'Automovilismo', 'automovilismo', NULL, 'fa-car.png', 'fa fa-car', 4, 5, 1, NULL, 1),
(308, 'es', 2, 1, 'Auto Parts, Accessories', 'auto-parts-accessories', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(309, 'es', 3, 1, 'Car, Motorcycle Rental', 'car-motorcycle-rental', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(310, 'es', 4, 1, 'Caravan and Boating', 'caravan-and-boating', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(311, 'es', 5, 1, 'Motorcycle parts, Accessories', 'motorcycle-parts-accessories', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(312, 'es', 6, 1, 'Motorcycles, Scooters, Quads', 'motorcycles-scooters-quads', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(313, 'es', 7, 1, 'Used Cars - New Cars', 'used-cars-new-cars', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(314, 'es', 8, 1, 'Utility Vehicles, Machinery', 'utility-vehicles-machinery', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(315, 'es', 9, 0, 'Bienes raíces', 'bienes-raices', NULL, 'fa-home.png', 'icon-home', 6, 7, 1, NULL, 1),
(316, 'es', 10, 9, 'Commercial Property - Offices - Premises', 'commercial-property-offices-premises', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(317, 'es', 11, 9, 'I''m looking for', 'im-looking-for', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(318, 'es', 12, 9, 'Roomates', 'roomates', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(319, 'es', 13, 9, 'Accommodation and Hotels', 'accommodation-and-hotels', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(320, 'es', 14, 9, 'Vacation Rental', 'vacation-rental', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(321, 'es', 15, 9, 'Garage, Parking, Farms', 'garage-parking-farms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(322, 'es', 16, 9, 'Real Estate Services', 'real-estate-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(323, 'es', 17, 9, 'Rooms - Studio for Rent', 'rooms-studio-for-rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(324, 'es', 18, 9, 'Land for Sale, Rent', 'land-for-sale-rent', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(325, 'es', 19, 9, 'Property for sale', 'property-for-sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(326, 'es', 20, 9, 'Rentals', 'rentals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(327, 'es', 21, 0, 'Servicios', 'servicios', NULL, 'ion-clipboard.png', 'fa fa-briefcase', 10, 11, 1, 'service', 1),
(328, 'es', 22, 21, 'Other services', 'other-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(329, 'es', 23, 21, 'Casting, Model, Photographer', 'casting-model-photographer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(330, 'es', 24, 21, 'Carpooling', 'carpooling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(331, 'es', 25, 21, 'Moving, Furniture Guard', 'moving-furniture-guard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(332, 'es', 26, 21, 'Destocking - Commercial', 'destocking-commercial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(333, 'es', 27, 21, 'Industrial Equipment', 'industrial-equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(334, 'es', 28, 21, 'Aesthetics, Hairstyling', 'aesthetics-hairstyling', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(335, 'es', 29, 21, 'Horoscope - Tarot - Healers - Spell', 'horoscope-tarot-healers-spell', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(336, 'es', 30, 21, 'Materials and Equipment Pro', 'materials-and-equipment-pro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(337, 'es', 31, 21, 'Event Organization Services', 'event-organization-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(338, 'es', 32, 21, 'Service Provision', 'service-provision', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(339, 'es', 33, 21, 'Health, Beauty', 'health-beauty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(340, 'es', 34, 21, 'Artisan, Troubleshooting, Handyman', 'artisan-troubleshooting-handyman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(341, 'es', 35, 21, 'Computing Services', 'computing-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(342, 'es', 36, 21, 'Tourism and Travel Services', 'tourism-and-travel-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(343, 'es', 37, 21, 'Translation, Writing', 'translation-writing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(344, 'es', 38, 21, 'Construction - Renovation - Carpentry', 'construction-renovation-carpentry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(345, 'es', 39, 0, 'Comunidad y Ocio', 'comunidad-ocio', NULL, 'fa-users.png', 'icon-theatre', 20, 21, 1, NULL, 1),
(346, 'es', 40, 39, 'Sporting goods, Exercise', 'sporting-goods-exercise', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(347, 'es', 41, 39, 'Artists, Musicians', 'artists-musicians', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(348, 'es', 42, 39, 'Associations, Voluntary', 'associations-voluntary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(349, 'es', 43, 39, 'Friendships for Events', 'friendships-for-events', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(350, 'es', 44, 39, 'My neighborhood', 'my-neighborhood', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(351, 'es', 45, 39, 'Nightlife, Restaurant & Bar', 'nightlife-restaurant-bar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(352, 'es', 46, 39, 'Outings, Entertainment', 'outings-entertainment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(353, 'es', 47, 0, 'Multimedia', 'multimedia', NULL, 'fa-laptop.png', 'icon-laptop', 2, 3, 1, NULL, 1),
(354, 'es', 48, 47, 'Multimedia & Phones Accessories', 'multimedia-phones-accessories', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(355, 'es', 49, 47, 'CD/DVD - Books - Movies', 'cddvd-books-movies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(356, 'es', 50, 47, 'Consoles - Video Games', 'consoles-video-games', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(357, 'es', 51, 47, 'Computers - PC - Office Supplies', 'computers-pc-office-supplies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(358, 'es', 52, 47, 'Wanted', 'wanted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(359, 'es', 53, 47, 'Tablets - Touchscreens', 'tablets-touchscreens', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(360, 'es', 54, 47, 'Mobiles phones - Smartphones', 'mobiles-phones-smartphones', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(361, 'es', 55, 47, 'TV - Images - Sound', 'tv-images-sound', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(362, 'es', 56, 47, 'Clearance - Commercial', 'clearance-commercial', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(363, 'es', 57, 47, 'Industrial Equipment', 'industrial-equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(364, 'es', 58, 47, 'Materials & Professional equipment', 'materials-professional-equipment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(365, 'es', 59, 0, 'Moda, Hogar y Jardín', 'moda-hogar-jardin', NULL, 'fa-home.png', 'icon-basket-1', 8, 9, 1, NULL, 1),
(366, 'es', 60, 59, 'Furniture - Tableware', 'furniture-tableware', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(367, 'es', 61, 59, 'Antiques - Art - Decoration', 'antiques-art-decoration', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(368, 'es', 62, 59, 'Appliances', 'appliances', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(369, 'es', 63, 59, 'Jewelry - Watches - Luggage', 'jewelry-watches-luggage', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(370, 'es', 64, 59, 'DIY - Gardening', 'diy-gardening', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(371, 'es', 65, 59, 'Various flea markets', 'various-flea-markets', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(372, 'es', 66, 59, 'Shoes', 'shoes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(373, 'es', 67, 59, 'Toys - Games - Figurines', 'toys-games-figurines', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(374, 'es', 68, 59, 'Clothing, Fashion & Accessories', 'clothing-fashion-accessories', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(375, 'es', 69, 59, 'Stuffs for Baby and Child', 'stuffs-for-baby-and-child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(376, 'es', 70, 59, 'Stuffs for Beauty and Health', 'stuffs-for-beauty-and-health', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(377, 'es', 71, 59, 'Wine & Gourmet - Recipes', 'wine-gourmet-recipes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(378, 'es', 72, 0, 'Animales y mascotas', 'animales-mascotas', NULL, 'map-icon-pet-store.png', 'icon-guidedog', 22, 23, 1, 'no-condition', 1),
(379, 'es', 73, 72, 'Accessories - Other Pets services', 'accessories-other-pets-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(380, 'es', 74, 72, 'Sales, Adoptions, Lost', 'sales-adoptions-lost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(381, 'es', 75, 0, 'Citas gratuito', 'citas-gratuito', NULL, 'ion-ios-heart.png', 'icon-heart', 24, 25, 1, 'not-salable', 1),
(382, 'es', 76, 75, 'Friendship - Friends', 'friendship-friends', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(383, 'es', 77, 75, 'Escorts - Adult Services', 'escorts-adult-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(384, 'es', 78, 75, 'Women Seeking Women', 'women-seeking-women', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(385, 'es', 79, 75, 'Women Seeking Men', 'women-seeking-men', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(386, 'es', 80, 75, 'Men Seeking Women', 'men-seeking-women', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(387, 'es', 81, 75, 'Men Seeking Men', 'men-seeking-men', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(388, 'es', 82, 75, 'Massage Services - Relaxation', 'massage-services-relaxation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(389, 'es', 83, 75, 'Adults Products - Articles', 'adults-products-articles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(390, 'es', 84, 75, 'Casual Encounter', 'casual-encounter', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(391, 'es', 85, 0, 'Ofertas de empleo', 'ofertas-empleo', NULL, 'mfglabs-users.png', 'icon-megaphone-1', 14, 15, 1, 'job-offer', 1),
(392, 'es', 86, 85, 'Agriculture - Environment', 'agriculture-environment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(393, 'es', 87, 85, 'Assistantship - Secretariat - Helpdesk', 'assistantship-secretariat-helpdesk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(394, 'es', 88, 85, 'Automotive - Mechanic', 'automotive-mechanic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(395, 'es', 89, 85, 'Others Jobs Offer', 'others-jobs-offer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(396, 'es', 90, 85, 'BTP - Construction - Building', 'btp-construction-building', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(397, 'es', 91, 85, 'Trade - Business Services', 'trade-business-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(398, 'es', 92, 85, 'Commercial - Sale Jobs Offer', 'commercial-sale-jobs-offer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(399, 'es', 93, 85, 'Accounting - Management - Finance', 'accounting-management-finance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(400, 'es', 94, 85, 'Steering - Manager', 'steering-manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(401, 'es', 95, 85, 'Aesthetics - Hair - Beauty', 'aesthetics-hair-beauty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(402, 'es', 96, 85, 'Public Service Jobs Offer', 'public-service-jobs-offer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(403, 'es', 97, 85, 'Real Estate Jobs Offer', 'real-estate-jobs-offer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(404, 'es', 98, 85, 'Independent - Freelance - Telecommuting', 'independent-freelance-telecommuting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(405, 'es', 99, 85, 'Computers - Internet - Telecommunications', 'computers-internet-telecommunications', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(406, 'es', 100, 85, 'Industry, Production & engineering', 'industry-production-engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(407, 'es', 101, 85, 'Marketing - Communication', 'marketing-communication', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(408, 'es', 102, 85, 'Babysitting - Nanny Work', 'babysitting-nanny-work', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(409, 'es', 103, 85, 'HR - Training - Education', 'hr-training-education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(410, 'es', 104, 85, 'Medical - Healthcare - Social', 'medical-healthcare-social', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(411, 'es', 105, 85, 'Security - Guarding', 'security-guarding', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(412, 'es', 106, 85, 'Household Services - Housekeeping', 'household-services-housekeeping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(413, 'es', 107, 85, 'Tourism - Hotels - Restaurants - Leisure', 'tourism-hotels-restaurants-leisure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(414, 'es', 108, 85, 'Transportation - Logistics', 'transportation-logistics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(415, 'es', 109, 0, 'Búsqueda de trabajo', 'busqueda-trabajo', NULL, 'fa-search.png', 'icon-search', 12, 13, 1, 'job-search', 1),
(416, 'es', 110, 109, 'Agriculture - Environment', 'agriculture-environment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(417, 'es', 111, 109, 'Assistantship - Secretariat - Helpdesk', 'assistantship-secretariat-helpdesk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(418, 'es', 112, 109, 'Automotive - Mechanic', 'automotive-mechanic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(419, 'es', 113, 109, 'Others Jobs Search', 'others-jobs-search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(420, 'es', 114, 109, 'BTP - Construction - Building', 'btp-construction-building', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(421, 'es', 115, 109, 'Trade - Business Services', 'trade-business-services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(422, 'es', 116, 109, 'Commercial - Sale Jobs Search', 'commercial-sale-jobs-search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(423, 'es', 117, 109, 'Accounting - Management - Finance', 'accounting-management-finance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(424, 'es', 118, 109, 'Steering - Manager', 'steering-manager', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(425, 'es', 119, 109, 'Aesthetics - Hair - Beauty', 'aesthetics-hair-beauty', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(426, 'es', 120, 109, 'Public Service Jobs Search', 'public-service-jobs-search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(427, 'es', 121, 109, 'Real Estate Jobs Search', 'real-estate-jobs-search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(428, 'es', 122, 109, 'Independent - Freelance - Telecommuting', 'independent-freelance-telecommuting', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(429, 'es', 123, 109, 'Computers - Internet - Telecommunications', 'computers-internet-telecommunications', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(430, 'es', 124, 109, 'Industry, Production & engineering', 'industry-production-engineering', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(431, 'es', 125, 109, 'Marketing - Communication', 'marketing-communication', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(432, 'es', 126, 109, 'Babysitting - Nanny Work', 'babysitting-nanny-work', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(433, 'es', 127, 109, 'HR - Training - Education', 'hr-training-education', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(434, 'es', 128, 109, 'Medical - Healthcare - Social', 'medical-healthcare-social', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(435, 'es', 129, 109, 'Security - Guarding', 'security-guarding', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(436, 'es', 130, 109, 'Household Services - Housekeeping', 'household-services-housekeeping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(437, 'es', 131, 109, 'Tourism - Hotels - Restaurants - Leisure', 'tourism-hotels-restaurants-leisure', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(438, 'es', 132, 109, 'Transportation - Logistics', 'transportation-logistics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(439, 'es', 133, 0, 'Aprendizaje', 'aprendizaje', NULL, 'fa-graduation-cap.png', 'icon-book-open', 18, 19, 1, NULL, 1),
(440, 'es', 134, 133, 'Language Classes', 'language-classes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(441, 'es', 135, 133, 'Computer Courses', 'computer-courses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(442, 'es', 136, 133, 'Tutoring, Private Lessons', 'tutoring-private-lessons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(443, 'es', 137, 133, 'Vocational Training', 'vocational-training', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(444, 'es', 138, 133, 'Maths, Physics, Chemistry', 'maths-physics-chemistry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(445, 'es', 139, 133, 'Music, Theatre, Dance', 'music-theatre-dance', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(446, 'es', 140, 133, 'School support', 'school-support', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(447, 'es', 141, 0, 'Eventos locales', 'eventos-locales', NULL, 'fa-calendar.png', 'icon-megaphone-1', 16, 17, 1, NULL, 1),
(448, 'es', 142, 141, 'Concerts & Festivals', 'concerts-festivals', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(449, 'es', 143, 141, 'Networking & Meetups', 'networking-meetups', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(450, 'es', 144, 141, 'Sports & Outdoors', 'sports-outdoors', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(451, 'es', 145, 141, 'Trade Shows & Conventions', 'trade-shows-conventions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(452, 'es', 146, 141, 'Training & Seminars', 'training-seminars', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(453, 'es', 147, 141, 'Ceremonies', 'ceremonies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(454, 'es', 148, 141, 'Conferences', 'conferences', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(455, 'es', 149, 141, 'Weddings', 'weddings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(456, 'es', 150, 141, 'Birthdays', 'birthdays', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(457, 'es', 151, 141, 'Family Events', 'family-events', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(458, 'es', 152, 141, 'Nightlife', 'nightlife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(459, 'es', 153, 141, 'All others events', 'all-others-events', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

--
-- Truncate table before insert `<<prefix>>category_field`
--

TRUNCATE TABLE `<<prefix>>category_field`;
--
-- Dumping data for table `<<prefix>>category_field`
--

INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(1, 1, 1, 0, 2, 3, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(2, 1, 21, 0, 16, 17, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(5, 109, 25, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(6, 1, 17, 0, 8, 9, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(7, 1, 13, 0, 14, 15, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(8, 1, 5, 0, 4, 5, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(9, 1, 9, 0, 6, 7, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(15, 1, 28, 0, 12, 13, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(16, 1, 31, 0, 10, 11, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(17, 85, 34, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(18, 85, 37, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(19, 85, 40, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(20, 9, 43, 0, 2, 3, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(21, 9, 46, 0, 4, 5, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(22, 9, 49, 0, 8, 9, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(23, 9, 52, 0, 10, 11, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(24, 9, 55, 0, 6, 7, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(25, 47, 75, 0, 2, 3, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(27, 75, 81, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(28, 75, 84, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(29, 75, 87, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(31, 141, 93, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(32, 141, 96, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(33, 141, 90, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(34, 47, 28, 0, 4, 5, 1);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(35, 59, 28, NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>category_field` (`id`, `category_id`, `field_id`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(36, 109, 40, NULL, NULL, NULL, NULL);

--
-- Truncate table before insert `<<prefix>>continents`
--

TRUNCATE TABLE `<<prefix>>continents`;
--
-- Dumping data for table `<<prefix>>continents`
--

INSERT INTO `<<prefix>>continents` (`id`, `code`, `name`, `active`) VALUES
(1, 'AF', 'Africa', 1),
(2, 'AN', 'Antarctica', 1),
(3, 'AS', 'Asia', 1),
(4, 'EU', 'Europe', 1),
(5, 'NA', 'North America', 1),
(6, 'OC', 'Oceania', 1),
(7, 'SA', 'South America', 1);

--
-- Truncate table before insert `<<prefix>>countries`
--

TRUNCATE TABLE `<<prefix>>countries`;
--
-- Dumping data for table `<<prefix>>countries`
--

INSERT INTO `<<prefix>>countries` (`id`, `code`, `iso3`, `iso_numeric`, `fips`, `name`, `asciiname`, `capital`, `area`, `population`, `continent_code`, `tld`, `currency_code`, `phone`, `postal_code_format`, `postal_code_regex`, `languages`, `neighbours`, `equivalent_fips_code`, `active`, `created_at`, `updated_at`) VALUES
(1, 'AD', 'AND', 20, 'AN', 'Andorra', 'Andorra', 'Andorra la Vella', 468, 84000, 'EU', '.ad', 'EUR', '376', 'AD###', '^(?:AD)*(d{3})$', 'ca', 'ES,FR', '', 0, NULL, NULL),
(2, 'AE', 'ARE', 784, 'AE', 'al-Imārāt', 'United Arab Emirates', 'Abu Dhabi', 82880, 4975593, 'AS', '.ae', 'AED', '971', '', '', 'ar-AE,fa,en,hi,ur', 'SA,OM', '', 0, NULL, NULL),
(3, 'AF', 'AFG', 4, 'AF', 'Afġānistān', 'Afghanistan', 'Kabul', 647500, 29121286, 'AS', '.af', 'AFN', '93', '', '', 'fa-AF,ps,uz-AF,tk', 'TM,CN,IR,TJ,PK,UZ', '', 0, NULL, NULL),
(4, 'AG', 'ATG', 28, 'AC', 'Antigua and Barbuda', 'Antigua and Barbuda', 'St. John''s', 443, 86754, 'NA', '.ag', 'XCD', '+1-268', '', '', 'en-AG', '', '', 0, NULL, NULL),
(5, 'AI', 'AIA', 660, 'AV', 'Anguilla', 'Anguilla', 'The Valley', 102, 13254, 'NA', '.ai', 'XCD', '+1-264', '', '', 'en-AI', '', '', 0, NULL, NULL),
(6, 'AL', 'ALB', 8, 'AL', 'Shqipëria', 'Albania', 'Tirana', 28748, 2986952, 'EU', '.al', 'ALL', '355', '', '', 'sq,el', 'MK,GR,ME,RS,XK', '', 0, NULL, NULL),
(7, 'AM', 'ARM', 51, 'AM', 'Hayastan', 'Armenia', 'Yerevan', 29800, 2968000, 'AS', '.am', 'AMD', '374', '######', '^(d{6})$', 'hy', 'GE,IR,AZ,TR', '', 0, NULL, NULL),
(8, 'AN', 'ANT', 530, 'NT', 'Netherlands Antilles', 'Netherlands Antilles', 'Willemstad', 960, 136197, 'NA', '.an', 'ANG', '599', '', '', 'nl-AN,en,es', 'GP', '', 0, NULL, NULL),
(9, 'AO', 'AGO', 24, 'AO', 'Angola', 'Angola', 'Luanda', 1246700, 13068161, 'AF', '.ao', 'AOA', '244', '', '', 'pt-AO', 'CD,NA,ZM,CG', '', 0, NULL, NULL),
(10, 'AQ', 'ATA', 10, 'AY', 'Antarctica', 'Antarctica', '', 14000000, 0, 'AN', '.aq', '', '', '', '', '', '', '', 0, NULL, NULL),
(11, 'AR', 'ARG', 32, 'AR', 'Argentina', 'Argentina', 'Buenos Aires', 2766890, 41343201, 'SA', '.ar', 'ARS', '54', '@####@@@', '^([A-Z]d{4}[A-Z]{3})$', 'es-AR,en,it,de,fr,gn', 'CL,BO,UY,PY,BR', '', 0, NULL, NULL),
(12, 'AS', 'ASM', 16, 'AQ', 'American Samoa', 'American Samoa', 'Pago Pago', 199, 57881, 'OC', '.as', 'USD', '+1-684', '', '', 'en-AS,sm,to', '', '', 0, NULL, NULL),
(13, 'AT', 'AUT', 40, 'AU', 'Österreich', 'Austria', 'Vienna', 83858, 8205000, 'EU', '.at', 'EUR', '43', '####', '^(d{4})$', 'de-AT,hr,hu,sl', 'CH,DE,HU,SK,CZ,IT,SI,LI', '', 0, NULL, NULL),
(14, 'AU', 'AUS', 36, 'AS', 'Australia', 'Australia', 'Canberra', 7686850, 21515754, 'OC', '.au', 'AUD', '61', '####', '^(d{4})$', 'en-AU', '', '', 0, NULL, NULL),
(15, 'AW', 'ABW', 533, 'AA', 'Aruba', 'Aruba', 'Oranjestad', 193, 71566, 'NA', '.aw', 'AWG', '297', '', '', 'nl-AW,es,en', '', '', 0, NULL, NULL),
(16, 'AX', 'ALA', 248, '', 'Aland Islands', 'Aland Islands', 'Mariehamn', 1580, 26711, 'EU', '.ax', 'EUR', '+358-18', '#####', '^(?:FI)*(d{5})$', 'sv-AX', '', 'FI', 0, NULL, NULL),
(17, 'AZ', 'AZE', 31, 'AJ', 'Azərbaycan', 'Azerbaijan', 'Baku', 86600, 8303512, 'AS', '.az', 'AZN', '994', 'AZ ####', '^(?:AZ)*(d{4})$', 'az,ru,hy', 'GE,IR,AM,TR,RU', '', 0, NULL, NULL),
(18, 'BA', 'BIH', 70, 'BK', 'Bosna i Hercegovina', 'Bosnia and Herzegovina', 'Sarajevo', 51129, 4590000, 'EU', '.ba', 'BAM', '387', '#####', '^(d{5})$', 'bs,hr-BA,sr-BA', 'HR,ME,RS', '', 0, NULL, NULL),
(19, 'BB', 'BRB', 52, 'BB', 'Barbados', 'Barbados', 'Bridgetown', 431, 285653, 'NA', '.bb', 'BBD', '+1-246', 'BB#####', '^(?:BB)*(d{5})$', 'en-BB', '', '', 0, NULL, NULL),
(20, 'BD', 'BGD', 50, 'BG', 'Bāṅlādēś', 'Bangladesh', 'Dhaka', 144000, 156118464, 'AS', '.bd', 'BDT', '880', '####', '^(d{4})$', 'bn-BD,en', 'MM,IN', '', 0, NULL, NULL),
(21, 'BE', 'BEL', 56, 'BE', 'Belgique', 'Belgium', 'Brussels', 30510, 10403000, 'EU', '.be', 'EUR', '32', '####', '^(d{4})$', 'nl-BE,fr-BE,de-BE', 'DE,NL,LU,FR', '', 0, NULL, NULL),
(22, 'BF', 'BFA', 854, 'UV', 'Burkina Faso', 'Burkina Faso', 'Ouagadougou', 274200, 16241811, 'AF', '.bf', 'XOF', '226', '', '', 'fr-BF', 'NE,BJ,GH,CI,TG,ML', '', 0, NULL, NULL),
(23, 'BG', 'BGR', 100, 'BU', 'Bŭlgarija', 'Bulgaria', 'Sofia', 110910, 7148785, 'EU', '.bg', 'BGN', '359', '####', '^(d{4})$', 'bg,tr-BG,rom', 'MK,GR,RO,TR,RS', '', 0, NULL, NULL),
(24, 'BH', 'BHR', 48, 'BA', 'al-Baḥrayn', 'Bahrain', 'Manama', 665, 738004, 'AS', '.bh', 'BHD', '973', '####|###', '^(d{3}d?)$', 'ar-BH,en,fa,ur', '', '', 0, NULL, NULL),
(25, 'BI', 'BDI', 108, 'BY', 'Burundi', 'Burundi', 'Bujumbura', 27830, 9863117, 'AF', '.bi', 'BIF', '257', '', '', 'fr-BI,rn', 'TZ,CD,RW', '', 0, NULL, NULL),
(26, 'BJ', 'BEN', 204, 'BN', 'Bénin', 'Benin', 'Porto-Novo', 112620, 9056010, 'AF', '.bj', 'XOF', '+229', '', '', 'fr-BJ', 'NE,TG,BF,NG', '', 0, NULL, '2016-05-09 20:55:29'),
(27, 'BL', 'BLM', 652, 'TB', 'Saint Barthelemy', 'Saint Barthelemy', 'Gustavia', 21, 8450, 'NA', '.gp', 'EUR', '590', '### ###', '', 'fr', '', '', 0, NULL, NULL),
(28, 'BM', 'BMU', 60, 'BD', 'Bermuda', 'Bermuda', 'Hamilton', 53, 65365, 'NA', '.bm', 'BMD', '+1-441', '@@ ##', '^([A-Z]{2}d{2})$', 'en-BM,pt', '', '', 0, NULL, NULL),
(29, 'BN', 'BRN', 96, 'BX', 'Brunei Darussalam', 'Brunei', 'Bandar Seri Begawan', 5770, 395027, 'AS', '.bn', 'BND', '673', '@@####', '^([A-Z]{2}d{4})$', 'ms-BN,en-BN', 'MY', '', 0, NULL, NULL),
(30, 'BO', 'BOL', 68, 'BL', 'Bolivia', 'Bolivia', 'Sucre', 1098580, 9947418, 'SA', '.bo', 'BOB', '591', '', '', 'es-BO,qu,ay', 'PE,CL,PY,BR,AR', '', 0, NULL, NULL),
(31, 'BQ', 'BES', 535, '', 'Bonaire, Saint Eustatius and Saba ', 'Bonaire, Saint Eustatius and Saba ', '', 328, 18012, 'NA', '.bq', 'USD', '599', '', '', 'nl,pap,en', '', '', 0, NULL, NULL),
(32, 'BR', 'BRA', 76, 'BR', 'Brasil', 'Brazil', 'Brasilia', 8511965, 201103330, 'SA', '.br', 'BRL', '55', '#####-###', '^(d{8})$', 'pt-BR,es,en,fr', 'SR,PE,BO,UY,GY,PY,GF,VE,CO,AR', '', 0, NULL, NULL),
(33, 'BS', 'BHS', 44, 'BF', 'Bahamas', 'Bahamas', 'Nassau', 13940, 301790, 'NA', '.bs', 'BSD', '+1-242', '', '', 'en-BS', '', '', 0, NULL, NULL),
(34, 'BT', 'BTN', 64, 'BT', 'Druk-yul', 'Bhutan', 'Thimphu', 47000, 699847, 'AS', '.bt', 'BTN', '975', '', '', 'dz', 'CN,IN', '', 0, NULL, NULL),
(35, 'BV', 'BVT', 74, 'BV', 'Bouvet Island', 'Bouvet Island', '', 49, 0, 'AN', '.bv', 'NOK', '', '', '', '', '', '', 0, NULL, NULL),
(36, 'BW', 'BWA', 72, 'BC', 'Botswana', 'Botswana', 'Gaborone', 600370, 2029307, 'AF', '.bw', 'BWP', '267', '', '', 'en-BW,tn-BW', 'ZW,ZA,NA', '', 0, NULL, NULL),
(37, 'BY', 'BLR', 112, 'BO', 'Biełaruś', 'Belarus', 'Minsk', 207600, 9685000, 'EU', '.by', 'BYR', '375', '######', '^(d{6})$', 'be,ru', 'PL,LT,UA,RU,LV', '', 0, NULL, NULL),
(38, 'BZ', 'BLZ', 84, 'BH', 'Belize', 'Belize', 'Belmopan', 22966, 314522, 'NA', '.bz', 'BZD', '501', '', '', 'en-BZ,es', 'GT,MX', '', 0, NULL, NULL),
(39, 'CA', 'CAN', 124, 'CA', 'Canada', 'Canada', 'Ottawa', 9984670, 33679000, 'NA', '.ca', 'CAD', '1', '@#@ #@#', '^([ABCEGHJKLMNPRSTVXY]d[ABCEGHJKLMNPRSTVWXYZ]) ?(d[ABCEGHJKLMNPRSTVWXYZ]d)$ ', 'en-CA,fr-CA,iu', 'US', '', 0, NULL, NULL),
(40, 'CC', 'CCK', 166, 'CK', 'Cocos Islands', 'Cocos Islands', 'West Island', 14, 628, 'AS', '.cc', 'AUD', '61', '', '', 'ms-CC,en', '', '', 0, NULL, NULL),
(41, 'CD', 'COD', 180, 'CG', 'RDC', 'Democratic Republic of the Congo', 'Kinshasa', 2345410, 70916439, 'AF', '.cd', 'CDF', '243', '', '', 'fr-CD,ln,kg', 'TZ,CF,SS,RW,ZM,BI,UG,CG,AO', '', 0, NULL, NULL),
(42, 'CF', 'CAF', 140, 'CT', 'Centrafrique', 'Central African Republic', 'Bangui', 622984, 4844927, 'AF', '.cf', 'XAF', '236', '', '', 'fr-CF,sg,ln,kg', 'TD,SD,CD,SS,CM,CG', '', 0, NULL, NULL),
(43, 'CG', 'COG', 178, 'CF', 'Congo', 'Republic of the Congo', 'Brazzaville', 342000, 3039126, 'AF', '.cg', 'XAF', '242', '', '', 'fr-CG,kg,ln-CG', 'CF,GA,CD,CM,AO', '', 0, NULL, NULL),
(44, 'CH', 'CHE', 756, 'SZ', 'Switzerland', 'Switzerland', 'Berne', 41290, 7581000, 'EU', '.ch', 'CHF', '41', '####', '^(d{4})$', 'de-CH,fr-CH,it-CH,rm', 'DE,IT,LI,FR,AT', '', 0, NULL, NULL),
(45, 'CI', 'CIV', 384, 'IV', 'Côte d''Ivoire', 'Ivory Coast', 'Yamoussoukro', 322460, 21058798, 'AF', '.ci', 'XOF', '225', '', '', 'fr-CI', 'LR,GH,GN,BF,ML', '', 0, NULL, NULL),
(46, 'CK', 'COK', 184, 'CW', 'Cook Islands', 'Cook Islands', 'Avarua', 240, 21388, 'OC', '.ck', 'NZD', '682', '', '', 'en-CK,mi', '', '', 0, NULL, NULL),
(47, 'CL', 'CHL', 152, 'CI', 'Chile', 'Chile', 'Santiago', 756950, 16746491, 'SA', '.cl', 'CLP', '56', '#######', '^(d{7})$', 'es-CL', 'PE,BO,AR', '', 0, NULL, NULL),
(48, 'CM', 'CMR', 120, 'CM', 'Cameroun', 'Cameroon', 'Yaounde', 475440, 19294149, 'AF', '.cm', 'XAF', '237', '', '', 'fr-CM,en-CM', 'TD,CF,GA,GQ,CG,NG', '', 0, NULL, NULL),
(49, 'CN', 'CHN', 156, 'CH', 'Zhōngguó', 'China', 'Beijing', 9596960, 1330044000, 'AS', '.cn', 'CNY', '86', '######', '^(d{6})$', 'zh-CN,yue,wuu,dta,ug,za', 'LA,BT,TJ,KZ,MN,AF,NP,MM,KG,PK,KP,RU,VN,IN', '', 0, NULL, NULL),
(50, 'CO', 'COL', 170, 'CO', 'Colombia', 'Colombia', 'Bogota', 1138910, 47790000, 'SA', '.co', 'COP', '57', '', '', 'es-CO', 'EC,PE,PA,BR,VE', '', 0, NULL, NULL),
(51, 'CR', 'CRI', 188, 'CS', 'Costa Rica', 'Costa Rica', 'San Jose', 51100, 4516220, 'NA', '.cr', 'CRC', '506', '####', '^(d{4})$', 'es-CR,en', 'PA,NI', '', 0, NULL, NULL),
(52, 'CS', 'SCG', 891, 'YI', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Belgrade', 102350, 10829175, 'EU', '.cs', 'RSD', '381', '#####', '^(d{5})$', 'cu,hu,sq,sr', 'AL,HU,MK,RO,HR,BA,BG', '', 0, NULL, NULL),
(53, 'CU', 'CUB', 192, 'CU', 'Cuba', 'Cuba', 'Havana', 110860, 11423000, 'NA', '.cu', 'CUP', '53', 'CP #####', '^(?:CP)*(d{5})$', 'es-CU', 'US', '', 0, NULL, NULL),
(54, 'CV', 'CPV', 132, 'CV', 'Cabo Verde', 'Cape Verde', 'Praia', 4033, 508659, 'AF', '.cv', 'CVE', '238', '####', '^(d{4})$', 'pt-CV', '', '', 0, NULL, NULL),
(55, 'CW', 'CUW', 531, 'UC', 'Curacao', 'Curacao', ' Willemstad', 444, 141766, 'NA', '.cw', 'ANG', '599', '', '', 'nl,pap', '', '', 0, NULL, NULL),
(56, 'CX', 'CXR', 162, 'KT', 'Christmas Island', 'Christmas Island', 'Flying Fish Cove', 135, 1500, 'AS', '.cx', 'AUD', '61', '####', '^(d{4})$', 'en,zh,ms-CC', '', '', 0, NULL, NULL),
(57, 'CY', 'CYP', 196, 'CY', 'Kýpros (Kıbrıs)', 'Cyprus', 'Nicosia', 9250, 1102677, 'EU', '.cy', 'EUR', '357', '####', '^(d{4})$', 'el-CY,tr-CY,en', '', '', 0, NULL, NULL),
(58, 'CZ', 'CZE', 203, 'EZ', 'Česko', 'Czech Republic', 'Prague', 78866, 10476000, 'EU', '.cz', 'CZK', '420', '### ##', '^(d{5})$', 'cs,sk', 'PL,DE,SK,AT', '', 0, NULL, NULL),
(59, 'DE', 'DEU', 276, 'GM', 'Deutschland', 'Germany', 'Berlin', 357021, 81802257, 'EU', '.de', 'EUR', '49', '#####', '^(d{5})$', 'de', 'CH,PL,NL,DK,BE,CZ,LU,FR,AT', '', 0, NULL, NULL),
(60, 'DJ', 'DJI', 262, 'DJ', 'Djibouti', 'Djibouti', 'Djibouti', 23000, 740528, 'AF', '.dj', 'DJF', '253', '', '', 'fr-DJ,ar,so-DJ,aa', 'ER,ET,SO', '', 0, NULL, NULL),
(61, 'DK', 'DNK', 208, 'DA', 'Danmark', 'Denmark', 'Copenhagen', 43094, 5484000, 'EU', '.dk', 'DKK', '45', '####', '^(d{4})$', 'da-DK,en,fo,de-DK', 'DE', '', 0, NULL, NULL),
(62, 'DM', 'DMA', 212, 'DO', 'Dominica', 'Dominica', 'Roseau', 754, 72813, 'NA', '.dm', 'XCD', '+1-767', '', '', 'en-DM', '', '', 0, NULL, NULL),
(63, 'DO', 'DOM', 214, 'DR', 'República Dominicana', 'Dominican Republic', 'Santo Domingo', 48730, 9823821, 'NA', '.do', 'DOP', '+809/829/849', '#####', '^(d{5})$', 'es-DO', 'HT', '', 0, NULL, NULL),
(64, 'DZ', 'DZA', 12, 'AG', 'Algérie', 'Algeria', 'Algiers', 2381740, 34586184, 'AF', '.dz', 'DZD', '213', '#####', '^(d{5})$', 'ar-DZ,fr', 'NE,EH,LY,MR,TN,MA,ML', '', 0, NULL, NULL),
(65, 'EC', 'ECU', 218, 'EC', 'Ecuador', 'Ecuador', 'Quito', 283560, 14790608, 'SA', '.ec', 'USD', '593', '@####@', '^([a-zA-Z]d{4}[a-zA-Z])$', 'es-EC', 'PE,CO', '', 0, NULL, NULL),
(66, 'EE', 'EST', 233, 'EN', 'Eesti', 'Estonia', 'Tallinn', 45226, 1291170, 'EU', '.ee', 'EUR', '372', '#####', '^(d{5})$', 'et,ru', 'RU,LV', '', 0, NULL, NULL),
(67, 'EG', 'EGY', 818, 'EG', 'Egypt', 'Egypt', 'Cairo', 1001450, 80471869, 'AF', '.eg', 'EGP', '20', '#####', '^(d{5})$', 'ar-EG,en,fr', 'LY,SD,IL,PS', '', 0, NULL, NULL),
(68, 'EH', 'ESH', 732, 'WI', 'aṣ-Ṣaḥrāwīyâ al-ʿArabīyâ', 'Western Sahara', 'El-Aaiun', 266000, 273008, 'AF', '.eh', 'MAD', '212', '', '', 'ar,mey', 'DZ,MR,MA', '', 0, NULL, NULL),
(69, 'ER', 'ERI', 232, 'ER', 'Ertrā', 'Eritrea', 'Asmara', 121320, 5792984, 'AF', '.er', 'ERN', '291', '', '', 'aa-ER,ar,tig,kun,ti-ER', 'ET,SD,DJ', '', 0, NULL, NULL),
(70, 'ES', 'ESP', 724, 'SP', 'España', 'Spain', 'Madrid', 504782, 46505963, 'EU', '.es', 'EUR', '34', '#####', '^(d{5})$', 'es-ES,ca,gl,eu,oc', 'AD,PT,GI,FR,MA', '', 0, NULL, NULL),
(71, 'ET', 'ETH', 231, 'ET', 'Ityoṗya', 'Ethiopia', 'Addis Ababa', 1127127, 88013491, 'AF', '.et', 'ETB', '251', '####', '^(d{4})$', 'am,en-ET,om-ET,ti-ET,so-ET,sid', 'ER,KE,SD,SS,SO,DJ', '', 0, NULL, NULL),
(72, 'FI', 'FIN', 246, 'FI', 'Suomi (Finland)', 'Finland', 'Helsinki', 337030, 5244000, 'EU', '.fi', 'EUR', '358', '#####', '^(?:FI)*(d{5})$', 'fi-FI,sv-FI,smn', 'NO,RU,SE', '', 0, NULL, NULL),
(73, 'FJ', 'FJI', 242, 'FJ', 'Viti', 'Fiji', 'Suva', 18270, 875983, 'OC', '.fj', 'FJD', '679', '', '', 'en-FJ,fj', '', '', 0, NULL, NULL),
(74, 'FK', 'FLK', 238, 'FK', 'Falkland Islands', 'Falkland Islands', 'Stanley', 12173, 2638, 'SA', '.fk', 'FKP', '500', '', '', 'en-FK', '', '', 0, NULL, NULL),
(75, 'FM', 'FSM', 583, 'FM', 'Micronesia', 'Micronesia', 'Palikir', 702, 107708, 'OC', '.fm', 'USD', '691', '#####', '^(d{5})$', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg', '', '', 0, NULL, NULL),
(76, 'FO', 'FRO', 234, 'FO', 'Føroyar', 'Faroe Islands', 'Torshavn', 1399, 48228, 'EU', '.fo', 'DKK', '298', 'FO-###', '^(?:FO)*(d{3})$', 'fo,da-FO', '', '', 0, NULL, NULL),
(77, 'FR', 'FRA', 250, 'FR', 'France', 'France', 'Paris', 547030, 64768389, 'EU', '.fr', 'EUR', '33', '#####', '^(d{5})$', 'fr-FR,frp,br,co,ca,eu,oc', 'CH,DE,BE,LU,IT,AD,MC,ES', '', 0, NULL, NULL),
(78, 'GA', 'GAB', 266, 'GB', 'Gabon', 'Gabon', 'Libreville', 267667, 1545255, 'AF', '.ga', 'XAF', '241', '', '', 'fr-GA', 'CM,GQ,CG', '', 0, NULL, NULL),
(79, 'GD', 'GRD', 308, 'GJ', 'Grenada', 'Grenada', 'St. George''s', 344, 107818, 'NA', '.gd', 'XCD', '+1-473', '', '', 'en-GD', '', '', 0, NULL, NULL),
(80, 'GE', 'GEO', 268, 'GG', 'Sak''art''velo', 'Georgia', 'Tbilisi', 69700, 4630000, 'AS', '.ge', 'GEL', '995', '####', '^(d{4})$', 'ka,ru,hy,az', 'AM,AZ,TR,RU', '', 0, NULL, NULL),
(81, 'GF', 'GUF', 254, 'FG', 'Guyane', 'French Guiana', 'Cayenne', 91000, 195506, 'SA', '.gf', 'EUR', '594', '#####', '^((97|98)3d{2})$', 'fr-GF', 'SR,BR', '', 0, NULL, NULL),
(82, 'GG', 'GGY', 831, 'GK', 'Guernsey', 'Guernsey', 'St Peter Port', 78, 65228, 'EU', '.gg', 'GBP', '+44-1481', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,fr', '', '', 0, NULL, NULL),
(83, 'GH', 'GHA', 288, 'GH', 'Ghana', 'Ghana', 'Accra', 239460, 24339838, 'AF', '.gh', 'GHS', '233', '', '', 'en-GH,ak,ee,tw', 'CI,TG,BF', '', 0, NULL, NULL),
(84, 'GI', 'GIB', 292, 'GI', 'Gibraltar', 'Gibraltar', 'Gibraltar', 7, 27884, 'EU', '.gi', 'GIP', '350', '', '', 'en-GI,es,it,pt', 'ES', '', 0, NULL, NULL),
(85, 'GL', 'GRL', 304, 'GL', 'Grønland', 'Greenland', 'Nuuk', 2166086, 56375, 'NA', '.gl', 'DKK', '299', '####', '^(d{4})$', 'kl,da-GL,en', '', '', 0, NULL, NULL),
(86, 'GM', 'GMB', 270, 'GA', 'Gambia', 'Gambia', 'Banjul', 11300, 1593256, 'AF', '.gm', 'GMD', '220', '', '', 'en-GM,mnk,wof,wo,ff', 'SN', '', 0, NULL, NULL),
(87, 'GN', 'GIN', 324, 'GV', 'Guinée', 'Guinea', 'Conakry', 245857, 10324025, 'AF', '.gn', 'GNF', '224', '', '', 'fr-GN', 'LR,SN,SL,CI,GW,ML', '', 0, NULL, NULL),
(88, 'GP', 'GLP', 312, 'GP', 'Guadeloupe', 'Guadeloupe', 'Basse-Terre', 1780, 443000, 'NA', '.gp', 'EUR', '590', '#####', '^((97|98)d{3})$', 'fr-GP', '', '', 0, NULL, NULL),
(89, 'GQ', 'GNQ', 226, 'EK', 'Guinée Equatoriale', 'Equatorial Guinea', 'Malabo', 28051, 1014999, 'AF', '.gq', 'XAF', '240', '', '', 'es-GQ,fr', 'GA,CM', '', 0, NULL, NULL),
(90, 'GR', 'GRC', 300, 'GR', 'Elláda', 'Greece', 'Athens', 131940, 11000000, 'EU', '.gr', 'EUR', '30', '### ##', '^(d{5})$', 'el-GR,en,fr', 'AL,MK,TR,BG', '', 0, NULL, NULL),
(91, 'GS', 'SGS', 239, 'SX', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'Grytviken', 3903, 30, 'AN', '.gs', 'GBP', '', '', '', 'en', '', '', 0, NULL, NULL),
(92, 'GT', 'GTM', 320, 'GT', 'Guatemala', 'Guatemala', 'Guatemala City', 108890, 13550440, 'NA', '.gt', 'GTQ', '502', '#####', '^(d{5})$', 'es-GT', 'MX,HN,BZ,SV', '', 0, NULL, NULL),
(93, 'GU', 'GUM', 316, 'GQ', 'Guam', 'Guam', 'Hagatna', 549, 159358, 'OC', '.gu', 'USD', '+1-671', '969##', '^(969d{2})$', 'en-GU,ch-GU', '', '', 0, NULL, NULL),
(94, 'GW', 'GNB', 624, 'PU', 'Guiné-Bissau', 'Guinea-Bissau', 'Bissau', 36120, 1565126, 'AF', '.gw', 'XOF', '245', '####', '^(d{4})$', 'pt-GW,pov', 'SN,GN', '', 0, NULL, NULL),
(95, 'GY', 'GUY', 328, 'GY', 'Guyana', 'Guyana', 'Georgetown', 214970, 748486, 'SA', '.gy', 'GYD', '592', '', '', 'en-GY', 'SR,BR,VE', '', 0, NULL, NULL),
(96, 'HK', 'HKG', 344, 'HK', 'Hèunggóng', 'Hong Kong', 'Hong Kong', 1092, 6898686, 'AS', '.hk', 'HKD', '852', '', '', 'zh-HK,yue,zh,en', '', '', 0, NULL, NULL),
(97, 'HM', 'HMD', 334, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', '', 412, 0, 'AN', '.hm', 'AUD', ' ', '', '', '', '', '', 0, NULL, NULL),
(98, 'HN', 'HND', 340, 'HO', 'Honduras', 'Honduras', 'Tegucigalpa', 112090, 7989415, 'NA', '.hn', 'HNL', '504', '@@####', '^([A-Z]{2}d{4})$', 'es-HN', 'GT,NI,SV', '', 0, NULL, NULL),
(99, 'HR', 'HRV', 191, 'HR', 'Hrvatska', 'Croatia', 'Zagreb', 56542, 4491000, 'EU', '.hr', 'HRK', '385', '#####', '^(?:HR)*(d{5})$', 'hr-HR,sr', 'HU,SI,BA,ME,RS', '', 0, NULL, NULL),
(100, 'HT', 'HTI', 332, 'HA', 'Haïti', 'Haiti', 'Port-au-Prince', 27750, 9648924, 'NA', '.ht', 'HTG', '509', 'HT####', '^(?:HT)*(d{4})$', 'ht,fr-HT', 'DO', '', 0, NULL, NULL),
(101, 'HU', 'HUN', 348, 'HU', 'Magyarország', 'Hungary', 'Budapest', 93030, 9982000, 'EU', '.hu', 'HUF', '36', '####', '^(d{4})$', 'hu-HU', 'SK,SI,RO,UA,HR,AT,RS', '', 0, NULL, NULL),
(102, 'ID', 'IDN', 360, 'ID', 'Indonesia', 'Indonesia', 'Jakarta', 1919440, 242968342, 'AS', '.id', 'IDR', '62', '#####', '^(d{5})$', 'id,en,nl,jv', 'PG,TL,MY', '', 0, NULL, NULL),
(103, 'IE', 'IRL', 372, 'EI', 'Ireland', 'Ireland', 'Dublin', 70280, 4622917, 'EU', '.ie', 'EUR', '353', '', '', 'en-IE,ga-IE', 'GB', '', 0, NULL, NULL),
(104, 'IL', 'ISR', 376, 'IS', 'Yiśrā''ēl', 'Israel', 'Jerusalem', 20770, 7353985, 'AS', '.il', 'ILS', '972', '#####', '^(d{5})$', 'he,ar-IL,en-IL,', 'SY,JO,LB,EG,PS', '', 0, NULL, NULL),
(105, 'IM', 'IMN', 833, 'IM', 'Isle of Man', 'Isle of Man', 'Douglas, Isle of Man', 572, 75049, 'EU', '.im', 'GBP', '+44-1624', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,gv', '', '', 0, NULL, NULL),
(106, 'IN', 'IND', 356, 'IN', 'Bhārat', 'India', 'New Delhi', 3287590, 1173108018, 'AS', '.in', 'INR', '91', '######', '^(d{6})$', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,k', 'CN,NP,MM,BT,PK,BD', '', 0, NULL, NULL),
(107, 'IO', 'IOT', 86, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'Diego Garcia', 60, 4000, 'AS', '.io', 'USD', '246', '', '', 'en-IO', '', '', 0, NULL, NULL),
(108, 'IQ', 'IRQ', 368, 'IZ', 'al-ʿIrāq', 'Iraq', 'Baghdad', 437072, 29671605, 'AS', '.iq', 'IQD', '964', '#####', '^(d{5})$', 'ar-IQ,ku,hy', 'SY,SA,IR,JO,TR,KW', '', 0, NULL, NULL),
(109, 'IR', 'IRN', 364, 'IR', 'Īrān', 'Iran', 'Tehran', 1648000, 76923300, 'AS', '.ir', 'IRR', '98', '##########', '^(d{10})$', 'fa-IR,ku', 'TM,AF,IQ,AM,PK,AZ,TR', '', 0, NULL, NULL),
(110, 'IS', 'ISL', 352, 'IC', 'Ísland', 'Iceland', 'Reykjavik', 103000, 308910, 'EU', '.is', 'ISK', '354', '###', '^(d{3})$', 'is,en,de,da,sv,no', '', '', 0, NULL, NULL),
(111, 'IT', 'ITA', 380, 'IT', 'Italia', 'Italy', 'Rome', 301230, 60340328, 'EU', '.it', 'EUR', '39', '#####', '^(d{5})$', 'it-IT,en,de-IT,fr-IT,sc,ca,co,sl', 'CH,VA,SI,SM,FR,AT', '', 0, NULL, NULL),
(112, 'JE', 'JEY', 832, 'JE', 'Jersey', 'Jersey', 'Saint Helier', 116, 90812, 'EU', '.je', 'GBP', '+44-1534', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,pt', '', '', 0, NULL, NULL),
(113, 'JM', 'JAM', 388, 'JM', 'Jamaica', 'Jamaica', 'Kingston', 10991, 2847232, 'NA', '.jm', 'JMD', '+1-876', '', '', 'en-JM', '', '', 0, NULL, NULL),
(114, 'JO', 'JOR', 400, 'JO', 'al-Urdun', 'Jordan', 'Amman', 92300, 6407085, 'AS', '.jo', 'JOD', '962', '#####', '^(d{5})$', 'ar-JO,en', 'SY,SA,IQ,IL,PS', '', 0, NULL, NULL),
(115, 'JP', 'JPN', 392, 'JA', 'Nihon', 'Japan', 'Tokyo', 377835, 127288000, 'AS', '.jp', 'JPY', '81', '###-####', '^(d{7})$', 'ja', '', '', 0, NULL, NULL),
(116, 'KE', 'KEN', 404, 'KE', 'Kenya', 'Kenya', 'Nairobi', 582650, 40046566, 'AF', '.ke', 'KES', '254', '#####', '^(d{5})$', 'en-KE,sw-KE', 'ET,TZ,SS,SO,UG', '', 0, NULL, NULL),
(117, 'KG', 'KGZ', 417, 'KG', 'Kyrgyzstan', 'Kyrgyzstan', 'Bishkek', 198500, 5508626, 'AS', '.kg', 'KGS', '996', '######', '^(d{6})$', 'ky,uz,ru', 'CN,TJ,UZ,KZ', '', 0, NULL, NULL),
(118, 'KH', 'KHM', 116, 'CB', 'Kambucā', 'Cambodia', 'Phnom Penh', 181040, 14453680, 'AS', '.kh', 'KHR', '855', '#####', '^(d{5})$', 'km,fr,en', 'LA,TH,VN', '', 0, NULL, NULL),
(119, 'KI', 'KIR', 296, 'KR', 'Kiribati', 'Kiribati', 'Tarawa', 811, 92533, 'OC', '.ki', 'AUD', '686', '', '', 'en-KI,gil', '', '', 0, NULL, NULL),
(120, 'KM', 'COM', 174, 'CN', 'Comores', 'Comoros', 'Moroni', 2170, 773407, 'AF', '.km', 'KMF', '269', '', '', 'ar,fr-KM', '', '', 0, NULL, NULL),
(121, 'KN', 'KNA', 659, 'SC', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Basseterre', 261, 51134, 'NA', '.kn', 'XCD', '+1-869', '', '', 'en-KN', '', '', 0, NULL, NULL),
(122, 'KP', 'PRK', 408, 'KN', 'Joseon', 'North Korea', 'Pyongyang', 120540, 22912177, 'AS', '.kp', 'KPW', '850', '###-###', '^(d{6})$', 'ko-KP', 'CN,KR,RU', '', 0, NULL, NULL),
(123, 'KR', 'KOR', 410, 'KS', 'Hanguk', 'South Korea', 'Seoul', 98480, 48422644, 'AS', '.kr', 'KRW', '82', 'SEOUL ###-###', '^(?:SEOUL)*(d{6})$', 'ko-KR,en', 'KP', '', 0, NULL, NULL),
(124, 'KW', 'KWT', 414, 'KU', 'al-Kuwayt', 'Kuwait', 'Kuwait City', 17820, 2789132, 'AS', '.kw', 'KWD', '965', '#####', '^(d{5})$', 'ar-KW,en', 'SA,IQ', '', 0, NULL, NULL),
(125, 'KY', 'CYM', 136, 'CJ', 'Cayman Islands', 'Cayman Islands', 'George Town', 262, 44270, 'NA', '.ky', 'KYD', '+1-345', '', '', 'en-KY', '', '', 0, NULL, NULL),
(126, 'KZ', 'KAZ', 398, 'KZ', 'Ķazaķstan', 'Kazakhstan', 'Astana', 2717300, 15340000, 'AS', '.kz', 'KZT', '7', '######', '^(d{6})$', 'kk,ru', 'TM,CN,KG,UZ,RU', '', 0, NULL, NULL),
(127, 'LA', 'LAO', 418, 'LA', 'Lāw', 'Laos', 'Vientiane', 236800, 6368162, 'AS', '.la', 'LAK', '856', '#####', '^(d{5})$', 'lo,fr,en', 'CN,MM,KH,TH,VN', '', 0, NULL, NULL),
(128, 'LB', 'LBN', 422, 'LE', 'Lubnān', 'Lebanon', 'Beirut', 10400, 4125247, 'AS', '.lb', 'LBP', '961', '#### ####|####', '^(d{4}(d{4})?)$', 'ar-LB,fr-LB,en,hy', 'SY,IL', '', 0, NULL, NULL),
(129, 'LC', 'LCA', 662, 'ST', 'Saint Lucia', 'Saint Lucia', 'Castries', 616, 160922, 'NA', '.lc', 'XCD', '+1-758', '', '', 'en-LC', '', '', 0, NULL, NULL),
(130, 'LI', 'LIE', 438, 'LS', 'Liechtenstein', 'Liechtenstein', 'Vaduz', 160, 35000, 'EU', '.li', 'CHF', '423', '####', '^(d{4})$', 'de-LI', 'CH,AT', '', 0, NULL, NULL),
(131, 'LK', 'LKA', 144, 'CE', 'Šrī Laṁkā', 'Sri Lanka', 'Colombo', 65610, 21513990, 'AS', '.lk', 'LKR', '94', '#####', '^(d{5})$', 'si,ta,en', '', '', 0, NULL, NULL),
(132, 'LR', 'LBR', 430, 'LI', 'Liberia', 'Liberia', 'Monrovia', 111370, 3685076, 'AF', '.lr', 'LRD', '231', '####', '^(d{4})$', 'en-LR', 'SL,CI,GN', '', 0, NULL, NULL),
(133, 'LS', 'LSO', 426, 'LT', 'Lesotho', 'Lesotho', 'Maseru', 30355, 1919552, 'AF', '.ls', 'LSL', '266', '###', '^(d{3})$', 'en-LS,st,zu,xh', 'ZA', '', 0, NULL, NULL),
(134, 'LT', 'LTU', 440, 'LH', 'Lietuva', 'Lithuania', 'Vilnius', 65200, 2944459, 'EU', '.lt', 'EUR', '370', 'LT-#####', '^(?:LT)*(d{5})$', 'lt,ru,pl', 'PL,BY,RU,LV', '', 0, NULL, NULL),
(135, 'LU', 'LUX', 442, 'LU', 'Lëtzebuerg', 'Luxembourg', 'Luxembourg', 2586, 497538, 'EU', '.lu', 'EUR', '352', 'L-####', '^(d{4})$', 'lb,de-LU,fr-LU', 'DE,BE,FR', '', 0, NULL, NULL),
(136, 'LV', 'LVA', 428, 'LG', 'Latvija', 'Latvia', 'Riga', 64589, 2217969, 'EU', '.lv', 'EUR', '371', 'LV-####', '^(?:LV)*(d{4})$', 'lv,ru,lt', 'LT,EE,BY,RU', '', 0, NULL, NULL),
(137, 'LY', 'LBY', 434, 'LY', 'Lībiyā', 'Libya', 'Tripolis', 1759540, 6461454, 'AF', '.ly', 'LYD', '218', '', '', 'ar-LY,it,en', 'TD,NE,DZ,SD,TN,EG', '', 0, NULL, NULL),
(138, 'MA', 'MAR', 504, 'MO', 'Maroc', 'Morocco', 'Rabat', 446550, 31627428, 'AF', '.ma', 'MAD', '212', '#####', '^(d{5})$', 'ar-MA,fr', 'DZ,EH,ES', '', 0, NULL, NULL),
(139, 'MC', 'MCO', 492, 'MN', 'Monaco', 'Monaco', 'Monaco', 2, 32965, 'EU', '.mc', 'EUR', '377', '#####', '^(d{5})$', 'fr-MC,en,it', 'FR', '', 0, NULL, NULL),
(140, 'MD', 'MDA', 498, 'MD', 'Moldova', 'Moldova', 'Chisinau', 33843, 4324000, 'EU', '.md', 'MDL', '373', 'MD-####', '^(?:MD)*(d{4})$', 'ro,ru,gag,tr', 'RO,UA', '', 0, NULL, NULL),
(141, 'ME', 'MNE', 499, 'MJ', 'Crna Gora', 'Montenegro', 'Podgorica', 14026, 666730, 'EU', '.me', 'EUR', '382', '#####', '^(d{5})$', 'sr,hu,bs,sq,hr,rom', 'AL,HR,BA,RS,XK', '', 0, NULL, NULL),
(142, 'MF', 'MAF', 663, 'RN', 'Saint Martin', 'Saint Martin', 'Marigot', 53, 35925, 'NA', '.gp', 'EUR', '590', '### ###', '', 'fr', 'SX', '', 0, NULL, NULL),
(143, 'MG', 'MDG', 450, 'MA', 'Madagascar', 'Madagascar', 'Antananarivo', 587040, 21281844, 'AF', '.mg', 'MGA', '261', '###', '^(d{3})$', 'fr-MG,mg', '', '', 0, NULL, NULL),
(144, 'MH', 'MHL', 584, 'RM', 'Marshall Islands', 'Marshall Islands', 'Majuro', 181, 65859, 'OC', '.mh', 'USD', '692', '', '', 'mh,en-MH', '', '', 0, NULL, NULL),
(145, 'MK', 'MKD', 807, 'MK', 'Makedonija', 'Macedonia', 'Skopje', 25333, 2062294, 'EU', '.mk', 'MKD', '389', '####', '^(d{4})$', 'mk,sq,tr,rmm,sr', 'AL,GR,BG,RS,XK', '', 0, NULL, NULL),
(146, 'ML', 'MLI', 466, 'ML', 'Mali', 'Mali', 'Bamako', 1240000, 13796354, 'AF', '.ml', 'XOF', '223', '', '', 'fr-ML,bm', 'SN,NE,DZ,CI,GN,MR,BF', '', 0, NULL, NULL),
(147, 'MM', 'MMR', 104, 'BM', 'Mẏanmā', 'Myanmar', 'Nay Pyi Taw', 678500, 53414374, 'AS', '.mm', 'MMK', '95', '#####', '^(d{5})$', 'my', 'CN,LA,TH,BD,IN', '', 0, NULL, NULL),
(148, 'MN', 'MNG', 496, 'MG', 'Mongol Uls', 'Mongolia', 'Ulan Bator', 1565000, 3086918, 'AS', '.mn', 'MNT', '976', '######', '^(d{6})$', 'mn,ru', 'CN,RU', '', 0, NULL, NULL),
(149, 'MO', 'MAC', 446, 'MC', 'Ngoumún', 'Macao', 'Macao', 254, 449198, 'AS', '.mo', 'MOP', '853', '', '', 'zh,zh-MO,pt', '', '', 0, NULL, NULL),
(150, 'MP', 'MNP', 580, 'CQ', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Saipan', 477, 53883, 'OC', '.mp', 'USD', '+1-670', '', '', 'fil,tl,zh,ch-MP,en-MP', '', '', 0, NULL, NULL),
(151, 'MQ', 'MTQ', 474, 'MB', 'Martinique', 'Martinique', 'Fort-de-France', 1100, 432900, 'NA', '.mq', 'EUR', '596', '#####', '^(d{5})$', 'fr-MQ', '', '', 0, NULL, NULL),
(152, 'MR', 'MRT', 478, 'MR', 'Mauritanie', 'Mauritania', 'Nouakchott', 1030700, 3205060, 'AF', '.mr', 'MRO', '222', '', '', 'ar-MR,fuc,snk,fr,mey,wo', 'SN,DZ,EH,ML', '', 0, NULL, NULL),
(153, 'MS', 'MSR', 500, 'MH', 'Montserrat', 'Montserrat', 'Plymouth', 102, 9341, 'NA', '.ms', 'XCD', '+1-664', '', '', 'en-MS', '', '', 0, NULL, NULL),
(154, 'MT', 'MLT', 470, 'MT', 'Malta', 'Malta', 'Valletta', 316, 403000, 'EU', '.mt', 'EUR', '356', '@@@ ###|@@@ ##', '^([A-Z]{3}d{2}d?)$', 'mt,en-MT', '', '', 0, NULL, NULL),
(155, 'MU', 'MUS', 480, 'MP', 'Mauritius', 'Mauritius', 'Port Louis', 2040, 1294104, 'AF', '.mu', 'MUR', '230', '', '', 'en-MU,bho,fr', '', '', 0, NULL, NULL),
(156, 'MV', 'MDV', 462, 'MV', 'Dhivehi', 'Maldives', 'Male', 300, 395650, 'AS', '.mv', 'MVR', '960', '#####', '^(d{5})$', 'dv,en', '', '', 0, NULL, NULL),
(157, 'MW', 'MWI', 454, 'MI', 'Malawi', 'Malawi', 'Lilongwe', 118480, 15447500, 'AF', '.mw', 'MWK', '265', '', '', 'ny,yao,tum,swk', 'TZ,MZ,ZM', '', 0, NULL, NULL),
(158, 'MX', 'MEX', 484, 'MX', 'México', 'Mexico', 'Mexico City', 1972550, 112468855, 'NA', '.mx', 'MXN', '52', '#####', '^(d{5})$', 'es-MX', 'GT,US,BZ', '', 0, NULL, NULL),
(159, 'MY', 'MYS', 458, 'MY', 'Malaysia', 'Malaysia', 'Kuala Lumpur', 329750, 28274729, 'AS', '.my', 'MYR', '60', '#####', '^(d{5})$', 'ms-MY,en,zh,ta,te,ml,pa,th', 'BN,TH,ID', '', 0, NULL, NULL),
(160, 'MZ', 'MOZ', 508, 'MZ', 'Moçambique', 'Mozambique', 'Maputo', 801590, 22061451, 'AF', '.mz', 'MZN', '258', '####', '^(d{4})$', 'pt-MZ,vmw', 'ZW,TZ,SZ,ZA,ZM,MW', '', 0, NULL, NULL),
(161, 'NA', 'NAM', 516, 'WA', 'Namibia', 'Namibia', 'Windhoek', 825418, 2128471, 'AF', '.na', 'NAD', '264', '', '', 'en-NA,af,de,hz,naq', 'ZA,BW,ZM,AO', '', 0, NULL, NULL),
(162, 'NC', 'NCL', 540, 'NC', 'Nouvelle Calédonie', 'New Caledonia', 'Noumea', 19060, 216494, 'OC', '.nc', 'XPF', '687', '#####', '^(d{5})$', 'fr-NC', '', '', 0, NULL, NULL),
(163, 'NE', 'NER', 562, 'NG', 'Niger', 'Niger', 'Niamey', 1267000, 15878271, 'AF', '.ne', 'XOF', '227', '####', '^(d{4})$', 'fr-NE,ha,kr,dje', 'TD,BJ,DZ,LY,BF,NG,ML', '', 0, NULL, NULL),
(164, 'NF', 'NFK', 574, 'NF', 'Norfolk Island', 'Norfolk Island', 'Kingston', 35, 1828, 'OC', '.nf', 'AUD', '672', '####', '^(d{4})$', 'en-NF', '', '', 0, NULL, NULL),
(165, 'NG', 'NGA', 566, 'NI', 'Nigeria', 'Nigeria', 'Abuja', 923768, 154000000, 'AF', '.ng', 'NGN', '234', '######', '^(d{6})$', 'en-NG,ha,yo,ig,ff', 'TD,NE,BJ,CM', '', 0, NULL, NULL),
(166, 'NI', 'NIC', 558, 'NU', 'Nicaragua', 'Nicaragua', 'Managua', 129494, 5995928, 'NA', '.ni', 'NIO', '505', '###-###-#', '^(d{7})$', 'es-NI,en', 'CR,HN', '', 0, NULL, NULL),
(167, 'NL', 'NLD', 528, 'NL', 'Nederland', 'Netherlands', 'Amsterdam', 41526, 16645000, 'EU', '.nl', 'EUR', '31', '#### @@', '^(d{4}[A-Z]{2})$', 'nl-NL,fy-NL', 'DE,BE', '', 0, NULL, NULL),
(168, 'NO', 'NOR', 578, 'NO', 'Norge (Noreg)', 'Norway', 'Oslo', 324220, 5009150, 'EU', '.no', 'NOK', '47', '####', '^(d{4})$', 'no,nb,nn,se,fi', 'FI,RU,SE', '', 0, NULL, NULL),
(169, 'NP', 'NPL', 524, 'NP', 'Nēpāl', 'Nepal', 'Kathmandu', 140800, 28951852, 'AS', '.np', 'NPR', '977', '#####', '^(d{5})$', 'ne,en', 'CN,IN', '', 0, NULL, NULL),
(170, 'NR', 'NRU', 520, 'NR', 'Naoero', 'Nauru', 'Yaren', 21, 10065, 'OC', '.nr', 'AUD', '674', '', '', 'na,en-NR', '', '', 0, NULL, NULL),
(171, 'NU', 'NIU', 570, 'NE', 'Niue', 'Niue', 'Alofi', 260, 2166, 'OC', '.nu', 'NZD', '683', '', '', 'niu,en-NU', '', '', 0, NULL, NULL),
(172, 'NZ', 'NZL', 554, 'NZ', 'New Zealand', 'New Zealand', 'Wellington', 268680, 4252277, 'OC', '.nz', 'NZD', '64', '####', '^(d{4})$', 'en-NZ,mi', '', '', 0, NULL, NULL),
(173, 'OM', 'OMN', 512, 'MU', 'ʿUmān', 'Oman', 'Muscat', 212460, 2967717, 'AS', '.om', 'OMR', '968', '###', '^(d{3})$', 'ar-OM,en,bal,ur', 'SA,YE,AE', '', 0, NULL, NULL),
(174, 'PA', 'PAN', 591, 'PM', 'Panamá', 'Panama', 'Panama City', 78200, 3410676, 'NA', '.pa', 'PAB', '507', '', '', 'es-PA,en', 'CR,CO', '', 0, NULL, NULL),
(175, 'PE', 'PER', 604, 'PE', 'Perú', 'Peru', 'Lima', 1285220, 29907003, 'SA', '.pe', 'PEN', '51', '', '', 'es-PE,qu,ay', 'EC,CL,BO,BR,CO', '', 0, NULL, NULL),
(176, 'PF', 'PYF', 258, 'FP', 'Polinésie Française', 'French Polynesia', 'Papeete', 4167, 270485, 'OC', '.pf', 'XPF', '689', '#####', '^((97|98)7d{2})$', 'fr-PF,ty', '', '', 0, NULL, NULL),
(177, 'PG', 'PNG', 598, 'PP', 'Papua New Guinea', 'Papua New Guinea', 'Port Moresby', 462840, 6064515, 'OC', '.pg', 'PGK', '675', '###', '^(d{3})$', 'en-PG,ho,meu,tpi', 'ID', '', 0, NULL, NULL),
(178, 'PH', 'PHL', 608, 'RP', 'Pilipinas', 'Philippines', 'Manila', 300000, 99900177, 'AS', '.ph', 'PHP', '63', '####', '^(d{4})$', 'tl,en-PH,fil', '', '', 0, NULL, NULL),
(179, 'PK', 'PAK', 586, 'PK', 'Pākistān', 'Pakistan', 'Islamabad', 803940, 184404791, 'AS', '.pk', 'PKR', '92', '#####', '^(d{5})$', 'ur-PK,en-PK,pa,sd,ps,brh', 'CN,AF,IR,IN', '', 0, NULL, NULL),
(180, 'PL', 'POL', 616, 'PL', 'Polska', 'Poland', 'Warsaw', 312685, 38500000, 'EU', '.pl', 'PLN', '48', '##-###', '^(d{5})$', 'pl', 'DE,LT,SK,CZ,BY,UA,RU', '', 0, NULL, NULL),
(181, 'PM', 'SPM', 666, 'SB', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint-Pierre', 242, 7012, 'NA', '.pm', 'EUR', '508', '#####', '^(97500)$', 'fr-PM', '', '', 0, NULL, NULL),
(182, 'PN', 'PCN', 612, 'PC', 'Pitcairn', 'Pitcairn', 'Adamstown', 47, 46, 'OC', '.pn', 'NZD', '870', '', '', 'en-PN', '', '', 0, NULL, NULL),
(183, 'PR', 'PRI', 630, 'RQ', 'Puerto Rico', 'Puerto Rico', 'San Juan', 9104, 3916632, 'NA', '.pr', 'USD', '+1-787/1-939', '#####-####', '^(d{9})$', 'en-PR,es-PR', '', '', 0, NULL, NULL),
(184, 'PS', 'PSE', 275, 'WE', 'Filasṭīn', 'Palestinian Territory', 'East Jerusalem', 5970, 3800000, 'AS', '.ps', 'ILS', '970', '', '', 'ar-PS', 'JO,IL,EG', '', 0, NULL, NULL),
(185, 'PT', 'PRT', 620, 'PO', 'Portugal', 'Portugal', 'Lisbon', 92391, 10676000, 'EU', '.pt', 'EUR', '351', '####-###', '^(d{7})$', 'pt-PT,mwl', 'ES', '', 0, NULL, NULL),
(186, 'PW', 'PLW', 585, 'PS', 'Palau', 'Palau', 'Melekeok', 458, 19907, 'OC', '.pw', 'USD', '680', '96940', '^(96940)$', 'pau,sov,en-PW,tox,ja,fil,zh', '', '', 0, NULL, NULL),
(187, 'PY', 'PRY', 600, 'PA', 'Paraguay', 'Paraguay', 'Asuncion', 406750, 6375830, 'SA', '.py', 'PYG', '595', '####', '^(d{4})$', 'es-PY,gn', 'BO,BR,AR', '', 0, NULL, NULL),
(188, 'QA', 'QAT', 634, 'QA', 'Qaṭar', 'Qatar', 'Doha', 11437, 840926, 'AS', '.qa', 'QAR', '974', '', '', 'ar-QA,es', 'SA', '', 0, NULL, NULL),
(189, 'RE', 'REU', 638, 'RE', 'Réunion', 'Reunion', 'Saint-Denis', 2517, 776948, 'AF', '.re', 'EUR', '262', '#####', '^((97|98)(4|7|8)d{2})$', 'fr-RE', '', '', 0, NULL, NULL),
(190, 'RO', 'ROU', 642, 'RO', 'România', 'Romania', 'Bucharest', 237500, 21959278, 'EU', '.ro', 'RON', '40', '######', '^(d{6})$', 'ro,hu,rom', 'MD,HU,UA,BG,RS', '', 0, NULL, NULL),
(191, 'RS', 'SRB', 688, 'RI', 'Srbija', 'Serbia', 'Belgrade', 88361, 7344847, 'EU', '.rs', 'RSD', '381', '######', '^(d{6})$', 'sr,hu,bs,rom', 'AL,HU,MK,RO,HR,BA,BG,ME,XK', '', 0, NULL, NULL),
(192, 'RU', 'RUS', 643, 'RS', 'Rossija', 'Russia', 'Moscow', 17100000, 140702000, 'EU', '.ru', 'RUB', '7', '######', '^(d{6})$', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv', 'GE,CN,BY,UA,KZ,LV,PL,EE,LT,FI,MN,NO,AZ,KP', '', 0, NULL, NULL),
(193, 'RW', 'RWA', 646, 'RW', 'Rwanda', 'Rwanda', 'Kigali', 26338, 11055976, 'AF', '.rw', 'RWF', '250', '', '', 'rw,en-RW,fr-RW,sw', 'TZ,CD,BI,UG', '', 0, NULL, NULL),
(194, 'SA', 'SAU', 682, 'SA', 'as-Saʿūdīyâ', 'Saudi Arabia', 'Riyadh', 1960582, 25731776, 'AS', '.sa', 'SAR', '966', '#####', '^(d{5})$', 'ar-SA', 'QA,OM,IQ,YE,JO,AE,KW', '', 0, NULL, NULL),
(195, 'SB', 'SLB', 90, 'BP', 'Solomon Islands', 'Solomon Islands', 'Honiara', 28450, 559198, 'OC', '.sb', 'SBD', '677', '', '', 'en-SB,tpi', '', '', 0, NULL, NULL),
(196, 'SC', 'SYC', 690, 'SE', 'Seychelles', 'Seychelles', 'Victoria', 455, 88340, 'AF', '.sc', 'SCR', '248', '', '', 'en-SC,fr-SC', '', '', 0, NULL, NULL),
(197, 'SD', 'SDN', 729, 'SU', 'Sudan', 'Sudan', 'Khartoum', 1861484, 35000000, 'AF', '.sd', 'SDG', '249', '#####', '^(d{5})$', 'ar-SD,en,fia', 'SS,TD,EG,ET,ER,LY,CF', '', 0, NULL, NULL),
(198, 'SE', 'SWE', 752, 'SW', 'Sverige', 'Sweden', 'Stockholm', 449964, 9555893, 'EU', '.se', 'SEK', '46', '### ##', '^(?:SE)*(d{5})$', 'sv-SE,se,sma,fi-SE', 'NO,FI', '', 0, NULL, NULL),
(199, 'SG', 'SGP', 702, 'SN', 'xīnjiāpō', 'Singapore', 'Singapur', 693, 4701069, 'AS', '.sg', 'SGD', '65', '######', '^(d{6})$', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', '', '', 0, NULL, NULL),
(200, 'SH', 'SHN', 654, 'SH', 'Saint Helena', 'Saint Helena', 'Jamestown', 410, 7460, 'AF', '.sh', 'SHP', '290', 'STHL 1ZZ', '^(STHL1ZZ)$', 'en-SH', '', '', 0, NULL, NULL),
(201, 'SI', 'SVN', 705, 'SI', 'Slovenija', 'Slovenia', 'Ljubljana', 20273, 2007000, 'EU', '.si', 'EUR', '386', '####', '^(?:SI)*(d{4})$', 'sl,sh', 'HU,IT,HR,AT', '', 0, NULL, NULL),
(202, 'SJ', 'SJM', 744, 'SV', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'Longyearbyen', 62049, 2550, 'EU', '.sj', 'NOK', '47', '', '', 'no,ru', '', '', 0, NULL, NULL),
(203, 'SK', 'SVK', 703, 'LO', 'Slovensko', 'Slovakia', 'Bratislava', 48845, 5455000, 'EU', '.sk', 'EUR', '421', '### ##', '^(d{5})$', 'sk,hu', 'PL,HU,CZ,UA,AT', '', 0, NULL, NULL),
(204, 'SL', 'SLE', 694, 'SL', 'Sierra Leone', 'Sierra Leone', 'Freetown', 71740, 5245695, 'AF', '.sl', 'SLL', '232', '', '', 'en-SL,men,tem', 'LR,GN', '', 0, NULL, NULL),
(205, 'SM', 'SMR', 674, 'SM', 'San Marino', 'San Marino', 'San Marino', 61, 31477, 'EU', '.sm', 'EUR', '378', '4789#', '^(4789d)$', 'it-SM', 'IT', '', 0, NULL, NULL),
(206, 'SN', 'SEN', 686, 'SG', 'Sénégal', 'Senegal', 'Dakar', 196190, 12323252, 'AF', '.sn', 'XOF', '221', '#####', '^(d{5})$', 'fr-SN,wo,fuc,mnk', 'GN,MR,GW,GM,ML', '', 0, NULL, NULL),
(207, 'SO', 'SOM', 706, 'SO', 'Soomaaliya', 'Somalia', 'Mogadishu', 637657, 10112453, 'AF', '.so', 'SOS', '252', '@@  #####', '^([A-Z]{2}d{5})$', 'so-SO,ar-SO,it,en-SO', 'ET,KE,DJ', '', 0, NULL, NULL),
(208, 'SR', 'SUR', 740, 'NS', 'Suriname', 'Suriname', 'Paramaribo', 163270, 492829, 'SA', '.sr', 'SRD', '597', '', '', 'nl-SR,en,srn,hns,jv', 'GY,BR,GF', '', 0, NULL, NULL),
(209, 'SS', 'SSD', 728, 'OD', 'South Sudan', 'South Sudan', 'Juba', 644329, 8260490, 'AF', '', 'SSP', '211', '', '', 'en', 'CD,CF,ET,KE,SD,UG,', '', 0, NULL, NULL),
(210, 'ST', 'STP', 678, 'TP', 'São Tomé e Príncipe', 'Sao Tome and Principe', 'Sao Tome', 1001, 175808, 'AF', '.st', 'STD', '239', '', '', 'pt-ST', '', '', 0, NULL, NULL),
(211, 'SV', 'SLV', 222, 'ES', 'El Salvador', 'El Salvador', 'San Salvador', 21040, 6052064, 'NA', '.sv', 'USD', '503', 'CP ####', '^(?:CP)*(d{4})$', 'es-SV', 'GT,HN', '', 0, NULL, NULL),
(212, 'SX', 'SXM', 534, 'NN', 'Sint Maarten', 'Sint Maarten', 'Philipsburg', 21, 37429, 'NA', '.sx', 'ANG', '599', '', '', 'nl,en', 'MF', '', 0, NULL, NULL),
(213, 'SY', 'SYR', 760, 'SY', 'Sūrīyâ', 'Syria', 'Damascus', 185180, 22198110, 'AS', '.sy', 'SYP', '963', '', '', 'ar-SY,ku,hy,arc,fr,en', 'IQ,JO,IL,TR,LB', '', 0, NULL, NULL),
(214, 'SZ', 'SWZ', 748, 'WZ', 'Swaziland', 'Swaziland', 'Mbabane', 17363, 1354051, 'AF', '.sz', 'SZL', '268', '@###', '^([A-Z]d{3})$', 'en-SZ,ss-SZ', 'ZA,MZ', '', 0, NULL, NULL),
(215, 'TC', 'TCA', 796, 'TK', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Cockburn Town', 430, 20556, 'NA', '.tc', 'USD', '+1-649', 'TKCA 1ZZ', '^(TKCA 1ZZ)$', 'en-TC', '', '', 0, NULL, NULL),
(216, 'TD', 'TCD', 148, 'CD', 'Tchad', 'Chad', 'N''Djamena', 1284000, 10543464, 'AF', '.td', 'XAF', '235', '', '', 'fr-TD,ar-TD,sre', 'NE,LY,CF,SD,CM,NG', '', 0, NULL, NULL),
(217, 'TF', 'ATF', 260, 'FS', 'French Southern Territories', 'French Southern Territories', 'Port-aux-Francais', 7829, 140, 'AN', '.tf', 'EUR', '', '', '', 'fr', '', '', 0, NULL, NULL),
(218, 'TG', 'TGO', 768, 'TO', 'Togo', 'Togo', 'Lome', 56785, 6587239, 'AF', '.tg', 'XOF', '228', '', '', 'fr-TG,ee,hna,kbp,dag,ha', 'BJ,GH,BF', '', 0, NULL, NULL),
(219, 'TH', 'THA', 764, 'TH', 'Prathēt tai', 'Thailand', 'Bangkok', 514000, 67089500, 'AS', '.th', 'THB', '66', '#####', '^(d{5})$', 'th,en', 'LA,MM,KH,MY', '', 0, NULL, NULL),
(220, 'TJ', 'TJK', 762, 'TI', 'Tojikiston', 'Tajikistan', 'Dushanbe', 143100, 7487489, 'AS', '.tj', 'TJS', '992', '######', '^(d{6})$', 'tg,ru', 'CN,AF,KG,UZ', '', 0, NULL, NULL),
(221, 'TK', 'TKL', 772, 'TL', 'Tokelau', 'Tokelau', '', 10, 1466, 'OC', '.tk', 'NZD', '690', '', '', 'tkl,en-TK', '', '', 0, NULL, NULL),
(222, 'TL', 'TLS', 626, 'TT', 'Timór Lorosa''e', 'East Timor', 'Dili', 15007, 1154625, 'OC', '.tl', 'USD', '670', '', '', 'tet,pt-TL,id,en', 'ID', '', 0, NULL, NULL),
(223, 'TM', 'TKM', 795, 'TX', 'Turkmenistan', 'Turkmenistan', 'Ashgabat', 488100, 4940916, 'AS', '.tm', 'TMT', '993', '######', '^(d{6})$', 'tk,ru,uz', 'AF,IR,UZ,KZ', '', 0, NULL, NULL),
(224, 'TN', 'TUN', 788, 'TS', 'Tunisie', 'Tunisia', 'Tunis', 163610, 10589025, 'AF', '.tn', 'TND', '216', '####', '^(d{4})$', 'ar-TN,fr', 'DZ,LY', '', 0, NULL, NULL),
(225, 'TO', 'TON', 776, 'TN', 'Tonga', 'Tonga', 'Nuku''alofa', 748, 122580, 'OC', '.to', 'TOP', '676', '', '', 'to,en-TO', '', '', 0, NULL, NULL),
(226, 'TR', 'TUR', 792, 'TU', 'Türkiye', 'Turkey', 'Ankara', 780580, 77804122, 'AS', '.tr', 'TRY', '90', '#####', '^(d{5})$', 'tr-TR,ku,diq,az,av', 'SY,GE,IQ,IR,GR,AM,AZ,BG', '', 0, NULL, NULL),
(227, 'TT', 'TTO', 780, 'TD', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Port of Spain', 5128, 1228691, 'NA', '.tt', 'TTD', '+1-868', '', '', 'en-TT,hns,fr,es,zh', '', '', 0, NULL, NULL),
(228, 'TV', 'TUV', 798, 'TV', 'Tuvalu', 'Tuvalu', 'Funafuti', 26, 10472, 'OC', '.tv', 'AUD', '688', '', '', 'tvl,en,sm,gil', '', '', 0, NULL, NULL),
(229, 'TW', 'TWN', 158, 'TW', 'T''ai2-wan1', 'Taiwan', 'Taipei', 35980, 22894384, 'AS', '.tw', 'TWD', '886', '#####', '^(d{5})$', 'zh-TW,zh,nan,hak', '', '', 0, NULL, NULL),
(230, 'TZ', 'TZA', 834, 'TZ', 'Tanzania', 'Tanzania', 'Dodoma', 945087, 41892895, 'AF', '.tz', 'TZS', '255', '', '', 'sw-TZ,en,ar', 'MZ,KE,CD,RW,ZM,BI,UG,MW', '', 0, NULL, NULL),
(231, 'UA', 'UKR', 804, 'UP', 'Ukrajina', 'Ukraine', 'Kiev', 603700, 45415596, 'EU', '.ua', 'UAH', '380', '#####', '^(d{5})$', 'uk,ru-UA,rom,pl,hu', 'PL,MD,HU,SK,BY,RO,RU', '', 0, NULL, NULL),
(232, 'UG', 'UGA', 800, 'UG', 'Uganda', 'Uganda', 'Kampala', 236040, 33398682, 'AF', '.ug', 'UGX', '256', '', '', 'en-UG,lg,sw,ar', 'TZ,KE,SS,CD,RW', '', 0, NULL, NULL),
(233, 'UK', 'GBR', 826, 'UK', 'United Kingdom', 'United Kingdom', 'London', 244820, 62348447, 'EU', '.uk', 'GBP', '44', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en-GB,cy-GB,gd', 'IE', '', 0, NULL, NULL),
(234, 'UM', 'UMI', 581, '', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', '', 0, 0, 'OC', '.um', 'USD', '1', '', '', 'en-UM', '', '', 0, NULL, NULL),
(235, 'US', 'USA', 840, 'US', 'USA', 'United States', 'Washington', 9629091, 310232863, 'NA', '.us', 'USD', '1', '#####-####', '^d{5}(-d{4})?$', 'en-US,es-US,haw,fr', 'CA,MX,CU', '', 0, NULL, NULL),
(236, 'UY', 'URY', 858, 'UY', 'Uruguay', 'Uruguay', 'Montevideo', 176220, 3477000, 'SA', '.uy', 'UYU', '598', '#####', '^(d{5})$', 'es-UY', 'BR,AR', '', 0, NULL, NULL),
(237, 'UZ', 'UZB', 860, 'UZ', 'O''zbekiston', 'Uzbekistan', 'Tashkent', 447400, 27865738, 'AS', '.uz', 'UZS', '998', '######', '^(d{6})$', 'uz,ru,tg', 'TM,AF,KG,TJ,KZ', '', 0, NULL, NULL),
(238, 'VA', 'VAT', 336, 'VT', 'Vaticanum', 'Vatican', 'Vatican City', 0, 921, 'EU', '.va', 'EUR', '379', '#####', '^(d{5})$', 'la,it,fr', 'IT', '', 0, NULL, NULL),
(239, 'VC', 'VCT', 670, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Kingstown', 389, 104217, 'NA', '.vc', 'XCD', '+1-784', '', '', 'en-VC,fr', '', '', 0, NULL, NULL),
(240, 'VE', 'VEN', 862, 'VE', 'Venezuela', 'Venezuela', 'Caracas', 912050, 27223228, 'SA', '.ve', 'VEF', '58', '####', '^(d{4})$', 'es-VE', 'GY,BR,CO', '', 0, NULL, NULL),
(241, 'VG', 'VGB', 92, 'VI', 'British Virgin Islands', 'British Virgin Islands', 'Road Town', 153, 21730, 'NA', '.vg', 'USD', '+1-284', '', '', 'en-VG', '', '', 0, NULL, NULL),
(242, 'VI', 'VIR', 850, 'VQ', 'U.S. Virgin Islands', 'U.S. Virgin Islands', 'Charlotte Amalie', 352, 108708, 'NA', '.vi', 'USD', '+1-340', '#####-####', '^d{5}(-d{4})?$', 'en-VI', '', '', 0, NULL, NULL),
(243, 'VN', 'VNM', 704, 'VM', 'Việt Nam', 'Vietnam', 'Hanoi', 329560, 89571130, 'AS', '.vn', 'VND', '84', '######', '^(d{6})$', 'vi,en,fr,zh,km', 'CN,LA,KH', '', 0, NULL, NULL),
(244, 'VU', 'VUT', 548, 'NH', 'Vanuatu', 'Vanuatu', 'Port Vila', 12200, 221552, 'OC', '.vu', 'VUV', '678', '', '', 'bi,en-VU,fr-VU', '', '', 0, NULL, NULL),
(245, 'WF', 'WLF', 876, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'Mata Utu', 274, 16025, 'OC', '.wf', 'XPF', '681', '#####', '^(986d{2})$', 'wls,fud,fr-WF', '', '', 0, NULL, NULL),
(246, 'WS', 'WSM', 882, 'WS', 'Samoa', 'Samoa', 'Apia', 2944, 192001, 'OC', '.ws', 'WST', '685', '', '', 'sm,en-WS', '', '', 0, NULL, NULL),
(247, 'XK', 'XKX', 0, 'KV', 'Kosovo', 'Kosovo', 'Pristina', 10908, 1800000, 'EU', '', 'EUR', '', '', '', 'sq,sr', 'RS,AL,MK,ME', '', 0, NULL, NULL),
(248, 'YE', 'YEM', 887, 'YM', 'al-Yaman', 'Yemen', 'Sanaa', 527970, 23495361, 'AS', '.ye', 'YER', '967', '', '', 'ar-YE', 'SA,OM', '', 0, NULL, NULL),
(249, 'YT', 'MYT', 175, 'MF', 'Mayotte', 'Mayotte', 'Mamoudzou', 374, 159042, 'AF', '.yt', 'EUR', '262', '#####', '^(d{5})$', 'fr-YT', '', '', 0, NULL, NULL),
(250, 'ZA', 'ZAF', 710, 'SF', 'South Africa', 'South Africa', 'Pretoria', 1219912, 49000000, 'AF', '.za', 'ZAR', '27', '####', '^(d{4})$', 'zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr', 'ZW,SZ,MZ,BW,NA,LS', '', 0, NULL, NULL),
(251, 'ZM', 'ZMB', 894, 'ZA', 'Zambia', 'Zambia', 'Lusaka', 752614, 13460305, 'AF', '.zm', 'ZMW', '260', '#####', '^(d{5})$', 'en-ZM,bem,loz,lun,lue,ny,toi', 'ZW,TZ,MZ,CD,NA,MW,AO', '', 0, NULL, NULL),
(252, 'ZW', 'ZWE', 716, 'ZI', 'Zimbabwe', 'Zimbabwe', 'Harare', 390580, 11651858, 'AF', '.zw', 'ZWL', '263', '', '', 'en-ZW,sn,nr,nd', 'ZA,MZ,BW,ZM', '', 0, NULL, NULL);

--
-- Truncate table before insert `<<prefix>>currencies`
--

TRUNCATE TABLE `<<prefix>>currencies`;
--
-- Dumping data for table `<<prefix>>currencies`
--

INSERT INTO `<<prefix>>currencies` (`id`, `code`, `name`, `html_entity`, `font_arial`, `font_code2000`, `unicode_decimal`, `unicode_hex`, `in_left`, `decimal_places`, `decimal_separator`, `thousand_separator`, `created_at`, `updated_at`) VALUES
(1, 'AED', 'United Arab Emirates Dirham', '&#1583;.&#1573;', 'د.إ', 'د.إ', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(2, 'AFN', 'Afghanistan Afghani', '&#65;&#102;', '؋', '؋', '1547', '60b', 0, 2, '.', ',', NULL, NULL),
(3, 'ALL', 'Albania Lek', '&#76;&#101;&#107;', 'Lek', 'Lek', '76, 1', '4c, 6', 0, 2, '.', ',', NULL, NULL),
(4, 'AMD', 'Armenia Dram', '', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(5, 'ANG', 'Netherlands Antilles Guilder', '&#402;', 'ƒ', 'ƒ', '402', '192', 0, 2, '.', ',', NULL, NULL),
(6, 'AOA', 'Angola Kwanza', '&#75;&#122;', 'Kz', 'Kz', NULL, NULL, 1, 2, '.', ',', NULL, NULL),
(7, 'ARS', 'Argentina Peso', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, NULL),
(8, 'AUD', 'Australia Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(9, 'AWG', 'Aruba Guilder', '&#402;', 'ƒ', 'ƒ', '402', '192', 0, 2, '.', ',', NULL, NULL),
(10, 'AZN', 'Azerbaijan New Manat', '&#1084;&#1072;&#1085;', 'ман', 'ман', '1084,', '43c, ', 0, 2, '.', ',', NULL, NULL),
(11, 'BAM', 'Bosnia and Herzegovina Convertible Marka', '&#75;&#77;', 'KM', 'KM', '75, 7', '4b, 4', 0, 2, '.', ',', NULL, NULL),
(12, 'BBD', 'Barbados Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(13, 'BDT', 'Bangladesh Taka', '&#2547;', '৳', '৳', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(14, 'BGN', 'Bulgaria Lev', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, NULL),
(15, 'BHD', 'Bahrain Dinar', '.&#1583;.&#1576;', NULL, NULL, NULL, NULL, 0, 3, '.', ',', NULL, NULL),
(16, 'BIF', 'Burundi Franc', '&#70;&#66;&#117;', 'FBu', 'FBu', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(17, 'BMD', 'Bermuda Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(18, 'BND', 'Brunei Darussalam Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(19, 'BOB', 'Bolivia Boliviano', '&#36;&#98;', '$b', '$b', '36, 9', '24, 6', 0, 2, '.', ',', NULL, NULL),
(20, 'BRL', 'Brazil Real', '&#82;&#36;', 'R$', 'R$', '82, 3', '52, 2', 0, 2, '.', ',', NULL, NULL),
(21, 'BSD', 'Bahamas Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(22, 'BTN', 'Bhutan Ngultrum', '&#78;&#117;&#46;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(23, 'BWP', 'Botswana Pula', '&#80;', 'P', 'P', '80', '50', 1, 2, '.', ',', NULL, NULL),
(24, 'BYR', 'Belarus Ruble', '&#112;&#46;', 'p.', 'p.', '112, ', '70, 2', 0, 0, '.', ',', NULL, NULL),
(25, 'BZD', 'Belize Dollar', '&#66;&#90;&#36;', 'BZ$', 'BZ$', '66, 9', '42, 5', 1, 2, '.', ',', NULL, NULL),
(26, 'CAD', 'Canada Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(27, 'CDF', 'Congo/Kinshasa Franc', '&#70;&#67;', 'Fr', 'Fr', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(28, 'CHF', 'Switzerland Franc', '', 'Fr', 'Fr', '67, 7', '43, 4', 0, 2, '.', ',', NULL, NULL),
(29, 'CLP', 'Chile Peso', '&#36;', '$', '$', '36', '24', 0, 0, '.', ',', NULL, NULL),
(30, 'CNY', 'China Yuan Renminbi', '&#165;', '¥', '¥', '165', 'a5', 0, 2, '.', ',', NULL, NULL),
(31, 'COP', 'Colombia Peso', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, NULL),
(32, 'CRC', 'Costa Rica Colon', '&#8353;', '₡', '₡', '8353', '20a1', 0, 2, '.', ',', NULL, NULL),
(33, 'CUC', 'Cuba Convertible Peso', NULL, NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(34, 'CUP', 'Cuba Peso', '&#8396;', '₱', '₱', '8369', '20b1', 0, 2, '.', ',', NULL, NULL),
(35, 'CVE', 'Cape Verde Escudo', '&#x24;', '$', '$', NULL, NULL, 1, 0, '.', ',', NULL, NULL),
(36, 'CZK', 'Czech Republic Koruna', '&#75;&#269;', 'Kč', 'Kč', '75, 2', '4b, 1', 0, 2, '.', ',', NULL, NULL),
(37, 'DJF', 'Djibouti Franc', '&#70;&#100;&#106;', 'Fr', 'Fr', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(38, 'DKK', 'Denmark Krone', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, NULL),
(39, 'DOP', 'Dominican Republic Peso', '&#82;&#68;&#36;', 'RD$', 'RD$', '82, 6', '52, 4', 0, 2, '.', ',', NULL, NULL),
(40, 'DZD', 'Algeria Dinar', '&#1583;&#1580;', 'DA', 'DA', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(41, 'EEK', 'Estonia Kroon', NULL, 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, NULL),
(42, 'EGP', 'Egypt Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(43, 'ERN', 'Eritrea Nakfa', '&#x4E;&#x66;&#x6B;', 'Nfk', 'Nfk', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(44, 'ETB', 'Ethiopia Birr', '&#66;&#114;', 'Br', 'Br', NULL, NULL, 1, 2, '.', ',', NULL, NULL),
(45, 'EUR', 'Euro Member Countries', '€', '€', '€', '8364', '20ac', 0, 2, ',', ' ', NULL, NULL),
(46, 'FJD', 'Fiji Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(47, 'FKP', 'Falkland Islands (Malvinas) Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(48, 'GBP', 'United Kingdom Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(49, 'GEL', 'Georgia Lari', '&#4314;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(50, 'GGP', 'Guernsey Pound', NULL, '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(51, 'GHC', 'Ghana Cedi', '&#x47;&#x48;&#xA2;', 'GH¢', 'GH¢', '162', 'a2', 1, 2, '.', ',', NULL, NULL),
(52, 'GHS', 'Ghana Cedi', '&#x47;&#x48;&#xA2;', 'GH¢', 'GH¢', NULL, NULL, 1, 2, '.', ',', NULL, NULL),
(53, 'GIP', 'Gibraltar Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(54, 'GMD', 'Gambia Dalasi', '&#68;', 'D', 'D', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(55, 'GNF', 'Guinea Franc', '&#70;&#71;', 'Fr', 'Fr', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(56, 'GTQ', 'Guatemala Quetzal', '&#81;', 'Q', 'Q', '81', '51', 0, 2, '.', ',', NULL, NULL),
(57, 'GYD', 'Guyana Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(58, 'HKD', 'Hong Kong Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(59, 'HNL', 'Honduras Lempira', '&#76;', 'L', 'L', '76', '4c', 0, 2, '.', ',', NULL, NULL),
(60, 'HRK', 'Croatia Kuna', '&#107;&#110;', 'kn', 'kn', '107, ', '6b, 6', 0, 2, '.', ',', NULL, NULL),
(61, 'HTG', 'Haiti Gourde', '&#71;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(62, 'HUF', 'Hungary Forint', '&#70;&#116;', 'Ft', 'Ft', '70, 1', '46, 7', 0, 2, '.', ',', NULL, NULL),
(63, 'IDR', 'Indonesia Rupiah', '&#82;&#112;', 'Rp', 'Rp', '82, 1', '52, 7', 0, 0, '.', ',', NULL, NULL),
(64, 'ILS', 'Israel Shekel', '&#8362;', '₪', '₪', '8362', '20aa', 0, 2, '.', ',', NULL, NULL),
(65, 'IMP', 'Isle of Man Pound', NULL, '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(66, 'INR', 'India Rupee', '&#8377;', '₨', '₨', '', '', 0, 2, '.', ',', NULL, NULL),
(67, 'IQD', 'Iraq Dinar', '&#1593;.&#1583;', 'د.ع;', 'د.ع;', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(68, 'IRR', 'Iran Rial', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 0, '.', ',', NULL, NULL),
(69, 'ISK', 'Iceland Krona', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 0, '.', ',', NULL, NULL),
(70, 'JEP', 'Jersey Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(71, 'JMD', 'Jamaica Dollar', '&#74;&#36;', 'J$', 'J$', '74, 3', '4a, 2', 1, 2, '.', ',', NULL, NULL),
(72, 'JOD', 'Jordan Dinar', '&#74;&#68;', NULL, NULL, NULL, NULL, 0, 3, '.', ',', NULL, NULL),
(73, 'JPY', 'Japan Yen', '&#165;', '¥', '¥', '165', 'a5', 0, 0, '.', ',', NULL, NULL),
(74, 'KES', 'Kenya Shilling', '&#x4B;&#x53;&#x68;', 'KSh', 'KSh', NULL, NULL, 1, 2, '.', ',', NULL, NULL),
(75, 'KGS', 'Kyrgyzstan Som', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, NULL),
(76, 'KHR', 'Cambodia Riel', '&#6107;', '៛', '៛', '6107', '17db', 0, 2, '.', ',', NULL, NULL),
(77, 'KMF', 'Comoros Franc', '&#67;&#70;', 'Fr', 'Fr', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(78, 'KPW', 'Korea (North) Won', '&#8361;', '₩', '₩', '8361', '20a9', 0, 0, '.', ',', NULL, NULL),
(79, 'KRW', 'Korea (South) Won', '&#8361;', '₩', '₩', '8361', '20a9', 0, 0, '.', ',', NULL, NULL),
(80, 'KWD', 'Kuwait Dinar', '&#1583;.&#1603;', 'د.ك', 'د.ك', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(81, 'KYD', 'Cayman Islands Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(82, 'KZT', 'Kazakhstan Tenge', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, NULL),
(83, 'LAK', 'Laos Kip', '&#8365;', '₭', '₭', '8365', '20ad', 0, 0, '.', ',', NULL, NULL),
(84, 'LBP', 'Lebanon Pound', '&#163;', '£', '£', '163', 'a3', 0, 0, '.', ',', NULL, NULL),
(85, 'LKR', 'Sri Lanka Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, NULL),
(86, 'LRD', 'Liberia Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(87, 'LSL', 'Lesotho Loti', '&#76;', 'M', 'M', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(88, 'LTL', 'Lithuania Litas', '&#76;&#116;', 'Lt', 'Lt', '76, 1', '4c, 7', 0, 2, '.', ',', NULL, NULL),
(89, 'LVL', 'Latvia Lat', '&#76;&#115;', 'Ls', 'Ls', '76, 1', '4c, 7', 0, 2, '.', ',', NULL, NULL),
(90, 'LYD', 'Libya Dinar', '&#1604;.&#1583;', 'DL', 'DL', NULL, NULL, 0, 3, '.', ',', NULL, NULL),
(91, 'MAD', 'Morocco Dirham', '&#1583;.&#1605;.', 'Dhs', 'Dhs', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(92, 'MDL', 'Moldova Leu', '&#76;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(93, 'MGA', 'Madagascar Ariary', '&#65;&#114;', 'Ar', 'Ar', NULL, NULL, 0, 5, '.', ',', NULL, NULL),
(94, 'MKD', 'Macedonia Denar', '&#1076;&#1077;&#1085;', 'ден', 'ден', '1076,', '434, ', 0, 2, '.', ',', NULL, NULL),
(95, 'MMK', 'Myanmar (Burma) Kyat', '&#75;', NULL, NULL, NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(96, 'MNT', 'Mongolia Tughrik', '&#8366;', '₮', '₮', '8366', '20ae', 0, 2, '.', ',', NULL, NULL),
(97, 'MOP', 'Macau Pataca', '&#77;&#79;&#80;&#36;', NULL, NULL, NULL, NULL, 0, 1, '.', ',', NULL, NULL),
(98, 'MRO', 'Mauritania Ouguiya', '&#85;&#77;', 'UM', 'UM', NULL, NULL, 0, 5, '.', ',', NULL, NULL),
(99, 'MUR', 'Mauritius Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, NULL),
(100, 'MVR', 'Maldives (Maldive Islands) Rufiyaa', '.&#1923;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(101, 'MWK', 'Malawi Kwacha', '&#77;&#75;', 'MK', 'MK', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(102, 'MXN', 'Mexico Peso', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, NULL),
(103, 'MYR', 'Malaysia Ringgit', '&#82;&#77;', 'RM', 'RM', '82, 7', '52, 4', 0, 2, '.', ',', NULL, NULL),
(104, 'MZN', 'Mozambique Metical', '&#77;&#84;', 'MT', 'MT', '77, 8', '4d, 5', 0, 2, '.', ',', NULL, NULL),
(105, 'NAD', 'Namibia Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(106, 'NGN', 'Nigeria Naira', '&#8358;', '₦', '₦', '8358', '20a6', 1, 2, '.', ',', NULL, NULL),
(107, 'NIO', 'Nicaragua Cordoba', '&#67;&#36;', 'C$', 'C$', '67, 3', '43, 2', 0, 2, '.', ',', NULL, NULL),
(108, 'NOK', 'Norway Krone', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, NULL),
(109, 'NPR', 'Nepal Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, NULL),
(110, 'NZD', 'New Zealand Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(111, 'OMR', 'Oman Rial', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 3, '.', ',', NULL, NULL),
(112, 'PAB', 'Panama Balboa', '&#66;&#47;&#46;', 'B/.', 'B/.', '66, 4', '42, 2', 0, 2, '.', ',', NULL, NULL),
(113, 'PEN', 'Peru Nuevo Sol', '&#83;&#47;&#46;', 'S/.', 'S/.', '83, 4', '53, 2', 0, 2, '.', ',', NULL, NULL),
(114, 'PGK', 'Papua New Guinea Kina', '&#75;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(115, 'PHP', 'Philippines Peso', '&#8369;', '₱', '₱', '8369', '20b1', 0, 2, '.', ',', NULL, NULL),
(116, 'PKR', 'Pakistan Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, NULL),
(117, 'PLN', 'Poland Zloty', '&#122;&#322;', 'zł', 'zł', '122, ', '7a, 1', 0, 2, '.', ',', NULL, NULL),
(118, 'PYG', 'Paraguay Guarani', '&#71;&#115;', 'Gs', 'Gs', '71, 1', '47, 7', 0, 0, '.', ',', NULL, NULL),
(119, 'QAR', 'Qatar Riyal', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 2, '.', ',', NULL, NULL),
(120, 'RON', 'Romania New Leu', '&#108;&#101;&#105;', 'lei', 'lei', '108, ', '6c, 6', 0, 2, '.', ',', NULL, NULL),
(121, 'RSD', 'Serbia Dinar', '&#1044;&#1080;&#1085;&#46;', 'Дин.', 'Дин.', '1044,', '414, ', 0, 2, '.', ',', NULL, NULL),
(122, 'RUB', 'Russia Ruble', '&#1088;&#1091;&#1073;', 'руб', 'руб', '1088,', '440, ', 0, 2, '.', ',', NULL, NULL),
(123, 'RWF', 'Rwanda Franc', '&#1585;.&#1587;', 'FRw', 'FRw', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(124, 'SAR', 'Saudi Arabia Riyal', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 2, '.', ',', NULL, NULL),
(125, 'SBD', 'Solomon Islands Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(126, 'SCR', 'Seychelles Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, NULL),
(127, 'SDG', 'Sudan Pound', '&#163;', 'DS', 'DS', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(128, 'SEK', 'Sweden Krona', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, NULL),
(129, 'SGD', 'Singapore Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(130, 'SHP', 'Saint Helena Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(131, 'SLL', 'Sierra Leone Leone', '&#76;&#101;', 'Le', 'Le', NULL, NULL, 1, 0, '.', ',', NULL, NULL),
(132, 'SOS', 'Somalia Shilling', '&#83;', 'S', 'S', '83', '53', 0, 2, '.', ',', NULL, NULL),
(133, 'SPL', 'Seborga Luigino', NULL, NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(134, 'SRD', 'Suriname Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(135, 'SSP', 'South Sudanese Pound', '&#xA3;', '£', '£', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(136, 'STD', 'São Tomé and Príncipe Dobra', '&#68;&#98;', 'Db', 'Db', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(137, 'SVC', 'El Salvador Colon', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, NULL),
(138, 'SYP', 'Syria Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(139, 'SZL', 'Swaziland Lilangeni', '&#76;', 'E', 'E', NULL, NULL, 1, 2, '.', ',', NULL, NULL),
(140, 'THB', 'Thailand Baht', '&#3647;', '฿', '฿', '3647', 'e3f', 0, 2, '.', ',', NULL, NULL),
(141, 'TJS', 'Tajikistan Somoni', '&#84;&#74;&#83;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(142, 'TMT', 'Turkmenistan Manat', '&#109;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(143, 'TND', 'Tunisia Dinar', '&#1583;.&#1578;', 'DT', 'DT', NULL, NULL, 1, 3, '.', ',', NULL, NULL),
(144, 'TOP', 'Tonga Pa\'anga', '&#84;&#36;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(145, 'TRL', 'Turkey Lira', NULL, '₤', '₤', '8356', '20a4', 1, 2, '.', ',', NULL, NULL),
(146, 'TRY', 'Turkey Lira', '&#x20BA;', '₺', '₺', '', '', 1, 2, '.', ',', NULL, NULL),
(147, 'TTD', 'Trinidad and Tobago Dollar', '&#36;', 'TT$', 'TT$', '84, 8', '54, 5', 1, 2, '.', ',', NULL, NULL),
(148, 'TVD', 'Tuvalu Dollar', NULL, '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(149, 'TWD', 'Taiwan New Dollar', '&#78;&#84;&#36;', 'NT$', 'NT$', '78, 8', '4e, 5', 1, 2, '.', ',', NULL, NULL),
(150, 'TZS', 'Tanzania Shilling', '&#x54;&#x53;&#x68;', 'TSh', 'TSh', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(151, 'UAH', 'Ukraine Hryvnia', '&#8372;', '₴', '₴', '8372', '20b4', 0, 2, '.', ',', NULL, NULL),
(152, 'UGX', 'Uganda Shilling', '&#85;&#83;&#104;', 'USh', 'USh', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(153, 'USD', 'United States Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(154, 'UYU', 'Uruguay Peso', '&#36;&#85;', '$U', '$U', '36, 8', '24, 5', 0, 2, '.', ',', NULL, NULL),
(155, 'UZS', 'Uzbekistan Som', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, NULL),
(156, 'VEF', 'Venezuela Bolivar', '&#66;&#115;', 'Bs', 'Bs', '66, 1', '42, 7', 0, 2, '.', ',', NULL, NULL),
(157, 'VND', 'Viet Nam Dong', '&#8363;', '₫', '₫', '8363', '20ab', 1, 0, '.', ',', NULL, NULL),
(158, 'VUV', 'Vanuatu Vatu', '&#86;&#84;', NULL, NULL, NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(159, 'WST', 'Samoa Tala', '&#87;&#83;&#36;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(160, 'XAF', 'Communauté Financière Africaine (BEAC) CFA Franc B', '&#70;&#67;&#70;&#65;', 'F', 'F', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(161, 'XCD', 'East Caribbean Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(162, 'XDR', 'International Monetary Fund (IMF) Special Drawing ', '', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(163, 'XOF', 'Communauté Financière Africaine (BCEAO) Franc', '&#70;&#67;&#70;&#65;', 'F', 'F', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(164, 'XPF', 'Comptoirs Français du Pacifique (CFP) Franc', '&#70;', 'F', 'F', NULL, NULL, 0, 0, '.', ',', NULL, NULL),
(165, 'YER', 'Yemen Rial', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 2, '.', ',', NULL, NULL),
(166, 'ZAR', 'South Africa Rand', '&#82;', 'R', 'R', '82', '52', 1, 2, '.', ',', NULL, NULL),
(167, 'ZMW', 'Zambia Kwacha', NULL, 'ZK', 'ZK', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(168, 'ZWD', 'Zimbabwe Dollar', NULL, 'Z$', 'Z$', '90, 3', '5a, 2', 1, 2, '.', ',', NULL, NULL),
(169, 'ZWL', 'Zimbabwe Dollar', NULL, 'Z$', 'Z$', '90, 3', '5a, 2', 1, 2, '.', ',', NULL, NULL),
(170, 'XBT', 'Bitcoin', '฿', '฿', '฿', NULL, NULL, 1, 2, '.', ',', NULL, NULL);

--
-- Truncate table before insert `<<prefix>>gender`
--

TRUNCATE TABLE `<<prefix>>gender`;
--
-- Dumping data for table `<<prefix>>gender`
--

INSERT INTO `<<prefix>>gender` (`id`, `translation_lang`, `translation_of`, `name`) VALUES
(1, 'en', 1, 'Mr'),
(2, 'en', 2, 'Mrs'),
(3, 'fr', 1, 'Monsieur'),
(4, 'fr', 2, 'Madame'),
(5, 'es', 1, 'Señor'),
(6, 'es', 2, 'Señora');

--
-- Truncate table before insert `<<prefix>>fields`
--

TRUNCATE TABLE `<<prefix>>fields`;
--
-- Dumping data for table `<<prefix>>fields`
--

INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(1, 'posts', 'en', 1, 'Car Brand', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(2, 'posts', 'fr', 1, 'Marque', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(3, 'posts', 'es', 1, 'Brand', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(5, 'posts', 'en', 5, 'Model', 'text', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(6, 'posts', 'fr', 5, 'Modèle', 'text', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(7, 'posts', 'es', 5, 'Model', 'text', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(9, 'posts', 'en', 9, 'Year of registration', 'text', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(10, 'posts', 'fr', 9, 'Année', 'text', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(11, 'posts', 'es', 9, 'Year of registration', 'text', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(13, 'posts', 'en', 13, 'Mileage', 'text', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(14, 'posts', 'fr', 13, 'Kilométrage', 'text', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(15, 'posts', 'es', 13, 'Kms Driven', 'text', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(17, 'posts', 'en', 17, 'Fuel Type', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(18, 'posts', 'fr', 17, 'Type de carburant', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(19, 'posts', 'es', 17, 'Fuel Type', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(21, 'posts', 'en', 21, 'Features', 'checkbox_multiple', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(22, 'posts', 'fr', 21, 'Options', 'checkbox_multiple', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(23, 'posts', 'es', 21, 'Features', 'checkbox_multiple', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(25, 'posts', 'en', 25, 'Resume', 'file', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(26, 'posts', 'fr', 25, 'CV', 'file', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(27, 'posts', 'es', 25, 'Resume', 'file', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(28, 'posts', 'en', 28, 'Condition', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(29, 'posts', 'fr', 28, 'Condition', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(30, 'posts', 'es', 28, 'Condition', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(31, 'posts', 'en', 31, 'Transmission', 'radio', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(32, 'posts', 'fr', 31, 'Transmission', 'radio', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(33, 'posts', 'es', 31, 'Transmission', 'radio', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(34, 'posts', 'en', 34, 'Start Date', 'text', 50, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(35, 'posts', 'fr', 34, 'Date de début', 'text', 50, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(36, 'posts', 'es', 34, 'Start Date', 'text', 50, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(37, 'posts', 'en', 37, 'Company', 'text', 100, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(38, 'posts', 'fr', 37, 'Raison Sociale', 'text', 100, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(39, 'posts', 'es', 37, 'Company', 'text', 100, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(40, 'posts', 'en', 40, 'Work Type', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(41, 'posts', 'fr', 40, 'Type d\'emploi', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(42, 'posts', 'es', 40, 'Work type', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(43, 'posts', 'en', 43, 'Size', 'text', 50, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(44, 'posts', 'fr', 43, 'Taille', 'text', 50, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(45, 'posts', 'es', 43, 'Size', 'text', 50, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(46, 'posts', 'en', 46, 'Rooms', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(47, 'posts', 'fr', 46, 'Pièces', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(48, 'posts', 'es', 46, 'Rooms', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(49, 'posts', 'en', 49, 'Building Type', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(50, 'posts', 'fr', 49, 'Type de bâtiment', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(51, 'posts', 'es', 49, 'Building Type', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(52, 'posts', 'en', 52, 'Parking', 'checkbox', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(53, 'posts', 'fr', 52, 'Parking', 'checkbox', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(54, 'posts', 'es', 52, 'Parking', 'checkbox', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(55, 'posts', 'en', 55, 'Furnished', 'radio', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(56, 'posts', 'fr', 55, 'Meublé', 'radio', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(57, 'posts', 'es', 55, 'Furnished', 'radio', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(75, 'posts', 'en', 75, 'Electronic Brand', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(76, 'posts', 'fr', 75, 'Marque', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(77, 'posts', 'es', 75, 'Brand', 'select', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(81, 'posts', 'en', 81, 'Sex', 'radio', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(82, 'posts', 'fr', 81, 'Sexe', 'radio', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(83, 'posts', 'es', 81, 'Sex', 'radio', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(84, 'posts', 'en', 84, 'Looking for', 'checkbox_multiple', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(85, 'posts', 'fr', 84, 'Recherche un(e)', 'checkbox_multiple', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(86, 'posts', 'es', 84, 'Looking for', 'checkbox_multiple', NULL, NULL, 0, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(87, 'posts', 'en', 87, 'Age', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(88, 'posts', 'fr', 87, 'Age', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(89, 'posts', 'es', 87, 'Age', 'select', NULL, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(90, 'posts', 'en', 90, 'Start date', 'text', 50, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(91, 'posts', 'fr', 90, 'Date de début', 'text', 50, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(92, 'posts', 'es', 90, 'Start date', 'text', 50, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(93, 'posts', 'en', 93, 'End date', 'text', 50, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(94, 'posts', 'fr', 93, 'Date de fin', 'text', 50, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(95, 'posts', 'es', 93, 'End date', 'text', 50, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(96, 'posts', 'en', 96, 'Event Address', 'text', 200, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(97, 'posts', 'fr', 96, 'Adresse de l\'événement', 'text', 200, NULL, 1, NULL, 1);
INSERT INTO `<<prefix>>fields` (`id`, `belongs_to`, `translation_lang`, `translation_of`, `name`, `type`, `max`, `default`, `required`, `help`, `active`) VALUES(98, 'posts', 'es', 96, 'Address', 'text', 200, NULL, 1, NULL, 1);

--
-- Truncate table before insert `<<prefix>>fields_options`
--

TRUNCATE TABLE `<<prefix>>fields_options`;
--
-- Dumping data for table `<<prefix>>fields_options`
--

INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(1, 1, 'en', 1, 'BMW', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(2, 1, 'fr', 1, 'BMW', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(3, 1, 'es', 1, 'BMW', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(4, 1, 'en', 4, 'Mercedes', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(5, 1, 'fr', 4, 'Mercedes', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(6, 1, 'es', 4, 'Mercedes', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(7, 1, 'en', 7, 'Renault', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(8, 1, 'fr', 7, 'Renault', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(9, 1, 'es', 7, 'Renault', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(10, 21, 'en', 10, 'Air conditionar', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(11, 21, 'fr', 10, 'Climatisation', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(12, 21, 'es', 10, 'Air conditionar', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(13, 21, 'en', 13, 'GPS', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(14, 21, 'fr', 13, 'GPS', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(15, 21, 'es', 13, 'GPS', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(16, 21, 'en', 16, 'Security System', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(17, 21, 'fr', 16, 'Système de sécurité', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(18, 21, 'es', 16, 'Security System', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(19, 21, 'en', 19, 'Stepney', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(20, 21, 'fr', 19, 'Stepney', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(21, 21, 'es', 19, 'Stepney', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(22, 17, 'en', 22, 'Essence', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(23, 17, 'fr', 22, 'Essence', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(24, 17, 'es', 22, 'Essence', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(25, 17, 'en', 25, 'Diesel', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(26, 17, 'fr', 25, 'Gasoil', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(27, 17, 'es', 25, 'Diesel', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(28, 1, 'en', 28, 'Toyota', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(29, 1, 'fr', 28, 'Toyota', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(30, 1, 'es', 28, 'Toyota', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(31, 28, 'en', 31, 'New', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(32, 28, 'fr', 31, 'Neuf', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(33, 28, 'es', 31, 'New', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(34, 28, 'en', 34, 'Used', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(35, 28, 'fr', 34, 'Occasion', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(36, 28, 'es', 34, 'Used', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(37, 31, 'en', 37, 'Automatic', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(38, 31, 'fr', 37, 'Automatique', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(39, 31, 'es', 37, 'Automatic', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(40, 31, 'en', 40, 'Manual', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(41, 31, 'fr', 40, 'Manuelle', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(42, 31, 'es', 40, 'Manual', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(43, 40, 'en', 43, 'Full-time', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(44, 40, 'fr', 43, 'Plein temps', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(45, 40, 'es', 43, 'Full-time', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(46, 40, 'en', 46, 'Part-time', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(47, 40, 'fr', 46, 'Temps partiel', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(48, 40, 'es', 46, 'Part-time', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(49, 40, 'en', 49, 'Temporary', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(50, 40, 'fr', 49, 'Temporaire', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(51, 40, 'es', 49, 'Temporary', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(55, 40, 'en', 55, 'Internship', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(56, 40, 'fr', 55, 'Stage', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(57, 40, 'es', 55, 'Internship', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(58, 40, 'en', 58, 'Permanent', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(59, 40, 'fr', 58, 'Permanent', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(60, 40, 'es', 58, 'Permanent', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(61, 46, 'en', 61, '1', 0, 4, 5, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(62, 46, 'fr', 61, '1', 0, 4, 5, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(63, 46, 'es', 61, '1', 0, 4, 5, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(64, 46, 'en', 64, '2', 0, 6, 7, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(65, 46, 'fr', 64, '2', 0, 6, 7, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(66, 46, 'es', 64, '2', 0, 6, 7, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(67, 46, 'en', 67, '3', 0, 8, 9, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(68, 46, 'fr', 67, '3', 0, 8, 9, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(69, 46, 'es', 67, '3', 0, 8, 9, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(70, 46, 'en', 70, '4', 0, 10, 11, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(71, 46, 'fr', 70, '4', 0, 10, 11, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(72, 46, 'es', 70, '4', 0, 10, 11, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(73, 46, 'en', 73, '5', 0, 12, 13, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(74, 46, 'fr', 73, '5', 0, 12, 13, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(75, 46, 'es', 73, '5', 0, 12, 13, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(76, 46, 'en', 76, '6', 0, 14, 15, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(77, 46, 'fr', 76, '6', 0, 14, 15, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(78, 46, 'es', 76, '6', 0, 14, 15, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(79, 46, 'en', 79, '7', 0, 16, 17, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(80, 46, 'fr', 79, '7', 0, 16, 17, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(81, 46, 'es', 79, '7', 0, 16, 17, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(82, 46, 'en', 82, '8', 0, 18, 19, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(83, 46, 'fr', 82, '8', 0, 18, 19, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(84, 46, 'es', 82, '8', 0, 18, 19, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(85, 46, 'en', 85, '9', 0, 20, 21, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(86, 46, 'fr', 85, '9', 0, 20, 21, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(87, 46, 'es', 85, '9', 0, 20, 21, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(88, 46, 'en', 88, '10', 0, 22, 23, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(89, 46, 'fr', 88, '10', 0, 22, 23, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(90, 46, 'es', 88, '10', 0, 22, 23, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(91, 46, 'en', 91, '> 10', 0, 24, 25, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(92, 46, 'fr', 91, '> 10', 0, 24, 25, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(93, 46, 'es', 91, '> 10', 0, 24, 25, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(94, 49, 'en', 94, 'Apartment', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(95, 49, 'fr', 94, 'Appartement', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(96, 49, 'es', 94, 'Apartment', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(97, 49, 'en', 97, 'House', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(98, 49, 'fr', 97, 'Maison', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(99, 49, 'es', 97, 'House', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(100, 55, 'en', 100, 'Yes', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(101, 55, 'fr', 100, 'Oui', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(102, 55, 'es', 100, 'Yes', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(103, 55, 'en', 103, 'No', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(104, 55, 'fr', 103, 'Non', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(105, 55, 'es', 103, 'No', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(106, 49, 'en', 106, 'Office', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(107, 49, 'fr', 106, 'Bureau', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(108, 49, 'es', 106, 'Office', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(109, 49, 'en', 109, 'Store', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(110, 49, 'fr', 109, 'Magasin', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(111, 49, 'es', 109, 'Store', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(112, 49, 'en', 112, 'Plot of land', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(113, 49, 'fr', 112, 'Parcelle de terrain', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(114, 49, 'es', 112, 'Plot of land', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(115, 46, 'en', 115, '0', 0, 2, 3, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(116, 46, 'fr', 115, '0', 0, 2, 3, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(117, 46, 'es', 115, '0', 0, 2, 3, 1);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(156, 1, 'en', 156, 'Chevrolet', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(157, 1, 'fr', 156, 'Chevrolet', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(158, 1, 'es', 156, 'Chevrolet', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(159, 1, 'en', 159, 'Cadillac', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(160, 1, 'fr', 159, 'Cadillac', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(161, 1, 'es', 159, 'Cadillac', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(162, 1, 'en', 162, 'Buick', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(163, 1, 'fr', 162, 'Buick', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(164, 1, 'es', 162, 'Buick', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(165, 1, 'en', 165, 'GMC', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(166, 1, 'fr', 165, 'GMC', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(167, 1, 'es', 165, 'GMC', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(168, 1, 'en', 168, 'Ford', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(169, 1, 'fr', 168, 'Ford', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(170, 1, 'es', 168, 'Ford', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(171, 1, 'en', 171, 'Chrysler', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(172, 1, 'fr', 171, 'Chrysler', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(173, 1, 'es', 171, 'Chrysler', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(174, 1, 'en', 174, 'Dodge', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(175, 1, 'fr', 174, 'Dodge', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(176, 1, 'es', 174, 'Dodge', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(177, 1, 'en', 177, 'Jeep', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(178, 1, 'fr', 177, 'Jeep', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(179, 1, 'es', 177, 'Jeep', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(180, 1, 'en', 180, 'Tesla', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(181, 1, 'fr', 180, 'Tesla', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(182, 1, 'es', 180, 'Tesla', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(183, 1, 'en', 183, 'Lexus', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(184, 1, 'fr', 183, 'Lexus', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(185, 1, 'es', 183, 'Lexus', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(186, 1, 'en', 186, 'Suzuki', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(187, 1, 'fr', 186, 'Suzuki', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(188, 1, 'es', 186, 'Suzuki', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(189, 1, 'en', 189, 'Mazda', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(190, 1, 'fr', 189, 'Mazda', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(191, 1, 'es', 189, 'Mazda', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(192, 1, 'en', 192, 'Honda', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(193, 1, 'fr', 192, 'Honda', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(194, 1, 'es', 192, 'Honda', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(195, 1, 'en', 195, 'Acura', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(196, 1, 'fr', 195, 'Acura', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(197, 1, 'es', 195, 'Acura', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(198, 1, 'en', 198, 'Mitsubishi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(199, 1, 'fr', 198, 'Mitsubishi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(200, 1, 'es', 198, 'Mitsubishi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(201, 1, 'en', 201, 'Nissan', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(202, 1, 'fr', 201, 'Nissan', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(203, 1, 'es', 201, 'Nissan', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(204, 1, 'en', 204, 'Infiniti', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(205, 1, 'fr', 204, 'Infiniti', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(206, 1, 'es', 204, 'Infiniti', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(207, 1, 'en', 207, 'Audi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(208, 1, 'fr', 207, 'Audi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(209, 1, 'es', 207, 'Audi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(210, 1, 'en', 210, 'Volkswagen', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(211, 1, 'fr', 210, 'Volkswagen', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(212, 1, 'es', 210, 'Volkswagen', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(213, 1, 'en', 213, 'Porsche', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(214, 1, 'fr', 213, 'Porsche', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(215, 1, 'es', 213, 'Porsche', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(216, 1, 'en', 216, 'Opel', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(217, 1, 'fr', 216, 'Opel', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(218, 1, 'es', 216, 'Opel', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(219, 1, 'en', 219, 'Jaguar', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(220, 1, 'fr', 219, 'Jaguar', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(221, 1, 'es', 219, 'Jaguar', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(222, 1, 'en', 222, 'Land Rover', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(223, 1, 'fr', 222, 'Land Rover', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(224, 1, 'es', 222, 'Land Rover', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(225, 1, 'en', 225, 'Mini', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(226, 1, 'fr', 225, 'Mini', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(227, 1, 'es', 225, 'Mini', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(228, 1, 'en', 228, 'Aston Martin', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(229, 1, 'fr', 228, 'Aston Martin', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(230, 1, 'es', 228, 'Aston Martin', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(231, 1, 'en', 231, 'Bentley', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(232, 1, 'fr', 231, 'Bentley', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(233, 1, 'es', 231, 'Bentley', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(234, 1, 'en', 234, 'Rolls Royce', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(235, 1, 'fr', 234, 'Rolls Royce', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(236, 1, 'es', 234, 'Rolls Royce', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(237, 1, 'en', 237, 'McLaren', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(238, 1, 'fr', 237, 'McLaren', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(239, 1, 'es', 237, 'McLaren', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(240, 1, 'en', 240, 'Fiat', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(241, 1, 'fr', 240, 'Fiat', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(242, 1, 'es', 240, 'Fiat', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(243, 1, 'en', 243, 'Alfa Romeo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(244, 1, 'fr', 243, 'Alfa Romeo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(245, 1, 'es', 243, 'Alfa Romeo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(246, 1, 'en', 246, 'Maserati', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(247, 1, 'fr', 246, 'Maserati', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(248, 1, 'es', 246, 'Maserati', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(249, 1, 'en', 249, 'Ferrari', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(250, 1, 'fr', 249, 'Ferrari', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(251, 1, 'es', 249, 'Ferrari', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(252, 1, 'en', 252, 'Lamborghini', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(253, 1, 'fr', 252, 'Lamborghini', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(254, 1, 'es', 252, 'Lamborghini', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(255, 1, 'en', 255, 'Pagani', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(256, 1, 'fr', 255, 'Pagani', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(257, 1, 'es', 255, 'Pagani', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(258, 1, 'en', 258, 'Lancia', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(259, 1, 'fr', 258, 'Lancia', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(260, 1, 'es', 258, 'Lancia', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(261, 1, 'en', 261, 'Peugeot', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(262, 1, 'fr', 261, 'Peugeot', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(263, 1, 'es', 261, 'Peugeot', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(264, 1, 'en', 264, 'Citroen', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(265, 1, 'fr', 264, 'Citroen', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(266, 1, 'es', 264, 'Citroen', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(267, 1, 'en', 267, 'Bugatti', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(268, 1, 'fr', 267, 'Bugatti', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(269, 1, 'es', 267, 'Bugatti', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(270, 1, 'en', 270, 'Tata', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(271, 1, 'fr', 270, 'Tata', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(272, 1, 'es', 270, 'Tata', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(273, 1, 'en', 273, 'Hyundai', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(274, 1, 'fr', 273, 'Hyundai', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(275, 1, 'es', 273, 'Hyundai', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(276, 1, 'en', 276, 'Kia', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(277, 1, 'fr', 276, 'Kia', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(278, 1, 'es', 276, 'Kia', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(279, 1, 'en', 279, 'Daewoo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(280, 1, 'fr', 279, 'Daewoo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(281, 1, 'es', 279, 'Daewoo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(282, 1, 'en', 282, 'Volvo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(283, 1, 'fr', 282, 'Volvo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(284, 1, 'es', 282, 'Volvo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(285, 1, 'en', 285, 'Saab', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(286, 1, 'fr', 285, 'Saab', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(287, 1, 'es', 285, 'Saab', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(288, 1, 'en', 288, 'Lada', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(289, 1, 'fr', 288, 'Lada', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(290, 1, 'es', 288, 'Lada', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(291, 1, 'en', 291, 'Volga', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(292, 1, 'fr', 291, 'Volga', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(293, 1, 'es', 291, 'Volga', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(294, 1, 'en', 294, 'Zil', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(295, 1, 'fr', 294, 'Zil', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(296, 1, 'es', 294, 'Zil', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(297, 1, 'en', 297, 'GAZ', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(298, 1, 'fr', 297, 'GAZ', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(299, 1, 'es', 297, 'GAZ', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(300, 1, 'en', 300, 'Geely', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(301, 1, 'fr', 300, 'Geely', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(302, 1, 'es', 300, 'Geely', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(303, 1, 'en', 303, 'Chery', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(304, 1, 'fr', 303, 'Chery', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(305, 1, 'es', 303, 'Chery', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(306, 1, 'en', 306, 'Hongqi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(307, 1, 'fr', 306, 'Hongqi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(308, 1, 'es', 306, 'Hongqi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(309, 75, 'en', 309, 'Huawei', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(310, 75, 'fr', 309, 'Huawei', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(311, 75, 'es', 309, 'Huawei', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(312, 75, 'en', 312, 'Lenovo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(313, 75, 'fr', 312, 'Lenovo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(314, 75, 'es', 312, 'Lenovo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(315, 75, 'en', 315, 'TP-Link', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(316, 75, 'fr', 315, 'TP-Link', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(317, 75, 'es', 315, 'TP-Link', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(318, 75, 'en', 318, 'Xiaomi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(319, 75, 'fr', 318, 'Xiaomi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(320, 75, 'es', 318, 'Xiaomi', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(321, 75, 'en', 321, 'Canon', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(322, 75, 'fr', 321, 'Canon', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(323, 75, 'es', 321, 'Canon', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(324, 75, 'en', 324, 'Casio', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(325, 75, 'fr', 324, 'Casio', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(326, 75, 'es', 324, 'Casio', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(327, 75, 'en', 327, 'Epson', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(328, 75, 'fr', 327, 'Epson', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(329, 75, 'es', 327, 'Epson', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(330, 75, 'en', 330, 'Fuji', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(331, 75, 'fr', 330, 'Fuji', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(332, 75, 'es', 330, 'Fuji', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(333, 75, 'en', 333, 'Funai', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(334, 75, 'fr', 333, 'Funai', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(335, 75, 'es', 333, 'Funai', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(336, 75, 'en', 336, 'JVC', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(337, 75, 'fr', 336, 'JVC', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(338, 75, 'es', 336, 'JVC', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(339, 75, 'en', 339, 'Nikon', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(340, 75, 'fr', 339, 'Nikon', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(341, 75, 'es', 339, 'Nikon', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(342, 75, 'en', 342, 'Nintendo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(343, 75, 'fr', 342, 'Nintendo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(344, 75, 'es', 342, 'Nintendo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(345, 75, 'en', 345, 'Olympus', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(346, 75, 'fr', 345, 'Olympus', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(347, 75, 'es', 345, 'Olympus', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(348, 75, 'en', 348, 'Panasonic', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(349, 75, 'fr', 348, 'Panasonic', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(350, 75, 'es', 348, 'Panasonic', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(351, 75, 'en', 351, 'Pentax', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(352, 75, 'fr', 351, 'Pentax', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(353, 75, 'es', 351, 'Pentax', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(354, 75, 'en', 354, 'Pioneer', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(355, 75, 'fr', 354, 'Pioneer', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(356, 75, 'es', 354, 'Pioneer', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(357, 75, 'en', 357, 'Sega', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(358, 75, 'fr', 357, 'Sega', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(359, 75, 'es', 357, 'Sega', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(360, 75, 'en', 360, 'Sharp', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(361, 75, 'fr', 360, 'Sharp', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(362, 75, 'es', 360, 'Sharp', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(363, 75, 'en', 363, 'Sony', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(364, 75, 'fr', 363, 'Sony', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(365, 75, 'es', 363, 'Sony', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(366, 75, 'en', 366, 'Toshiba', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(367, 75, 'fr', 366, 'Toshiba', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(368, 75, 'es', 366, 'Toshiba', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(369, 75, 'en', 369, 'Daewoo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(370, 75, 'fr', 369, 'Daewoo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(371, 75, 'es', 369, 'Daewoo', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(372, 75, 'en', 372, 'LG', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(373, 75, 'fr', 372, 'LG', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(374, 75, 'es', 372, 'LG', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(375, 75, 'en', 375, 'Samsung', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(376, 75, 'fr', 375, 'Samsung', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(377, 75, 'es', 375, 'Samsung', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(378, 75, 'en', 378, 'Hyundai', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(379, 75, 'fr', 378, 'Hyundai', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(380, 75, 'es', 378, 'Hyundai', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(381, 75, 'en', 381, 'Kova', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(382, 75, 'fr', 381, 'Kova', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(383, 75, 'es', 381, 'Kova', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(384, 75, 'en', 384, 'Acer', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(385, 75, 'fr', 384, 'Acer', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(386, 75, 'es', 384, 'Acer', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(387, 75, 'en', 387, 'Asus', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(388, 75, 'fr', 387, 'Asus', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(389, 75, 'es', 387, 'Asus', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(390, 75, 'en', 390, 'D-Link', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(391, 75, 'fr', 390, 'D-Link', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(392, 75, 'es', 390, 'D-Link', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(393, 75, 'en', 393, 'Gigabyte', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(394, 75, 'fr', 393, 'Gigabyte', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(395, 75, 'es', 393, 'Gigabyte', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(396, 75, 'en', 396, 'Beko', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(397, 75, 'fr', 396, 'Beko', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(398, 75, 'es', 396, 'Beko', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(399, 75, 'en', 399, 'Nokia', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(400, 75, 'fr', 399, 'Nokia', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(401, 75, 'es', 399, 'Nokia', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(402, 75, 'en', 402, 'Alcatel-Lucent', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(403, 75, 'fr', 402, 'Alcatel-Lucent', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(404, 75, 'es', 402, 'Alcatel-Lucent', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(405, 75, 'en', 405, 'Bosch', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(406, 75, 'fr', 405, 'Bosch', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(407, 75, 'es', 405, 'Bosch', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(408, 75, 'en', 408, 'Siemens', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(409, 75, 'fr', 408, 'Siemens', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(410, 75, 'es', 408, 'Siemens', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(411, 75, 'en', 411, 'Sennheiser', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(412, 75, 'fr', 411, 'Sennheiser', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(413, 75, 'es', 411, 'Sennheiser', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(414, 75, 'en', 414, 'Telefunken', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(415, 75, 'fr', 414, 'Telefunken', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(416, 75, 'es', 414, 'Telefunken', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(417, 75, 'en', 417, 'Philips', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(418, 75, 'fr', 417, 'Philips', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(419, 75, 'es', 417, 'Philips', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(420, 75, 'en', 420, 'Electrolux', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(421, 75, 'fr', 420, 'Electrolux', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(422, 75, 'es', 420, 'Electrolux', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(423, 75, 'en', 423, 'Russell Hobbs', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(424, 75, 'fr', 423, 'Russell Hobbs', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(425, 75, 'es', 423, 'Russell Hobbs', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(426, 75, 'en', 426, 'BlackBerry', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(427, 75, 'fr', 426, 'BlackBerry', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(428, 75, 'es', 426, 'BlackBerry', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(429, 75, 'en', 429, 'Thomson', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(430, 75, 'fr', 429, 'Thomson', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(431, 75, 'es', 429, 'Thomson', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(432, 75, 'en', 432, 'Amazon', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(433, 75, 'fr', 432, 'Amazon', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(434, 75, 'es', 432, 'Amazon', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(435, 75, 'en', 435, 'Apple', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(436, 75, 'fr', 435, 'Apple', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(437, 75, 'es', 435, 'Apple', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(438, 75, 'en', 438, 'Bose', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(439, 75, 'fr', 438, 'Bose', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(440, 75, 'es', 438, 'Bose', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(441, 75, 'en', 441, 'Cisco Systems', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(442, 75, 'fr', 441, 'Cisco Systems', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(443, 75, 'es', 441, 'Cisco Systems', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(444, 75, 'en', 444, 'Dell', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(445, 75, 'fr', 444, 'Dell', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(446, 75, 'es', 444, 'Dell', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(447, 75, 'en', 447, 'Gateway', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(448, 75, 'fr', 447, 'Gateway', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(449, 75, 'es', 447, 'Gateway', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(450, 75, 'en', 450, 'Google', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(451, 75, 'fr', 450, 'Google', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(452, 75, 'es', 450, 'Google', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(453, 75, 'en', 453, 'Hewlett-Packard', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(454, 75, 'fr', 453, 'Hewlett-Packard', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(455, 75, 'es', 453, 'Hewlett-Packard', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(456, 75, 'en', 456, 'IBM', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(457, 75, 'fr', 456, 'IBM', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(458, 75, 'es', 456, 'IBM', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(459, 75, 'en', 459, 'Intel', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(460, 75, 'fr', 459, 'Intel', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(461, 75, 'es', 459, 'Intel', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(462, 75, 'en', 462, 'Microsoft', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(463, 75, 'fr', 462, 'Microsoft', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(464, 75, 'es', 462, 'Microsoft', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(465, 75, 'en', 465, 'Motorola', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(466, 75, 'fr', 465, 'Motorola', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(467, 75, 'es', 465, 'Motorola', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(468, 75, 'en', 468, 'NVIDIA', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(469, 75, 'fr', 468, 'NVIDIA', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(470, 75, 'es', 468, 'NVIDIA', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(471, 75, 'en', 471, 'Packard Bell', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(472, 75, 'fr', 471, 'Packard Bell', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(473, 75, 'es', 471, 'Packard Bell', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(474, 75, 'en', 474, 'Qualcomm', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(475, 75, 'fr', 474, 'Qualcomm', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(476, 75, 'es', 474, 'Qualcomm', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(477, 75, 'en', 477, 'Seagate', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(478, 75, 'fr', 477, 'Seagate', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(479, 75, 'es', 477, 'Seagate', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(480, 75, 'en', 480, 'Sun Microsystems', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(481, 75, 'fr', 480, 'Sun Microsystems', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(482, 75, 'es', 480, 'Sun Microsystems', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(483, 75, 'en', 483, 'Vizio', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(484, 75, 'fr', 483, 'Vizio', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(485, 75, 'es', 483, 'Vizio', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(486, 75, 'en', 486, 'Western Digital', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(487, 75, 'fr', 486, 'Western Digital', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(488, 75, 'es', 486, 'Western Digital', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(489, 75, 'en', 489, 'Xerox', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(490, 75, 'fr', 489, 'Xerox', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(491, 75, 'es', 489, 'Xerox', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(492, 75, 'en', 492, 'Other', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(493, 75, 'fr', 492, 'Other', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(494, 75, 'es', 492, 'Other', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(495, 1, 'en', 495, 'Other', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(496, 1, 'fr', 495, 'Other', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(497, 1, 'es', 495, 'Other', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(588, 81, 'en', 588, 'man', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(589, 81, 'fr', 588, 'homme', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(590, 81, 'es', 588, 'man', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(591, 81, 'en', 591, 'woman', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(592, 81, 'fr', 591, 'femme', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(593, 81, 'es', 591, 'woman', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(594, 84, 'en', 594, 'man', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(595, 84, 'fr', 594, 'homme', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(596, 84, 'es', 594, 'man', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(597, 84, 'en', 597, 'woman', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(598, 84, 'fr', 597, 'femme', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(599, 84, 'es', 597, 'woman', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(600, 87, 'en', 600, '18 - 25', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(601, 87, 'fr', 600, '18 - 25', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(602, 87, 'es', 600, '18 - 25', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(603, 87, 'en', 603, '26 - 30', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(604, 87, 'fr', 603, '26 - 30', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(605, 87, 'es', 603, '26 - 30', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(606, 87, 'en', 606, '31 - 40', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(607, 87, 'fr', 606, '31 - 40', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(608, 87, 'es', 606, '31 - 40', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(609, 87, 'en', 609, '41 - 50', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(610, 87, 'fr', 609, '41 - 50', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(611, 87, 'es', 609, '41 - 50', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(612, 87, 'en', 612, '50 - 60', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(613, 87, 'fr', 612, '50 - 60', NULL, NULL, NULL, NULL);
INSERT INTO `<<prefix>>fields_options` (`id`, `field_id`, `translation_lang`, `translation_of`, `value`, `parent_id`, `lft`, `rgt`, `depth`) VALUES(614, 87, 'es', 612, '50 - 60', NULL, NULL, NULL, NULL);

--
-- Truncate table before insert `<<prefix>>home_sections`
--

TRUNCATE TABLE `<<prefix>>home_sections`;
--
-- Dumping data for table `<<prefix>>home_sections`
--

INSERT INTO `<<prefix>>home_sections` (`id`, `name`, `method`, `options`, `view`, `parent_id`, `lft`, `rgt`, `depth`, `active`) VALUES(1, 'Locations & SVG Map', 'getLocations', '{\"max_items\":\"14\",\"show_map\":\"1\",\"map_background_color\":null,\"map_border\":null,\"map_hover_border\":null,\"map_border_width\":null,\"map_color\":null,\"map_hover\":null,\"map_width\":\"300px\",\"map_height\":\"300px\",\"cache_expiration\":null}', 'home.inc.locations', 0, 2, 3, 1, 1);
INSERT INTO `<<prefix>>home_sections` (`id`, `name`, `method`, `options`, `view`, `parent_id`, `lft`, `rgt`, `depth`, `active`) VALUES(2, 'Sponsored ads', 'getSponsoredPosts', '{\"max_items\":\"20\",\"autoplay\":\"1\",\"autoplay_timeout\":null,\"cache_expiration\":null}', 'home.inc.featured', 0, 4, 5, 1, 1);
INSERT INTO `<<prefix>>home_sections` (`id`, `name`, `method`, `options`, `view`, `parent_id`, `lft`, `rgt`, `depth`, `active`) VALUES(3, 'Latest ads', 'getLatestPosts', '{\"max_items\":\"4\",\"show_view_more_btn\":\"1\",\"cache_expiration\":null}', 'home.inc.latest', 0, 8, 9, 1, 1);
INSERT INTO `<<prefix>>home_sections` (`id`, `name`, `method`, `options`, `view`, `parent_id`, `lft`, `rgt`, `depth`, `active`) VALUES(4, 'Categories', 'getCategories', '{\"cache_expiration\":null}', 'home.inc.categories', 0, 6, 7, 1, 1);
INSERT INTO `<<prefix>>home_sections` (`id`, `name`, `method`, `options`, `view`, `parent_id`, `lft`, `rgt`, `depth`, `active`) VALUES(5, 'Mini stats', 'getStats', NULL, 'home.inc.stats', 0, 10, 11, 1, 1);
INSERT INTO `<<prefix>>home_sections` (`id`, `name`, `method`, `options`, `view`, `parent_id`, `lft`, `rgt`, `depth`, `active`) VALUES(6, 'Bottom advertising', 'getBottomAdvertising', NULL, 'layouts.inc.advertising.bottom', 0, 12, 13, 1, 0);

--
-- Truncate table before insert `<<prefix>>languages`
--

TRUNCATE TABLE `<<prefix>>languages`;
--
-- Dumping data for table `<<prefix>>languages`
--

INSERT INTO `<<prefix>>languages` (`id`, `abbr`, `locale`, `name`, `native`, `flag`, `app_name`, `script`, `russian_pluralization`, `active`, `default`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'en', 'en_US', 'English', 'English', NULL, 'english', 'Latn', 0, 1, 1, NULL, NULL, NULL),
(2, 'fr', 'fr_FR', 'French', 'Français', NULL, 'french', 'Latn', 0, 1, 0, NULL, NULL, NULL),
(3, 'es', 'es_ES', 'Spanish', 'Español', NULL, 'spanish', 'Latn', 0, 1, 0, NULL, NULL, NULL);

--
-- Truncate table before insert `<<prefix>>meta_tags`
--

TRUNCATE TABLE `<<prefix>>meta_tags`;
--
-- Dumping data for table `<<prefix>>meta_tags`
--

INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(1, 'en', 1, 'home', '{app_name} - Geo Classified Ads CMS', 'Sell and Buy products and services on {app_name} in Minutes {country}. Free ads in {country}. Looking for a product or service - {country}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(2, 'en', 2, 'register', 'Sign Up - {app_name}', 'Sign Up on {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(3, 'en', 3, 'login', 'Login - {app_name}', 'Log in to {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(4, 'en', 4, 'create', 'Post a Free Ads', 'Post a Free Ads - {country}.', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(5, 'en', 5, 'countries', 'Free Local Classified Ads in the World', 'Welcome to {app_name} : 100% Free Ads Classified. Sell and buy near you. Simple, fast and efficient.', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(6, 'en', 6, 'contact', 'Contact Us - {app_name}', 'Contact Us - {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(7, 'en', 7, 'sitemap', 'Sitemap {app_name} - {country}', 'Sitemap {app_name} - {country}. 100% Free Ads Classified', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(8, 'fr', 1, 'home', '{app_name} - CMS d\'annonces classées et géolocalisées', 'Vendre et acheter des produits et services en quelques minutes sur {app_name} {country}. Petites annonces - {country}. Recherchez un produit ou un service - {country}', '{app_name}, {country}, annonces, classées, gratuites, script, app, annonces premium', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(9, 'es', 1, 'home', '{app_name} - Geo Classified Ads CMS', 'Sell and Buy products and services on {app_name} in Minutes {country}. Free ads in {country}. Looking for a product or service - {country}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(10, 'fr', 2, 'register', 'S\'inscrire - {app_name}', 'S\'inscrire sur {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(11, 'es', 2, 'register', 'Sign Up - {app_name}', 'Sign Up on {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(12, 'fr', 3, 'login', 'S\'identifier - {app_name}', 'S\'identifier sur {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(13, 'es', 3, 'login', 'Login - {app_name}', 'Log in to {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(14, 'fr', 4, 'create', 'Publiez une annonce gratuite', 'Publiez une annonce gratuite - {country}.', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(15, 'es', 4, 'create', 'Post a Free Ads', 'Post a Free Ads - {country}.', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(16, 'fr', 5, 'countries', 'Petites annonces classées dans le monde', 'Bienvenue sur {app_name} : Site de petites annonces 100% gratuit. Vendez et achetez près de chez vous. Simple, rapide et efficace.', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(17, 'es', 5, 'countries', 'Free Local Classified Ads in the World', 'Welcome to {app_name} : 100% Free Ads Classified. Sell and buy near you. Simple, fast and efficient.', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(18, 'fr', 6, 'contact', 'Nous contacter - {app_name}', 'Nous contacter - {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(19, 'es', 6, 'contact', 'Contact Us - {app_name}', 'Contact Us - {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(20, 'fr', 7, 'sitemap', 'Plan du site {app_name} - {country}', 'Plan du site {app_name} - {country}. Site de petites annonces 100% gratuit dans le Monde. Vendez et achetez près de chez vous. Simple, rapide et efficace.', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(21, 'es', 7, 'sitemap', 'Sitemap {app_name} - {country}', 'Sitemap {app_name} - {country}. 100% Free Ads Classified', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(22, 'en', 22, 'password', 'Lost your password? - {app_name}', 'Lost your password? - {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(23, 'fr', 22, 'password', 'Mot de passe oublié? - {app_name}', 'Mot de passe oublié? - {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);
INSERT INTO `<<prefix>>meta_tags` (`id`, `translation_lang`, `translation_of`, `page`, `title`, `description`, `keywords`, `active`) VALUES(24, 'es', 22, 'password', '¿Perdiste tu contraseña? - {app_name}', '¿Perdiste tu contraseña? - {app_name}', '{app_name}, {country}, free ads, classified, ads, script, app, premium ads', 1);

--
-- Truncate table before insert `<<prefix>>packages`
--

TRUNCATE TABLE `<<prefix>>packages`;
--
-- Dumping data for table `<<prefix>>packages`
--

INSERT INTO `<<prefix>>packages` (`id`, `translation_lang`, `translation_of`, `name`, `short_name`, `ribbon`, `has_badge`, `price`, `currency_code`, `duration`, `description`, `parent_id`, `lft`, `rgt`, `depth`, `active`) VALUES
(1, 'en', 1, 'Regular List', 'FREE', NULL, 0, 0, 'USD', 30, 'Regular List', 0, 2, 3, 1, 0),
(2, 'en', 2, 'Urgent Ad', 'Urgent', 'red', 0, 4, 'USD', 30, 'Urgent', 0, 4, 5, 1, 0),
(3, 'en', 3, 'Top page Ad', 'Premium', 'orange', 1, 7, 'USD', 30, 'Top Ads', 0, 6, 7, 1, 0),
(4, 'en', 4, 'Top page Ad + Urgent Ad', 'Premium+', 'green', 1, 9, 'USD', 30, 'Featured Ads', 0, 8, 9, 1, 0),
(5, 'fr', 1, 'Gratuit', 'GRATUIT', NULL, 0, 0, 'USD', 30, 'Annonce gratuite', 0, 2, 3, 1, 0),
(6, 'fr', 2, 'Annonce urgente', 'Urgente', 'red', 0, 4, 'USD', 30, 'Urgent', 0, 4, 5, 1, 0),
(7, 'fr', 3, 'Top annonce', 'Premium', 'orange', 1, 7, 'USD', 30, 'Annonce listée en haut de la page des résultats de recherche', 0, 6, 7, 1, 0),
(8, 'fr', 4, 'Urgente + Top annonce', 'Premium+', 'green', 1, 9, 'USD', 30, 'Urgente + Top annonce', 0, 8, 9, 1, 0),
(9, 'es', 1, 'Regular List', 'FREE', NULL, 0, 0, 'USD', 30, 'Regular List', 0, 2, 3, 1, 0),
(10, 'es', 2, 'Urgent Ad', 'Urgent', 'red', 0, 4, 'USD', 30, 'Urgent', 0, 4, 5, 1, 0),
(11, 'es', 3, 'Top page Ad', 'Premium', 'orange', 1, 7, 'USD', 30, 'Top Ads', 0, 6, 7, 1, 0),
(12, 'es', 4, 'Top page Ad + Urgent Ad', 'Premium+', 'green', 1, 9, 'USD', 30, 'Featured Ads', 0, 8, 9, 1, 0);

--
-- Truncate table before insert `<<prefix>>pages`
--

TRUNCATE TABLE `<<prefix>>pages`;
--
-- Dumping data for table `<<prefix>>pages`
--

INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(1, 'en', 1, 0, 'terms', 'Terms', 'terms', 'Terms & Conditions', NULL, '<h4><b>Definitions</b></h4><p>Each of the terms mentioned below have in these Conditions of Sale LaraClassified Service (hereinafter the \"Conditions\") the following meanings:</p><ol><li>Announcement&nbsp;: refers to all the elements and data (visual, textual, sound, photographs, drawings), presented by an Advertiser editorial under his sole responsibility, in order to buy, rent or sell a product or service and broadcast on the Website and Mobile Site.</li><li>Advertiser&nbsp;: means any natural or legal person, a major, established in France, holds an account and having submitted an announcement, from it, on the Website. Any Advertiser must be connected to the Personal Account for deposit and or manage its ads. Ad first deposit automatically entails the establishment of a Personal Account to the Advertiser.</li><li>Personal Account&nbsp;: refers to the free space than any Advertiser must create and which it should connect from the Website to disseminate, manage and view its ads.</li><li>LaraClassified&nbsp;: means the company that publishes and operates the Website and Mobile Site {YourCompany}, registered at the Trade and Companies Register of Cotonou under the number {YourCompany Registration Number} whose registered office is at {YourCompany Address}.</li><li>Customer Service&nbsp;: LaraClassified means the department to which the Advertiser may obtain further information. This service can be contacted via email by clicking the link on the Website and Mobile Site.</li><li>LaraClassified Service&nbsp;: LaraClassified means the services made available to Users and Advertisers on the Website and Mobile Site.</li><li>Website&nbsp;: means the website operated by LaraClassified accessed mainly from the URL <a href=\"http://www.bedigit.com\">http://www.bedigit.com</a> and allowing Users and Advertisers to access the Service via internet LaraClassified.</li><li>Mobile Site&nbsp;: is the mobile site operated by LaraClassified accessible from the URL <a href=\"http://www.bedigit.com\">http://www.bedigit.com</a> and allowing Users and Advertisers to access via their mobile phone service {YourSiteName}.</li><li>User&nbsp;: any visitor with access to LaraClassified Service via the Website and Mobile Site and Consultant Service LaraClassified accessible from different media.</li></ol><h4><b>Subject</b></h4><p>These Terms and Conditions Of Use establish the contractual conditions applicable to any subscription by an Advertiser connected to its Personal Account from the Website and Mobile Site.<br></p><h4><b>Acceptance</b></h4><p>Any use of the website by an Advertiser is full acceptance of the current Terms.<br></p><h4><b>Responsibility</b></h4><p>Responsibility for LaraClassified can not be held liable for non-performance or improper performance of due control, either because of the Advertiser, or a case of major force.<br></p><h4><b>Modification of these terms</b></h4><p>LaraClassified reserves the right, at any time, to modify all or part of the Terms and Conditions.</p><p>Advertisers are advised to consult the Terms to be aware of the changes.</p><h4><b>Miscellaneous</b></h4><p>If part of the Terms should be illegal, invalid or unenforceable for any reason whatsoever, the provisions in question would be deemed unwritten, without questioning the validity of the remaining provisions will continue to apply between Advertisers and LaraClassified.</p><p>Any complaints should be addressed to Customer Service LaraClassified.</p>', 6, 7, 1, NULL, NULL, 1, '2017-02-10 11:10:40', '2017-02-13 15:22:30');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(2, 'fr', 1, 0, 'terms', 'CGU', 'cgu', 'Conditions d\'utilisation et de vente', NULL, '<p><b>Définitions</b><br></p><p>Chacun des termes mentionnés ci-dessous aura dans les présentes Conditions Générales d\'Utilisation et de Vente du Service LaraClassified (ci-après dénommées les « CGU/CGV ») la signification suivante :</p><ol><li>Annonce : désigne l\'ensemble des éléments et données (visuelles, textuelles, sonores, photographies, dessins), déposé par un Annonceur sous sa responsabilité éditoriale exclusive, en vue d\'acheter, de louer ou de vendre un bien ou un service et diffusé sur le Site Internet et le Site Mobile.</li><li>Annonceur : désigne toute personne physique ou morale, majeure, établie en États-Unis, titulaire d\'un Compte et ayant déposé une Annonce, à partir de celui-ci, sur le Site Internet. Tout Annonceur doit impérativement être connecté à son Compte Personnel pour déposer et gérer sa ou ses Annonces. Tout premier dépôt d’annonce entraîne automatiquement la création d’un Compte Personnel propre à l’Annonceur.</li><li>Compte Personnel : désigne l\'espace gratuit que tout Annonceur doit se créer et auquel il doit se connecter depuis le Site Internet, afin de diffuser, gérer et visualiser ses annonces.</li><li>LaraClassified : désigne la société qui édite et exploite le Site Internet et le Site Mobile {YourCompany}, immatriculée au registre du commerce et des sociétés de Cotonou sous le numéro {YourCompany Registration Number} dont le siège social est situé {YourCompany Address}.</li><li>Service client : désigne le service de LaraClassified auprès duquel l\'Annonceur peut obtenir toute information complémentaire. Ce service peut être contacté par e-mail en cliquant sur le lien présent sur le Site Internet et le Site Mobile.</li><li>Service LaraClassified : désigne les services LaraClassified mis à la disposition des Utilisateurs et des Annonceurs sur le Site Internet et le Site Mobile.</li><li>Site Internet : désigne le site internet exploité par LaraClassified accessible principalement depuis l\'URL <a href=\"http://www.bedigit.com\">http://www.bedigit.com</a> et permettant aux Utilisateurs et aux Annonceurs d\'accéder via internet au Service LaraClassified.</li><li>Site Mobile : désigne le site mobile exploité par LaraClassified accessible depuis l\'URL <a href=\"http://www.bedigit.com\">http://www.bedigit.com</a> et permettant aux Utilisateurs et aux Annonceurs d\'accéder via leur téléphone mobile au Service LaraClassified.</li><li>Utilisateur : désigne tout visiteur, ayant accès au Service LaraClassified via le Site Internet et le Site Mobile et consultant le Service LaraClassified accessible depuis les différents supports.</li></ol><p><b>Objet</b></p><p>Les présentes Conditions Générales d\'Utilisation et de Vente (CGU/GCV) établissent les conditions contractuelles applicables à toute souscription, par un Annonceur connecté à son Compte Personnel depuis le Site Internet et le Site Mobile.</p><p><b>Acceptation</b></p><p>Toute utilisation du site du Site par un Annonceur vaut acceptation pleine et entière des CGU/CGV en vigueur.</p><p><b>Responsabilité</b></p><p>La responsabilité de LaraClassified ne peut être engagée en cas d\'inexécution ou de mauvaise exécution de la commande due, soit du fait de l\'Annonceur, soit d\'un cas de force majeure.</p><p><b>Modification des Conditions</b></p><p>LaraClassified se réserve la possibilité, à tout moment, de modifier en tout ou partie les CGV.<br>Les Annonceurs sont invités à consulter régulièrement les CGV afin de prendre connaissance des changements apportés.</p><p><b>Dispositions Diverses</b></p><p>Si une partie des CGV devait s\'avérer illégale, invalide ou inapplicable, pour quelque raison que ce soit, les dispositions en question seraient réputées non écrites, sans remettre en cause la validité des autres dispositions qui continueront de s\'appliquer entre les Annonceurs et LaraClassified.</p><p>Toute réclamation doit être adressée au Service Client de LaraClassified.</p>', 6, 7, 1, NULL, NULL, 1, '2017-02-10 11:10:40', '2017-02-13 15:22:30');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(3, 'es', 1, 0, 'terms', 'Términos', 'terminos', 'Términos y Condiciones', NULL, '<h4 style=\"margin-left: 0px;\"><b>Definitions</b></h4><p>Each of the terms mentioned below have in these Conditions of Sale LaraClassified Service (hereinafter the \"Conditions\") the following meanings:</p><ol><li>Announcement&nbsp;: refers to all the elements and data (visual, textual, sound, photographs, drawings), presented by an Advertiser editorial under his sole responsibility, in order to buy, rent or sell a product or service and broadcast on the Website and Mobile Site.</li><li>Advertiser&nbsp;: means any natural or legal person, a major, established in France, holds an account and having submitted an announcement, from it, on the Website. Any Advertiser must be connected to the Personal Account for deposit and or manage its ads. Ad first deposit automatically entails the establishment of a Personal Account to the Advertiser.</li><li>Personal Account&nbsp;: refers to the free space than any Advertiser must create and which it should connect from the Website to disseminate, manage and view its ads.</li><li>LaraClassified&nbsp;: means the company that publishes and operates the Website and Mobile Site {YourCompany}, registered at the Trade and Companies Register of Cotonou under the number {YourCompany Registration Number} whose registered office is at {YourCompany Address}.</li><li>Customer Service&nbsp;: LaraClassified means the department to which the Advertiser may obtain further information. This service can be contacted via email by clicking the link on the Website and Mobile Site.</li><li>LaraClassified Service&nbsp;: LaraClassified means the services made available to Users and Advertisers on the Website and Mobile Site.</li><li>Website&nbsp;: means the website operated by LaraClassified accessed mainly from the URL&nbsp;<a href=\"http://www.bedigit.com/\">http://www.bedigit.com</a>&nbsp;and allowing Users and Advertisers to access the Service via internet LaraClassified.</li><li>Mobile Site&nbsp;: is the mobile site operated by LaraClassified accessible from the URL&nbsp;<a href=\"http://www.bedigit.com/\">http://www.bedigit.com</a>&nbsp;and allowing Users and Advertisers to access via their mobile phone service LaraClassified.</li><li>User&nbsp;: any visitor with access to LaraClassified Service via the Website and Mobile Site and Consultant Service LaraClassified accessible from different media.</li></ol><h4><b>Subject</b></h4><p>These Terms and Conditions Of Use establish the contractual conditions applicable to any subscription by an Advertiser connected to its Personal Account from the Website and Mobile Site.<br></p><h4><b>Acceptance</b></h4><p>Any use of the website by an Advertiser is full acceptance of the current Terms.<br></p><h4><b>Responsibility</b></h4><p>Responsibility for LaraClassified can not be held liable for non-performance or improper performance of due control, either because of the Advertiser, or a case of force majeure.<br></p><h4><b>Modification of these terms</b></h4><p>LaraClassified reserves the right, at any time, to modify all or part of the Terms and Conditions.</p><p>Advertisers are advised to consult the Terms to be aware of the changes.</p><h4><b>Miscellaneous</b></h4><p>If part of the Terms should be illegal, invalid or unenforceable for any reason whatsoever, the provisions in question would be deemed unwritten, without questioning the validity of the remaining provisions will continue to apply between Advertisers and LaraClassified.</p><p>Any complaints should be addressed to Customer Service LaraClassified.</p>', 6, 7, 1, NULL, NULL, 1, '2017-02-10 11:10:40', '2017-02-13 15:22:30');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(4, 'en', 4, 0, 'privacy', 'Privacy', 'privacy', 'Privacy', NULL, '<p>Your privacy is an important part of our relationship with you. Protecting your privacy is only part of our mission to provide a secure web environment. When using our site, including our services, your information will remain strictly confidential. Contributions made on our blog or on our forum are open to public view; so please do not post any personal information in your dealings with others. We accept no liability for those actions because it is your sole responsibility to adequate and safe post content on our site. We will not share, rent or share your information with third parties.</p><p>When you visit our site, we collect technical information about your computer and how you access our website and analyze this information such as Internet Protocol (IP) address of your computer, the operating system used by your computer, the browser (eg, Chrome, Firefox, Internet Explorer or other) your computer uses, the name of your Internet service provider (ISP), the Uniform Resource Locator (URL) of the website from which you come and the URL to which you go next and certain operating metrics such as the number of times you use our website. This general information can be used to help us better understand how our site is viewed and used. We may share this general information about our site with our business partners or the general public. For example, we may share the information on the number of daily unique visitors to our site with potential corporate partners or use them for advertising purposes. This information does contain any of your personal data that can be used to contact you or identify you.</p><p>When we place links or banners to other sites of our website, please note that we do not control this kind of content or practices or privacy policies of those sites. We do not endorse or assume no responsibility for the privacy policies or information collection practices of any other website other than managed sites LaraClassified.</p><p>We use the highest security standard available to protect your identifiable information in transit to us. All data stored on our servers are protected by a secure firewall for the unauthorized use or activity can not take place. Although we make every effort to protect your personal information against loss, misuse or alteration by third parties, you should be aware that there is always a risk that low-intentioned manage to find a way to thwart our security system or that Internet transmissions could be intercepted.</p><p>We reserve the right, without notice, to change, modify, add or remove portions of our Privacy Policy at any time and from time to time. These changes will be posted publicly on our website. When you visit our website, you accept all the terms of our privacy policy. Your continued use of this website constitutes your continued agreement to these terms. If you do not agree with the terms of our privacy policy, you should cease using our website.</p>', 8, 9, 1, NULL, NULL, 1, '2017-02-10 11:28:37', '2017-02-12 20:24:52');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(5, 'fr', 4, 0, 'privacy', 'Vie privée', 'vie-privee', 'Vie privée', NULL, '<p>Votre vie privée est une partie importante de notre relation avec vous. Protéger votre vie privée n’est qu’une partie de notre mission de vous fournir un environnement Web sécurisé. Lorsque vous utilisez notre site y compris nos prestations, vos informations resteront strictement confidentielles. Les contributions faites sur notre blog ou sur notre forum sont ouverts à l’affichage public; ainsi nous vous invitons à ne pas poster d’informations personnelles dans vos échanges avec d’autres utilisateurs. Nous déclinons toute responsabilité de ces actions car il est de votre seule responsabilité de poster des contenus appropriés et sûrs sur notre site. Nous n’allons pas partager, louer ou échanger vos informations avec des tiers.</p><p>Lorsque vous visitez notre site, nous collectons des informations techniques relatives à votre ordinateur et la manière dont vous accédez à notre site internet et analysons ces informations telles que l’adresse de Protocole Internet (IP) de votre ordinateur, le système d’exploitation utilisé par votre ordinateur, le navigateur (par exemple, Chrome, Firefox, Internet Explorer ou autre) que votre ordinateur utilise, le nom de votre fournisseur de services Internet (FAI), le Uniform Resource Locator (URL) du site Web à partir duquel vous venez et l’URL vers laquelle vous allez prochaine et certaines mesures d’exploitation tels que le nombre de fois que vous utilisez notre site Web. Ces informations générales peuvent être utilisées pour nous aider à mieux comprendre comment notre site est vu et utilisé. Nous pouvons partager ces informations générales sur notre site avec nos partenaires d’affaires ou le grand public. Par exemple, nous pouvons partager les informations sur le nombre de visiteurs uniques quotidien sur notre site avec des entreprises partenaires potentiels ou les utiliser à des fins publicitaires. Ces informations ne contiennent aucune de vos données personnelles qui peuvent être utilisées pour vous contacter ou vous identifier.</p><p>Quand nous plaçons des liens ou des bannières publicitaires vers d’autres sites de notre site Web, veuillez noter que nous ne contrôlons pas ce genre de contenu, ni les pratiques ou les politiques de vie privée de ces sites. Nous ne soutenons ni n’assumons responsable des politiques de confidentialité ou les pratiques de collecte de renseignements de tout autre site internet autre que les sites gérés par LaraClassified.</p><p>Nous utilisons la norme de sécurité la plus élevée disponible pour protéger vos informations identifiables qui transitent vers nous. Toutes les données stockées sur nos serveurs sont protégés par un pare-feu sécurisé pour que l’utilisation ou activité non autorisée ne puisse pas avoir lieu. Bien que nous ferons tous les efforts pour protéger vos renseignements personnels contre la perte, l’usage abusif ou la modification par des tiers, vous devez être conscient qu’il y a toujours un certain risque que des personnes peu intentionnées arrivent à trouver un moyen de contrecarrer notre système de sécurité ou que les transmissions sur Internet soient interceptées.</p><p>Nous nous réservons le droit, sans préavis, de changer, modifier, ajouter ou retirer des parties de notre politique de confidentialité à tout moment et de temps à autre. Ces changements seront affichés publiquement sur notre site. Lorsque vous visitez notre site, vous acceptez tous les termes de notre politique de confidentialité. Votre utilisation continue de notre site constitue la continuité de votre accord à ces termes. Si vous n’êtes pas d’accord avec les termes de notre politique de confidentialité, vous devez cesser d’utiliser notre site Web.</p>', 8, 9, 1, NULL, NULL, 1, '2017-02-10 11:28:37', '2017-02-12 20:24:52');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(6, 'es', 4, 0, 'privacy', 'Vida privada', 'vida-privada', 'Vida privada', NULL, '<p>Your privacy is an important part of our relationship with you. Protecting your privacy is only part of our mission to provide a secure web environment. When using our site, including our services, your information will remain strictly confidential. Contributions made on our blog or on our forum are open to public view; so please do not post any personal information in your dealings with others. We accept no liability for those actions because it is your sole responsibility to adequate and safe post content on our site. We will not share, rent or share your information with third parties.</p><p>When you visit our site, we collect technical information about your computer and how you access our website and analyze this information such as Internet Protocol (IP) address of your computer, the operating system used by your computer, the browser (eg, Chrome, Firefox, Internet Explorer or other) your computer uses, the name of your Internet service provider (ISP), the Uniform Resource Locator (URL) of the website from which you come and the URL to which you go next and certain operating metrics such as the number of times you use our website. This general information can be used to help us better understand how our site is viewed and used. We may share this general information about our site with our business partners or the general public. For example, we may share the information on the number of daily unique visitors to our site with potential corporate partners or use them for advertising purposes. This information does contain any of your personal data that can be used to contact you or identify you.</p><p>When we place links or banners to other sites of our website, please note that we do not control this kind of content or practices or privacy policies of those sites. We do not endorse or assume no responsibility for the privacy policies or information collection practices of any other website other than managed sites LaraClassified.</p><p>We use the highest security standard available to protect your identifiable information in transit to us. All data stored on our servers are protected by a secure firewall for the unauthorized use or activity can not take place. Although we make every effort to protect your personal information against loss, misuse or alteration by third parties, you should be aware that there is always a risk that low-intentioned manage to find a way to thwart our security system or that Internet transmissions could be intercepted.</p><p>We reserve the right, without notice, to change, modify, add or remove portions of our Privacy Policy at any time and from time to time. These changes will be posted publicly on our website. When you visit our website, you accept all the terms of our privacy policy. Your continued use of this website constitutes your continued agreement to these terms. If you do not agree with the terms of our privacy policy, you should cease using our website.</p>', 8, 9, 1, NULL, NULL, 1, '2017-02-10 11:28:37', '2017-02-12 20:24:52');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(7, 'en', 7, 0, 'standard', 'Anti-Scam', 'anti-scam', 'Anti-Scam', NULL, '<p><b>Protect yourself against Internet fraud!</b></p><p>The vast majority of ads are posted by honest people and trust. So you can do excellent business. Despite this, it is important to follow a few common sense rules following to prevent any attempt to scam.</p><p><b>Our advices</b></p><ul><li>Doing business with people you can meet in person.</li><li>Never send money by Western Union, MoneyGram or other anonymous payment systems.</li><li>Never send money or products abroad.</li><li>Do not accept checks.</li><li>Ask about the person you\'re dealing with another confirming source name, address and telephone number.</li><li>Keep copies of all correspondence (emails, ads, letters, etc.) and details of the person.</li><li>If a deal seems too good to be true, there is every chance that this is the case. Refrain.</li></ul><p><b>Recognize attempted scam</b></p><ul><li>The majority of scams have one or more of these characteristics:</li><li>The person is abroad or traveling abroad.</li><li>The person refuses to meet you in person.</li><li>Payment is made through Western Union, Money Gram or check.</li><li>The messages are in broken language (English or French or ...).</li><li>The texts seem to be copied and pasted.</li><li>The deal seems to be too good to be true.</li></ul>', 4, 5, 1, NULL, NULL, 1, '2017-02-10 11:31:56', '2017-02-12 20:24:52');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(8, 'fr', 7, 0, 'standard', 'Anti-Arnaque', 'anti-arnaque', 'Anti-Arnaque', NULL, '<p><b>Protégez-vous contre la fraude sur Internet!</b></p><p>L\'immense majorité des annonces sont publiées par des personnes honnêtes et de confiance. Vous pouvez donc faire d\'excellentes affaires. Malgré cela, il est important de suivre les quelques règles de bon sens suivantes pour éviter toute tentative d\'arnaque.</p><p><b>Nos conseils</b></p><ul><li>Faîtes des affaires avec des gens que vous pouvez rencontrer en personne.</li><li>N\'envoyez jamais d\'argent par Western Union, MoneyGram ou des systèmes de paiement anonymes.</li><li>N\'envoyez jamais des marchandises ou de l\'argent à l\'étranger.</li><li>N\'acceptez pas de chèques.</li><li>Renseignez-vous sur la personne à laquelle vous avez affaire en confirmant par une autre source son nom, son adresse et son numéro de téléphone.</li><li>Conservez une copie de toutes les correspondances (emails, annonces, lettres, etc.) et coordonnées de la personne.</li><li>Si une affaire semble trop belle pour être vraie, il y a toutes les chances que ce soit le cas. Abstenez-vous.</li></ul><p><b>Reconnaitre une tentative d\'arnaque</b></p><ul><li>La majorité des arnaques ont une ou plusieurs de ces caractéristiques:</li><li>La personne est à l\'étranger ou en déplacement à l\'étranger.</li><li>La personne refuse de vous rencontrer en personne.</li><li>Le paiement est fait par Western Union, Money Gram ou par chèque.</li><li>Les messages sont dans un langage approximatif (que ce soit en anglais ou en français).</li><li>Les textes semblent être copiés-collés.</li><li>L\'affaire semble être trop belle pour être vraie.</li></ul>', 4, 5, 1, NULL, NULL, 1, '2017-02-10 11:31:56', '2017-02-12 20:24:52');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(9, 'es', 7, 0, 'standard', 'Contra el Fraude', 'contra-el-fraude', 'Contra el Fraude', NULL, '<p><b>Protect yourself against Internet fraud!</b></p><p>The vast majority of ads are posted by honest people and trust. So you can do excellent business. Despite this, it is important to follow a few common sense rules following to prevent any attempt to scam.</p><p><b>Our advices</b></p><ul><li>Doing business with people you can meet in person.</li><li>Never send money by Western Union, MoneyGram or other anonymous payment systems.</li><li>Never send money or products abroad.</li><li>Do not accept checks.</li><li>Ask about the person you\'re dealing with another confirming source name, address and telephone number.</li><li>Keep copies of all correspondence (emails, ads, letters, etc.) and details of the person.</li><li>If a deal seems too good to be true, there is every chance that this is the case. Refrain.</li></ul><p><b>Recognize attempted scam</b></p><ul><li>The majority of scams have one or more of these characteristics:</li><li>The person is abroad or traveling abroad.</li><li>The person refuses to meet you in person.</li><li>Payment is made through Western Union, Money Gram or check.</li><li>The messages are in broken language (English or French or ...).</li><li>The texts seem to be copied and pasted.</li><li>The deal seems to be too good to be true.</li></ul>', 4, 5, 1, NULL, NULL, 1, '2017-02-10 11:31:56', '2017-02-12 20:24:52');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(10, 'en', 10, 0, 'standard', 'FAQ', 'faq', 'Frequently Asked Questions', NULL, '<p><b>How do I place an ad?</b></p><p>It\'s very easy to place an ad: click on the button \"Post free Ads\" above right.</p><p><b>What does it cost to advertise?</b></p><p>The publication is 100% free throughout the website.</p><p><b>If I post an ad, will I also get more spam e-mails?</b></p><p>Absolutely not because your email address is not visible on the website.</p><p><b>How long will my ad remain on the website?</b></p><p>In general, an ad is automatically deactivated from the website after 3 months. You will receive an email a week before D-Day and another on the day of deactivation. You have the ability to put them online in the following month by logging into your account on the site. After this delay, your ad will be automatically removed permanently from the website.</p><p><b>I sold my item. How do I delete my ad?</b></p><p>Once your product is sold or leased, log in to your account to remove your ad.</p>', 2, 3, 1, NULL, NULL, 1, '2017-02-10 11:34:56', '2017-02-14 05:23:52');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(11, 'fr', 10, 0, 'standard', 'FAQ', 'faq', 'Foire aux Questions', NULL, '<p><b>Comment passer une annonce?</b></p><p>Pour passer une annonce c\'est très simple: vous cliquez que le bouton \"Publiez une annonce\" en haut à droite.</p><p><b>Quel est le coût de la publication?</b></p><p>La publication est 100% gratuite sur l\'ensemble du site.</p><p><b>Si je poste une annonce, vais-je recevoir plus de spams?</b></p><p>Absolument pas car votre adresse email n\'est pas rendu visible sur le site.</p><p><b>Pour combien de temps mon annonce restera sur le site?</b></p><p>En général, une annonce est automatiquement désactivée du site après 3 mois. Vous recevrez un email une semaine précédent le jour-j et un autre le jour même de la désactivation. Vous avez la possibilité de les remettre en ligne dans le mois suivant en vous connectant à votre compte sur le site. Après ce délais, votre annonce sera automatiquement supprimée définitivement du site.</p><p><b>J\'ai vendu mon article. Comment puis-je supprimer mon annonce?</b></p><p>Une fois que votre bien et vendu ou loué, connectez-vous à votre compte pour supprimer votre annonce.</p>', 2, 3, 1, NULL, NULL, 1, '2017-02-10 11:34:56', '2017-02-14 05:23:52');
INSERT INTO `<<prefix>>pages` (`id`, `translation_lang`, `translation_of`, `parent_id`, `type`, `name`, `slug`, `title`, `picture`, `content`, `lft`, `rgt`, `depth`, `name_color`, `title_color`, `active`, `created_at`, `updated_at`) VALUES(12, 'es', 10, 0, 'standard', 'FAQ', 'faq', 'Preguntas más frecuentes', NULL, '<p><b>How do I place an ad?</b></p><p>It\'s very easy to place an ad: click on the button \"Post free Ads\" above right.</p><p><b>What does it cost to advertise?</b></p><p>The publication is 100% free throughout the website.</p><p><b>If I post an ad, will I also get more spam e-mails?</b></p><p>Absolutely not because your email address is not visible on the website.</p><p><b>How long will my ad remain on the website?</b></p><p>In general, an ad is automatically deactivated from the website after 3 months. You will receive an email a week before D-Day and another on the day of deactivation. You have the ability to put them online in the following month by logging into your account on the site. After this delay, your ad will be automatically removed permanently from the website.</p><p><b>I sold my item. How do I delete my ad?</b></p><p>Once your product is sold or leased, log in to your account to remove your ad.</p>', 2, 3, 1, NULL, NULL, 1, '2017-02-10 11:34:56', '2017-02-14 05:23:52');


--
-- Truncate table before insert `<<prefix>>payment_methods`
--

TRUNCATE TABLE `<<prefix>>payment_methods`;
--
-- Dumping data for table `<<prefix>>payment_methods`
--

INSERT INTO `<<prefix>>payment_methods` (`id`, `name`, `display_name`, `description`, `has_ccbox`, `lft`, `rgt`, `depth`, `active`) VALUES
(1, 'paypal', 'Paypal', 'Payment with Paypal', 0, 0, 0, 1, 1);

--
-- Truncate table before insert `<<prefix>>post_types`
--

TRUNCATE TABLE `<<prefix>>post_types`;
--
-- Dumping data for table `<<prefix>>post_types`
--

INSERT INTO `<<prefix>>post_types` (`id`, `translation_lang`, `translation_of`, `name`, `lft`, `rgt`, `depth`, `active`) VALUES
(1, 'en', 1, 'Private', NULL, NULL, NULL, 1),
(2, 'en', 2, 'Professional', NULL, NULL, NULL, 1),
(3, 'fr', 1, 'Particulier', NULL, NULL, NULL, 1),
(4, 'fr', 2, 'Professionnel', NULL, NULL, NULL, 1),
(5, 'es', 1, 'Privado', NULL, NULL, NULL, 1),
(6, 'es', 2, 'Negocio', NULL, NULL, NULL, 1);

--
-- Truncate table before insert `<<prefix>>report_types`
--

TRUNCATE TABLE `<<prefix>>report_types`;
--
-- Dumping data for table `<<prefix>>report_types`
--

INSERT INTO `<<prefix>>report_types` (`id`, `translation_lang`, `translation_of`, `name`) VALUES
(1, 'en', 1, 'Fraud'),
(2, 'en', 2, 'Duplicate'),
(3, 'en', 3, 'Spam'),
(4, 'en', 4, 'Wrong category'),
(5, 'en', 5, 'Other'),
(6, 'fr', 1, 'Fraude'),
(7, 'fr', 2, 'Dupliquée'),
(8, 'fr', 3, 'Indésirable'),
(9, 'fr', 4, 'Mauvaise categorie'),
(10, 'fr', 5, 'Autre'),
(11, 'es', 1, 'Fraude'),
(12, 'es', 2, 'Duplicar'),
(13, 'es', 3, 'indeseable'),
(14, 'es', 4, 'Categoría incorrecta'),
(15, 'es', 5, 'Otro');

--
-- Truncate table before insert `<<prefix>>settings`
--

TRUNCATE TABLE `<<prefix>>settings`;
--
-- Dumping data for table `<<prefix>>settings`
--

INSERT INTO `<<prefix>>settings` (`key`, `name`, `value`, `description`, `field`, `parent_id`, `lft`, `rgt`, `depth`, `active`, `created_at`, `updated_at`) VALUES
('app_name', 'App Name', 'LaraClassified', 'Website name', '{"name":"value","label":"Value","type":"text"}', 0, 2, 13, 1, 1, NULL, '2016-06-15 00:33:22'),
('app_logo', 'Logo', NULL, 'Website Logo', '{"name":"value","label":"Logo","type":"image","upload":"true","disk":"uploads","default":"app/default/logo.png"}', 0, 3, 4, 1, 1, NULL, '2016-06-14 22:27:49'),
('app_slogan', 'App Slogan', 'LaraClassified - Geo Classified Ads CMS', 'Website slogan (for Meta Title)', '{"name":"value","label":"Value","type":"text"}', 0, 5, 6, 1, 1, NULL, '2016-06-14 22:27:49'),
('app_skin', 'Front Skin', '', 'Supported: blue, yellow, green, red (or empty)', '{"name":"value","label":"Value","type":"select_from_array","options":{"skin-default":"Default","skin-blue":"Blue","skin-yellow":"Yellow","skin-green":"Green","skin-red":"Red"}}', 0, 7, 8, 1, 1, NULL, '2016-06-14 22:27:49'),
('app_email', 'Email', 'contact@larapen.com', 'The email address that all emails from the contact form will go to.', '{"name":"value","label":"Value","type":"email"}', 0, 9, 10, 1, 1, NULL, '2016-06-14 22:27:49'),
('app_phone_number', 'Phone number', NULL, 'Website phone number', '{"name":"value","label":"Value","type":"text"}', 1, 11, 12, 1, 1, NULL, '2016-06-14 22:27:49'),
('activation_geolocation', 'Geolocation activation', '0', 'Before enabling this option you need to download the Maxmind database by following the documentation: http://www.bedigit.com/doc/geo-location/', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 14, 19, 1, 1, NULL, '2016-06-15 00:33:22'),
('app_default_country', 'Default Country', 'CA', 'Default country (ISO alpha-2 codes - e.g. US)', '{"name":"value","label":"Value","type":"text"}', 0, 15, 16, 1, 1, NULL, '2016-06-14 22:27:49'),
('activation_country_flag', 'Show country flag on top', '1', 'Show country flag on top page', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 17, 18, 1, 1, NULL, '2016-06-14 22:27:49'),
('activation_guests_can_post', 'Guests can post Ads', '1', 'Guest can post Ad', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 20, 25, 1, 1, NULL, '2016-06-15 00:33:22'),
('email_verification', 'Email verification required', '0', 'Email verification required', '{"name":"value","label":"Required","type":"checkbox"}', 10, 21, 22, 1, 1, NULL, '2016-06-14 22:27:49'),
('phone_verification', 'Phone verification required', '0', 'Phone verification required', '{"name":"value","label":"Required","type":"checkbox"}', 0, 23, 24, 1, 1, NULL, '2016-06-14 22:27:49'),
('activation_social_login', 'Social Login Activation', '0', 'Allow users to connect via social networks', '{"name":"value","label":"Required","type":"checkbox"}', 0, 38, 39, 1, 1, NULL, '2016-06-15 00:33:22'),
('activation_facebook_comments', 'Facebook Comments activation', '0', 'Allow Facebook comments on single page', '{"name":"value","label":"Required","type":"checkbox"}', 0, 36, 37, 1, 1, NULL, '2016-06-15 00:33:22'),
('show_powered_by', 'Show Powered by', '1', 'Show Powered by infos', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 26, 27, 1, 1, NULL, '2016-06-15 00:33:22'),
('google_site_verification', 'Google site verification content', NULL, 'Google site verification content', '{"name":"value","label":"Value","type":"text"}', 0, 28, 31, 1, 1, NULL, '2016-06-15 00:33:22'),
('msvalidate', 'Bing site verification content', NULL, 'Bing site verification content', '{"name":"value","label":"Value","type":"text"}', 0, 33, 34, 1, 1, NULL, '2016-06-14 22:28:49'),
('alexa_verify_id', 'Alexa site verification content', NULL, 'Alexa site verification content', '{"name":"value","label":"Value","type":"text"}', 18, 35, 36, 1, 1, NULL, '2016-06-14 22:28:49'),
('serp_left_sidebar', 'Left Sidebar in Search page', '0', 'Left Sidebar activation in Search page', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 29, 30, 1, 1, NULL, '2016-06-15 00:33:22'),
('tracking_code', 'Tracking Code', NULL, 'Tracking Code (ex: Google Analytics Code)', '{"name":"value","label":"Value","type":"textarea","hint":"Paste your Google Analytics (or other) tracking code here. This will be added into the footer. <br>Please <strong>do not</strong> include the &lt;script&gt; tags."}', 0, 34, 35, 1, 1, NULL, '2016-06-15 00:33:22'),
('facebook_page_url', 'Facebook - Page URL', 'https://web.facebook.com/bedigitcom', 'Website Facebook Page URL', '{"name":"value","label":"Value","type":"text"}', 0, 40, 47, 1, 1, NULL, '2016-06-15 00:33:22'),
('facebook_page_id', 'Facebook - Page ID', '806182476160185', 'Website Facebook Page ID (Not username)', '{"name":"value","label":"Value","type":"text"}', 0, 41, 42, 1, 1, NULL, '2016-06-15 00:26:15'),
('facebook_client_id', 'Facebook Client ID', NULL, 'Facebook Client ID', '{"name":"value","label":"Value","type":"text"}', 0, 43, 44, 1, 1, NULL, '2016-06-15 00:26:15'),
('facebook_client_secret', 'Facebook Client Secret', NULL, 'Facebook Client Secret', '{"name":"value","label":"Value","type":"text"}', 0, 45, 46, 1, 1, NULL, '2016-06-15 00:26:15'),
('google_client_id', 'Google Client ID', NULL, 'Google Client ID', '{"name":"value","label":"Value","type":"text"}', 0, 48, 49, 1, 1, NULL, '2016-06-15 00:33:22'),
('google_client_secret', 'Google Client Secret', NULL, 'Google Client Secret', '{"name":"value","label":"Value","type":"text"}', 0, 53, 54, 2, 1, NULL, '2016-06-14 23:42:29'),
('googlemaps_key', 'Google Maps key', NULL, 'Google Maps key', '{"name":"value","label":"Value","type":"text"}', 0, 55, 56, 2, 1, NULL, '2016-06-14 23:42:29'),
('twitter_url', 'Twitter - URL', 'https://twitter.com/bedigit', 'Website Twitter URL', '{"name":"value","label":"Value","type":"text"}', 0, 50, 57, 1, 1, NULL, '2016-06-15 00:33:22'),
('twitter_username', 'Twitter - Username', 'bedigit', 'Website Twitter username', '{"name":"value","label":"Value","type":"text"}', 0, 51, 52, 1, 1, NULL, '2016-06-15 00:29:26'),
('twitter_client_id', 'Twitter Client ID', NULL, 'Twitter Client ID', '{"name":"value","label":"Value","type":"text"}', 0, 53, 54, 1, 0, NULL, '2016-06-15 00:29:26'),
('twitter_client_secret', 'Twitter Client Secret', NULL, 'Twitter Client Secret', '{"name":"value","label":"Value","type":"text"}', 0, 55, 56, 1, 0, NULL, '2016-06-15 00:29:26'),
('activation_recaptcha', 'Recaptcha activation', '0', 'Recaptcha activation', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 58, 63, 1, 1, NULL, '2016-06-15 00:33:22'),
('recaptcha_public_key', 'reCAPTCHA public key', NULL, 'reCAPTCHA public key', '{"name":"value","label":"Value","type":"text"}', 0, 59, 60, 1, 1, NULL, '2016-06-15 00:29:26'),
('recaptcha_private_key', 'reCAPTCHA private key', NULL, 'reCAPTCHA private key', '{"name":"value","label":"Value","type":"text"}', 0, 61, 62, 1, 1, NULL, '2016-06-15 00:29:26'),
('mail_driver', 'Mail driver', 'smtp', 'e.g. smtp, mailgun, mandrill, ses, sparkpost, mail, sendmail', '{"name":"value","label":"Value","type":"select_from_array","options":{"smtp":"SMTP","mailgun":"Mailgun","mandrill":"Mandrill","ses":"Amazon SES","sparkpost":"Sparkpost","mail":"PHP Mail","sendmail":"Sendmail"}}', 0, 64, 75, 1, 1, NULL, '2016-06-15 00:33:22'),
('mail_host', 'Mail host', NULL, 'SMTP host', '{"name":"value","label":"Value","type":"text"}', 0, 65, 66, 1, 1, NULL, '2016-06-15 00:31:42'),
('mail_port', 'Mail port', '25', 'SMTP port (e.g. 25, 587, ...)', '{"name":"value","label":"Value","type":"text"}', 0, 67, 68, 1, 1, NULL, '2016-06-15 00:31:42'),
('mail_encryption', 'Mail encryption', 'tls', 'SMTP encryption (e.g. tls, ssl, starttls)', '{"name":"value","label":"Value","type":"text"}', 0, 69, 70, 1, 1, NULL, '2016-06-15 00:31:42'),
('mail_username', 'Mail username', NULL, 'SMTP username', '{"name":"value","label":"Value","type":"text"}', 0, 71, 72, 1, 1, NULL, '2016-06-15 00:31:42'),
('mail_password', 'Mail password', NULL, 'SMTP password', '{"name":"value","label":"Value","type":"text"}', 0, 73, 74, 1, 1, NULL, '2016-06-15 00:31:42'),
('mailgun_domain', 'Mailgun domain', NULL, 'Mailgun domain', '{"name":"value","label":"Value","type":"text"}', 0, 76, 79, 1, 1, NULL, '2016-06-15 00:33:22'),
('mailgun_secret', 'Mailgun secret', NULL, 'Mailgun secret', '{"name":"value","label":"Value","type":"text"}', 0, 77, 78, 1, 1, NULL, '2016-06-15 00:31:42'),
('mandrill_secret', 'Mandrill secret', NULL, 'Mandrill secret', '{"name":"value","label":"Value","type":"text"}', 0, 80, 81, 1, 1, NULL, '2016-06-15 00:33:22'),
('ses_key', 'SES key', NULL, 'SES key', '{"name":"value","label":"Value","type":"text"}', 0, 82, 87, 1, 1, NULL, '2016-06-15 00:33:22'),
('ses_secret', 'SES secret', NULL, 'SES secret', '{"name":"value","label":"Value","type":"text"}', 0, 83, 84, 1, 1, NULL, '2016-06-15 00:32:06'),
('ses_region', 'SES region', NULL, 'SES region', '{"name":"value","label":"Value","type":"text"}', 0, 85, 86, 1, 1, NULL, '2016-06-15 00:32:06'),
('stripe_secret', 'Stripe secret', NULL, 'Stripe secret', '{"name":"value","label":"Value","type":"text"}', 0, 97, 98, 1, 0, NULL, '2016-06-15 00:31:42'),
('stripe_key', 'Stripe key', NULL, 'Stripe key', '{"name":"value","label":"Value","type":"text"}', 0, 96, 99, 1, 0, NULL, '2016-06-15 00:33:22'),
('sparkpost_secret', 'Sparkpost secret', NULL, 'Sparkpost secret', '{"name":"value","label":"Value","type":"text"}', 0, 100, 101, 1, 1, NULL, '2016-06-15 00:33:22'),
('app_cache_expiration', 'Cache Expiration Time', '60', 'Cache Expiration Time (in minutes)', '{"name":"value","label":"Value","type":"text"}', 0, 102, 103, 1, 1, NULL, '2016-06-15 00:33:22'),
('app_cookie_expiration', 'Cookie Expiration Time', '2592000', 'Cookie Expiration Time (in seconde)', '{"name":"value","label":"Value","type":"text"}', 0, 111, 112, 1, 1, NULL, '2016-06-14 23:42:29'),
('activation_minify_html', 'HTML Minify activation', '0', 'Optimization - HTML Minify activation', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 113, 114, 1, 1, NULL, '2016-06-14 23:42:29'),
('activation_http_cache', 'HTTP Cache activation', '0', 'Optimization - HTTP Cache activation', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 115, 116, 1, 1, NULL, '2016-06-14 23:42:29');
INSERT INTO `<<prefix>>settings` (`key`, `name`, `value`, `description`, `field`, `parent_id`, `lft`, `rgt`, `depth`, `active`, `created_at`, `updated_at`)
VALUES
	('posts_pictures_number', 'Ad''s photos number', '3', 'Ad''s photos number', '{"name":"value","label":"Value","type":"text"}', 0, 14, 15, 1, 1, NULL, '2016-06-15 17:31:46'),
	('show_post_on_googlemap', 'Show Ads on Google Maps', '0', 'Show Ads on Google Maps (Single page only)', '{"name":"value","label":"Show","type":"checkbox"}', 0, 22, 23, 1, 1, NULL, NULL),
	('custom_css', 'Custom CSS', NULL, 'Custom CSS for your site', '{"name":"value","label":"Value","type":"textarea","hint":"Please <strong>do not</strong> include the &lt;style&gt; tags."}', 0, 124, 125, 1, 1, NULL, '2016-06-16 15:15:25');
INSERT INTO `<<prefix>>settings` (`key`, `name`, `value`, `description`, `field`, `parent_id`, `lft`, `rgt`, `depth`, `active`, `created_at`, `updated_at`)
VALUES
	('posts_review_activation', 'Ads review activation', '0', 'Ads review activation', '{"name":"value","label":"Required","type":"checkbox"}', 0, 23, 24, 1, 1, NULL, '2016-06-14 23:27:49');
INSERT INTO `<<prefix>>settings` (`key`, `name`, `value`, `description`, `field`, `parent_id`, `lft`, `rgt`, `depth`, `active`, `created_at`, `updated_at`)
VALUES
	('purchase_code', 'Purchase Code', '', 'Envato Purchase Code', '{"name":"value","label":"Value","type":"text"}', 0, 6, 7, 1, 1, NULL, '2016-11-10 19:29:35');
INSERT INTO `<<prefix>>settings` (`key`, `name`, `value`, `description`, `field`, `parent_id`, `lft`, `rgt`, `depth`, `active`, `created_at`, `updated_at`) 
VALUES
	('upload_max_file_size', 'Upload Max File Size', '2500', 'Upload Max File Size (in KB)', '{"name":"value","label":"Value","type":"text"}', 0, 25, 25, 1, 1, NULL, '2017-01-13 11:21:08'),
	('admin_email_notification', 'Admin Email Notification', '0', 'Send Email Notifications to the admins when ads was added or users was registered etc.', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 26, 33, 1, 1, NULL, '2017-01-13 14:38:08'),
	('payment_email_notification', 'Payment Email Notification', '0', 'Send Email Notifications to user and admins when payments was sent.', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 26, 33, 1, 1, NULL, '2017-01-13 14:38:08');
INSERT INTO `<<prefix>>settings` (`key`, `name`, `value`, `description`, `field`, `parent_id`, `lft`, `rgt`, `depth`, `active`, `created_at`, `updated_at`) 
VALUES
	('posts_per_page', 'Ads per page', '12', 'Number of ads per page (> 4 and < 40)', '{"name":"value","label":"Value","type":"text"}', 0, 18, 19, 1, 1, NULL, '2017-02-08 13:51:10'),
	('decimals_superscript', 'Decimals Superscript', '0', 'Decimals Superscript (For Price, Salary, etc.)', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 19, 19, 1, 1, NULL, '2017-02-08 13:51:10'),
	('simditor_wysiwyg', 'Simditor WYSIWYG Editor', '1', 'Simditor WYSIWYG Editor', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 19, 19, 1, 1, NULL, '2017-02-08 13:51:10'),
	('ckeditor_wysiwyg', 'CKEditor WYSIWYG Editor', '0', 'CKEditor WYSIWYG Editor (For commercial use: http://ckeditor.com/pricing) - You need to disable the "Simditor WYSIWYG Editor"', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 19, 19, 1, 1, NULL, '2017-02-08 13:51:10'),
	('admin_skin', 'Admin Skin', 'skin-blue', 'Admin Panel Skin', '{"name":"value","label":"Value","type":"select_from_array","options":{"skin-black":"Black","skin-blue":"Blue","skin-purple":"Purple","skin-red":"Red","skin-yellow":"Yellow","skin-green":"Green","skin-blue-light":"Blue light","skin-black-light":"Black light","skin-purple-light":"Purple light","skin-green-light":"Green light","skin-red-light":"Red light","skin-yellow-light":"Yellow light"}}', 0, 13, 13, 1, 1, NULL, '2017-02-12 03:53:11');
INSERT INTO `<<prefix>>settings` (`key`, `name`, `value`, `description`, `field`, `parent_id`, `lft`, `rgt`, `depth`, `active`, `created_at`, `updated_at`) 
VALUES
	('upload_image_types', 'Upload Image Types', 'jpg,jpeg,gif,png', 'Upload image types (ex: jpg,jpeg,gif,png,...)', '{"name":"value","label":"Value","type":"text"}', 0, 20, 21, 1, 1, NULL, '2017-02-21 15:02:43'),
	('upload_file_types', 'Upload File Types', 'pdf,doc,docx,word,rtf,rtx,ppt,pptx,odt,odp,wps,jpeg,jpg,bmp,png', 'Upload file types (ex: pdf,doc,docx,odt,...)', '{"name":"value","label":"Value","type":"text"}', 0, 20, 21, 1, 1, NULL, '2017-02-21 15:03:06'),
	('app_favicon', 'Favicon', NULL, 'Favicon (extension: png,jpg)', '{"name":"value","label":"Favicon","type":"image","upload":"true","disk":"uploads","default":"app/default/ico/favicon.png"}', 0, 4, 4, 1, 1, NULL, '2017-02-24 9:15:38'),
	('unactivated_posts_expiration', 'Unactivated Ads Expiration', '30', 'In days (Delete the unactivated ads after this expiration) - You need to add "/usr/bin/php -q /path/to/your/website/artisan ads:clean" in your Cron Job tab', '{"name":"value","label":"Value","type":"text"}', 0, 25, 25, 1, 1, NULL, '2017-03-14 19:31:10'),
	('activated_posts_expiration', 'Activated Ads Expiration', '150', 'In days (Archive the activated ads after this expiration) - You need to add "/usr/bin/php -q /path/to/your/website/artisan ads:clean" in your Cron Job tab', '{"name":"value","label":"Value","type":"text"}', 0, 25, 25, 1, 1, NULL, '2017-03-14 19:31:10'),
	('archived_posts_expiration', 'Archived Ads Expiration', '7', 'In days (Delete the archived ads after this expiration) - You need to add "/usr/bin/php -q /path/to/your/website/artisan ads:clean" in your Cron Job tab', '{"name":"value","label":"Value","type":"text"}', 0, 25, 25, 1, 1, NULL, '2017-03-14 19:31:10'),
	('serp_display_mode', 'Search page display mode', '.grid-view', 'Search page display mode (Grid, List, Compact) - You need to clear your cookie data, after you are saved your change', '{"name":"value","label":"Value","type":"select_from_array","options":{".grid-view":"grid-view",".list-view":"list-view",".compact-view":"compact-view"}}', 0, 62, 63, 1, 1, NULL, '2017-03-17 13:51:10'),
	('app_email_sender', 'Transactional Email Sender', NULL, 'Transactional Email Sender. Example: noreply@yoursite.com', '{"name":"value","label":"Value","type":"email"}', 0, 9, 10, 1, 1, NULL, '2017-03-22 09:27:49');
INSERT INTO `<<prefix>>settings` (`key`, `name`, `value`, `description`, `field`, `parent_id`, `lft`, `rgt`, `depth`, `active`, `created_at`, `updated_at`)
VALUES
  ('sms_driver', 'SMS driver', 'nexmo', 'e.g. nexmo, twilio', '{"name":"value","label":"Value","type":"select_from_array","options":{"nexmo":"Nexmo","twilio":"Twilio"}}', 0, 86, 86, 1, 1, NULL, '2017-04-12 13:06:19'),
  ('sms_message_activation', 'SMS Message Activation', '0', 'Users can contact the author by SMS. Note: You need to set the "SMS driver" setting.', '{"name":"value","label":"Activation","type":"checkbox"}', 0, 87, 87, 1, 1, NULL, '2017-06-17 13:06:19');


--
-- Truncate table before insert `<<prefix>>time_zones`
--

TRUNCATE TABLE `<<prefix>>time_zones`;
--
-- Dumping data for table `<<prefix>>time_zones`
--

INSERT INTO `<<prefix>>time_zones` (`id`, `country_code`, `time_zone_id`, `gmt`, `dst`, `raw`) VALUES
(1, 'AD', 'Europe/Andorra', 1, 2, 1),
(2, 'AE', 'Asia/Dubai', 4, 4, 4),
(3, 'AF', 'Asia/Kabul', 4.5, 4.5, 4.5),
(4, 'AG', 'America/Antigua', -4, -4, -4),
(5, 'AI', 'America/Anguilla', -4, -4, -4),
(6, 'AL', 'Europe/Tirane', 1, 2, 1),
(7, 'AM', 'Asia/Yerevan', 4, 4, 4),
(8, 'AO', 'Africa/Luanda', 1, 1, 1),
(9, 'AQ', 'Antarctica/Casey', 8, 8, 8),
(10, 'AR', 'America/Argentina/Buenos_Aires', -3, -3, -3),
(11, 'AS', 'Pacific/Pago_Pago', -11, -11, -11),
(12, 'AT', 'Europe/Vienna', 1, 2, 1),
(13, 'AU', 'Antarctica/Macquarie', 11, 11, 11),
(14, 'AW', 'America/Aruba', -4, -4, -4),
(15, 'AX', 'Europe/Mariehamn', 2, 3, 2),
(16, 'AZ', 'Asia/Baku', 4, 5, 4),
(17, 'BA', 'Europe/Sarajevo', 1, 2, 1),
(18, 'BB', 'America/Barbados', -4, -4, -4),
(19, 'BD', 'Asia/Dhaka', 6, 6, 6),
(20, 'BE', 'Europe/Brussels', 1, 2, 1),
(21, 'BF', 'Africa/Ouagadougou', 0, 0, 0),
(22, 'BG', 'Europe/Sofia', 2, 3, 2),
(23, 'BH', 'Asia/Bahrain', 3, 3, 3),
(24, 'BI', 'Africa/Bujumbura', 2, 2, 2),
(25, 'BJ', 'Africa/Porto-Novo', 1, 1, 1),
(26, 'BL', 'America/St_Barthelemy', -4, -4, -4),
(27, 'BM', 'Atlantic/Bermuda', -4, -3, -4),
(28, 'BN', 'Asia/Brunei', 8, 8, 8),
(29, 'BO', 'America/La_Paz', -4, -4, -4),
(30, 'BQ', 'America/Kralendijk', -4, -4, -4),
(31, 'BR', 'America/Araguaina', -3, -3, -3),
(32, 'BS', 'America/Nassau', -5, -4, -5),
(33, 'BT', 'Asia/Thimphu', 6, 6, 6),
(34, 'BW', 'Africa/Gaborone', 2, 2, 2),
(35, 'BY', 'Europe/Minsk', 3, 3, 3),
(36, 'BZ', 'America/Belize', -6, -6, -6),
(37, 'CA', 'America/Atikokan', -5, -5, -5),
(38, 'CC', 'Indian/Cocos', 6.5, 6.5, 6.5),
(39, 'CD', 'Africa/Kinshasa', 1, 1, 1),
(40, 'CF', 'Africa/Bangui', 1, 1, 1),
(41, 'CG', 'Africa/Brazzaville', 1, 1, 1),
(42, 'CH', 'Europe/Zurich', 1, 2, 1),
(43, 'CI', 'Africa/Abidjan', 0, 0, 0),
(44, 'CK', 'Pacific/Rarotonga', -10, -10, -10),
(45, 'CL', 'America/Santiago', -3, -3, -3),
(46, 'CM', 'Africa/Douala', 1, 1, 1),
(47, 'CN', 'Asia/Shanghai', 8, 8, 8),
(48, 'CO', 'America/Bogota', -5, -5, -5),
(49, 'CR', 'America/Costa_Rica', -6, -6, -6),
(50, 'CU', 'America/Havana', -5, -4, -5),
(51, 'CV', 'Atlantic/Cape_Verde', -1, -1, -1),
(52, 'CW', 'America/Curacao', -4, -4, -4),
(53, 'CX', 'Indian/Christmas', 7, 7, 7),
(54, 'CY', 'Asia/Nicosia', 2, 3, 2),
(55, 'CZ', 'Europe/Prague', 1, 2, 1),
(56, 'DE', 'Europe/Berlin', 1, 2, 1),
(57, 'DJ', 'Africa/Djibouti', 3, 3, 3),
(58, 'DK', 'Europe/Copenhagen', 1, 2, 1),
(59, 'DM', 'America/Dominica', -4, -4, -4),
(60, 'DO', 'America/Santo_Domingo', -4, -4, -4),
(61, 'DZ', 'Africa/Algiers', 1, 1, 1),
(62, 'EC', 'America/Guayaquil', -5, -5, -5),
(63, 'EE', 'Europe/Tallinn', 2, 3, 2),
(64, 'EG', 'Africa/Cairo', 2, 2, 2),
(65, 'EH', 'Africa/El_Aaiun', 0, 0, 0),
(66, 'ER', 'Africa/Asmara', 3, 3, 3),
(67, 'ES', 'Africa/Ceuta', 1, 2, 1),
(68, 'ET', 'Africa/Addis_Ababa', 3, 3, 3),
(69, 'FI', 'Europe/Helsinki', 2, 3, 2),
(70, 'FJ', 'Pacific/Fiji', 13, 12, 12),
(71, 'FK', 'Atlantic/Stanley', -3, -3, -3),
(72, 'FM', 'Pacific/Chuuk', 10, 10, 10),
(73, 'FO', 'Atlantic/Faroe', 0, 1, 0),
(74, 'FR', 'Europe/Paris', 1, 2, 1),
(75, 'GA', 'Africa/Libreville', 1, 1, 1),
(76, 'GD', 'America/Grenada', -4, -4, -4),
(77, 'GE', 'Asia/Tbilisi', 4, 4, 4),
(78, 'GF', 'America/Cayenne', -3, -3, -3),
(79, 'GG', 'Europe/Guernsey', 0, 1, 0),
(80, 'GH', 'Africa/Accra', 0, 0, 0),
(81, 'GI', 'Europe/Gibraltar', 1, 2, 1),
(82, 'GL', 'America/Danmarkshavn', 0, 0, 0),
(83, 'GM', 'Africa/Banjul', 0, 0, 0),
(84, 'GN', 'Africa/Conakry', 0, 0, 0),
(85, 'GP', 'America/Guadeloupe', -4, -4, -4),
(86, 'GQ', 'Africa/Malabo', 1, 1, 1),
(87, 'GR', 'Europe/Athens', 2, 3, 2),
(88, 'GS', 'Atlantic/South_Georgia', -2, -2, -2),
(89, 'GT', 'America/Guatemala', -6, -6, -6),
(90, 'GU', 'Pacific/Guam', 10, 10, 10),
(91, 'GW', 'Africa/Bissau', 0, 0, 0),
(92, 'GY', 'America/Guyana', -4, -4, -4),
(93, 'HK', 'Asia/Hong_Kong', 8, 8, 8),
(94, 'HN', 'America/Tegucigalpa', -6, -6, -6),
(95, 'HR', 'Europe/Zagreb', 1, 2, 1),
(96, 'HT', 'America/Port-au-Prince', -5, -4, -5),
(97, 'HU', 'Europe/Budapest', 1, 2, 1),
(98, 'ID', 'Asia/Jakarta', 7, 7, 7),
(99, 'IE', 'Europe/Dublin', 0, 1, 0),
(100, 'IL', 'Asia/Jerusalem', 2, 3, 2),
(101, 'IM', 'Europe/Isle_of_Man', 0, 1, 0),
(102, 'IN', 'Asia/Kolkata', 5.5, 5.5, 5.5),
(103, 'IO', 'Indian/Chagos', 6, 6, 6),
(104, 'IQ', 'Asia/Baghdad', 3, 3, 3),
(105, 'IR', 'Asia/Tehran', 3.5, 4.5, 3.5),
(106, 'IS', 'Atlantic/Reykjavik', 0, 0, 0),
(107, 'IT', 'Europe/Rome', 1, 2, 1),
(108, 'JE', 'Europe/Jersey', 0, 1, 0),
(109, 'JM', 'America/Jamaica', -5, -5, -5),
(110, 'JO', 'Asia/Amman', 2, 3, 2),
(111, 'JP', 'Asia/Tokyo', 9, 9, 9),
(112, 'KE', 'Africa/Nairobi', 3, 3, 3),
(113, 'KG', 'Asia/Bishkek', 6, 6, 6),
(114, 'KH', 'Asia/Phnom_Penh', 7, 7, 7),
(115, 'KI', 'Pacific/Enderbury', 13, 13, 13),
(116, 'KM', 'Indian/Comoro', 3, 3, 3),
(117, 'KN', 'America/St_Kitts', -4, -4, -4),
(118, 'KP', 'Asia/Pyongyang', 9, 9, 9),
(119, 'KR', 'Asia/Seoul', 9, 9, 9),
(120, 'KW', 'Asia/Kuwait', 3, 3, 3),
(121, 'KY', 'America/Cayman', -5, -5, -5),
(122, 'KZ', 'Asia/Almaty', 6, 6, 6),
(123, 'LA', 'Asia/Vientiane', 7, 7, 7),
(124, 'LB', 'Asia/Beirut', 2, 3, 2),
(125, 'LC', 'America/St_Lucia', -4, -4, -4),
(126, 'LI', 'Europe/Vaduz', 1, 2, 1),
(127, 'LK', 'Asia/Colombo', 5.5, 5.5, 5.5),
(128, 'LR', 'Africa/Monrovia', 0, 0, 0),
(129, 'LS', 'Africa/Maseru', 2, 2, 2),
(130, 'LT', 'Europe/Vilnius', 2, 3, 2),
(131, 'LU', 'Europe/Luxembourg', 1, 2, 1),
(132, 'LV', 'Europe/Riga', 2, 3, 2),
(133, 'LY', 'Africa/Tripoli', 2, 2, 2),
(134, 'MA', 'Africa/Casablanca', 0, 0, 0),
(135, 'MC', 'Europe/Monaco', 1, 2, 1),
(136, 'MD', 'Europe/Chisinau', 2, 3, 2),
(137, 'ME', 'Europe/Podgorica', 1, 2, 1),
(138, 'MF', 'America/Marigot', -4, -4, -4),
(139, 'MG', 'Indian/Antananarivo', 3, 3, 3),
(140, 'MH', 'Pacific/Kwajalein', 12, 12, 12),
(141, 'MK', 'Europe/Skopje', 1, 2, 1),
(142, 'ML', 'Africa/Bamako', 0, 0, 0),
(143, 'MM', 'Asia/Rangoon', 6.5, 6.5, 6.5),
(144, 'MN', 'Asia/Choibalsan', 8, 8, 8),
(145, 'MO', 'Asia/Macau', 8, 8, 8),
(146, 'MP', 'Pacific/Saipan', 10, 10, 10),
(147, 'MQ', 'America/Martinique', -4, -4, -4),
(148, 'MR', 'Africa/Nouakchott', 0, 0, 0),
(149, 'MS', 'America/Montserrat', -4, -4, -4),
(150, 'MT', 'Europe/Malta', 1, 2, 1),
(151, 'MU', 'Indian/Mauritius', 4, 4, 4),
(152, 'MV', 'Indian/Maldives', 5, 5, 5),
(153, 'MW', 'Africa/Blantyre', 2, 2, 2),
(154, 'MX', 'America/Bahia_Banderas', -6, -5, -6),
(155, 'MY', 'Asia/Kuala_Lumpur', 8, 8, 8),
(156, 'MZ', 'Africa/Maputo', 2, 2, 2),
(157, 'NA', 'Africa/Windhoek', 2, 1, 1),
(158, 'NC', 'Pacific/Noumea', 11, 11, 11),
(159, 'NE', 'Africa/Niamey', 1, 1, 1),
(160, 'NF', 'Pacific/Norfolk', 11.5, 11.5, 11.5),
(161, 'NG', 'Africa/Lagos', 1, 1, 1),
(162, 'NI', 'America/Managua', -6, -6, -6),
(163, 'NL', 'Europe/Amsterdam', 1, 2, 1),
(164, 'NO', 'Europe/Oslo', 1, 2, 1),
(165, 'NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
(166, 'NR', 'Pacific/Nauru', 12, 12, 12),
(167, 'NU', 'Pacific/Niue', -11, -11, -11),
(168, 'NZ', 'Pacific/Auckland', 13, 12, 12),
(169, 'OM', 'Asia/Muscat', 4, 4, 4),
(170, 'PA', 'America/Panama', -5, -5, -5),
(171, 'PE', 'America/Lima', -5, -5, -5),
(172, 'PF', 'Pacific/Gambier', -9, -9, -9),
(173, 'PG', 'Pacific/Bougainville', 11, 11, 11),
(174, 'PH', 'Asia/Manila', 8, 8, 8),
(175, 'PK', 'Asia/Karachi', 5, 5, 5),
(176, 'PL', 'Europe/Warsaw', 1, 2, 1),
(177, 'PM', 'America/Miquelon', -3, -2, -3),
(178, 'PN', 'Pacific/Pitcairn', -8, -8, -8),
(179, 'PR', 'America/Puerto_Rico', -4, -4, -4),
(180, 'PS', 'Asia/Gaza', 2, 3, 2),
(181, 'PT', 'Atlantic/Azores', -1, 0, -1),
(182, 'PW', 'Pacific/Palau', 9, 9, 9),
(183, 'PY', 'America/Asuncion', -3, -4, -4),
(184, 'QA', 'Asia/Qatar', 3, 3, 3),
(185, 'RE', 'Indian/Reunion', 4, 4, 4),
(186, 'RO', 'Europe/Bucharest', 2, 3, 2),
(187, 'RS', 'Europe/Belgrade', 1, 2, 1),
(188, 'RU', 'Asia/Anadyr', 12, 12, 12),
(189, 'RW', 'Africa/Kigali', 2, 2, 2),
(190, 'SA', 'Asia/Riyadh', 3, 3, 3),
(191, 'SB', 'Pacific/Guadalcanal', 11, 11, 11),
(192, 'SC', 'Indian/Mahe', 4, 4, 4),
(193, 'SD', 'Africa/Khartoum', 3, 3, 3),
(194, 'SE', 'Europe/Stockholm', 1, 2, 1),
(195, 'SG', 'Asia/Singapore', 8, 8, 8),
(196, 'SH', 'Atlantic/St_Helena', 0, 0, 0),
(197, 'SI', 'Europe/Ljubljana', 1, 2, 1),
(198, 'SJ', 'Arctic/Longyearbyen', 1, 2, 1),
(199, 'SK', 'Europe/Bratislava', 1, 2, 1),
(200, 'SL', 'Africa/Freetown', 0, 0, 0),
(201, 'SM', 'Europe/San_Marino', 1, 2, 1),
(202, 'SN', 'Africa/Dakar', 0, 0, 0),
(203, 'SO', 'Africa/Mogadishu', 3, 3, 3),
(204, 'SR', 'America/Paramaribo', -3, -3, -3),
(205, 'SS', 'Africa/Juba', 3, 3, 3),
(206, 'ST', 'Africa/Sao_Tome', 0, 0, 0),
(207, 'SV', 'America/El_Salvador', -6, -6, -6),
(208, 'SX', 'America/Lower_Princes', -4, -4, -4),
(209, 'SY', 'Asia/Damascus', 2, 3, 2),
(210, 'SZ', 'Africa/Mbabane', 2, 2, 2),
(211, 'TC', 'America/Grand_Turk', -5, -4, -5),
(212, 'TD', 'Africa/Ndjamena', 1, 1, 1),
(213, 'TF', 'Indian/Kerguelen', 5, 5, 5),
(214, 'TG', 'Africa/Lome', 0, 0, 0),
(215, 'TH', 'Asia/Bangkok', 7, 7, 7),
(216, 'TJ', 'Asia/Dushanbe', 5, 5, 5),
(217, 'TK', 'Pacific/Fakaofo', 13, 13, 13),
(218, 'TL', 'Asia/Dili', 9, 9, 9),
(219, 'TM', 'Asia/Ashgabat', 5, 5, 5),
(220, 'TN', 'Africa/Tunis', 1, 1, 1),
(221, 'TO', 'Pacific/Tongatapu', 13, 13, 13),
(222, 'TR', 'Europe/Istanbul', 2, 3, 2),
(223, 'TT', 'America/Port_of_Spain', -4, -4, -4),
(224, 'TV', 'Pacific/Funafuti', 12, 12, 12),
(225, 'TW', 'Asia/Taipei', 8, 8, 8),
(226, 'TZ', 'Africa/Dar_es_Salaam', 3, 3, 3),
(227, 'UA', 'Europe/Kiev', 2, 3, 2),
(228, 'UG', 'Africa/Kampala', 3, 3, 3),
(229, 'UK', 'Europe/London', 0, 1, 0),
(230, 'UM', 'Pacific/Johnston', -10, -10, -10),
(231, 'US', 'America/Adak', -10, -9, -10),
(232, 'UY', 'America/Montevideo', -2, -3, -3),
(233, 'UZ', 'Asia/Samarkand', 5, 5, 5),
(234, 'VA', 'Europe/Vatican', 1, 2, 1),
(235, 'VC', 'America/St_Vincent', -4, -4, -4),
(236, 'VE', 'America/Caracas', -4.5, -4.5, -4.5),
(237, 'VG', 'America/Tortola', -4, -4, -4),
(238, 'VI', 'America/St_Thomas', -4, -4, -4),
(239, 'VN', 'Asia/Ho_Chi_Minh', 7, 7, 7),
(240, 'VU', 'Pacific/Efate', 11, 11, 11),
(241, 'WF', 'Pacific/Wallis', 12, 12, 12),
(242, 'WS', 'Pacific/Apia', 14, 13, 13),
(243, 'YE', 'Asia/Aden', 3, 3, 3),
(244, 'YT', 'Indian/Mayotte', 3, 3, 3),
(245, 'ZA', 'Africa/Johannesburg', 2, 2, 2),
(246, 'ZM', 'Africa/Lusaka', 2, 2, 2),
(247, 'ZW', 'Africa/Harare', 2, 2, 2);

--
-- Truncate table before insert `<<prefix>>users`
--

TRUNCATE TABLE `<<prefix>>users`;
--
-- Dumping data for table `<<prefix>>users`
--

INSERT INTO `<<prefix>>users` (`id`, `country_code`, `user_type_id`, `gender_id`, `name`, `about`, `phone`, `phone_hidden`, `email`, `password`, `remember_token`, `is_admin`, `disable_comments`, `receive_newsletter`, `receive_advice`, `ip_addr`, `provider`, `provider_id`, `email_token`, `phone_token`, `verified_email`, `verified_phone`, `blocked`, `closed`, `last_login_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'FI', 1, 1, 'Administrator', 'Administrator', '+19875754676', 0, 'admin@yoursite.com', '$2y$10$k5jUtH2EYKl9F.5rT5A4SeCU9k6GLjfxESPggYToigaZpbgHIYKpW', 'Br2KkFuD5ighe1JkSuZhWnGAfzbZeHUtRmfwafLSsw2L3HurBF0HbBX4M9fw', 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, 0, '2015-09-29 14:39:54', '2015-09-28 12:42:23', '2015-09-29 14:40:25', NULL);

--
-- Truncate table before insert `<<prefix>>user_types`
--

TRUNCATE TABLE `<<prefix>>user_types`;
--
-- Dumping data for table `<<prefix>>user_types`
--

INSERT INTO `<<prefix>>user_types` (`id`, `name`, `active`) VALUES
(1, 'Admin', 0),
(2, 'Professional', 1),
(3, 'Individual', 1);

SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;