-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2023 at 09:44 AM
-- Server version: 10.3.37-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asadinpe_flexlab`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance_requests`
--

CREATE TABLE IF NOT EXISTS `balance_requests` (
  `balance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `traID` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2 COMMENT '2= Pending, 1=Success',
  `approve_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`balance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Graphice Design', 'graphice-design', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(2, 'Digital Marketing', 'digital-marketing', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(3, 'Programming Tech', 'programming-tech', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(4, 'Video Animation', 'video-animation', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(5, 'Website Design', 'website-design', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(6, 'Writing Translation', 'writing-translation', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(7, 'Business', 'business', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(8, 'Fun & Lifestyle', 'fun-lifestyle', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(9, 'Music & Audio', 'music-audio', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(10, 'Programming Tech', 'programming-tech', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(11, 'Video Animation', 'video-animation', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(12, 'Website Design', 'website-design', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(13, 'Writing Translation', 'writing-translation', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(14, 'Business', 'business', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(15, 'Fun & Lifestyle', 'fun-lifestyle', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(16, 'Music & Audio', 'music-audio', 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_12_170048_create_roles_table', 1),
(6, '2022_11_15_191347_create_user_profiles_table', 1),
(7, '2022_12_16_181354_create_services_table', 1),
(8, '2022_12_16_213114_create_balance_requests_table', 1),
(9, '2022_12_17_101115_create_categories_table', 1),
(10, '2022_12_20_142404_create_place_bits_table', 1),
(11, '2022_12_21_081247_create_order_completes_table', 1),
(12, '2022_12_21_143859_create_sub_categories_table', 1),
(13, '2022_12_22_172158_create_products_table', 1),
(14, '2022_12_23_144926_create_subscribers_table', 1),
(15, '2022_12_23_152520_create_settings_table', 1),
(16, '2022_12_23_205309_create_product_orders_table', 1),
(17, '2022_12_24_065147_create_sliders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_completes`
--

CREATE TABLE IF NOT EXISTS `order_completes` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_date` varchar(255) NOT NULL,
  `service_id` varchar(255) NOT NULL,
  `bid_id` varchar(255) NOT NULL,
  `buyer_id` varchar(255) NOT NULL,
  `seller_id` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `place_bits`
--

CREATE TABLE IF NOT EXISTS `place_bits` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `dateline` date NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `bidDes` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 for unaccpet 1 for buyer accpeted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `download_link` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_details` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `orderby` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `product_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE IF NOT EXISTS `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `tns_number` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `service_fee` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '1 = pending, 2 = approved, 3 = rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  `role_slug` varchar(255) NOT NULL,
  `role_status` varchar(255) NOT NULL DEFAULT '1',
  `role_comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `roles_role_name_unique` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_slug`, `role_status`, `role_comments`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', '1', NULL, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(2, 'Admin', 'admin', '1', NULL, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(3, 'Seller', 'seller', '1', NULL, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(4, 'Buyer', 'buyer', '1', NULL, '2022-12-24 09:45:37', '2022-12-24 09:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shortDes` varchar(255) NOT NULL,
  `longdes` longtext NOT NULL,
  `document` text NOT NULL,
  `price` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2 COMMENT '1 for approve 2 for un approve',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `cat_id`, `user_id`, `shortDes`, `longdes`, `document`, `price`, `StartDate`, `EndDate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Doloremque enim voluptatem nulla quos sit animi voluptatem delectus esse.', 'totam-dolorem-voluptas-ad-eum', 13, 3, 'In corrupti facilis eius quis error sapiente veritatis. Occaecati qui quia doloribus et officia sit.', 'Maxime voluptatibus itaque a voluptatem dolore consequatur aspernatur vel. Qui doloremque nihil et rerum. Dignissimos modi quia doloribus consequatur molestiae. Soluta unde ad magni eaque recusandae.', 'https://via.placeholder.com/640x480.png/0077dd?text=non', 2028, '2022-12-24', '2023-11-27', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(2, 'Quas architecto qui aliquam eum atque.', 'veritatis-quasi-alias-in-possimus-quae', 3, 3, 'Blanditiis est aliquam cumque repellat ut facere. Voluptas unde ratione quia aut est ullam voluptatem beatae. Itaque ipsum voluptatem repudiandae rerum magnam eum. Sint nesciunt est quia dignissimos.', 'Laboriosam laborum expedita laborum sint quas distinctio. Explicabo est vero autem sit. Corrupti dolores sed sit et. Quibusdam debitis repellendus sed modi est consequuntur rerum id.', 'https://via.placeholder.com/640x480.png/005500?text=sit', 7825, '2022-12-25', '2022-12-25', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(3, 'Consectetur occaecati aut illo quo beatae et corrupti dolore voluptas molestias voluptatibus.', 'mollitia-blanditiis-tenetur-vitae', 8, 3, 'Dolorem velit aspernatur repudiandae suscipit ut consectetur doloremque. Hic in minima animi molestiae. Aliquam occaecati quisquam voluptatum voluptatem dolorem repellat dolore.', 'Sunt ratione sequi vel et reiciendis quaerat omnis. Eum aut eos quasi in omnis necessitatibus. Vero ipsum ut eveniet ut iure. Explicabo sunt qui ad voluptas. Sit adipisci eos temporibus vel accusamus officia voluptatum omnis. Unde exercitationem odio aliquid nihil rerum.', 'https://via.placeholder.com/640x480.png/00dd00?text=vel', 6445, '2022-12-25', '2023-11-22', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(4, 'Sunt molestias doloribus tempora enim a.', 'consequuntur-placeat-praesentium-sit-rerum-illum-sit-voluptate', 5, 3, 'Dolor maxime alias et. Quasi fugit ut deleniti accusantium ratione rem. Beatae sapiente velit eum cumque maxime.', 'Sed rerum dicta quae. Culpa quidem rerum suscipit et magnam officiis ipsa enim. Quo quis porro in aut optio quis reprehenderit. Non non neque repudiandae voluptatem. Ad accusantium beatae praesentium eveniet.', 'https://via.placeholder.com/640x480.png/0033ff?text=doloremque', 2857, '2022-12-25', '2023-04-25', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(5, 'Fuga provident hic quis veritatis perspiciatis alias.', 'sit-et-eos-est-nihil-sed', 16, 3, 'Porro ducimus accusamus voluptas. Molestiae modi minus est enim omnis ad. Nostrum maiores alias nihil vel porro repellendus. Excepturi quaerat autem mollitia odit libero quibusdam. Ut aut id in sint quia minus nihil.', 'Dolores dolorem laborum sunt accusamus molestiae recusandae sit. Esse tenetur enim beatae ut aut cumque similique. Adipisci labore asperiores culpa eos eius. Nostrum dolores et illum eligendi. Aperiam impedit ullam voluptas voluptate eum molestias maxime. Perferendis et vero tempore aliquid sit sed ut.', 'https://via.placeholder.com/640x480.png/009966?text=nostrum', 4866, '2022-12-25', '2023-10-27', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(6, 'Veniam ut iusto ut distinctio sequi.', 'suscipit-est-qui-beatae-quas', 6, 3, 'Excepturi qui doloribus magnam nostrum delectus praesentium deserunt. Dolorem fugiat earum perferendis molestiae. Aliquid doloribus quidem voluptatem tempora eos. Blanditiis repellendus velit maxime perspiciatis earum voluptatibus expedita omnis.', 'Corporis culpa repellat minima asperiores eaque facilis. Illum voluptatem est ut soluta temporibus. Enim dolor sunt necessitatibus necessitatibus rerum. Aliquam voluptatibus ut omnis corrupti aperiam. Vitae eveniet voluptatem quia earum.', 'https://via.placeholder.com/640x480.png/009966?text=est', 2583, '2022-12-25', '2023-01-12', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(7, 'Quisquam et qui in sequi ad porro itaque error ad.', 'et-animi-maxime-deleniti-qui-nihil', 3, 3, 'Quod molestiae rerum voluptatem. Maxime iure quam molestias. Et magnam molestias nihil distinctio consequatur. Similique qui ipsam nisi labore possimus.', 'Dolores animi excepturi illum itaque illum laborum qui. Nihil consequuntur saepe animi natus saepe. Consequatur recusandae odit natus quia dolores dolorum. Est voluptatum non ex aut. Ducimus consequatur possimus voluptatibus sapiente fugit velit est. Tempore et beatae minus minima eum molestiae.', 'https://via.placeholder.com/640x480.png/00ccdd?text=quidem', 3802, '2022-12-25', '2023-05-22', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(8, 'Dolor voluptatum cumque aperiam quisquam et impedit rerum neque eius.', 'nesciunt-accusantium-praesentium-enim-eum', 9, 3, 'Sed autem impedit nobis sit accusamus dolores tenetur. Nesciunt illum vel asperiores officia. Ab tempora veritatis aut vel ut incidunt dolorem. Mollitia illum nesciunt ducimus voluptates sunt unde. Id eveniet error doloribus et quis ducimus.', 'Sint ut quaerat explicabo unde dolorum itaque sunt. Doloremque necessitatibus voluptatum nemo quia nihil expedita. Nobis commodi repellat ut eos blanditiis et maiores. Molestiae et eum possimus ipsa.', 'https://via.placeholder.com/640x480.png/006666?text=eius', 6784, '2022-12-25', '2023-02-28', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(9, 'In ut quidem mollitia tenetur exercitationem aut deleniti dolor sed voluptatem.', 'eum-fugit-rerum-excepturi-dolores-in-esse-sint', 11, 3, 'Explicabo est necessitatibus dolore officiis qui saepe. Aut voluptatem quis voluptas quia nihil rem. Quaerat culpa ut ex expedita error.', 'Esse adipisci autem eum alias ratione. Quo repellat voluptates odio dolore laborum quidem sapiente. Ipsam cupiditate aut debitis consequatur. Rerum et autem sed a voluptate fugiat unde ratione.', 'https://via.placeholder.com/640x480.png/004488?text=minus', 1119, '2022-12-25', '2023-03-20', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(10, 'Laborum vel minima nulla delectus non non labore velit quia.', 'eveniet-saepe-laborum-quia', 5, 3, 'Ea possimus et qui nihil possimus. Animi quo dolorem et saepe tempora. Nihil beatae deleniti ipsam veniam et.', 'Non qui excepturi totam perspiciatis aliquid enim. Quia odit autem sunt debitis incidunt sapiente eos eligendi. Iure soluta voluptas dicta qui velit commodi. Eos illo quos consequatur quod. Et reprehenderit quas accusamus ut enim voluptas dicta facere. Quo dicta quae quos iusto nihil nulla deleniti.', 'https://via.placeholder.com/640x480.png/00ee99?text=porro', 8427, '2022-12-24', '2023-01-05', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(11, 'Autem saepe debitis voluptatem culpa ratione est voluptas tempora natus.', 'quo-sunt-recusandae-officia-sed-ut', 14, 3, 'Magni ut dicta est fugit omnis. Nemo soluta dolores laboriosam eum ipsum nostrum omnis rem.', 'Facilis quo in non aut soluta quis. Quasi placeat sed non sunt id. Voluptas voluptatem necessitatibus voluptatem quisquam magni repellendus. Aut qui ratione occaecati tempore similique nesciunt quae voluptatum. Adipisci molestias modi et perspiciatis vel labore et amet.', 'https://via.placeholder.com/640x480.png/0088dd?text=qui', 2861, '2022-12-24', '2023-07-26', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(12, 'Molestiae perspiciatis atque alias cum perspiciatis quia et sunt qui quod.', 'illum-soluta-et-voluptas-nam-qui-quia', 3, 3, 'At recusandae qui voluptas aspernatur nesciunt sint. Incidunt omnis autem dicta quo earum ut sed. Quis suscipit ducimus dolorum et harum omnis. Qui fugiat adipisci facilis voluptate in veritatis.', 'Rerum non culpa aut dolorem et. Molestias error expedita id et inventore non sequi. Tempora qui laudantium distinctio vel. Velit id et tenetur in voluptates magni reiciendis. Aut perspiciatis quibusdam qui nihil.', 'https://via.placeholder.com/640x480.png/006666?text=non', 2096, '2022-12-25', '2023-06-05', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(13, 'Repellendus qui nam est aut magnam.', 'fuga-ut-voluptatem-doloremque-et', 13, 3, 'Quo veniam officia sequi aut. Quod magni est et quis doloribus hic. Suscipit consequuntur sed rerum repellat accusantium ratione ullam.', 'Sit fugiat veritatis placeat placeat veniam recusandae est. Ea molestiae architecto voluptate. Unde modi impedit dignissimos dolores qui. Quod ut aliquam nostrum velit quod adipisci. Soluta eveniet cum quia perspiciatis error maiores. Minima exercitationem omnis eaque commodi vel qui sit.', 'https://via.placeholder.com/640x480.png/00dd66?text=nostrum', 4736, '2022-12-25', '2023-05-27', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(14, 'Ea quod qui a consequuntur aliquam rerum.', 'corporis-officia-quia-sit-voluptatem', 9, 3, 'Est corporis aut voluptatem aut. Ut omnis veniam maxime dolorem. Amet explicabo quia dignissimos error.', 'Non et et nisi autem. Consectetur et asperiores accusantium qui optio reiciendis voluptas harum. Eius enim consequuntur harum et. Id rerum rem saepe corporis illo distinctio qui. Doloribus hic doloribus reiciendis sint itaque. Quaerat aspernatur omnis et voluptas.', 'https://via.placeholder.com/640x480.png/0055aa?text=quo', 3430, '2022-12-25', '2023-08-19', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(15, 'Ea ipsam est praesentium dignissimos sed.', 'repellendus-corporis-expedita-voluptate-eos', 15, 3, 'Corrupti aut odio et ab qui quia. Ducimus quaerat expedita ad enim repudiandae facilis. Soluta nisi cumque nulla a vero voluptas. Voluptas dolores dolor eius expedita saepe reiciendis nemo iusto.', 'Vel est neque et quis quod placeat. Ratione molestiae vitae soluta reiciendis hic magni. At aut saepe eaque provident libero optio recusandae. Molestiae voluptas doloremque porro ad et in doloribus. Reprehenderit aut asperiores sit.', 'https://via.placeholder.com/640x480.png/0088ff?text=perferendis', 8175, '2022-12-25', '2023-03-25', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(16, 'Non quidem maiores rerum porro distinctio ab incidunt amet.', 'ducimus-nemo-non-odio-assumenda', 8, 3, 'Ut ut occaecati eaque debitis. Unde numquam labore est omnis. Temporibus reiciendis ipsam fugit officiis quam officiis. Et commodi tempore quia molestias ratione maxime.', 'Eveniet et dicta pariatur et. Alias et porro non tenetur consequatur alias. Aliquam aliquam est nam vitae. Ut natus aut et et ut. In sed quo sunt dolores tenetur ipsam quam. Est quidem eos aspernatur voluptatum voluptas.', 'https://via.placeholder.com/640x480.png/001133?text=asperiores', 1836, '2022-12-25', '2023-02-12', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(17, 'Quia eos animi excepturi quia voluptas.', 'porro-voluptatem-non-aliquid-magni-autem', 13, 3, 'Aliquid tempore inventore veritatis aperiam vitae qui sit. Enim inventore quas dolores ut ut cumque voluptas omnis. Reprehenderit et ullam mollitia facere asperiores architecto veniam et.', 'Eos beatae accusantium quo qui sint. Ullam debitis ab est labore perspiciatis. Deleniti unde ut aliquid dolorem et. Ut rerum temporibus doloremque ea sed officiis. Aut ipsam dolore rem est natus.', 'https://via.placeholder.com/640x480.png/00aa88?text=harum', 8624, '2022-12-25', '2023-08-08', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(18, 'Rerum similique quo velit cumque ratione ut ut illo.', 'atque-facere-possimus-asperiores-culpa-velit-aut', 11, 3, 'Mollitia quis possimus cum recusandae saepe id. Ducimus minus velit est exercitationem qui. Aut beatae asperiores qui assumenda accusamus. Omnis voluptas quia et.', 'Fugit ut quis et aliquam culpa. Qui culpa unde et voluptas et animi. Excepturi vitae doloremque commodi earum. Eaque cum similique dignissimos aut et quod autem. Distinctio perferendis qui repellendus dolorum repellendus sapiente exercitationem. Cupiditate pariatur libero illum eos maiores. Recusandae tempore ut aspernatur eos porro consequatur est.', 'https://via.placeholder.com/640x480.png/003333?text=eligendi', 8460, '2022-12-24', '2023-08-23', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(19, 'Cum consequatur harum molestias voluptate voluptatem quaerat rerum iste aperiam.', 'laborum-sunt-soluta-modi-est-nulla-tempora', 7, 3, 'Provident rerum aut voluptatibus dolore qui. Suscipit omnis voluptatem quis esse. Qui omnis voluptatibus eum harum dolorem sequi. Et hic voluptatem sapiente sapiente ut amet.', 'Est nisi doloribus quia qui nam. Et ut mollitia natus. Ut neque quam provident mollitia ipsum ut aut. A explicabo nihil asperiores. Reiciendis quo magni qui aliquam ullam. Rerum placeat sint autem voluptatem iusto totam sequi ipsum.', 'https://via.placeholder.com/640x480.png/00aa33?text=sit', 8781, '2022-12-25', '2023-07-03', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38'),
(20, 'Fugit et pariatur dolor quas non fugiat aut expedita doloribus omnis.', 'molestiae-quasi-est-quo-sint-excepturi-sit', 9, 3, 'Itaque qui blanditiis aliquid. Accusantium eos adipisci ea ullam et doloremque et. Aliquam molestias illo fugiat neque sunt voluptatum nesciunt sint.', 'Rerum debitis ab voluptatum aut aliquid fuga. Minus dolores saepe possimus provident. Rem eius sed quidem doloribus numquam suscipit. Unde cumque ut aut quos omnis blanditiis id. Omnis rem sed quia et est fuga. Enim excepturi rerum autem dolor.', 'https://via.placeholder.com/640x480.png/007755?text=repudiandae', 7320, '2022-12-25', '2023-12-08', 1, '2022-12-24 09:45:38', '2022-12-24 09:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `logo`, `facebook_link`, `instagram_link`, `twitter_link`, `linkedin_link`, `short_description`, `created_at`, `updated_at`) VALUES
(1, 'Flex Lab', '85548413.png', NULL, NULL, NULL, NULL, NULL, '2022-12-24 09:45:37', '2022-12-30 19:31:45'),
(2, 'Example Company', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-24 09:45:37', '2022-12-24 09:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(150) NOT NULL,
  `slider_shortdescription` text NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_title`, `slider_shortdescription`, `slider_image`, `slider_status`, `created_at`, `updated_at`) VALUES
(1, 'SCRABBLE is a registered trademark.', 'SCRABBLE is a registered trademark. All intellectual property rights in and to the game are owned in the U.S.A and Canada by Hasbro Inc., and throughout the rest of the world by J.W.', '205741936.jpg', 'active', NULL, '2022-12-24 10:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `orderby` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `user_slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1' COMMENT '1 For Active 0 For Inactive',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_name_unique` (`user_name`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `role_id`, `email`, `email_verified_at`, `password`, `phone_number`, `user_slug`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 1, 'superadmin@mail.com', NULL, '$2y$10$ean7Dsx54zZIEiu.kaVoAuxE5MBp7VmcmhBJYomEiHQJ93D8BH6zC', NULL, '63a71ea0c977b', '1', NULL, NULL, NULL),
(2, 'Seller', 3, 'seller@mail.com', NULL, '$2y$10$JS.D6ELF7.zSe.7hx91NyOHYsp6jRP99IrqjW3MZkls2sbppkoPcm', NULL, '63a71ea0ee00e', '1', NULL, NULL, NULL),
(3, 'Buyer', 4, 'buyer@mail.com', NULL, '$2y$10$RYKZ8PQ.LEWMG36/KEncQujkIbJ1.06ut./58gVNk40PZtn4gpt.6', NULL, '63a71ea1123ce', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `profile_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `github_link` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `present_address` varchar(255) DEFAULT NULL,
  `parmenent_address` varchar(255) DEFAULT NULL,
  `national_id` bigint(20) UNSIGNED DEFAULT NULL,
  `balance` varchar(255) NOT NULL DEFAULT '0',
  `user_skill` varchar(255) DEFAULT NULL,
  `user_position` varchar(255) DEFAULT NULL,
  `online_status` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`profile_id`, `user_id`, `full_name`, `description`, `facebook_link`, `github_link`, `profile_pic`, `present_address`, `parmenent_address`, `national_id`, `balance`, `user_skill`, `user_position`, `online_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, 1, 1, '2022-12-24 09:45:36', '2022-12-24 09:45:36'),
(2, 2, 'Seller', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, 1, 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37'),
(3, 3, 'Buyer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, 1, 1, '2022-12-24 09:45:37', '2022-12-24 09:45:37');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
