-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 04:11 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Languages', 'programming-languages', NULL, NULL),
(2, 'Frameworks', 'frameworks', NULL, NULL),
(3, 'Editors', 'text-editors', NULL, NULL),
(4, 'Learning Sources', 'learning-sources', NULL, NULL),
(5, 'Communities', 'communities', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `post_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_04_08_180818_create_posts_table', 1),
(6, '2021_04_16_154312_create_categories_table', 1),
(7, '2021_06_18_143226_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `thumbnail`, `excerpt`, `body`, `created_at`, `updated_at`, `published_at`) VALUES
(15, 2, 1, 'programming-language-php', 'Programming Language: PHP', 'thumbnails/deUA1GiXWDdLSajd2mnRg6BaFDsyxw3PGGAXW1bI.png', 'PHP (recursive acronym for PHP: Hypertext Preprocessor) is a widely-used open source general-purpose scripting language that is especially suited for web development and can be embedded into HTML.', 'Instead of lots of commands to output HTML (as seen in C or Perl), PHP pages contain HTML with embedded code that does \"something\" (in this case, output \"Hi, I\'m a PHP script!\"). The PHP code is enclosed in special start and end processing instructions <?php and ?> that allow you to jump into and out of \"PHP mode.\"\r\n\r\nWhat distinguishes PHP from something like client-side JavaScript is that the code is executed on the server, generating HTML which is then sent to the client. The client would receive the results of running that script, but would not know what the underlying code was. You can even configure your web server to process all your HTML files with PHP, and then there\'s really no way that users can tell what you have up your sleeve.\r\n\r\nThe best part about using PHP is that it is extremely simple for a newcomer, but offers many advanced features for a professional programmer. Don\'t be afraid to read the long list of PHP\'s features. You can jump in, in a short time, and start writing simple scripts in a few hours.\r\n\r\nAlthough PHP\'s development is focused on server-side scripting, you can do much more with it. Read on, and see more in the What can PHP do? section, or go right to the introductory tutorial if you are only interested in web programming.', '2023-03-13 12:01:55', '2023-03-13 13:31:08', NULL),
(16, 2, 3, 'editors-phpstorm', 'PhpStorm', 'thumbnails/5xn0P7NbvFqRgLCURjHlkzuLFvGJUFz9VafgjZK6.png', 'PhpStorm is a development tool for PHP and Web projects. It\'s a perfect PHP IDE for working with Laravel, Symfony, Drupal, WordPress, and other frameworks.', 'PhpStorm deeply\r\nunderstands your code.\r\n\r\nMajor frameworks support\r\nPhpStorm is perfect for working with Symfony, Laravel, Drupal, WordPress, Zend Framework, Magento, Joomla!, CakePHP, Yii, and other frameworks.\r\n\r\nAll the PHP tools\r\nThe editor actually \'gets\' your code and deeply understands its structure, supporting all the PHP language features for modern and legacy projects. It provides the best code completion, refactorings, on-the-fly error prevention, and more.\r\n\r\nFront-end technologies included\r\nMake the most of the cutting edge front-end technologies, such as HTML 5, CSS, Sass, Less, Stylus, CoffeeScript, TypeScript, Emmet, and JavaScript, with refactorings, debugging, and unit testing available. See the changes instantly in the browser thanks to Live Edit.\r\n\r\nBuilt-in developer tools\r\nPerform many routine tasks right from the IDE, thanks to the Version Control Systems integration, support for remote deployment, databases/SQL, command-line tools, Docker, Composer, REST Client, and many other tools.\r\n\r\nPhpStorm = WebStorm + PHP + DB/SQL\r\nAll the features in WebStorm are included into PhpStorm, with full-fledged support for PHP and Databases/SQL support added on top.', '2023-03-13 12:05:26', '2023-03-13 13:31:17', NULL),
(17, 2, 2, 'framework-laravel', 'PHP Framework: Laravel', 'thumbnails/h4iA7jScZGAz2UNIs3v3vweo9v9rQqcdXOm51s8E.png', 'Laravel is a web application framework with expressive, elegant syntax. We’ve already laid the foundation — freeing you to create without sweating the small things.', 'Meet Laravel\r\n\r\nLaravel is a web application framework with expressive, elegant syntax. A web framework provides a structure and starting point for creating your application, allowing you to focus on creating something amazing while we sweat the details.\r\n\r\nLaravel strives to provide an amazing developer experience while providing powerful features such as thorough dependency injection, an expressive database abstraction layer, queues and scheduled jobs, unit and integration testing, and more.\r\n\r\nWhether you are new to PHP web frameworks or have years of experience, Laravel is a framework that can grow with you. We\'ll help you take your first steps as a web developer or give you a boost as you take your expertise to the next level. We can\'t wait to see what you build.', '2023-03-13 12:07:27', '2023-03-13 13:31:26', NULL),
(18, 2, 2, 'framework-symfony', 'PHP Framework: Symfony', 'thumbnails/4R048XiXpAhitxR2Z3H40pRAUrRiWjSbEw3fEYVI.png', 'Symfony is a set of reusable PHP components and a PHP framework to build web applications, APIs, microservices and web services.', 'The standard foundation on which the best PHP applications are built. Choose any of the 50 stand-alone components available for your own applications.\r\n\r\nSpeed up the creation and maintenance of your PHP web applications. End repetitive coding tasks and enjoy the power of controlling your code.', '2023-03-13 12:10:06', '2023-03-13 13:31:34', NULL),
(19, 2, 4, 'learn-laravel', 'Learn Laravel From Scratch with Laracasts', 'thumbnails/BzlYIItYrVS3Y1LTFmN1uev3ZwEz8P4kwnwjon1X.png', 'There\'s no shortage of content at Laracasts.', 'There\'s no shortage of content at Laracasts. Push your web development skills to the next level, through expert screencasts on Laravel, Vue, and so much more.', '2023-03-13 12:13:39', '2023-03-13 13:31:50', NULL),
(20, 2, 4, 'learn-symfony', 'Learn Symfony From Scratsh With Symfonycasts', 'thumbnails/g8mHqZt9LdEGkbL3kGYH0uMeE4OhwX7UNyd4PJgW.png', 'The Best PHP & Symfony Tutorials', 'And the official way to learn Symfony\r\n\r\nSelect a track for a guided path through our 110+ video tutorial courses', '2023-03-13 13:35:28', '2023-03-13 13:35:28', NULL),
(21, 2, 5, 'github', 'GitHub', 'thumbnails/Ztvf5WoTdGeksRlJo5BsFM4P2S4pG8yogECQheox.png', 'GitHub is where over 100 million developers shape the future of software, together.', 'GitHub, Inc. is an Internet hosting service for software development and version control using Git. It provides the distributed version control of Git plus access control, bug tracking, software feature requests, task management, continuous integration, and wikis for every project.[5] Headquartered in California, it has been a subsidiary of Microsoft since 2018.[6]\r\n\r\nIt is commonly used to host open source software development projects.[7] As of January 2023, GitHub reported having over 100 million developers[8] and more than 372 million repositories,[9] including at least 28 million public repositories.[10] It is the largest source code host as of November 2021.', '2023-03-13 13:51:00', '2023-03-13 13:53:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'NemanjaDamjanovic', 'Nemanja', 'nemanja@laravel.com', NULL, '$2y$10$K4zwo/uIvZo3nbvKY5Wuw..YAMb9w8z6pqvYN9GZI45a9zaau9R5O', NULL, '2023-03-13 10:20:54', '2023-03-13 10:20:54'),
(3, 'MiloradDamjanovic', 'Milorad', 'milorad@lastinput.rs', NULL, '$2y$10$9EY1AQbk3KJZuIx5lFogduRwY2a498JV/xN9zExQUwzW2bf1YMbR6', NULL, '2023-03-13 13:38:45', '2023-03-13 13:38:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
