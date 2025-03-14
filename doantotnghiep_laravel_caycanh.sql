-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2021 at 06:13 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doantotnghiep_laravel_caycanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'Product', 'Cập nhật product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":1,\"pro_name\":\"CoCa CoLa\",\"pro_slug\":\"coca-cola\",\"pro_price\":\"150000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:35:09\"},\"new\":{\"id\":1,\"pro_name\":\"CoCa CoLa\",\"pro_slug\":\"coca-cola\",\"pro_price\":\"150000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:35:09\"}}', '2020-10-08 07:35:10', '2020-10-08 07:35:10'),
(2, 'Product', 'Cập nhật product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":1,\"pro_name\":\"CoCa CoLa\",\"pro_slug\":\"coca-cola\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:35:21\"},\"new\":{\"id\":1,\"pro_name\":\"CoCa CoLa\",\"pro_slug\":\"coca-cola\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:35:21\"}}', '2020-10-08 07:35:21', '2020-10-08 07:35:21'),
(3, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:37\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:37\"}}', '2020-10-08 07:45:37', '2020-10-08 07:45:37'),
(4, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:46\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:46\"}}', '2020-10-08 07:45:46', '2020-10-08 07:45:46'),
(5, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:56\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:45:56\"}}', '2020-10-08 07:45:56', '2020-10-08 07:45:56'),
(6, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:46:05\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:46:05\"}}', '2020-10-08 07:46:05', '2020-10-08 07:46:05'),
(7, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:46:16\"},\"new\":{\"id\":2,\"pro_name\":\"pepsi\",\"pro_slug\":\"pepsi\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":null,\"pro_view\":0,\"pro_hot\":0,\"pro_active\":1,\"pro_pay\":0,\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2020-10-08 14:46:16\"}}', '2020-10-08 07:46:16', '2020-10-08 07:46:16'),
(8, 'Product', 'Cập nhật product', 3, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":3,\"pro_name\":\"C\\u00e2y Ng\\u0169 Gia B\\u00ec Th\\u1ee7y Sinh\",\"pro_slug\":\"cay-ngu-gia-bi-thuy-sinh\",\"pro_price\":\"32000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-1.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"8\",\"pro_import_goods\":0,\"pro_description\":null,\"pro_content\":\"C\\u1ea3i Canh h\\u1eefu c\\u01a1\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-11-12 18:19:43\",\"pro_number\":8,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:01:31\"},\"new\":{\"id\":3,\"pro_name\":\"C\\u00e2y Ng\\u0169 Gia B\\u00ec Th\\u1ee7y Sinh\",\"pro_slug\":\"cay-ngu-gia-bi-thuy-sinh\",\"pro_price\":\"32000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-1.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"8\",\"pro_import_goods\":0,\"pro_description\":null,\"pro_content\":\"C\\u1ea3i Canh h\\u1eefu c\\u01a1\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-11-12 18:19:43\",\"pro_number\":8,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:01:31\"}}', '2021-02-20 03:01:31', '2021-02-20 03:01:31'),
(9, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-2.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:01:54\"},\"new\":{\"id\":2,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-2.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:01:54\"}}', '2021-02-20 03:01:54', '2021-02-20 03:01:54'),
(10, 'Product', 'Cập nhật product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":1,\"pro_name\":\"C\\u00e2y thu\\u1ef7 t\\u00f9ng\",\"pro_slug\":\"cay-thuy-tung\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-3.jpg\",\"pro_view\":2,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:02:18\"},\"new\":{\"id\":1,\"pro_name\":\"C\\u00e2y thu\\u1ef7 t\\u00f9ng\",\"pro_slug\":\"cay-thuy-tung\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"4\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-3.jpg\",\"pro_view\":2,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:02:18\"}}', '2021-02-20 03:02:18', '2021-02-20 03:02:18'),
(11, 'Product', 'Cập nhật product', 2, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":2,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-2.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:42:09\"},\"new\":{\"id\":2,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":\"15\",\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-2.jpg\",\"pro_view\":0,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"ascd\",\"pro_content\":\"123\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:41:43\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:42:09\"}}', '2021-02-20 03:42:09', '2021-02-20 03:42:09'),
(12, 'Product', 'Cập nhật product', 1, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":1,\"pro_name\":\"C\\u00e2y thu\\u1ef7 t\\u00f9ng\",\"pro_slug\":\"cay-thuy-tung\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-3.jpg\",\"pro_view\":2,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:42:24\"},\"new\":{\"id\":1,\"pro_name\":\"C\\u00e2y thu\\u1ef7 t\\u00f9ng\",\"pro_slug\":\"cay-thuy-tung\",\"pro_price\":\"15000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__cay-canh-3.jpg\",\"pro_view\":2,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"100\",\"pro_import_goods\":0,\"pro_description\":\"coca\",\"pro_content\":\"asasdsa\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2020-10-08 14:34:39\",\"pro_number\":100,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-20 10:42:24\"}}', '2021-02-20 03:42:24', '2021-02-20 03:42:24'),
(13, 'Product', 'Cập nhật product', 5, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":5,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh 1\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh-1\",\"pro_price\":\"120000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__sp-3.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"0\",\"pro_import_goods\":0,\"pro_description\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_content\":\"\\u0110ang c\\u1eadp nh\\u1eadt\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-02-20 10:53:50\",\"pro_number\":0,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-25 00:20:32\"},\"new\":{\"id\":5,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh 1\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh-1\",\"pro_price\":\"120000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__sp-3.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"0\",\"pro_import_goods\":0,\"pro_description\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_content\":\"\\u0110ang c\\u1eadp nh\\u1eadt\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-02-20 10:53:50\",\"pro_number\":0,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-25 00:20:32\"}}', '2021-02-24 17:20:33', '2021-02-24 17:20:33'),
(14, 'Product', 'Cập nhật product', 5, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":5,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh 1\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh-1\",\"pro_price\":\"120000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__sp-3.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"0\",\"pro_import_goods\":0,\"pro_description\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_content\":\"\\u0110ang c\\u1eadp nh\\u1eadt\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-02-20 10:53:50\",\"pro_number\":0,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-25 00:24:34\"},\"new\":{\"id\":5,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh 1\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh-1\",\"pro_price\":\"120000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__sp-3.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"0\",\"pro_import_goods\":0,\"pro_description\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_content\":\"\\u0110ang c\\u1eadp nh\\u1eadt\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-02-20 10:53:50\",\"pro_number\":0,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-25 00:24:34\"}}', '2021-02-24 17:24:34', '2021-02-24 17:24:34'),
(15, 'Product', 'Cập nhật product', 5, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":5,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh 1\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh-1\",\"pro_price\":\"120000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__sp-3.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"0\",\"pro_import_goods\":0,\"pro_description\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_content\":\"\\u0110ang c\\u1eadp nh\\u1eadt\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-02-20 10:53:50\",\"pro_number\":0,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-25 00:24:50\"},\"new\":{\"id\":5,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh 1\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh-1\",\"pro_price\":\"120000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__sp-3.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"0\",\"pro_import_goods\":0,\"pro_description\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_content\":\"\\u0110ang c\\u1eadp nh\\u1eadt\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-02-20 10:53:50\",\"pro_number\":0,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-25 00:24:50\"}}', '2021-02-24 17:24:50', '2021-02-24 17:24:50'),
(16, 'Product', 'Cập nhật product', 5, 'App\\Models\\Product', 1, 'App\\Models\\Admin', '{\"old\":{\"id\":5,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh 1\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh-1\",\"pro_price\":\"120000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__sp-3.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"10\",\"pro_import_goods\":0,\"pro_description\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_content\":\"\\u0110ang c\\u1eadp nh\\u1eadt\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-02-20 10:53:50\",\"pro_number\":0,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-25 00:25:37\"},\"new\":{\"id\":5,\"pro_name\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh 1\",\"pro_slug\":\"cay-trau-ba-de-vuong-xanh-thuy-sinh-1\",\"pro_price\":\"120000\",\"pro_price_entry\":0,\"pro_category_id\":\"3\",\"pro_supplier_id\":0,\"pro_admin_id\":0,\"pro_sale\":0,\"pro_expiration_date\":10,\"pro_avatar\":\"2021-02-20__sp-3.jpg\",\"pro_view\":1,\"pro_hot\":1,\"pro_active\":1,\"pro_pay\":0,\"pro_unit\":\"0\",\"pro_number_import\":\"10\",\"pro_import_goods\":0,\"pro_description\":\"C\\u00e2y Tr\\u1ea7u B\\u00e0 \\u0110\\u1ebf V\\u01b0\\u01a1ng Xanh th\\u1ee7y sinh\",\"pro_content\":\"\\u0110ang c\\u1eadp nh\\u1eadt\",\"pro_review_total\":0,\"pro_review_star\":0,\"pro_age_review\":0,\"created_at\":\"2021-02-20 10:53:50\",\"pro_number\":0,\"pro_resistant\":null,\"pro_energy\":null,\"pro_country\":0,\"updated_at\":\"2021-02-25 00:25:37\"}}', '2021-02-24 17:25:37', '2021-02-24 17:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'doantotnghiep@gmail.com', '$2y$10$cDKKEu7D77Wc3wkd2Dw.puEAaFCF/DaPztdhPzqdrVz6TuAH0WqmC', '0988999999', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT '0',
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_menu_id` int(11) NOT NULL DEFAULT '0',
  `a_view` int(11) NOT NULL DEFAULT '0',
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `a_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Sự thật về độc của cây Kim Tiền', 'su-that-ve-doc-cua-cay-kim-tien', 1, 1, 1, 0, 'Có lẽ rất nhiều người đã nghe hoặc đọc được ở đâu đó cây Kim Tiền có độc, thậm chí là rất độc, nhưng vì tác dụng lọc khí, phong thủy mà nhiều người vẫn bất chấp mua và trưng cây trên bàn làm việc', '2021-02-20__article-1.jpg', 'Theo PGS Trần Hồng Công – Khoa Hóa Học – Trường Đại Học Khoa Học Tự Nhiên thì có rất nhiều cây cảnh có chứa độc và trong số đó có cây Kim Tiền. Trong cuống và lá cây Kim Tiền chứa tinh thể canxi oxalat công thức hóa học CaC2O4 hay Ca(COO)2. Chất này có khả năng lọc khí cực kì tốt. Và nó cũng được tìm thấy trong họ ráy (Araceae) như khoai nước (Colocasia esculenta).', '2021-02-20 03:44:44', 0, 0, '2021-02-20 03:44:48'),
(2, 'Tác dụng và cách làm phân trùn quế', 'tac-dung-va-cach-lam-phan-trun-que', 1, 1, 1, 0, 'Nếu bạn đang tìm hiểu phân trùn quế có tốt và an toàn cho cây trồng hay không? Và khi nào thì ta nên dùng phân trùn quế thì bài viết này là dành cho bạn. Ngoài ra Webcaycanh còn hướng dẫn bạn cách làm phân trùn quế tại nhà, để mình có thể tự cung, tự cấp không cần phải mua.', '2021-02-20__a-2.jpg', '<h2>Ph&acirc;n tr&ugrave;n quế l&agrave; g&igrave;?</h2>\r\n\r\n<p>Ph&acirc;n tr&ugrave;n quế hay c&ograve;n gọi l&agrave; ph&acirc;n tr&ugrave;n đỏ, giun quế l&agrave; chất thải thu hoạch được sau khi con tr&ugrave;n quế ăn chất hữu cơ như ph&acirc;n b&ograve;, ph&acirc;n heo, ph&acirc;n g&agrave; vịt, c&aacute;c r&aacute;c thải hữu cơ&hellip; C&aacute;c chất hữu cơ n&agrave;y được xử l&yacute; th&ocirc;ng qua hệ thống ti&ecirc;u h&oacute;a của tr&ugrave;n quế v&agrave; tạo th&agrave;nh ph&acirc;n tr&ugrave;n quế.</p>\r\n\r\n<h2>Ph&acirc;n tr&ugrave;n quế c&oacute; tốt v&agrave; an to&agrave;n cho c&acirc;y trồng?</h2>\r\n\r\n<p>C&acirc;u trả lời: C&oacute;.</p>\r\n\r\n<p><strong><a href=\"https://webcaycanh.com/tac-dung-va-cach-lam-phan-trun-que/\">Ph&acirc;n tr&ugrave;n quế</a></strong>&nbsp;rất tốt cho c&acirc;y trồng v&agrave; an to&agrave;n, ph&acirc;n ph&ugrave; hợp với tất cả loại c&acirc;y v&agrave; c&oacute; thể sử dụng lu&ocirc;n kh&ocirc;ng cần phải xử l&yacute; th&ecirc;m.</p>\r\n\r\n<ul>\r\n	<li>L&agrave; loại ph&acirc;n hữu cơ 100%, gi&agrave;u dinh dưỡng rất tốt cho c&acirc;y trồng. Sản phẩm của c&acirc;y trồng tạo ra ho&agrave;n to&agrave;n sạch v&agrave; kh&ocirc;ng sợ g&acirc;y ngộ độc thực phẩm.</li>\r\n	<li>Ph&acirc;n tr&ugrave;n quế sau khi thu hoạch c&oacute; thể sử dụng ngay m&agrave; kh&ocirc;ng cần xử l&yacute; g&igrave; th&ecirc;m. Kh&ocirc;ng cần ủ hoai mục như ph&acirc;n chuồng.</li>\r\n	<li>Ph&acirc;n tr&ugrave;n quế kh&ocirc;ng c&oacute; m&ugrave;i h&ocirc;i kh&oacute; chịu như c&aacute;c loại ph&acirc;n kh&aacute;c do đường ruột tr&ugrave;n quế đ&atilde; xử l&yacute;.</li>\r\n	<li>Ph&acirc;n tr&ugrave;n quế c&oacute; chứa chất m&ugrave;n xử l&yacute; được c&aacute;c loại nấm hại, độc tố c&oacute; trong đất, gi&uacute;p bảo vệ bộ rễ của c&acirc;y trồng.</li>\r\n	<li>Ph&acirc;n c&oacute; độ pH trung t&iacute;nh v&agrave; hợp chất acid humic n&ecirc;n ph&acirc;n tr&ugrave;n quế c&oacute; khả năng trung h&ograve;a pH, ổn định lại pH, tr&aacute;nh được việc mất c&acirc;n bằng pH trong đất trong qu&aacute; tr&igrave;nh sử dụng c&aacute;c loại ph&acirc;n b&oacute;n h&oacute;a học kh&ocirc;ng đ&uacute;ng c&aacute;ch l&agrave;m cho đất bị chua, năng suất c&acirc;y trồng giảm.</li>\r\n	<li>Ph&acirc;n tr&ugrave;n quế&nbsp;tăng khả năng giữ nước của đất v&igrave; ph&acirc;n tr&ugrave;n quế c&oacute; dạng h&igrave;nh khối, đ&oacute;&nbsp;l&agrave; những cụm kho&aacute;ng chất kết hợp theo c&aacute;ch m&agrave; ch&uacute;ng c&oacute; thể để chống sự x&oacute;i m&ograve;n v&agrave; sự va chạm cũng như khả năng&nbsp;giữ&nbsp;nước, g&oacute;p phần l&agrave;m cho đất tơi xốp v&agrave; giữ ẩm được l&acirc;u.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://webcaycanh.com/wp-content/uploads/2020/12/Phan-trun-que-tot-cho-cay-400x300.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><em>Ph&acirc;n tr&ugrave;n quế tốt cho c&acirc;y trồng</em></p>\r\n\r\n<h2>T&aacute;c dụng của ph&acirc;n tr&ugrave;n quế</h2>\r\n\r\n<p>Ph&acirc;n tr&ugrave;n quế c&oacute; rất nhiều t&aacute;c dụng v&agrave; d&ugrave;ng để b&oacute;n th&ecirc;m cho c&acirc;y khi đất bắt đầu c&oacute; hiện thiếu dinh dưỡng.</p>\r\n\r\n<h3>Tăng qu&aacute; tr&igrave;nh hấp thu chất dinh dưỡng cho c&acirc;y</h3>\r\n\r\n<p>Ph&acirc;n tr&ugrave;n quế l&agrave; ph&acirc;n hữu cơ 100%, gi&agrave;u chất dinh dưỡng, tốt cho sự ph&aacute;t triển của nhiều loại c&acirc;y. N&oacute; c&oacute; m&agrave;u n&acirc;u sẫm, dạng m&ugrave;n, c&oacute; lẫn trứng v&agrave; ấu tr&ugrave;ng tr&ugrave;n quế, tạo ra một loại ph&acirc;n gi&agrave;u chất dinh dưỡng, c&oacute; thể h&ograve;a tan trong nước.</p>\r\n\r\n<p><em>Ph&acirc;n tr&ugrave;n quế</em>&nbsp;cung cấp c&aacute;c chất kho&aacute;ng cần thiết cho c&acirc;y trồng như đạm, l&acirc;n, kali, canxi, magie, mangan, đồng, kẽm, coban, borat, sắt.. Sự hữu dụng nhất l&agrave; c&aacute;c chất n&agrave;y đều ở dạng m&agrave; c&acirc;y hấp thu được ngay, kh&ocirc;ng như những ph&acirc;n hữu cơ kh&aacute;c phải được ph&acirc;n hủy trong đất trước khi c&acirc;y trồng hấp thụ.</p>\r\n\r\n<h3>Tăng khả năng miễn dịch cho c&acirc;y trồng</h3>\r\n\r\n<p>Ph&acirc;n tr&ugrave;n quế c&oacute; khả năng ức chế v&agrave; loại trừ c&aacute;c độc tố, nấm hại v&agrave; vi khuẩn c&oacute; hại trong đất. Sử dụng loại ph&acirc;n n&agrave;y gi&uacute;p c&acirc;y trồng chống lại được c&aacute;c vấn đề s&acirc;u bệnh hay nấm mốc, c&acirc;y c&oacute; thể ph&aacute;t triển tốt kể cả trong m&ugrave;a dịch bệnh hay điều kiện thời tiết thất thường.</p>\r\n\r\n<h3>Chứa nhiều hệ vi sinh tốt cho c&acirc;y trồng</h3>\r\n\r\n<p>Ph&acirc;n tr&ugrave;n quế chứa nhiều hệ vi sinh c&oacute; lợi cho c&acirc;y trồng với hoạt t&iacute;nh cao như hệ vi khuẩn cố định đạm tự do (Azotobacter) hay vi khuẩn ph&acirc;n giải cellulose, vi khuẩn ph&acirc;n giải l&acirc;n, chất x&uacute;c t&aacute;c sinh học&hellip; Bởi vậy, c&acirc;y trồng được b&oacute;n ph&acirc;n n&agrave;y sẽ tận dụng được tối ưu nhất nguồn dinh dưỡng vốn c&oacute; trong đất.</p>\r\n\r\n<h3>Độ pH trung t&iacute;nh</h3>\r\n\r\n<p>Ph&acirc;n tr&ugrave;n quế c&oacute; nồng độ pH = 7 n&ecirc;n n&oacute; tạo cho v&ugrave;ng rễ c&acirc;y được hoạt động trong m&ocirc;i trường trung t&iacute;nh, gi&uacute;p tăng khả năng hấp thu chất dinh dưỡng của c&acirc;y.</p>\r\n\r\n<h3>L&agrave;m cho đất tơi xốp v&agrave; giữ ẩm</h3>\r\n\r\n<p>Nhờ c&oacute; cấu tạo dạng vi&ecirc;n tr&ograve;n được bao quanh bởi một lớp keo hữu dụng, ph&acirc;n tr&ugrave;n quế khi b&oacute;n v&agrave;o đất sẽ l&agrave;m tăng khả năng giữ nước v&agrave; dinh dưỡng, l&agrave;m cho đất tơi xốp, kh&ocirc;ng bị x&oacute;i m&ograve;n v&agrave; giữ ẩm l&acirc;u hơn.</p>\r\n\r\n<h3>Cố định được kim loại nặng</h3>\r\n\r\n<p>Ph&acirc;n tr&ugrave;n quế c&oacute; khả năng cố định c&aacute;c kim loại nặng trong chất thải hữu cơ. Điều n&agrave;y ngăn ngừa c&acirc;y trồng hấp thu nhiều phức hợp kho&aacute;ng hơn nhu cầu của ch&uacute;ng.</p>\r\n\r\n<h3>Điều h&ograve;a sinh trưởng một c&aacute;ch tự nhi&ecirc;n</h3>\r\n\r\n<p>Trong ph&acirc;n tr&ugrave;n quế c&oacute; chứa&nbsp;Acid Humid&nbsp;ở trạng th&aacute;i dễ hấp thụ nhất, gi&uacute;p k&iacute;ch th&iacute;ch sự ph&aacute;t triển của c&acirc;y trồng cũng như vi sinh vật c&oacute; lợi trong đất. B&ecirc;n cạnh đ&oacute;, ph&acirc;n tr&ugrave;n quế nutri l&agrave;m giảm h&agrave;m lượng Acid Cacbon c&oacute; trong đất v&agrave; l&agrave;m tăng nồng độ Nitơ để c&acirc;y hấp thụ dễ d&agrave;ng v&agrave; hiệu quả.</p>\r\n\r\n<h2>C&aacute;ch tự l&agrave;m ph&acirc;n tr&ugrave;n quế tại nh&agrave;</h2>\r\n\r\n<p>Để sản xuất ra một kg&nbsp;<strong>ph&acirc;n tr&ugrave;n quế</strong>&nbsp;kh&ocirc;ng hề đơn giản. Để ra được th&agrave;nh phẩm chất lượng phải trải qua rất nhiều c&ocirc;ng đoạn v&agrave; đ&ograve;i hỏi thời gian d&agrave;i. Ch&iacute;nh v&igrave; vậy, gi&aacute; th&agrave;nh ph&acirc;n tr&ugrave;n quế kh&ocirc;ng hề rẻ.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://webcaycanh.com/wp-content/uploads/2020/12/cach-lam-phan-trun-que-400x267.jpg\" style=\"height:267px; width:400px\" /></p>\r\n\r\n<p><em>Tự l&agrave;m ph&acirc;n tr&ugrave;n quế</em></p>\r\n\r\n<p>Tuy nhi&ecirc;n, bạn vẫn c&oacute; thể tự m&igrave;nh l&agrave;m ra loại ph&acirc;n n&agrave;y. Vừa tận dụng được r&aacute;c hữu cơ của gia đ&igrave;nh vừa gi&uacute;p tiết kiệm chi ph&iacute;.</p>\r\n\r\n<h3>Những thứ cần chuẩn bị</h3>\r\n\r\n<ul>\r\n	<li>D&ugrave;ng th&ugrave;ng xốp hoặc c&aacute;c th&ugrave;ng nhựa c&oacute; nắp đậy để đề ph&ograve;ng mưa gi&oacute;, chuột, ch&oacute;, m&egrave;o,&hellip; ph&aacute; hoại.</li>\r\n	<li>Đất ẩm.</li>\r\n	<li>Rau r&aacute;c hữu cơ gồm: nước gạo + vỏ gi&aacute; đỗ + b&atilde; đậu khi l&agrave;m sữa đậu n&agrave;nh + cơm canh thừa, c&aacute;c th&acirc;n rau như rau muống, mồng tơi, vỏ tr&aacute;i c&acirc;y như chuối, dưa hấu,&hellip;</li>\r\n	<li>Th&agrave;nh phần c&oacute; chứa cacbon: bạn c&oacute; thể lấy từ cơm, ch&aacute;o, đường, giấy b&aacute;o, l&aacute; kh&ocirc;, b&igrave;a c&aacute;t t&ocirc;ng,&hellip; Ri&ecirc;ng b&igrave;a c&aacute;t t&ocirc;ng n&ecirc;n ng&acirc;m nước, x&eacute; nhỏ cho dễ trộn.</li>\r\n	<li>Kh&ocirc;ng thể thiếu đ&oacute; l&agrave; con tr&ugrave;n, bạn c&oacute; thể mua con giống tr&ugrave;n ở c&aacute;c trại nu&ocirc;i tr&ugrave;n quế hoặc ở c&aacute;c cửa h&agrave;ng b&aacute;n đồ c&acirc;u c&aacute;.</li>\r\n</ul>\r\n\r\n<h3>C&aacute;ch l&agrave;m ph&acirc;n tr&ugrave;n quế</h3>\r\n\r\n<p>Cứ một lớp đất, cho 1 lớp r&aacute;c hữu cơ. Nếu c&oacute; ph&acirc;n tr&ugrave;n, th&igrave; n&ecirc;n cho v&agrave;o một &iacute;t v&igrave; thường trong ph&acirc;n tr&ugrave;n sẽ c&oacute; nhiều trứng tr&ugrave;n. Cho v&agrave;o th&ecirc;m c&aacute;c th&agrave;nh phần c&oacute; chứa cacbon. Sau đ&oacute; cho tr&ugrave;n v&agrave;o. Cuối c&ugrave;ng đậy nắp th&ugrave;ng xốp lại.&nbsp;</p>\r\n\r\n<p>&nbsp;Ph&acirc;n b&ograve; l&agrave; thức ăn rất tốt cho tr&ugrave;n, nếu c&oacute; ph&acirc;n b&ograve; th&igrave; nhớ đổ v&agrave;o. N&ecirc;n d&ugrave;ng ph&acirc;n b&ograve; tươi, h&ograve;a tan với nước rồi đổ v&agrave;o cho tr&ugrave;n ăn, để nguy&ecirc;n ph&acirc;n tươi c&oacute; thể sẽ ảnh hưởng trực tiếp đến th&agrave;nh quả đang ủ. Kh&ocirc;ng d&ugrave;ng ph&acirc;n b&ograve; đ&atilde; qua xử l&yacute; nh&eacute;.</p>\r\n\r\n<p>Lưu &yacute;: Tr&ugrave;n sống trong m&ocirc;i trường ẩm ướt. V&igrave; vậy, hỗn hợp tạo ph&acirc;n tr&ugrave;n phải lu&ocirc;n giữ ẩm, nếu kh&ocirc; th&igrave; c&oacute; thể khiến tr&ugrave;n bị chết. Lu&ocirc;n giữ ẩm cho hộp ph&acirc;n tr&ugrave;n sẽ gi&uacute;p tr&ugrave;n sinh s&ocirc;i nhanh.</p>\r\n\r\n<p>Sau một th&aacute;ng ủ quan s&aacute;t thấy ph&acirc;n tr&ugrave;n c&oacute; m&agrave;u n&acirc;u, tơi xốp kh&ocirc;ng c&oacute; m&ugrave;i v&agrave; c&oacute; nhiều tr&ugrave;n con l&agrave; đ&atilde; c&oacute; thể đem b&oacute;n cho rau sạch được rồi.</p>\r\n\r\n<h2>C&aacute;ch sử dụng ph&acirc;n tr&ugrave;n quế</h2>\r\n\r\n<h3>Liều lượng sử dụng</h3>\r\n\r\n<p>C&acirc;y cảnh: Trộn theo tỷ lệ 3/5 (3 phần ph&acirc;n tr&ugrave;n v&agrave; 5 phần c&ograve;n lại (đất, xơ dừa, tro trấu&hellip;) hoặc t&ugrave;y v&agrave;o nhu cầu của c&acirc;y</p>\r\n\r\n<p>Trồng rau tại nh&agrave;: Trộn tỷ lệ 1/1 (1 phần ph&acirc;n tr&ugrave;n v&agrave; 1 phần c&ograve;n lại (đất, xơ dừa, tro trấu.. ), kh&ocirc;ng cần b&oacute;n th&ecirc;m bất cứ loại ph&acirc;n n&agrave;o kh&aacute;c, c&oacute; thể sử dụng nhiều lần.</p>\r\n\r\n<p>Trồng rau mầm: chỉ cần 1kg ph&acirc;n tr&ugrave;n cho v&agrave;o khay nhựa 30cm x 45cm v&agrave; 30g hạt giống sau 5 ng&agrave;y ch&uacute;ng ta sẽ c&oacute; 600gr rau mầm.</p>\r\n\r\n<p>Trồng đại tr&agrave;: B&oacute;n l&oacute;t 250-300kg/1000m2&nbsp;</p>\r\n\r\n<p>C&acirc;y ăn quả: B&oacute;n 0,5-1kg/c&acirc;y, 1 &ndash; 2lần/năm, t&ugrave;y v&agrave;o tuổi của c&acirc;y</p>\r\n\r\n<p>C&acirc;y ti&ecirc;u: B&oacute;n 1-2kg/nọc ti&ecirc;u, 1-2 lần/năm</p>\r\n\r\n<h3>C&aacute;ch sử dụng ph&acirc;n tr&ugrave;n quế theo từng mục đ&iacute;ch</h3>\r\n\r\n<p>Ph&acirc;n tr&ugrave;n c&oacute; thể được sử dụng như th&agrave;nh phần của đất ươm, vườn ươm hay l&agrave; ph&acirc;n b&oacute;n hữu cơ cung cấp dinh dưỡng cho c&acirc;y trồng v&agrave; cải tạo đất.&nbsp;</p>\r\n\r\n<p>L&agrave;m ph&acirc;n b&oacute;n lỏng: Lấy 1kg ph&acirc;n tr&ugrave;n cho v&agrave;o th&ugrave;ng nhựa c&ugrave;ng với 10 l&iacute;t nước, d&ugrave;ng m&aacute;y bơm oxy (loại nhỏ d&ugrave;ng sục kh&iacute; cho hồ c&aacute;) sục 24 &ndash; 36h, sau đ&oacute; lấy nước cho v&agrave;o b&igrave;nh xịt, xịt cho tất cả c&aacute;c loại c&acirc;y, c&oacute; t&aacute;c dụng như loại ph&acirc;n b&oacute;n l&aacute; rất tốt, ngo&agrave;i ra c&ograve;n c&oacute; t&aacute;c dụng ngăn ngừa s&acirc;u bệnh, c&ograve;n phần b&atilde; b&oacute;n cho c&acirc;y b&igrave;nh thường.</p>\r\n\r\n<p>Cho sự nảy mầm: D&ugrave;ng 20-30%&nbsp;<strong>ph&acirc;n tr&ugrave;n quế</strong>&nbsp;trộn với đất, đảm bảo cho c&acirc;y ph&aacute;t triển trong 3 th&aacute;ng m&agrave; kh&ocirc;ng cần bất cứ thức ăn n&agrave;o kh&aacute;c. C&oacute; khả năng l&agrave;m tăng tỷ lệ nảy mầm của hạt, gi&uacute;p c&acirc;y con ph&aacute;t triển nhanh v&agrave; c&oacute; tỷ lệ sống cao.</p>\r\n\r\n<p>Như l&agrave; chất điều h&ograve;a chất: Nếu bạn bỏ ph&acirc;n tr&ugrave;n v&agrave; tưới nước thường xuy&ecirc;n v&agrave;o một v&ugrave;ng đất cằn cỗi đ&atilde; được cuốc l&ecirc;n, th&igrave; lớp đất n&agrave;y sẽ cải tạo đ&aacute;ng kể (3000 &ndash; 3500kg/ha).</p>\r\n\r\n<p>Như l&agrave; ph&acirc;n b&oacute;n: Bỏ ph&acirc;n tr&ugrave;n trực tiếp quanh gốc c&acirc;y (kh&ocirc;ng g&acirc;y hư hại c&acirc;y nếu d&ugrave;ng nhiều) b&oacute;n l&oacute;t cho c&acirc;y, rau, quả c&aacute;c loại sẽ tạo ra một loại thực phẩm c&oacute; năng suất v&agrave; chất lượng cao.</p>\r\n\r\n<p>Như l&agrave; nh&agrave; cải tạo đất: V&igrave; ph&acirc;n tr&ugrave;n chứa đựng h&agrave;ng ng&agrave;n k&eacute;n tr&ugrave;n, n&ecirc;n khi ta b&oacute;n v&agrave;o đất, gặp điều kiện thuận lợi, k&eacute;n tr&ugrave;n sẽ nở ra v&agrave; sinh sống tr&ecirc;n ch&iacute;nh mảnh đất canh t&aacute;c của ch&uacute;ng ta v&agrave; nơi n&agrave;o c&oacute; tr&ugrave;n sinh sống th&igrave; nơi đ&oacute; đất lu&ocirc;n m&agrave;u mỡ v&agrave; tơi xốp.</p>\r\n\r\n<h2>Lưu &yacute;</h2>\r\n\r\n<p>&nbsp;Để ph&aacute;t huy tốt nhất t&aacute;c dụng của ph&acirc;n, bạn n&ecirc;n thực hiện th&ecirc;m 2 việc.</p>\r\n\r\n<ul>\r\n	<li>Thứ nhất, bổ sung th&ecirc;m nấm đối kh&aacute;ng tricodecma để tăng khả năng đối kh&aacute;ng mầm bệnh cho c&acirc;y trồng l&ecirc;n gấp bội, ph&acirc;n tr&ugrave;n quế kh&ocirc;ng c&oacute; được chủng n&agrave;y n&ecirc;n ch&uacute;ng ta cần phải bổ sung th&ecirc;m v&agrave;o ngay khi b&oacute;n.&nbsp;</li>\r\n	<li>Thứ hai, sau mỗi 10-15 ng&agrave;y cần bổ sung th&ecirc;m chế phẩm sinh học hoặc dịch tr&ugrave;n quế, v&igrave; bản th&acirc;n dịch tr&ugrave;n quế sẽ c&oacute; những vi sinh vật c&oacute; lợi m&agrave; ph&acirc;n tr&ugrave;n quế sở hữu.&nbsp;</li>\r\n</ul>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; to&agrave;n bộ th&ocirc;ng tin hữu &iacute;ch về&nbsp;<strong>ph&acirc;n tr&ugrave;n quế</strong>&nbsp;m&agrave; webcaycanh.com muốn cung cấp đến cho c&aacute;c bạn. Hy vọng với những kiến thức c&oacute; được, c&aacute;c bạn sẽ c&oacute; một m&ugrave;a vụ c&acirc;y trồng th&agrave;nh c&ocirc;ng hoặc sẽ c&oacute; một vườn c&acirc;y cảnh thật đẹp nh&eacute;</p>', '2021-02-20 03:48:46', 0, 0, '2021-02-20 03:49:59'),
(3, 'Cách chăm sóc cây Hương Thảo', 'cach-cham-soc-cay-huong-thao', 1, 1, 1, 0, 'Cây Hương Thảo là một loại cây gia vị rất là thơm, nếu ai đã từng thấy hoặc mua thì chắc hẳn sẽ bị cây hấp dẫn bởi mùi hương. Tuy nhiên cũng có rất nhiều người phải bỏ cuộc vì chăm nhiều lần mà không thành công. Vậy để có thể chăm sóc cây Hương Thảo tốt thì bạn hãy theo dõi bài viết dưới đây.', '2021-02-20__a-3.jpg', '<h3>Vị tr&iacute; đặt c&acirc;y</h3>\r\n\r\n<p>C&oacute; thể n&oacute;i sau khi đ&atilde; chọn được&nbsp;<a href=\"https://webcaycanh.com/cay-huong-thao/\" rel=\"noreferrer noopener\" target=\"_blank\">c&acirc;y Hương Thảo</a>&nbsp;tốt th&igrave; gần như yếu tốt quan trọng để c&acirc;y c&oacute; thể sống v&agrave; ph&aacute;t triển đ&oacute; ch&iacute;nh l&agrave; vị tr&iacute; đặt c&acirc;y.</p>\r\n\r\n<ul>\r\n	<li>Đặt c&acirc;y nơi tho&aacute;ng gi&oacute;, c&oacute; m&aacute;i che mưa, hoặc khi mưa to, l&acirc;u th&igrave; phải b&ecirc; v&agrave;o trong</li>\r\n	<li>C&oacute; &aacute;nh nắng &iacute;t 4h/ng&agrave;y tr&aacute;nh &aacute;nh nắng gắt buổi trưa, m&ugrave;a đ&ocirc;ng ở miền Bắc th&igrave; c&oacute; thể đặt c&acirc;y ở ngo&agrave;i trời.</li>\r\n</ul>\r\n\r\n<p>Từ những đặc điểm tr&ecirc;n th&igrave; ta c&oacute; thể thấy l&agrave; c&acirc;y Hương Thảo kh&ocirc;ng thể trồng để b&agrave;n l&agrave;m việc, văn ph&ograve;ng. Nếu muốn để trong nh&agrave; th&igrave; chỉ c&oacute; thể l&agrave; b&ecirc; v&agrave;o 1 l&aacute;t cho ph&ograve;ng thơm rồi lại b&ecirc;n ra ngo&agrave;i. Nơi đặt ph&ugrave; hợp nhất l&agrave; ban c&ocirc;ng, cửa sổ, h&agrave;nh lang&hellip;</p>\r\n\r\n<h3>Đất trồng</h3>\r\n\r\n<p><img alt=\"\" src=\"https://webcaycanh.com/wp-content/uploads/2020/12/dat-trong-cay-huong-thao.jpg\" style=\"height:300px; width:400px\" /></p>\r\n\r\n<p><em>Đất trồng c&acirc;y Hương Thảo</em></p>\r\n\r\n<p>C&acirc;y Hương Thảo thuộc loại rễ ch&ugrave;m, rễ mỏng v&agrave; b&eacute; nhưng ph&aacute;t triển nhanh. Do vậy đất trồng c&acirc;y phải l&agrave; loại tơi xốp, c&oacute; độ th&ocirc;ng tho&aacute;ng, m&ugrave;n cao để c&acirc;y dễ ph&aacute;t triển v&agrave; đủ chất dinh dưỡng, n&ecirc;n b&oacute;n th&ecirc;m ph&acirc;n tan chậm, hoặc bổ sung th&ecirc;m dinh dưỡng cho c&acirc;y khi đ&atilde; trồng l&acirc;u.</p>\r\n\r\n<h3>Nước</h3>\r\n\r\n<p>Cần giữ đất ẩm cho đất nhưng kh&ocirc;ng ướt, nghĩa l&agrave; lượng nước tưới vừa đủ để ẩm đất hoặc chậu c&acirc;y phải c&oacute; lỗ tho&aacute;t nước, hay được k&ecirc; l&ecirc;n cao để c&acirc;y dễ d&agrave;ng tho&aacute;t nước dư nhanh.</p>', '2021-02-20 03:49:45', 0, 0, '2021-02-20 03:49:58'),
(4, 'Cách chăm sóc sen đá và xương rồng', 'cach-cham-soc-sen-da-va-xuong-rong', 1, 1, 1, 0, 'Người thích trồng cây là những người có tâm hướng thiện, một trong những câu nói mà tôi khá tâm đắc và cũng thấy nó tương đối là chính xác. Lựa chọn cho mình một hoặc nhiều cây xanh để bàn', '2021-02-20__a-4.jpg', '<h2>C&aacute;ch chăm s&oacute;c sen đ&aacute;</h2>\r\n\r\n<p>Điều th&uacute; vị v&agrave; cũng l&agrave; điều kh&oacute; khăn ch&iacute;nh l&agrave; duy tr&igrave; sự sống cho&nbsp;<em><strong><a href=\"https://webcaycanh.com/cay-canh-sen-da/\">Sen Đ&aacute;</a></strong></em>. Nếu bạn l&agrave; người mua c&acirc;y th&igrave; c&oacute; 2 yếu tố m&agrave; bạn sẽ t&aacute;c động đến c&acirc;y l&agrave;m ảnh hướng lớn đến sự sống c&ograve;n của sen đ&aacute; ch&iacute;nh l&agrave; nước v&agrave; &aacute;nh s&aacute;ng.</p>\r\n\r\n<p><a href=\"https://webcaycanh.com/wp-content/uploads/2015/11/tuoi-nuoc-cho-sen-da-2.jpg\"><img alt=\"tuoi-nuoc-cho-sen-da\" src=\"https://webcaycanh.com/wp-content/uploads/2015/11/tuoi-nuoc-cho-sen-da-2-400x400.jpg\" style=\"height:400px; width:400px\" /></a></p>\r\n\r\n<p>Tưới nước cho tiểu cảnh sen đ&aacute; để trong 40s</p>\r\n\r\n<h3><strong>Nước:</strong></h3>\r\n\r\n<p>Sen đ&aacute; c&oacute; nguồn gốc từ Mexico một trong những đất nước nắng n&oacute;ng v&agrave; kh&ocirc; hạn, do vậy những lo&agrave;i c&acirc;y c&oacute; thể sống tốt ở đ&acirc;y ch&iacute;nh l&agrave; những loại c&oacute; thể trữ nước ở l&aacute; v&agrave; th&acirc;n, v&agrave; sen đ&aacute; l&agrave; một trong những loại như vậy. Nước kh&ocirc;ng qu&aacute; cần thiết đối với sen đ&aacute; nhưng&nbsp;vẫn phải đủ để n&oacute; c&oacute; thể duy tr&igrave; sự sống v&agrave; ph&aacute;t triển, tuy nhi&ecirc;n nếu sen đ&aacute; bị sống trong một trường ẩm từ 4 -5 ng&agrave;y&nbsp;<a href=\"https://webcaycanh.com/cach-khac-phuc-khi-sen-da-bi-thoi-nhun/\">sen đ&aacute;&nbsp;sẽ bị&nbsp;thối nhũn</a>&nbsp;dần từ gốc v&agrave; bắt đầu rụng hết l&aacute;.</p>\r\n\r\n<h4><strong>C&aacute;ch tưới nước:</strong></h4>\r\n\r\n<p>Điều chỉnh lượng nước lu&ocirc;n l&agrave; một vấn đề kh&ocirc;ng dễ d&agrave;ng với sen đ&aacute;. Đối với kh&ocirc;ng kh&iacute; kh&ocirc;, thời tiết n&oacute;ng v&agrave;o m&ugrave;a h&egrave; th&igrave; c&oacute; thể 1 tuần/2 lần, c&ograve;n thời tiết lạnh, ẩm, m&ugrave;a đ&ocirc;ng 2 tuần/lần. C&ograve;n thường th&igrave; sẽ l&agrave; 1 tuần chỉ cần tưới nước một lần. C&aacute;ch tưới tốt nhất l&agrave; tưới theo kiểu&nbsp;<strong>ngấm ngược</strong>. Ở mỗi chậu c&acirc;y sẽ c&oacute; một lỗ tho&aacute;t nước, nhưng n&oacute; c&ograve;n c&oacute; t&aacute;c dụng l&agrave; ngấm nước. Bạn c&oacute; thể đặt c&acirc;y v&agrave;o trong khay, bồn nước c&oacute; mực nước bằng 1/3 chiều cao chậu, sau đ&oacute; để khoảng 30s với chậu nhỏ v&agrave; 40s đối với chậy lớn th&igrave; nhấc ra. 1 tuần bạn chỉ cần l&agrave;m như vậy một lần.</p>\r\n\r\n<p><a href=\"https://webcaycanh.com/wp-content/uploads/2015/11/tuoi-nuoc-cho-sen-da-1-1.jpg\"><img alt=\"tuoi-nuoc-cho-sen-da-1\" src=\"https://webcaycanh.com/wp-content/uploads/2015/11/tuoi-nuoc-cho-sen-da-1-1-400x300.jpg\" style=\"height:300px; width:400px\" /></a></p>\r\n\r\n<p>Tưới nước cho sen đ&aacute; chậu nhỏ 30s</p>\r\n\r\n<p>V&igrave; sao n&oacute; được coi l&agrave; c&aacute;ch tối ưu nhất đối với sen đ&aacute;, sen đ&aacute; l&agrave; loại thường c&oacute; nhiều l&aacute; hoặc tr&ecirc;n l&aacute; c&oacute; phấn, nếu bạn tưới trực tiếp l&ecirc;n c&acirc;y th&igrave; c&oacute; thể nước sẽ bị đọng ở tr&ecirc;n l&aacute; kh&ocirc;ng tho&aacute;t ra được dẫn đến th&igrave; trạng l&aacute; bị thối, ngo&agrave;i ra nếu bạn dội nước mạnh những lo&agrave;i c&acirc;y c&oacute; phấn sẽ bị mất đi lớp phấn ở ngo&agrave;i l&aacute; khiến n&oacute; kh&ocirc;ng c&ograve;n đẹp. Nếu điều kiện kh&ocirc;ng cho ph&eacute;p hoặc bạn kh&ocirc;ng thể tưới theo kiểu đ&oacute; th&igrave; h&atilde;y cố gắng tưới nước c&agrave;ng gần m&eacute;p chậu c&agrave;ng tốt.</p>\r\n\r\n<p>C&ograve;n một trong những c&aacute;ch nữa m&agrave; d&agrave;nh cho người đ&atilde; trồng l&acirc;u lắm, đ&oacute; l&agrave; nh&igrave;n l&aacute; m&agrave; tưới nước, xương rồng sen đ&aacute; rất &iacute;t khi chết v&igrave; thiếu nước, c&oacute; những loại bạn để cả th&aacute;ng kh&ocirc;ng cần tưới cũng kh&ocirc;ng sao, khi l&aacute; đủ nước sẽ cứng v&agrave; căng mọng, khi thiếu nước n&oacute; sẽ nhăn nheo v&agrave; mềm bạn c&oacute; thể &nbsp;dựa v&agrave; đặc t&iacute;nh đ&oacute; để tưới cho c&acirc;y. Tối đa cũng chỉ 2 lần tr&ecirc;n tuần.</p>\r\n\r\n<h3>&Aacute;nh s&aacute;ng:</h3>\r\n\r\n<p>&Aacute;nh s&aacute;ng l&agrave; phần cần thiết nhất đối với lo&agrave;i sen đ&aacute;. N&ecirc;n bạn h&atilde;y để n&oacute; &nbsp;ở nơi c&oacute; nhiều &aacute;nh nắng, nhất l&agrave; &aacute;nh s&aacute;ng buổi sớm v&agrave; chiều tối, &aacute;nh s&aacute;ng tốt nhất l&agrave; bạn để c&acirc;y ngo&agrave;i trời c&oacute; m&aacute;i,&nbsp;lưới che đi khoảng 30%.</p>\r\n\r\n<p><a href=\"https://webcaycanh.com/wp-content/uploads/2015/11/tam-nang-cho-sen-da-1.jpg\"><img alt=\"tam-nang-cho-sen-da\" src=\"https://webcaycanh.com/wp-content/uploads/2015/11/tam-nang-cho-sen-da-1-400x400.jpg\" style=\"height:400px; width:400px\" /></a></p>\r\n\r\n<p>Tắm nắng cho sen đ&aacute;</p>\r\n\r\n<p>Nếu l&agrave; c&acirc;y bạn để trong văn ph&ograve;ng kh&ocirc;ng c&oacute; &aacute;nh s&aacute;ng th&igrave; 2 -3 ng&agrave;y h&atilde;y mang n&oacute; ra nắng 1 lần 8h.</p>\r\n\r\n<p>C&aacute;ch tối&nbsp;ưu nếu bạn&nbsp;để c&acirc;y trong nh&agrave; th&igrave; s&aacute;ng bạn&nbsp;đi l&agrave;m bạn b&ecirc; c&acirc;y ra ngo&agrave;i bancol, nơi tho&aacute;ng gi&oacute;, khi n&agrave;o bạn&nbsp;đi l&agrave;m về th&igrave; lại b&ecirc; v&agrave;o nh&agrave;. Nếu bạn&nbsp;để c&acirc;y trong văn ph&ograve;ng th&igrave; khi n&agrave;o về bạn b&ecirc; c&acirc;y ra ngo&agrave;i bancol tho&aacute;ng gi&oacute;, s&aacute;ng mai&nbsp;đi l&agrave;m về bạn lại mang c&acirc;y v&agrave;o. Nếu muốn c&acirc;y Sen&nbsp;Đ&aacute;&nbsp;đẹp th&igrave; h&atilde;y&nbsp;đảm bảo 6h dưới nắng.</p>\r\n\r\n<p>Ch&uacute; &yacute;: Nắng rất cần thiết những kh&ocirc;ng c&oacute; nghĩa l&agrave; cứ c&agrave;ng nắng c&agrave;ng tốt, nếu bạn đ&atilde; c&oacute; con nhỏ th&igrave; bạn sẽ biết, &aacute;nh nắng rất tốt cho b&eacute; v&agrave; b&eacute; cần tắm nắng nhưng kh&ocirc;ng phải l&agrave; 12h trưa cho b&eacute; ra ngo&agrave;i trời nắng m&agrave; phải l&agrave; &aacute;nh nắng nhẹ buổi s&aacute;ng. Đối với&nbsp;<strong>sen đ&aacute;</strong>&nbsp;cũng thế cần nắng kh&ocirc;ng c&oacute; nghĩa l&agrave; phơi c&acirc;y v&agrave; trưa nắng gắt, điều n&agrave;y khiến sen đ&aacute; sẽ bị h&eacute;o l&aacute; v&agrave; mất nước, h&atilde;y che nắng cho c&acirc;y v&agrave;o những l&uacute;c nắng gắt.</p>\r\n\r\n<h2>C&aacute;ch chăm s&oacute;c xương rồng</h2>\r\n\r\n<p>Về cơ bản th&igrave; c&aacute;ch chăm s&oacute;c xương rồng cũng giống sen đ&aacute; n&ecirc;n bạn ho&agrave;n to&agrave;n c&oacute; thể &aacute;p dụng chế độ chăm s&oacute;c sen đ&aacute; đối với xương rồng ngo&agrave;i ra th&igrave; c&oacute; thể bổ sung th&ecirc;m phần dinh dưỡng cho đất để xương rồng ph&aacute;t triển tốt hơn v&agrave; ra hoa.</p>\r\n\r\n<h3>Chăm s&oacute;c xương rồng từng giai đoạn</h3>\r\n\r\n<p>C&acirc;y&nbsp;<a href=\"https://webcaycanh.com/xuong-rong-canh/\">xương rồng</a>&nbsp;v&agrave; c&acirc;y mọng nước c&oacute; nguồn gốc từ những v&ugrave;ng kh&ocirc; cằn, ngh&egrave;o dinh dưỡng nhưng để c&oacute; một c&acirc;y xương rồng hoặc c&acirc;y mọng nước khoẻ đẹp v&agrave; ph&aacute;t triển tốt, c&acirc;y cũng cần cung cấp dinh dưỡng.</p>\r\n\r\n<p>Trong m&ugrave;a ph&aacute;t triển, c&acirc;y xương rồng v&agrave; c&acirc;y mọng nước đều cần chất đạm (N) để gi&uacute;p sự tăng trưởng th&acirc;n, chất potassium (P) cho sự ph&aacute;t triển của hoa v&agrave; tr&aacute;i v&agrave; chất phosphorus (P) cho sự ph&aacute;t triển bộ rễ. Ngo&agrave;i ra, c&acirc;y cũng cần một số chất vi lượng kh&aacute;c.</p>\r\n\r\n<p>C&ocirc;ng thức NPK tổng qu&aacute;t cho c&acirc;y xương rồng l&agrave; 15 &ndash; 15 &ndash; 30.</p>\r\n\r\n<p>Trong thực tế, ta n&ecirc;n b&oacute;n ph&acirc;n theo thời kỳ sinh trưởng của c&acirc;y như sau:</p>\r\n\r\n<p>Thời kỳ sinh trưởng: C&ocirc;ng thức ph&acirc;n b&oacute;n N &ndash; P2O5 &ndash; K2O</p>\r\n\r\n<p>Thời kỳ c&acirc;y con: 16 &ndash; 16 &ndash; 8 hoặc 20 &ndash; 20 &ndash; 0</p>\r\n\r\n<p>Thời kỳ tăng trưởng: 18 &ndash; 19 &ndash; 30 hoặc 20 &ndash; 30 &ndash; 20</p>\r\n\r\n<p>K&iacute;ch th&iacute;ch ra hoa:10 &ndash; 60 &ndash; 10</p>\r\n\r\n<p>Thời kỳ ra hoa: 6 &ndash; 30 &ndash; 30</p>\r\n\r\n<p>Hiện nay, tr&ecirc;n thị trường c&oacute; nhiều b&igrave;nh ph&acirc;n b&oacute;n pha sẵn cho người trồng xương rồng, trong đ&oacute; c&oacute; c&ocirc;ng thức v&agrave; hướng dẫn c&aacute;ch pha tưới. Liều lượng pha tưới thường v&agrave;o khoảng 1 &ndash; 1.5 g/l&iacute;t nước.</p>\r\n\r\n<p>V&agrave; c&aacute;ch chăm s&oacute;c từng giai đoạn n&agrave;y bạn cũng c&oacute; thể &aacute;p dụng cho sen đ&aacute;.</p>\r\n\r\n<p><strong>Ch&uacute; &yacute;:</strong></p>\r\n\r\n<p>&ndash; Kh&ocirc;ng tưới nước l&uacute;c trời nắng n&oacute;ng</p>\r\n\r\n<p>&ndash; Kh&ocirc;ng để c&acirc;y dưới mưa</p>\r\n\r\n<p>&ndash; Để nơi tr&aacute;nh tầm với của trẻ nhỏ</p>\r\n\r\n<p>&ndash; Sen đ&aacute; v&agrave; xương rồng cần rất &iacute;t nước, bạn h&atilde;y nhớ điều đấy, đừng để n&oacute; ẩm đất qu&aacute; l&acirc;u</p>\r\n\r\n<p>&ndash; Một số loại&nbsp;<strong>c&acirc;y sen đ&aacute;</strong>&nbsp;c&oacute; m&agrave;u đỏ, viền hồng, c&acirc;y dạng đ&agrave;i sen thấp như: Sen đ&aacute; đất, th&aacute;i, viền hồng, hồng phấn, sen hồng&hellip;Th&igrave; 2 &ndash; 3 ng&agrave;y nếu bạn để trong văn ph&ograve;ng th&igrave; mang n&oacute; ra ngo&agrave;i chỗ tho&aacute;ng m&aacute;t v&agrave; c&oacute; &aacute;nh nắng nhẹ buổi s&aacute;ng, tr&aacute;nh nắng gắt buổi trưa để c&acirc;y lu&ocirc;n đẹp nh&eacute;!</p>\r\n\r\n<p>Nước quyết định sự sống v&agrave; &aacute;nh nắng quyết định sắc đẹp của sen đ&aacute; v&agrave; xương rồng.</p>\r\n\r\n<p>V&agrave;o trời m&ugrave;a h&egrave; nắng gắt c&aacute;c bạn nhớ kh&ocirc;ng để c&acirc;y dưới &aacute;nh nắng, m&igrave;nh c&oacute; thể d&ugrave;ng lưới đen che đi 30% &aacute;nh s&aacute;ng hoặc đem c&acirc;y v&agrave;o chỗ m&aacute;t c&oacute; &aacute;nh nắng nhẹ.</p>', '2021-02-20 03:52:04', 0, 0, '2021-02-20 03:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT '0',
  `atb_category_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT '0',
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(2, 'Cây ảnh phong thuỷ', 'cay-anh-phong-thuy', '2021-02-20__c-1.jpg', NULL, NULL, 0, 1, 1, '2020-10-08 03:41:08', '2021-02-20 03:28:33'),
(3, 'Cây cảnh trong nhà', 'cay-canh-trong-nha', '2021-02-20__c-2.jpg', NULL, NULL, 0, 1, 1, '2020-10-08 03:41:29', '2021-02-20 03:28:40'),
(4, 'Cây cảnh để bàn', 'cay-canh-de-ban', '2021-02-20__c-3.jpg', NULL, NULL, 0, 1, 1, '2020-10-08 03:41:41', '2021-02-20 03:28:47'),
(5, 'Cây cảnh để thờ', 'cay-canh-de-tho', '2021-02-20__c-4.jpg', NULL, NULL, 0, 1, 1, '2020-10-08 03:42:00', '2021-02-20 03:29:33'),
(6, 'Cây cảnh loại to', 'cay-canh-loai-to', '2021-02-20__c-5.jpg', NULL, NULL, 0, 1, 1, '2020-10-08 03:42:16', '2021-02-20 03:30:05'),
(10, 'Xương rồng cánh', 'xuong-rong-canh', '2021-02-20__c-7.jpg', NULL, NULL, 0, 1, 1, '2021-02-20 03:30:53', '2021-02-20 03:31:14'),
(11, 'Terrarium', 'terrarium', '2021-02-20__c-8.jpg', NULL, NULL, 0, 1, 1, '2021-02-20 03:31:11', '2021-02-20 03:31:13'),
(12, 'Sen đá', 'sen-da', '2021-02-20__c-4.jpg', NULL, NULL, 0, 1, 1, '2021-02-20 03:32:26', '2021-02-20 03:32:47');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci,
  `cmt_images` text COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int(11) NOT NULL DEFAULT '0',
  `cmt_product_id` int(11) NOT NULL DEFAULT '0',
  `cmt_admin_id` int(11) NOT NULL DEFAULT '0',
  `cmt_user_id` int(11) NOT NULL DEFAULT '0',
  `cmt_like` int(11) NOT NULL DEFAULT '0',
  `cmt_disk_like` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_images`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'ĐÚng là tuyệt vời', '[]', 0, 3, 0, 1, 0, 0, '2021-02-24 17:07:01', NULL),
(2, NULL, NULL, 'Hay', '[]', 0, 3, 0, 1, 0, 0, '2021-02-24 17:07:05', NULL),
(3, NULL, NULL, '@Trung Phú NA: Quá tuyệt', '[]', 1, 3, 0, 1, 0, 0, '2021-02-24 17:07:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_4` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_entered`
--

CREATE TABLE `invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT '0',
  `ie_name_product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT '0',
  `ie_number` int(11) NOT NULL DEFAULT '0',
  `ie_number_sold` int(11) NOT NULL DEFAULT '0',
  `ie_product_id` int(11) NOT NULL DEFAULT '0',
  `ie_money` int(11) NOT NULL DEFAULT '0',
  `ie_status` tinyint(4) NOT NULL DEFAULT '0',
  `ie_meta` text COLLATE utf8mb4_unicode_ci,
  `ie_the_advance` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'Cây cảnh', 'cay-canh', 'Cây cảnh mới nhất', 0, '2021-02-24 17:17:40', NULL),
(2, 'Cây cảnh mới', 'cay-canh-moi', 'Cây cảnh đồ án', 0, '2021-02-24 17:24:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT '0',
  `mn_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Kinh nghiệm cây cảnh', 'kinh-nghiem-cay-canh', NULL, NULL, NULL, 1, 1, '2020-10-08 08:06:30', '2021-02-20 03:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 1),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1),
(36, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 1),
(37, '2020_04_29_112931_create_invoice_entered_in_tables', 1),
(38, '2020_06_17_192357_create_product_invoice_entered_table', 1),
(39, '2020_06_21_112319_create_permission_tables', 1),
(40, '2020_06_21_205241_create_activity_log_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT '0',
  `od_product_id` int(11) NOT NULL DEFAULT '0',
  `od_sale` int(11) NOT NULL DEFAULT '0',
  `od_qty` tinyint(4) NOT NULL DEFAULT '0',
  `od_price` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 0, 1, 120000, '2021-02-24 17:46:11', NULL),
(2, 1, 2, 15, 1, 12750, '2021-02-24 17:46:11', NULL),
(3, 2, 2, 15, 3, 12750, '2021-03-09 18:35:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `ph_status` tinyint(4) NOT NULL DEFAULT '0',
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci,
  `pi_status` tinyint(4) NOT NULL DEFAULT '0',
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT '0',
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_permission` tinyint(4) NOT NULL DEFAULT '0',
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT '0',
  `pro_price_entry` int(11) NOT NULL DEFAULT '0' COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT '0',
  `pro_supplier_id` int(11) NOT NULL DEFAULT '0',
  `pro_admin_id` int(11) NOT NULL DEFAULT '0',
  `pro_sale` tinyint(4) NOT NULL DEFAULT '0',
  `pro_expiration_date` tinyint(4) NOT NULL DEFAULT '10',
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT '0',
  `pro_hot` tinyint(4) NOT NULL DEFAULT '0',
  `pro_active` tinyint(4) NOT NULL DEFAULT '1',
  `pro_pay` int(11) NOT NULL DEFAULT '0',
  `pro_unit` int(11) NOT NULL DEFAULT '0',
  `pro_number_import` int(11) NOT NULL DEFAULT '0',
  `pro_import_goods` int(11) NOT NULL DEFAULT '0',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `pro_content` text COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int(11) NOT NULL DEFAULT '0',
  `pro_review_star` int(11) NOT NULL DEFAULT '0',
  `pro_age_review` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT '0',
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_unit`, `pro_number_import`, `pro_import_goods`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(1, 'Cây thuỷ tùng', 'cay-thuy-tung', 15000, 0, 3, 0, 0, 0, 10, '2021-02-20__cay-canh-3.jpg', 3, 1, 1, 0, 0, 100, 0, 'coca', 'asasdsa', 0, 0, 0, '2020-10-08 07:34:39', 100, NULL, NULL, 0, '2021-02-20 03:42:24'),
(2, 'Cây Trầu Bà Đế Vương Xanh thủy sinh', 'cay-trau-ba-de-vuong-xanh-thuy-sinh', 15000, 0, 3, 0, 0, 15, 10, '2021-02-20__cay-canh-2.jpg', 4, 1, 1, 2, 0, 100, 0, 'ascd', '123', 0, 0, 0, '2020-10-08 07:41:43', 97, NULL, NULL, 0, '2021-02-20 03:42:09'),
(3, 'Cây Ngũ Gia Bì Thủy Sinh', 'cay-ngu-gia-bi-thuy-sinh', 32000, 0, 3, 0, 0, 0, 10, '2021-02-20__cay-canh-1.jpg', 3, 1, 1, 0, 0, 8, 0, NULL, 'Cải Canh hữu cơ', 0, 0, 0, '2020-11-12 11:19:43', 8, NULL, NULL, 0, '2021-02-20 03:01:31'),
(5, 'Cây Trầu Bà Đế Vương Xanh thủy sinh 1', 'cay-trau-ba-de-vuong-xanh-thuy-sinh-1', 120000, 0, 3, 0, 0, 0, 10, '2021-02-20__sp-3.jpg', 2, 1, 1, 1, 0, 10, 0, 'Cây Trầu Bà Đế Vương Xanh thủy sinh', 'Đang cập nhật', 0, 0, 0, '2021-02-20 03:53:50', 10, NULL, NULL, 0, '2021-02-24 17:27:41'),
(6, 'Cây hương thảo', 'cay-huong-thao', 120000, 0, 3, 0, 0, 0, 10, '2021-02-20__sp-4.jpg', 0, 1, 1, 0, 0, 100, 0, NULL, 'Đang cập nhật', 0, 0, 0, '2021-02-20 03:54:26', 100, NULL, NULL, 0, '2021-02-20 03:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT '0',
  `pa_attribute_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(3, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT '0',
  `pk_keyword_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(10, 5, 1),
(11, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_invoice_entered`
--

CREATE TABLE `product_invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pie_product_id` int(11) NOT NULL DEFAULT '0',
  `pie_invoice_entered_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT '0',
  `r_product_id` int(11) NOT NULL DEFAULT '0',
  `r_number` tinyint(4) NOT NULL DEFAULT '0',
  `r_status` tinyint(4) NOT NULL DEFAULT '0',
  `r_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT '1',
  `sd_active` tinyint(4) NOT NULL DEFAULT '1',
  `sd_sort` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Trái Cây', 'http://thucpham.phupt.net/', '2021-02-20__bg1.jpg', 1, 1, 2, '2021-02-20 03:37:13', '2021-02-20 03:37:13'),
(2, 'củ quả', 'http://thucpham.phupt.net/', '2021-02-20__bg2.jpg', 1, 1, 1, '2021-02-20 03:37:22', '2021-02-20 03:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT '0',
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT '0',
  `tst_admin_id` int(11) NOT NULL DEFAULT '0',
  `tst_total_money` int(11) NOT NULL DEFAULT '0',
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT '1',
  `tst_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 132750, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0986420994', 'Thôn thuận yên - Xã Quỳnh ngọc - Quỳnh Lưu - Nghệ An', 'OK Cảm ơn bạn', -1, 1, '2021-02-24 17:46:11', '2021-03-09 18:37:11'),
(2, 1, 1, 38250, 'Bích Ngọc', 'bichngoc@gmail.com', '0986420994', 'Thôn thuận yên - Xã Quỳnh ngọc - Quỳnh Lưu - Nghệ An', NULL, 3, 1, '2021-03-09 18:35:37', '2021-03-09 18:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `count_comment` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', NULL, '$2y$10$MnJ1sdXLKQSAWY5qqv9NR.r4DvUJLCNa0tHi6gnOzVtAYelcUWW5e', '0986420994', 0, '[{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_7\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.192\",\"time\":\"2021-02-24T17:06:47.903282Z\"},{\"device\":\"Macintosh\",\"platform\":\"OS X\",\"platform_ver\":\"10_15_7\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.192\",\"time\":\"2021-03-09T18:35:32.559350Z\"}]', 3, NULL, NULL, NULL, '2021-02-20 03:59:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT '0',
  `uf_user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Indexes for table `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Indexes for table `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_invoice_entered_pie_product_id_index` (`pie_product_id`),
  ADD KEY `product_invoice_entered_pie_invoice_entered_id_index` (`pie_invoice_entered_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_slug_unique` (`name_slug`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
