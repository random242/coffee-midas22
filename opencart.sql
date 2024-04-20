-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 15 2022 г., 10:58
-- Версия сервера: 5.7.39-cll-lve
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `s222016_demo113shoporg`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address_simple_fields`
--

CREATE TABLE `oc_address_simple_fields` (
  `address_id` int(11) NOT NULL,
  `metadata` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'N6FO7WifSP551RefVHFhNjybwaMfwWd2aJIMNM9Tx2UtFndpfCHD9YBlumYZJZdpnMBq4wxmfHcPKuGQb9P9t3RC5G29sOrfB6xOe43DSlafwgt0dLFHbVlbJKSO0cHifOG5y1Lsc8K2lj1tG997CIE4rkjc3JD2JXStV5jX8kWuZ31HDP0ThGeneyMnyWhYarrVvMdUMGWpQboPpr7F63xuEJeEOmeGEC289uWSzn3pdpf6aMO38Zgnt8JxFYx4', 1, '2018-02-20 12:18:37', '2018-02-20 12:18:37'),
(2, 'Default', '2eaLA43WFIbzyNT7z9sqRYpFVJCaRhZXyszu8drBPgGmgUIY4IN1bMLhUrusprH7nylaGeq1RWbOrkeqCsLhPyggyi0vwYjY1kTNjtvJTYCNNX6EnjkTT7rNw8EIpYrQ1c0po22Tyj3rLo0ajxsdEz3HCGLHQNj9Lg0hzY3xrxqlZ5y7KAP4o6oobdPUHpi1AWmY2FoVnRL35WDfXTjkkFogqkGFb3yuyvmsqXISCLhuUiJ4mpP3b1UTc85H2R6K', 1, '2018-03-09 06:57:25', '2018-03-09 06:57:25'),
(3, 'Default', 'gFzN9K5DxkEjUTjzuLVf8tlnQBC4hnxvCyK2vfHFCJISj2XViOZPpCj6dsS769V4lmX13q3WWutxe4HhGmEvJ6FrOvgDy7yYEGd00T1wy7zQtarcX4m5qj0u6ynGA4PZClXS80UDLxFX6nXq2nyjBRVJ2PbVwzJE0mSm8cIw393WfHoF3JhdfqfdspKbcXeK0PrHBKAOWz9qRyZ4CyCzKMI6qYsT7LifpdGQAOHIiwNTAbOBTk1n50zAvspy4pom', 1, '2018-03-15 05:32:07', '2018-03-15 05:32:07'),
(4, 'Default', 'qDwVFhjffMBnjMAabH6Qz4JTKeqQlWDYzGnvDeTFPuvEfG11xdTxlcxMrAlA27otwq2IBPu52N3z1paW5ZS0uPFvxBLlfeY9Ima1tCkyVj70TK7Zhjgd5Nvhn6jbr91ATu2EWwSzFDe8dhwhXM5dHYhtrN0O5itwqUCCArlTjJ3mD2ErT06dGjU0GFy4ksEgrpAS1kVqBPYXB8WES8cOnMbAGPdxg1uK4LI3AF0fLPaowXDbSxXHzmDLMbMtvBHN', 1, '2018-05-28 18:00:20', '2018-05-28 18:00:20'),
(5, 'Default', 'VPZGMKY2nu0pMKW0FcHJ43Gf9Dm3mWC9C8GDCe6nzZJ6mGM5znqDc0OJIBnvrlWN9nEGBubm95MrnCGf727rE1ZBFioUXKntUPVxWAaNqXCkwo5cyoye9EOrw73mlRtUdcEjJK82rtppnKb7WlEXeDiwOyCZ93P7HuM2RUfIlvMIFuZ7u4gTeCGPG345qXABxzw1w3wza8I0PpMTOv0xU234DNyu9dJuZy65JQ8x7MLOxUEbTnnbRc0h0wUUeRW5', 1, '2019-02-04 09:49:58', '2019-02-04 09:49:58'),
(6, 'Default', 'fHFAZCDY6qwtivL7wwarWrEkyRI6kZR2mV3k09mQZXgQoLrzKvgpOIgNKjX88zhkgyIn65VOSHK6WVODDZCFqUb1fs4oXS1Us8N96ixUFz2U46MWMoPK94AaGIgGtHBdauQFkifVFvzsRADwIBAaxS4IG9mw9br1BF7C2Bz4va38ZeYg1AmvemiU9ZvudE2VUfmuuafm5ctvOs29nuAO8lfkUjc07r07nzPz6p5M0jYnoSj855l7j9t16nl6df9n', 1, '2019-03-12 09:54:19', '2019-03-12 09:54:19'),
(7, 'Default', 'TDAwYDaBzxvTM8ttN1TbYRlA3NsFuC2OSGvYOckweAlveucZQGkcfubHV2m3tKA0q0caaMGsAz0EQue7x1GWSf6pRUTYvEJQUPIb02khlqV4XgP7YsOssaBk6zJc04zNxrrECMdVsKu5P1swSKXsBUJ0eP6tbgaeo1Z8EydGBpzNgPXiWoTrSCJEn4FENKPzzgZahhrTxlz6Pu70wkoAIJKJVuorTy56bZtedyP3YNtK1K2ZdtNeL3LXnmJUzjGz', 1, '2019-03-15 10:38:00', '2019-03-15 10:38:00'),
(8, 'Default', 'vrVgZel1CGGO2g6y4xK2uHVutmQymeMhbU6KIMfBLudidt57X67CGDt28fWscBi8Mhn6f7xbZD39XsDeAywmvtmX0QCdB6KKWI0Arn6MpMhvmoYLwi4bwJaUmUXAovqNKmVIteoUgQGxamcpiambdUv98MpqesZQ8WqdnLuMzcf4FePW5m1a0RtRou3LoJF5kUuapqK661R8JGVoM5K34QgRzjSNCbOZOFF7fn4wdBKItBhathU8BsGM9wcHHbwe', 1, '2019-04-22 14:39:07', '2019-04-22 14:39:07'),
(9, 'Default', 'WaiPyzXSfIciIQeXUtsb9iSXUpEMh57rBbTONcJd3QxnpkjPG6pQLWYhljm9IwhHON2UTQFZyslae6JaQlQMd6r0hnKHeS3Vi0FQuDY06mMfwL4rennM7B57nvE2KlH76eJ3oh7ZwKxWrMeKCuWevHFVvrx6iZlkJbzcJ62TDseFs7QFQyu1sSykOo53bwlolSbbVIMQThiFQvgO9JXhohao90pyrD89Okv35mUd5DerGY8LB17XytfiCabnHOEG', 1, '2022-11-04 18:07:39', '2022-11-04 18:07:39');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 9, '89.151.187.243');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(1, 9, '655b6020e51d854d4fd4a66be5', '89.151.187.243', '2022-11-09 18:57:39', '2022-11-09 18:57:39'),
(2, 9, 'ecd3d9df10aa8bc0a091a8bbea', '89.151.187.243', '2022-11-09 18:57:44', '2022-11-09 18:57:44'),
(3, 9, 'd22976641c933edf0e9651e2e7', '89.151.187.243', '2022-11-15 10:56:49', '2022-11-15 10:56:49'),
(4, 9, '2e24a8bae87acc6e5d74cdc9c5', '89.151.187.243', '2022-11-15 10:56:54', '2022-11-15 10:56:54');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_art_aqa_product`
--

CREATE TABLE `oc_art_aqa_product` (
  `aqa_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(96) NOT NULL,
  `communication` varchar(32) NOT NULL,
  `question` text NOT NULL,
  `phone` varchar(32) NOT NULL,
  `answer` text NOT NULL,
  `answer_name` varchar(90) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `language_id` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_answer` datetime NOT NULL,
  `date_fake` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Описание'),
(2, 2, 'Количество ядер'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Тактовая частота');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Память'),
(4, 2, 'Технические параметры'),
(5, 2, 'Материнская плата'),
(6, 2, 'Процессор');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'Товары HP', 0),
(7, 'Слайдшоу на главной странице', 1),
(8, 'Производители', 1),
(9, 'Левый баннер', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(220, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(213, 8, 1, 'Canon', '', 'catalog/5.png', 0),
(212, 8, 1, 'Burger King', '', 'catalog/7.png', 0),
(211, 8, 1, 'Coca Cola', '', 'catalog/1.png', 0),
(210, 8, 1, 'Sony', '', 'catalog/2.png', 0),
(209, 8, 1, 'NFL', '', 'catalog/4.png', 0),
(208, 8, 2, 'Nintendo', '', 'catalog/1.png', 0),
(207, 8, 2, 'Starbucks', '', 'catalog/2.png', 0),
(206, 8, 2, 'Dell', '', 'catalog/3.png', 0),
(198, 9, 1, 'Left banner', '#', 'catalog/left-banner-1.jpg', 0),
(196, 7, 1, 'Mainbanner3', '#', '', 3),
(219, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(205, 8, 2, 'Disney', '', 'catalog/4.png', 0),
(204, 8, 2, 'Harley Davidson', '', 'catalog/6.png', 0),
(203, 8, 2, 'Canon', '', 'catalog/5.png', 0),
(202, 8, 2, 'Burger King', '', 'catalog/7.png', 0),
(201, 8, 2, 'Coca Cola', '', 'catalog/1.png', 0),
(195, 7, 1, 'Mainbanner2', '#', 'catalog/main-banner-2.jpg', 2),
(200, 8, 2, 'Sony', '', 'catalog/2.png', 0),
(199, 8, 2, 'NFL', '', 'catalog/4.png', 0),
(197, 9, 2, 'Left banner', '#', 'catalog/left-banner-1.jpg', 0),
(194, 7, 1, 'Mainbanner1', '#', 'catalog/main-banner-1.jpg', 1),
(193, 7, 2, 'Mainbanner3', '#', '', 3),
(192, 7, 2, 'Mainbanner2', '#', 'catalog/main-banner-2.jpg', 2),
(191, 7, 2, 'Mainbanner1', '#', 'catalog/main-banner-1.jpg', 1),
(214, 8, 1, 'Harley Davidson', '', 'catalog/6.png', 0),
(215, 8, 1, 'Disney', '', 'catalog/4.png', 0),
(216, 8, 1, 'Dell', '', 'catalog/3.png', 0),
(217, 8, 1, 'Starbucks', '', 'catalog/2.png', 0),
(218, 8, 1, 'Nintendo', '', 'catalog/1.png', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blogger`
--

CREATE TABLE `oc_blogger` (
  `blogger_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_blogger`
--

INSERT INTO `oc_blogger` (`blogger_id`, `module_id`, `status`, `image`, `date_added`, `date_modified`) VALUES
(1, 43, 1, 'catalog/blog-1.jpg', '2018-02-28 11:19:34', '2022-11-04 22:07:05'),
(2, 43, 1, 'catalog/blog-2.jpg', '2018-02-28 11:20:08', '2022-11-04 22:07:36'),
(3, 43, 1, 'catalog/blog-3.jpg', '2018-02-28 11:20:51', '2022-11-04 22:08:12'),
(4, 43, 1, 'catalog/blog-4.jpg', '2018-02-28 11:21:26', '2022-11-04 22:08:43'),
(5, 43, 1, 'catalog/blog-5.jpg', '2018-02-28 11:21:58', '2022-11-04 22:09:13'),
(6, 43, 1, 'catalog/blog-6.jpg', '2018-02-28 11:22:25', '2022-11-04 22:09:51');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blogger_comment`
--

CREATE TABLE `oc_blogger_comment` (
  `blogger_comment_id` int(11) NOT NULL,
  `blogger_id` int(11) NOT NULL,
  `approved` int(1) NOT NULL DEFAULT '0',
  `author` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(96) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blogger_comment_description`
--

CREATE TABLE `oc_blogger_comment_description` (
  `blogger_comment_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_blogger_description`
--

CREATE TABLE `oc_blogger_description` (
  `blogger_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(64) NOT NULL DEFAULT '',
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_blogger_description`
--

INSERT INTO `oc_blogger_description` (`blogger_id`, `language_id`, `title`, `description`) VALUES
(2, 1, 'Omnis Voluptas Assumenda Est', '&lt;p&gt;It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).&lt;/p&gt;            '),
(4, 1, 'Voluptatem Accusantium Doloremque', '&lt;p&gt;If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&amp;nbsp;&lt;/p&gt;&lt;p&gt;It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.&lt;/p&gt;        '),
(5, 1, 'Quis Autem Reprehender Pariatur', '&lt;p&gt;&lt;b&gt;1914 translation by H. Rackham&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects&lt;/p&gt;&lt;p&gt;&lt;b&gt;Section 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&quot;At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.&quot;&lt;br&gt;&lt;/p&gt;        '),
(6, 1, 'Necessitatibus Saepe Eveniet', '&lt;div&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500s&lt;/b&gt;&lt;/div&gt;&lt;div&gt;&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;&lt;/div&gt;          '),
(1, 2, 'Название статьи 1 блога', '&lt;p&gt;Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога... Описание статьи 1 блога...&lt;/p&gt;        '),
(1, 1, 'Praesentium Voluptatum Deleniti', '&lt;p&gt;Suspendisse posuere, diam in bibendum lobortis, turpis ipsum aliquam risus, sit amet dictum ligula lorem non nisl. Ut vitae nibh id massa vulputate euismod ut quis justo. Ut bibendum sem at massa lacinia, eget elementum ante consectetur. Nulla id pharetra dui, at rhoncus urna. Maecenas non porttitor purus. Nullam ullamcorper nisl quis ornare molestie.&lt;/p&gt;&lt;p&gt;Etiam eget erat est. Phasellus elit justo, mattis non lorem non, aliquam aliquam ps. Sed fermentum consectetur magna, eget semper ante. Aliquam scelerisque justo velit. Fusce cursus blandit dolor, in sodales urna vulputate lobortis. Nulla ut tellus turpis. Nullam lacus sem, volutpat id odio sed, cursus tristique eros. Duis at pellentesque magna. Donec magna nisi, vulputate ac nulla eu, ultricies tincidunt tellus. Nunc tincidunt sem urna, nec venenatis libero vehicula ut.&lt;br&gt;&lt;/p&gt;        '),
(2, 2, 'Название статьи 2 блога', '&lt;p&gt;Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога... Описание статьи 2 блога...&lt;/p&gt;              '),
(3, 2, 'Название статьи 3 блога', 'Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога... Описание статьи 3 блога...'),
(3, 1, 'Matters To This Principle Of Selection', '&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text&lt;/b&gt;. &lt;/p&gt;&lt;p&gt;It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.&lt;/p&gt;&lt;p&gt; Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.&lt;/p&gt;        '),
(4, 2, 'Название статьи 4 блога', '&lt;p&gt;Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога... Описание статьи 4 блога...&lt;br&gt;&lt;/p&gt;          '),
(5, 2, 'Название статьи 5 блога', 'Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога... Описание статьи 5 блога...'),
(6, 2, 'Название статьи 6 блога', 'Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога... Описание статьи 6 блога...');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(5, 0, 1, '146b0313cb945d0330b6453de7', 43, 0, '[]', 1, '2018-03-15 08:35:21'),
(6, 0, 5, 'a7b27d3fe4730179abc782e7b8', 43, 0, '[]', 1, '2019-04-24 12:57:09'),
(11, 0, 6, 'cd3b80a85fbe80b3fadce5c401', 43, 0, '[]', 1, '2019-11-19 17:24:10'),
(36, 0, 0, 'f051cc09635276c25904147c10', 47, 0, '{\"225\":\"2011-04-22\"}', 1, '2022-11-15 10:56:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/category-banner.jpg', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2022-11-04 20:03:00'),
(27, 'catalog/07.jpg', 20, 0, 0, 1, 1, '2009-01-31 01:55:34', '2022-11-04 20:25:12'),
(20, 'catalog/category-banner.jpg', 0, 1, 3, 1, 1, '2009-01-05 21:49:43', '2022-11-04 20:07:17'),
(24, 'catalog/category-banner.jpg', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2022-11-04 20:10:05'),
(18, 'catalog/category-banner.jpg', 0, 1, 0, 2, 0, '2009-01-05 21:49:15', '2022-11-04 20:08:18'),
(17, 'catalog/category-banner.jpg', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2022-11-04 20:03:46'),
(28, 'catalog/07.jpg', 25, 0, 0, 2, 1, '2009-02-02 13:11:12', '2022-11-04 20:24:29'),
(26, 'catalog/07.jpg', 20, 0, 1, 2, 1, '2009-01-31 01:55:14', '2022-11-04 20:25:29'),
(30, 'catalog/07.jpg', 25, 0, 0, 4, 1, '2009-02-02 13:11:59', '2022-11-04 20:24:08'),
(31, 'catalog/07.jpg', 25, 0, 0, 5, 1, '2009-02-03 14:17:24', '2022-11-04 20:24:55'),
(32, 'catalog/07.jpg', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2022-11-04 20:23:33'),
(33, 'catalog/category-banner.jpg', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2022-11-04 20:03:26'),
(35, 'catalog/07.jpg', 25, 0, 0, 3, 1, '2010-09-17 10:06:48', '2022-11-04 20:24:41'),
(37, 'catalog/07.jpg', 43, 0, 0, 2, 1, '2010-09-18 14:03:39', '2022-11-04 20:28:56'),
(38, 'catalog/07.jpg', 43, 0, 0, 1, 1, '2010-09-18 14:03:51', '2022-11-04 20:29:16'),
(39, 'catalog/07.jpg', 43, 0, 0, 3, 1, '2010-09-18 14:04:17', '2022-11-04 20:29:05'),
(40, 'catalog/07.jpg', 43, 0, 0, 4, 1, '2010-09-18 14:05:36', '2022-11-04 20:28:42'),
(43, 'catalog/07.jpg', 20, 0, 0, 3, 1, '2010-09-18 14:06:49', '2022-11-04 20:25:44'),
(49, 'catalog/07.jpg', 27, 0, 0, 1, 1, '2010-11-07 11:14:04', '2022-11-04 20:26:31'),
(50, 'catalog/07.jpg', 27, 0, 0, 2, 1, '2010-11-07 11:14:23', '2022-11-04 20:26:12'),
(51, 'catalog/07.jpg', 27, 0, 0, 3, 1, '2010-11-07 11:14:38', '2022-11-04 20:27:18'),
(52, 'catalog/06.jpg', 27, 0, 0, 4, 1, '2010-11-07 11:16:09', '2022-11-04 20:27:07'),
(53, 'catalog/07.jpg', 26, 0, 0, 1, 1, '2010-11-07 11:28:53', '2022-11-04 20:28:18'),
(54, 'catalog/06.jpg', 26, 0, 0, 2, 1, '2010-11-07 11:29:16', '2022-11-04 20:27:33'),
(55, 'catalog/06.jpg', 26, 0, 0, 3, 1, '2010-11-08 10:31:32', '2022-11-04 20:28:03'),
(56, 'catalog/07.jpg', 26, 0, 0, 4, 1, '2010-11-08 10:31:50', '2022-11-04 20:27:53'),
(57, 'catalog/07.jpg', 0, 1, 1, 3, 0, '2011-04-26 08:53:16', '2022-11-04 20:12:34'),
(58, 'catalog/07.jpg', 0, 0, 1, 3, 1, '2018-12-20 14:08:10', '2022-11-04 20:08:56'),
(59, 'catalog/06.jpg', 0, 1, 1, 2, 1, '2018-12-29 11:00:51', '2022-11-04 20:06:36'),
(60, '', 0, 1, 1, 3, 1, '2018-12-29 11:02:20', '2022-11-04 20:07:44');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(20, 2, 'Категория 6', '&lt;p&gt;Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6... Описание категории 6...&lt;br&gt;&lt;/p&gt;\r\n', 'Категория 6', '', ''),
(18, 2, 'Категория 8', '&lt;p&gt;Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8... Описание категории 8...&lt;br&gt;&lt;/p&gt;\r\n', 'Категория 8', '', ''),
(49, 2, 'Подкатегория 2-1-6', '', 'Подкатегория 2-1-6', '', ''),
(54, 2, 'Подкатегория 1-2-6', '', 'Подкатегория 1-2-6', '', ''),
(17, 2, 'Категория 4', '', 'Категория 4', '', ''),
(24, 2, 'Категория 10', '', 'Категория 10', '', ''),
(18, 1, 'Curry Leaves', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Curry Leaves', '', ''),
(50, 2, 'Подкатегория 1-1-6', '', 'Подкатегория 1-1-6', '', ''),
(51, 2, 'Подкатегория 4-1-6', '', 'Подкатегория 4-1-6', '', ''),
(57, 2, 'Категория 1', '', 'Категория 1', '', ''),
(33, 2, 'Категория 3', '', 'Категория 3', '', ''),
(28, 2, 'Подкатегория 3-2', '', 'Подкатегория 3-2', '', ''),
(55, 2, 'Подкатегория 3-2-6', '', 'Подкатегория 3-2-6', '', ''),
(37, 2, 'Подкатегория 2-3-6', '', 'Подкатегория 2-3-6', '', ''),
(31, 2, 'Подкатегория 5-2', '', 'Подкатегория 5-2', '', ''),
(27, 2, 'Подкатегория 1-6', '', 'Подкатегория 1-6', '', ''),
(60, 2, 'Категория 7', '&lt;p&gt;Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7... Описание категории 7...&lt;br&gt;&lt;/p&gt;', 'Категория 7', '', ''),
(52, 2, 'Подкатегория 3-1-6', '', 'Подкатегория 3-1-6', '', ''),
(38, 2, 'Подкатегория 4-3-6', '', 'Подкатегория 4-3-6', '', ''),
(32, 2, 'Подкатегория 1-2', '', 'Подкатегория 1-2', '', ''),
(35, 2, 'Подкатегория 4-2', '', 'Подкатегория 4-2', '', ''),
(43, 2, 'Подкатегория 3-6', '', 'Подкатегория 3-6', '', ''),
(40, 2, 'Подкатегория 1-3-6', '', 'Подкатегория 1-3-6', '', ''),
(39, 2, 'Подкатегория 3-3-6', '', 'Подкатегория 3-3-6', '', ''),
(58, 2, 'Категория 9', '&lt;p&gt;Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9... Описание категории 9...&lt;br&gt;&lt;/p&gt;', 'Категория 9', '', ''),
(26, 2, 'Подкатегория 2-6', '', 'Подкатегория 2-6', '', ''),
(53, 2, 'Подкатегория 4-2-6', '', 'Подкатегория 4-2-6', '', ''),
(56, 2, 'Подкатегория 2-2-6', '', 'Подкатегория 2-2-6', '', ''),
(25, 2, 'Категория 2', '', 'Категория 2', '', ''),
(30, 2, 'Подкатегория 2-2', '', 'Подкатегория 2-2', '', ''),
(59, 2, 'Категория 5', '', 'Категория 5', '', ''),
(57, 1, 'Black cardamom', '', 'Black cardamom', '', ''),
(25, 1, 'Cafe Mocha', '', 'Cafe Mocha', '', ''),
(33, 1, 'Caffeine', '', 'Caffeine', '', ''),
(17, 1, 'Coffee Bean', '', 'Coffee Bean', '', ''),
(59, 1, 'Coffee Borer', '', 'Coffee Borer', '', ''),
(20, 1, 'Coffee Latte', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Coffee Latte', 'Example of category description', ''),
(60, 1, 'CoffeeFest', '', 'CoffeeFest', '', ''),
(58, 1, 'Espresso', '', 'Espresso', '', ''),
(24, 1, 'Sprudge', '', 'Sprudge', '', ''),
(32, 1, 'Affogato', '', 'Affogato', '', ''),
(30, 1, 'Americano', '', 'Americano', '', ''),
(28, 1, 'Bicerin', '', 'Bicerin', '', ''),
(35, 1, 'Breve', '', 'Breve', '', ''),
(31, 1, 'Macchiato', '', 'Macchiato', '', ''),
(27, 1, 'Cappuccino', '', 'Cappuccino', '', ''),
(26, 1, 'Eggnog latte', '', 'Eggnog latte', '', ''),
(43, 1, 'Specialty Lattes', '', 'Specialty Lattes', '', ''),
(50, 1, 'Carajillo', '', 'Carajillo', '', ''),
(49, 1, 'Gommosa', '', 'Gommosa', '', ''),
(52, 1, 'Robusta Coffee', '', 'Robusta Coffee', '', ''),
(51, 1, 'White coffee', '', 'White coffee', '', ''),
(54, 1, 'Con Panna', '', 'Con Panna', '', ''),
(56, 1, 'Cortado', '', 'Cortado', '', ''),
(55, 1, 'Eiskaffee', '', 'Eiskaffee', '', ''),
(53, 1, 'Ice Coffee', '', 'Ice Coffee', '', ''),
(40, 1, 'Filter Coffee', '', 'Filter Coffee', '', ''),
(37, 1, 'Flat White', '', 'Flat White', '', ''),
(39, 1, 'Liqueur coffee', '', 'Liqueur coffee', '', ''),
(38, 1, 'Irish coffee', '', 'Irish coffee', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 5),
(17, 6),
(17, 7),
(17, 9),
(17, 10),
(17, 11),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 7),
(18, 9),
(18, 10),
(18, 11),
(20, 1),
(20, 2),
(20, 3),
(20, 4),
(20, 5),
(20, 6),
(20, 7),
(20, 9),
(20, 10),
(20, 11),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(24, 6),
(24, 7),
(24, 9),
(24, 10),
(24, 11),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(25, 5),
(25, 6),
(25, 7),
(25, 9),
(25, 10),
(25, 11),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(26, 5),
(26, 6),
(26, 7),
(26, 9),
(26, 10),
(26, 11),
(27, 1),
(27, 2),
(27, 3),
(27, 4),
(27, 5),
(27, 6),
(27, 7),
(27, 9),
(27, 10),
(27, 11),
(28, 1),
(28, 2),
(28, 3),
(28, 4),
(28, 5),
(28, 6),
(28, 7),
(28, 9),
(28, 10),
(28, 11),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 9),
(30, 10),
(30, 11),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 6),
(31, 7),
(31, 9),
(31, 10),
(31, 11),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 5),
(32, 6),
(32, 7),
(32, 9),
(32, 10),
(32, 11),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(33, 5),
(33, 6),
(33, 7),
(33, 9),
(33, 10),
(33, 11),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(35, 5),
(35, 6),
(35, 7),
(35, 9),
(35, 10),
(35, 11),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(43, 5),
(43, 6),
(43, 7),
(43, 9),
(43, 10),
(43, 11),
(57, 1),
(57, 2),
(57, 3),
(57, 4),
(57, 5),
(57, 6),
(57, 7),
(57, 9),
(57, 10),
(57, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 25, 0),
(35, 35, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(39, 43, 1),
(37, 43, 1),
(40, 20, 0),
(17, 17, 0),
(33, 33, 0),
(37, 20, 0),
(37, 37, 2),
(38, 20, 0),
(38, 38, 2),
(39, 20, 0),
(39, 39, 2),
(40, 43, 1),
(40, 40, 2),
(43, 20, 0),
(43, 43, 1),
(38, 43, 1),
(56, 20, 0),
(55, 26, 1),
(54, 20, 0),
(53, 20, 0),
(52, 27, 1),
(49, 27, 1),
(49, 49, 2),
(50, 20, 0),
(50, 50, 2),
(51, 20, 0),
(51, 51, 2),
(52, 20, 0),
(52, 52, 2),
(51, 27, 1),
(50, 27, 1),
(49, 20, 0),
(53, 26, 1),
(53, 53, 2),
(54, 26, 1),
(54, 54, 2),
(55, 20, 0),
(55, 55, 2),
(56, 26, 1),
(56, 56, 2),
(57, 57, 0),
(58, 58, 0),
(59, 59, 0),
(60, 60, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(18, 0, 0),
(25, 0, 0),
(57, 0, 0),
(17, 0, 0),
(24, 0, 0),
(33, 0, 0),
(27, 0, 0),
(26, 0, 0),
(43, 0, 0),
(28, 0, 0),
(35, 0, 0),
(30, 0, 0),
(31, 0, 0),
(49, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(38, 0, 0),
(37, 0, 0),
(39, 0, 0),
(40, 0, 0),
(32, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(35, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(43, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(20, 'Белоруссия (Беларусь)', 'BY', 'BLR', '', 0, 1),
(80, 'Грузия', 'GE', 'GEO', '', 0, 1),
(109, 'Казахстан', 'KZ', 'KAZ', '', 0, 1),
(115, 'Киргизия (Кыргызстан)', 'KG', 'KGZ', '', 0, 1),
(176, 'Российская Федерация', 'RU', 'RUS', '', 0, 1),
(220, 'Украина', 'UA', 'UKR', '', 0, 1),
(226, 'Узбекистан', 'UZ', 'UZB', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% скидка', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Бесплатная доставка', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 скидка', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '?', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2022-11-04 15:09:44'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00'),
(4, 'Рубль', 'RUB', '', ' руб.', '2', 1.00000000, 1, '2022-11-15 07:58:01');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(2, 'admin@localhost.com', '192.168.0.152', 2, '2018-05-30 05:22:41', '2018-05-30 09:45:48'),
(3, 'admin@localhost.com', '192.168.0.151', 4, '2018-05-30 08:17:23', '2018-05-30 08:17:40'),
(4, 'admin@localhost.com', '192.168.0.155', 1, '2019-01-08 11:51:27', '2019-01-08 11:51:27'),
(5, 'admin@localhost.com', '192.168.1.151', 3, '2019-03-15 09:31:40', '2019-03-15 09:31:50'),
(7, 'admin@localhost.com', '192.168.0.157', 1, '2019-04-24 07:26:11', '2019-04-24 07:26:11');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_simple_fields`
--

CREATE TABLE `oc_customer_simple_fields` (
  `customer_id` int(11) NOT NULL,
  `metadata` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(3, 47, '2018-05-29 16:32:28');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(39, 'seo_pro_AddBefore', 'admin/model/catalog/*/add*/after', 'extension/module/sla_seo_pro/clearCache', 1, 0),
(38, 'seo_pro_EditBefore', 'admin/model/catalog/*/edit*/after', 'extension/module/sla_seo_pro/clearCache', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'module', 'html'),
(43, 'module', 'filter'),
(44, 'module', 'special'),
(45, 'module', 'information'),
(46, 'module', 'newsletters'),
(55, 'module', 'category_tab'),
(48, 'module', 'blogger'),
(50, 'module', 'divido_calculator'),
(54, 'module', 'latest'),
(56, 'module', 'instagram'),
(57, 'module', 'mmos_ajax_search'),
(58, 'module', 'oc3x_storage_cleaner'),
(59, 'module', 'timer'),
(60, 'module', 'hours_and_days'),
(61, 'module', 'art_aqa_product'),
(62, 'module', 'sla_seo_pro'),
(63, 'module', 'autourl'),
(64, 'module', 'agree_cookie'),
(65, 'module', 'simple'),
(66, 'shipping', 'gixocruspostcalc'),
(67, 'module', 'ocfilter');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(2, 0, 'localcopy_oc3.ocmod.zip', '2022-11-05 01:24:47'),
(3, 0, 'CustomAdminIcondashboardopencart3whitoutlogin.ocmod.zip', '2022-11-05 01:25:02'),
(4, 0, 'extension-type-oc30.ocmod.zip', '2022-11-05 01:25:59'),
(5, 0, 'ShowModuleLinkAtLeftMenu.ocmod.zip', '2022-11-05 01:35:10'),
(6, 0, 'SEARCH PROOC3.0.xv2.5.ocmod.zip', '2022-11-05 01:42:26'),
(7, 0, 'smart_links_oc3.x.ocmod.zip', '2022-11-05 01:46:00'),
(8, 0, 'cache_cleaner_oc30.ocmod.zip', '2022-11-05 01:54:49'),
(9, 0, 'stars3.ocmod.zip', '2022-11-05 01:56:32'),
(10, 0, 'wishlist_without_login_1.01_b.ocmod.zip', '2022-11-05 01:57:27'),
(11, 0, 'bulk_specials_editor_with_timer_oc30x.ocmod.zip', '2022-11-05 02:13:25'),
(12, 0, 'fastedit.ocmod.zip', '2022-11-05 02:13:36'),
(13, 0, 'days_and_hours_for_oc30x.ocmod.zip', '2022-11-05 02:13:46'),
(14, 0, 'modificationmanager.ocmod.zip', '2022-11-05 02:17:47'),
(15, 0, 'auto_add_product_quantity_oc3.x.ocmod.zip', '2022-11-06 08:22:44'),
(16, 0, 'image-translit-on-upload_oc3x.ocmod.zip', '2022-11-06 08:22:57'),
(17, 0, 'category_images_oc3.x.ocmod.zip', '2022-11-06 08:23:10'),
(18, 0, 'product_information_oc30x.ocmod.zip', '2022-11-06 08:23:31'),
(19, 0, 'art_aqa_product_oc3.x.ocmod.zip', '2022-11-06 08:24:37'),
(20, 0, 'SeoUrl3x.ocmod.zip', '2022-11-06 08:30:52'),
(21, 0, 'limit-autocomplete_oc3.ocmod.zip', '2022-11-06 08:31:05'),
(22, 0, 'breadcrumbs_with_micro_data_oc3.x.ocmod.zip', '2022-11-06 08:31:22'),
(23, 0, 'HP_Notification_Link_OC 3.ocmod.zip', '2022-11-06 08:31:49'),
(24, 0, 'quickview-3x.ocmod.zip', '2022-11-06 08:32:53'),
(25, 0, 'seopro.3.0.21.12.20-17.ocmod.zip', '2022-11-06 08:33:15'),
(26, 0, 'layout-modules-sort_OC23x-30x.ocmod.zip', '2022-11-06 08:33:33'),
(27, 0, 'order_delete_button.ocmod.zip', '2022-11-06 08:33:52'),
(28, 0, 'tool-bar_oc3x.ocmod.zip', '2022-11-06 08:34:39'),
(29, 0, 'phone_and_email_in_order_list_oc3.x.ocmod.zip', '2022-11-06 08:34:54'),
(30, 0, 'hide-disabled-langs_oc20_30.ocmod.zip', '2022-11-06 08:35:07'),
(31, 0, 'yandex-market_oc3.ocmod.zip', '2022-11-06 08:35:24'),
(32, 0, 'custom-login-form_oc30.ocmod.zip', '2022-11-06 08:35:35'),
(33, 0, 'autocalc_price_option_oc3_v4.1.8.ocmod.zip', '2022-11-06 08:35:46'),
(34, 0, 'admin_extension_installer_modificationrefresh_add_oc30.ocmod.zip', '2022-11-06 08:36:08'),
(35, 0, 'editrobots_oc3x.ocmod.zip', '2022-11-06 08:36:18'),
(36, 0, 'quicksave-3x.ocmod.zip', '2022-11-06 08:36:28'),
(37, 0, '[opencart.name]cookie_agree-oc3.0.2.ocmod.zip', '2022-11-11 19:59:30'),
(38, 0, '[opencart.name]counters.3.0.ocmod.zip', '2022-11-11 19:59:40'),
(39, 0, '[opencart.name]set_svg_ico.ocmod.zip', '2022-11-11 19:59:50'),
(40, 0, '[opencart.name]user.group.visual.3.x.ocmod.zip', '2022-11-11 20:00:09'),
(41, 0, 'cdek_1510_for_opencart3.ocmod.zip', '2022-11-12 20:53:01'),
(42, 0, 'Russian_post_calculation_v0_9_2_for_oc_3_0_gixoc.ocmod.zip', '2022-11-12 20:53:07'),
(43, 0, 'robokassa-cms-opencart-master.ocmod.zip', '2022-11-12 20:53:20'),
(44, 0, 'sberbank_oc3.ocmod.zip', '2022-11-12 20:53:25'),
(45, 0, 'yakassa_spk_modification-2.3.2.ocmod.zip', '2022-11-12 20:53:32'),
(46, 0, 'cash_on_delivery_oc3.x.ocmod.zip', '2022-11-12 20:53:38'),
(47, 0, '[opencart.name]counters.3.0.ocmod.zip', '2022-11-13 09:59:48'),
(53, 0, 'svg-support.ocmod.zip', '2022-11-14 18:11:06'),
(52, 0, 'custom-header-footer-script.ocmod.zip', '2022-11-14 18:10:53'),
(51, 0, 'ocfilter.opencart-3.ocmod.zip', '2022-11-13 10:12:48');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 3, 'admin/language/it-it', '2022-11-05 01:25:03'),
(2, 3, 'admin/language/it-it/extension', '2022-11-05 01:25:03'),
(3, 3, 'admin/view/image/bg-2.jpg', '2022-11-05 01:25:03'),
(4, 3, 'admin/view/stylesheet/dashboard.css', '2022-11-05 01:25:03'),
(5, 3, 'admin/controller/extension/dashboard/category.php', '2022-11-05 01:25:03'),
(6, 3, 'admin/controller/extension/dashboard/product.php', '2022-11-05 01:25:03'),
(7, 3, 'admin/language/it-it/extension/dashboard', '2022-11-05 01:25:03'),
(8, 3, 'admin/language/en-gb/extension/dashboard/category.php', '2022-11-05 01:25:03'),
(9, 3, 'admin/language/en-gb/extension/dashboard/product.php', '2022-11-05 01:25:03'),
(10, 3, 'admin/language/it-it/extension/dashboard/category.php', '2022-11-05 01:25:03'),
(11, 3, 'admin/language/it-it/extension/dashboard/product.php', '2022-11-05 01:25:03'),
(12, 3, 'admin/view/template/extension/dashboard/category_form.twig', '2022-11-05 01:25:03'),
(13, 3, 'admin/view/template/extension/dashboard/informa_category_info.twig', '2022-11-05 01:25:03'),
(14, 3, 'admin/view/template/extension/dashboard/informa_customer_info.twig', '2022-11-05 01:25:03'),
(15, 3, 'admin/view/template/extension/dashboard/informa_online_info.twig', '2022-11-05 01:25:03'),
(16, 3, 'admin/view/template/extension/dashboard/informa_order_info.twig', '2022-11-05 01:25:03'),
(17, 3, 'admin/view/template/extension/dashboard/informa_product_info.twig', '2022-11-05 01:25:03'),
(18, 3, 'admin/view/template/extension/dashboard/informa_sale_info.twig', '2022-11-05 01:25:03'),
(19, 3, 'admin/view/template/extension/dashboard/product_form.twig', '2022-11-05 01:25:03'),
(20, 6, 'catalog/view/javascript/mmos_ajax_search.js', '2022-11-05 01:42:26'),
(21, 6, 'admin/controller/extension/module/mmos_ajax_search.php', '2022-11-05 01:42:26'),
(22, 6, 'catalog/controller/extension/module/mmos_ajax_search.php', '2022-11-05 01:42:26'),
(23, 6, 'catalog/model/extension/module/mmos_ajax_search.php', '2022-11-05 01:42:26'),
(24, 6, 'admin/language/en-gb/extension/module/mmos_ajax_search.php', '2022-11-05 01:42:26'),
(25, 6, 'admin/view/template/extension/module/mmos_ajax_search.twig', '2022-11-05 01:42:26'),
(26, 8, 'admin/model/extension/module', '2022-11-05 01:54:50'),
(27, 8, 'admin/controller/extension/module/oc3x_storage_cleaner.php', '2022-11-05 01:54:50'),
(28, 8, 'admin/model/extension/module/oc3x_storage_cleaner.php', '2022-11-05 01:54:50'),
(29, 8, 'admin/language/en-gb/extension/module/oc3x_storage_cleaner.php', '2022-11-05 01:54:50'),
(30, 8, 'admin/language/ru-ru/extension/module/oc3x_storage_cleaner.php', '2022-11-05 01:54:50'),
(31, 8, 'admin/view/template/extension/module/oc3x_storage_cleaner.twig', '2022-11-05 01:54:50'),
(32, 11, 'admin/view/javascript/multiselect', '2022-11-05 02:13:26'),
(33, 11, 'admin/view/javascript/timer', '2022-11-05 02:13:26'),
(34, 11, 'admin/view/stylesheet/colorpicker.css', '2022-11-05 02:13:26'),
(35, 11, 'admin/view/stylesheet/timer.css', '2022-11-05 02:13:26'),
(36, 11, 'catalog/view/javascript/timer', '2022-11-05 02:13:26'),
(37, 11, 'admin/controller/extension/module/timer.php', '2022-11-05 02:13:26'),
(38, 11, 'admin/model/extension/module/timer.php', '2022-11-05 02:13:26'),
(39, 11, 'admin/view/javascript/multiselect/multiple-select.css', '2022-11-05 02:13:26'),
(40, 11, 'admin/view/javascript/multiselect/multiple-select.js', '2022-11-05 02:13:26'),
(41, 11, 'admin/view/javascript/multiselect/multiple-select.png', '2022-11-05 02:13:26'),
(42, 11, 'admin/view/javascript/timer/colorpicker.js', '2022-11-05 02:13:26'),
(43, 11, 'admin/view/javascript/timer/jquery.onoff.js', '2022-11-05 02:13:26'),
(44, 11, 'catalog/model/extension/module/timer.php', '2022-11-05 02:13:26'),
(45, 11, 'catalog/view/javascript/timer/css', '2022-11-05 02:13:26'),
(46, 11, 'catalog/view/javascript/timer/image', '2022-11-05 02:13:26'),
(47, 11, 'catalog/view/javascript/timer/jquery.countdown-ar.js', '2022-11-05 02:13:26'),
(48, 11, 'catalog/view/javascript/timer/jquery.countdown-bg.js', '2022-11-05 02:13:26'),
(49, 11, 'catalog/view/javascript/timer/jquery.countdown-bn.js', '2022-11-05 02:13:26'),
(50, 11, 'catalog/view/javascript/timer/jquery.countdown-bs.js', '2022-11-05 02:13:26'),
(51, 11, 'catalog/view/javascript/timer/jquery.countdown-ca.js', '2022-11-05 02:13:26'),
(52, 11, 'catalog/view/javascript/timer/jquery.countdown-cs.js', '2022-11-05 02:13:26'),
(53, 11, 'catalog/view/javascript/timer/jquery.countdown-cy.js', '2022-11-05 02:13:26'),
(54, 11, 'catalog/view/javascript/timer/jquery.countdown-da.js', '2022-11-05 02:13:26'),
(55, 11, 'catalog/view/javascript/timer/jquery.countdown-de.js', '2022-11-05 02:13:26'),
(56, 11, 'catalog/view/javascript/timer/jquery.countdown-el.js', '2022-11-05 02:13:26'),
(57, 11, 'catalog/view/javascript/timer/jquery.countdown-es.js', '2022-11-05 02:13:26'),
(58, 11, 'catalog/view/javascript/timer/jquery.countdown-et.js', '2022-11-05 02:13:26'),
(59, 11, 'catalog/view/javascript/timer/jquery.countdown-fa.js', '2022-11-05 02:13:26'),
(60, 11, 'catalog/view/javascript/timer/jquery.countdown-fi.js', '2022-11-05 02:13:26'),
(61, 11, 'catalog/view/javascript/timer/jquery.countdown-fo.js', '2022-11-05 02:13:26'),
(62, 11, 'catalog/view/javascript/timer/jquery.countdown-fr.js', '2022-11-05 02:13:26'),
(63, 11, 'catalog/view/javascript/timer/jquery.countdown-gl.js', '2022-11-05 02:13:26'),
(64, 11, 'catalog/view/javascript/timer/jquery.countdown-gu.js', '2022-11-05 02:13:26'),
(65, 11, 'catalog/view/javascript/timer/jquery.countdown-he.js', '2022-11-05 02:13:26'),
(66, 11, 'catalog/view/javascript/timer/jquery.countdown-hr.js', '2022-11-05 02:13:26'),
(67, 11, 'catalog/view/javascript/timer/jquery.countdown-hu.js', '2022-11-05 02:13:26'),
(68, 11, 'catalog/view/javascript/timer/jquery.countdown-hy.js', '2022-11-05 02:13:26'),
(69, 11, 'catalog/view/javascript/timer/jquery.countdown-id.js', '2022-11-05 02:13:26'),
(70, 11, 'catalog/view/javascript/timer/jquery.countdown-is.js', '2022-11-05 02:13:26'),
(71, 11, 'catalog/view/javascript/timer/jquery.countdown-it.js', '2022-11-05 02:13:26'),
(72, 11, 'catalog/view/javascript/timer/jquery.countdown-ja.js', '2022-11-05 02:13:26'),
(73, 11, 'catalog/view/javascript/timer/jquery.countdown-kn.js', '2022-11-05 02:13:26'),
(74, 11, 'catalog/view/javascript/timer/jquery.countdown-ko.js', '2022-11-05 02:13:26'),
(75, 11, 'catalog/view/javascript/timer/jquery.countdown-lt.js', '2022-11-05 02:13:26'),
(76, 11, 'catalog/view/javascript/timer/jquery.countdown-lv.js', '2022-11-05 02:13:26'),
(77, 11, 'catalog/view/javascript/timer/jquery.countdown-ml.js', '2022-11-05 02:13:26'),
(78, 11, 'catalog/view/javascript/timer/jquery.countdown-ms.js', '2022-11-05 02:13:26'),
(79, 11, 'catalog/view/javascript/timer/jquery.countdown-my.js', '2022-11-05 02:13:26'),
(80, 11, 'catalog/view/javascript/timer/jquery.countdown-nb.js', '2022-11-05 02:13:26'),
(81, 11, 'catalog/view/javascript/timer/jquery.countdown-nl.js', '2022-11-05 02:13:26'),
(82, 11, 'catalog/view/javascript/timer/jquery.countdown-pl.js', '2022-11-05 02:13:26'),
(83, 11, 'catalog/view/javascript/timer/jquery.countdown-ro.js', '2022-11-05 02:13:26'),
(84, 11, 'catalog/view/javascript/timer/jquery.countdown-ru.js', '2022-11-05 02:13:26'),
(85, 11, 'catalog/view/javascript/timer/jquery.countdown-sk.js', '2022-11-05 02:13:26'),
(86, 11, 'catalog/view/javascript/timer/jquery.countdown-sl.js', '2022-11-05 02:13:26'),
(87, 11, 'catalog/view/javascript/timer/jquery.countdown-sq.js', '2022-11-05 02:13:26'),
(88, 11, 'catalog/view/javascript/timer/jquery.countdown-sr.js', '2022-11-05 02:13:26'),
(89, 11, 'catalog/view/javascript/timer/jquery.countdown-sv.js', '2022-11-05 02:13:26'),
(90, 11, 'catalog/view/javascript/timer/jquery.countdown-th.js', '2022-11-05 02:13:26'),
(91, 11, 'catalog/view/javascript/timer/jquery.countdown-tr.js', '2022-11-05 02:13:26'),
(92, 11, 'catalog/view/javascript/timer/jquery.countdown-uk.js', '2022-11-05 02:13:26'),
(93, 11, 'catalog/view/javascript/timer/jquery.countdown-ur.js', '2022-11-05 02:13:26'),
(94, 11, 'catalog/view/javascript/timer/jquery.countdown-uz.js', '2022-11-05 02:13:26'),
(95, 11, 'catalog/view/javascript/timer/jquery.countdown-vi.js', '2022-11-05 02:13:26'),
(96, 11, 'catalog/view/javascript/timer/jquery.countdown.min.js', '2022-11-05 02:13:26'),
(97, 11, 'catalog/view/javascript/timer/jquery.plugin.min.js', '2022-11-05 02:13:26'),
(98, 11, 'admin/language/en-gb/extension/module/timer.php', '2022-11-05 02:13:26'),
(99, 11, 'admin/language/ru-ru/extension/module/timer.php', '2022-11-05 02:13:26'),
(100, 11, 'admin/view/template/extension/module/timer', '2022-11-05 02:13:26'),
(101, 11, 'catalog/language/en-gb/extension/module/timer.php', '2022-11-05 02:13:26'),
(102, 11, 'catalog/language/ru-ru/extension/module/timer.php', '2022-11-05 02:13:26'),
(103, 11, 'catalog/view/javascript/timer/css/timer.css', '2022-11-05 02:13:26'),
(104, 11, 'catalog/view/javascript/timer/image/loading.gif', '2022-11-05 02:13:26'),
(105, 11, 'admin/view/template/extension/module/timer/js_part.twig', '2022-11-05 02:13:26'),
(106, 11, 'admin/view/template/extension/module/timer/main.twig', '2022-11-05 02:13:26'),
(107, 11, 'admin/view/template/extension/module/timer/part_additional_catalog_settings.twig', '2022-11-05 02:13:26'),
(108, 11, 'admin/view/template/extension/module/timer/part_category_list.twig', '2022-11-05 02:13:26'),
(109, 11, 'admin/view/template/extension/module/timer/part_filters_edit_delete_specials.twig', '2022-11-05 02:13:26'),
(110, 11, 'admin/view/template/extension/module/timer/part_include_products.twig', '2022-11-05 02:13:26'),
(111, 11, 'admin/view/template/extension/module/timer/part_manufacturer_list.twig', '2022-11-05 02:13:26'),
(112, 11, 'admin/view/template/extension/module/timer/part_special_params.twig', '2022-11-05 02:13:26'),
(113, 12, 'system/FastEdit.install.mod.ocmod.xml', '2022-11-05 02:13:36'),
(114, 12, 'admin/controller/catalog/edit_product.php', '2022-11-05 02:13:36'),
(115, 12, 'admin/view/javascript/bootstrap/img', '2022-11-05 02:13:36'),
(116, 12, 'admin/view/template/catalog/edit_product_list.twig', '2022-11-05 02:13:36'),
(117, 12, 'admin/view/javascript/bootstrap/css/bootstrap-editable.css', '2022-11-05 02:13:36'),
(118, 12, 'admin/view/javascript/bootstrap/css/bootstrap-toggle.min.css', '2022-11-05 02:13:36'),
(119, 12, 'admin/view/javascript/bootstrap/img/clear.png', '2022-11-05 02:13:36'),
(120, 12, 'admin/view/javascript/bootstrap/img/loading.gif', '2022-11-05 02:13:36'),
(121, 12, 'admin/view/javascript/bootstrap/js/bootstrap-editable.min.js', '2022-11-05 02:13:36'),
(122, 12, 'admin/view/javascript/bootstrap/js/bootstrap-toggle.min.js', '2022-11-05 02:13:36'),
(123, 12, 'admin/view/javascript/bootstrap/js/main-editable.js', '2022-11-05 02:13:36'),
(124, 13, 'admin/controller/extension/module/hours_and_days.php', '2022-11-05 02:13:47'),
(125, 13, 'admin/model/extension/module/hours_and_days.php', '2022-11-05 02:13:47'),
(126, 13, 'admin/view/javascript/multiselect/multiple-select.css', '2022-11-05 02:13:47'),
(127, 13, 'admin/view/javascript/multiselect/multiple-select.js', '2022-11-05 02:13:47'),
(128, 13, 'admin/view/javascript/multiselect/multiple-select.png', '2022-11-05 02:13:47'),
(129, 13, 'admin/language/en-gb/extension/module/hours_and_days.php', '2022-11-05 02:13:47'),
(130, 13, 'admin/language/ru-ru/extension/module/hours_and_days.php', '2022-11-05 02:13:47'),
(131, 13, 'admin/view/template/extension/module/hours_and_days.twig', '2022-11-05 02:13:47'),
(132, 14, 'admin/model/extension/module/modification_manager.php', '2022-11-05 02:17:48'),
(133, 14, 'admin/view/javascript/codemirror/mode', '2022-11-05 02:17:48'),
(134, 14, 'admin/view/javascript/codemirror/lib/codemirror.css', '2022-11-05 02:17:48'),
(135, 14, 'admin/view/javascript/codemirror/lib/codemirror.js', '2022-11-05 02:17:48'),
(136, 14, 'admin/view/javascript/codemirror/mode/xml', '2022-11-05 02:17:48'),
(137, 14, 'admin/view/template/extension/module/modification_manager', '2022-11-05 02:17:48'),
(138, 14, 'admin/view/javascript/codemirror/mode/xml/xml.js', '2022-11-05 02:17:48'),
(139, 14, 'admin/view/template/extension/module/modification_manager/form.twig', '2022-11-05 02:17:48'),
(140, 14, 'admin/view/template/extension/module/modification_manager/list.twig', '2022-11-05 02:17:48'),
(141, 18, 'admin/controller/catalog/product_extended.php', '2022-11-06 08:23:32'),
(142, 18, 'admin/model/catalog/product_extended.php', '2022-11-06 08:23:32'),
(143, 18, 'admin/view/template/catalog/product_extended', '2022-11-06 08:23:32'),
(144, 18, 'admin/view/template/catalog/product_extended/product_cart.twig', '2022-11-06 08:23:32'),
(145, 18, 'admin/view/template/catalog/product_extended/product_info.twig', '2022-11-06 08:23:32'),
(146, 18, 'admin/view/template/catalog/product_extended/product_order.twig', '2022-11-06 08:23:32'),
(147, 18, 'admin/view/template/catalog/product_extended/product_review.twig', '2022-11-06 08:23:32'),
(148, 18, 'admin/view/template/catalog/product_extended/product_wishlist.twig', '2022-11-06 08:23:32'),
(149, 19, 'admin/language/uk-ua', '2022-11-06 08:24:37'),
(150, 19, 'catalog/language/uk-ua', '2022-11-06 08:24:37'),
(151, 19, 'admin/language/uk-ua/extension', '2022-11-06 08:24:37'),
(152, 19, 'catalog/language/uk-ua/extension', '2022-11-06 08:24:37'),
(153, 19, 'admin/controller/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(154, 19, 'admin/language/uk-ua/extension/module', '2022-11-06 08:24:37'),
(155, 19, 'admin/model/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(156, 19, 'catalog/controller/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(157, 19, 'catalog/language/uk-ua/extension/module', '2022-11-06 08:24:37'),
(158, 19, 'catalog/model/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(159, 19, 'admin/language/en-gb/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(160, 19, 'admin/language/ru-ru/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(161, 19, 'admin/language/uk-ua/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(162, 19, 'admin/view/template/extension/module/art_aqa_product.twig', '2022-11-06 08:24:37'),
(163, 19, 'admin/view/template/extension/module/art_aqa_product_edit.twig', '2022-11-06 08:24:37'),
(164, 19, 'catalog/language/en-gb/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(165, 19, 'catalog/language/ru-ru/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(166, 19, 'catalog/language/uk-ua/extension/module/art_aqa_product.php', '2022-11-06 08:24:37'),
(167, 19, 'catalog/view/theme/default/template/extension/module/art_aqa_product.twig', '2022-11-06 08:24:37'),
(168, 19, 'catalog/view/theme/default/template/extension/module/art_aqa_product_form.twig', '2022-11-06 08:24:37'),
(169, 19, 'catalog/view/theme/default/template/extension/module/art_aqa_product_questions.twig', '2022-11-06 08:24:37'),
(170, 19, 'catalog/view/theme/default/template/extension/module/art_aqa_product_success.twig', '2022-11-06 08:24:37'),
(171, 20, 'admin/model/catalog/autourl.php', '2022-11-06 08:30:52'),
(172, 20, 'admin/controller/extension/module/autourl.php', '2022-11-06 08:30:52'),
(173, 20, 'admin/language/ru-ru/extension/module/autourl.php', '2022-11-06 08:30:52'),
(174, 20, 'admin/view/template/extension/module/autourl.twig', '2022-11-06 08:30:52'),
(175, 23, 'admin/model/report/customer.php', '2022-11-06 08:31:49'),
(176, 25, 'system/config/sla_seo_pro.php', '2022-11-06 08:33:16'),
(177, 25, 'system/config/sla_seo_pro.xml', '2022-11-06 08:33:16'),
(178, 25, 'system/library/slaseopro.php', '2022-11-06 08:33:16'),
(179, 25, 'admin/controller/extension/module/sla_seo_pro.php', '2022-11-06 08:33:16'),
(180, 25, 'admin/language/en-gb/extension/module/sla_seo_pro.php', '2022-11-06 08:33:16'),
(181, 25, 'admin/language/ru-ru/extension/module/sla_seo_pro.php', '2022-11-06 08:33:16'),
(182, 25, 'admin/view/template/extension/module/sla_seo_pro.twig', '2022-11-06 08:33:16'),
(183, 26, 'admin/view/javascript/jquery/jquery-ui-custom.min.js', '2022-11-06 08:33:34'),
(184, 31, 'catalog/model/export', '2022-11-06 08:35:25'),
(185, 31, 'catalog/model/export/yandex_market.php', '2022-11-06 08:35:25'),
(186, 31, 'admin/controller/extension/feed/yandex_market.php', '2022-11-06 08:35:25'),
(187, 31, 'catalog/controller/extension/feed/yandex_market.php', '2022-11-06 08:35:25'),
(188, 31, 'admin/language/en-gb/extension/feed/yandex_market.php', '2022-11-06 08:35:25'),
(189, 31, 'admin/language/ru-ru/extension/feed/yandex_market.php', '2022-11-06 08:35:25'),
(190, 31, 'admin/view/template/extension/feed/yandex_market.twig', '2022-11-06 08:35:25'),
(191, 32, 'admin/view/template/common/login.twig', '2022-11-06 08:35:36'),
(192, 35, 'admin/controller/extension/module/gixocrobots.php', '2022-11-06 08:36:19'),
(193, 35, 'admin/language/en-gb/extension/module/gixocrobots.php', '2022-11-06 08:36:19'),
(194, 35, 'admin/language/ru-ru/extension/module/gixocrobots.php', '2022-11-06 08:36:19'),
(195, 35, 'admin/view/template/extension/module/gixocrobots.twig', '2022-11-06 08:36:19'),
(196, 37, 'admin/language/ru', '2022-11-11 19:59:31'),
(197, 37, 'admin/language/ru/extension', '2022-11-11 19:59:31'),
(198, 37, 'catalog/view/javascript/cookies-alert-core.js', '2022-11-11 19:59:31'),
(199, 37, 'catalog/view/javascript/cookies-alert-script.js', '2022-11-11 19:59:31'),
(200, 37, 'admin/controller/extension/module/agree_cookie.php', '2022-11-11 19:59:31'),
(201, 37, 'admin/language/ru/extension/module', '2022-11-11 19:59:31'),
(202, 37, 'admin/language/ru/extension/module/agree_cookie.php', '2022-11-11 19:59:31'),
(203, 37, 'admin/language/ru-ru/extension/module/agree_cookie.php', '2022-11-11 19:59:31'),
(204, 37, 'admin/view/template/extension/module/agree_cookie.twig', '2022-11-11 19:59:31'),
(205, 41, 'admin/cdek_integrator_cron.php', '2022-11-12 20:53:01'),
(206, 41, 'system/config/cdekcron.php', '2022-11-12 20:53:01'),
(207, 41, 'system/library/cdek_integrator', '2022-11-12 20:53:01'),
(208, 41, 'admin/controller/tool/cdektool.php', '2022-11-12 20:53:01'),
(209, 41, 'admin/model/tool/cdektool.php', '2022-11-12 20:53:01'),
(210, 41, 'admin/view/image/cdek', '2022-11-12 20:53:01'),
(211, 41, 'admin/view/image/cdek_integrator', '2022-11-12 20:53:01'),
(212, 41, 'admin/view/image/shipping-cdek.png', '2022-11-12 20:53:01'),
(213, 41, 'admin/view/stylesheet/cdek.css', '2022-11-12 20:53:01'),
(214, 41, 'admin/view/stylesheet/cdek_integrator.css', '2022-11-12 20:53:01'),
(215, 41, 'admin/view/stylesheet/chosen', '2022-11-12 20:53:01'),
(216, 41, 'catalog/controller/event/cdekshipping.php', '2022-11-12 20:53:01'),
(217, 41, 'catalog/controller/extension/shipping', '2022-11-12 20:53:01'),
(218, 41, 'catalog/view/javascript/sdek.js', '2022-11-12 20:53:01'),
(219, 41, 'system/library/cdek_integrator/cdek_city.json', '2022-11-12 20:53:01'),
(220, 41, 'system/library/cdek_integrator/class.app.php', '2022-11-12 20:53:01'),
(221, 41, 'system/library/cdek_integrator/class.cdek_integrator.php', '2022-11-12 20:53:01'),
(222, 41, 'system/library/cdek_integrator/class.cdek_logger.php', '2022-11-12 20:53:01'),
(223, 41, 'system/library/cdek_integrator/class.parser_json.php', '2022-11-12 20:53:01'),
(224, 41, 'system/library/cdek_integrator/class.parser_original.php', '2022-11-12 20:53:01'),
(225, 41, 'system/library/cdek_integrator/class.parser_xml.php', '2022-11-12 20:53:01'),
(226, 41, 'system/library/cdek_integrator/class.response_parser.php', '2022-11-12 20:53:01'),
(227, 41, 'system/library/cdek_integrator/components', '2022-11-12 20:53:01'),
(228, 41, 'system/library/cdek_integrator/ocapi.php', '2022-11-12 20:53:01'),
(229, 41, 'system/library/cdek_integrator/sessionfile', '2022-11-12 20:53:01'),
(230, 41, 'admin/controller/extension/module/cdek_integrator.php', '2022-11-12 20:53:01'),
(231, 41, 'admin/controller/extension/payment/cod_cdek.php', '2022-11-12 20:53:01'),
(232, 41, 'admin/controller/extension/shipping/cdek.php', '2022-11-12 20:53:01'),
(233, 41, 'admin/controller/extension/total/cdek.php', '2022-11-12 20:53:01'),
(234, 41, 'admin/model/extension/module/cdek_integrator.php', '2022-11-12 20:53:01'),
(235, 41, 'admin/view/image/cdek/cdeklogo.png', '2022-11-12 20:53:01'),
(236, 41, 'admin/view/image/cdek/draggable.png', '2022-11-12 20:53:01'),
(237, 41, 'admin/view/image/cdek_integrator/loader.gif', '2022-11-12 20:53:01'),
(238, 41, 'admin/view/image/cdek_integrator/reload.png', '2022-11-12 20:53:01'),
(239, 41, 'admin/view/image/payment/cod_cdek.png', '2022-11-12 20:53:01'),
(240, 41, 'admin/view/javascript/jquery/cdek_integrator.js', '2022-11-12 20:53:01'),
(241, 41, 'admin/view/javascript/jquery/chosen.jquery.min.js', '2022-11-12 20:53:01'),
(242, 41, 'admin/view/stylesheet/chosen/chosen.min.css', '2022-11-12 20:53:01'),
(243, 41, 'admin/view/template/tool/cdektool.twig', '2022-11-12 20:53:01'),
(244, 41, 'catalog/controller/extension/payment/cod_cdek.php', '2022-11-12 20:53:01'),
(245, 41, 'catalog/controller/extension/shipping/cdek.php', '2022-11-12 20:53:01'),
(246, 41, 'catalog/model/extension/payment/cod_cdek.php', '2022-11-12 20:53:01'),
(247, 41, 'catalog/model/extension/shipping/CalculatePriceDeliveryCdek.php', '2022-11-12 20:53:01'),
(248, 41, 'catalog/model/extension/shipping/cdek.php', '2022-11-12 20:53:01'),
(249, 41, 'catalog/model/extension/total/cdek.php', '2022-11-12 20:53:01'),
(250, 41, 'system/library/cdek_integrator/components/class.info.php', '2022-11-12 20:53:01'),
(251, 41, 'system/library/cdek_integrator/components/class.order_delete.php', '2022-11-12 20:53:01'),
(252, 41, 'system/library/cdek_integrator/components/class.order_info.php', '2022-11-12 20:53:01'),
(253, 41, 'system/library/cdek_integrator/components/class.order_print.php', '2022-11-12 20:53:01'),
(254, 41, 'system/library/cdek_integrator/components/class.order_status.php', '2022-11-12 20:53:01'),
(255, 41, 'system/library/cdek_integrator/components/class.orders.php', '2022-11-12 20:53:01'),
(256, 41, 'system/library/cdek_integrator/components/interface.exchange.php', '2022-11-12 20:53:01'),
(257, 41, 'admin/language/en-gb/extension/module/cdek_integrator.php', '2022-11-12 20:53:01'),
(258, 41, 'admin/language/en-gb/extension/payment/cod_cdek.php', '2022-11-12 20:53:01'),
(259, 41, 'admin/language/en-gb/extension/shipping/cdek.php', '2022-11-12 20:53:01'),
(260, 41, 'admin/language/en-gb/extension/total/cod_cdek_total.php', '2022-11-12 20:53:01'),
(261, 41, 'admin/language/ru-ru/extension/module/cdek_integrator.php', '2022-11-12 20:53:01'),
(262, 41, 'admin/language/ru-ru/extension/payment/cod_cdek.php', '2022-11-12 20:53:01'),
(263, 41, 'admin/language/ru-ru/extension/shipping/cdek.php', '2022-11-12 20:53:01'),
(264, 41, 'admin/language/ru-ru/extension/total/cdek.php', '2022-11-12 20:53:01'),
(265, 41, 'admin/language/ru-ru/extension/total/cod_cdek_total.php', '2022-11-12 20:53:01'),
(266, 41, 'admin/view/template/extension/module/cdek_integrator', '2022-11-12 20:53:01'),
(267, 41, 'admin/view/template/extension/payment/cod_cdek.twig', '2022-11-12 20:53:01'),
(268, 41, 'admin/view/template/extension/shipping/cdek.twig', '2022-11-12 20:53:01'),
(269, 41, 'admin/view/template/extension/total/cdek.twig', '2022-11-12 20:53:01'),
(270, 41, 'catalog/language/en-gb/extension/payment/cod_cdek.php', '2022-11-12 20:53:01'),
(271, 41, 'catalog/language/en-gb/extension/shipping/cdek.php', '2022-11-12 20:53:01'),
(272, 41, 'catalog/language/en-gb/extension/total/cdek.php', '2022-11-12 20:53:01'),
(273, 41, 'catalog/language/ru-ru/extension/payment/cod_cdek.php', '2022-11-12 20:53:01'),
(274, 41, 'catalog/language/ru-ru/extension/shipping/cdek.php', '2022-11-12 20:53:01'),
(275, 41, 'catalog/language/ru-ru/extension/total/cdek.php', '2022-11-12 20:53:01'),
(276, 41, 'catalog/view/theme/default/stylesheet/sdek.css', '2022-11-12 20:53:01'),
(277, 41, 'admin/view/template/extension/module/cdek_integrator/cdek_integrator.twig', '2022-11-12 20:53:01'),
(278, 41, 'admin/view/template/extension/module/cdek_integrator/dispatch_info.twig', '2022-11-12 20:53:01'),
(279, 41, 'admin/view/template/extension/module/cdek_integrator/dispatch_info_full.twig', '2022-11-12 20:53:01'),
(280, 41, 'admin/view/template/extension/module/cdek_integrator/dispatch_list.twig', '2022-11-12 20:53:01'),
(281, 41, 'admin/view/template/extension/module/cdek_integrator/help.twig', '2022-11-12 20:53:01'),
(282, 41, 'admin/view/template/extension/module/cdek_integrator/license.twig', '2022-11-12 20:53:01'),
(283, 41, 'admin/view/template/extension/module/cdek_integrator/option.twig', '2022-11-12 20:53:01'),
(284, 41, 'admin/view/template/extension/module/cdek_integrator/order_form.twig', '2022-11-12 20:53:01'),
(285, 41, 'admin/view/template/extension/module/cdek_integrator/order_list.twig', '2022-11-12 20:53:01'),
(286, 41, 'admin/view/template/extension/module/cdek_integrator/page.twig', '2022-11-12 20:53:01'),
(287, 41, 'catalog/view/theme/default/template/extension/shipping', '2022-11-12 20:53:01'),
(288, 41, 'catalog/view/theme/default/template/extension/payment/cod_cdek.twig', '2022-11-12 20:53:01'),
(289, 41, 'catalog/view/theme/default/template/extension/shipping/sdek.twig', '2022-11-12 20:53:01'),
(290, 42, 'image/catalog/gixoc', '2022-11-12 20:53:07'),
(291, 42, 'system/library/gixoc', '2022-11-12 20:53:07'),
(292, 42, 'image/catalog/gixoc/shipping', '2022-11-12 20:53:07'),
(293, 42, 'system/library/gixoc/gixoc.php', '2022-11-12 20:53:07'),
(294, 42, 'system/library/gixoc/postprice.php', '2022-11-12 20:53:07'),
(295, 42, 'admin/controller/extension/shipping/gixocruspostcalc.php', '2022-11-12 20:53:07'),
(296, 42, 'catalog/model/extension/shipping/gixocruspostcalc.php', '2022-11-12 20:53:07'),
(297, 42, 'image/catalog/gixoc/shipping/russianpost', '2022-11-12 20:53:07'),
(298, 42, 'admin/language/ru-ru/extension/shipping/gixocruspostcalc.php', '2022-11-12 20:53:07'),
(299, 42, 'admin/view/template/extension/module/gixochelp', '2022-11-12 20:53:07'),
(300, 42, 'admin/view/template/extension/shipping/gixocruspostcalc.twig', '2022-11-12 20:53:07'),
(301, 42, 'catalog/language/ru-ru/extension/shipping/gixocruspostcalc.php', '2022-11-12 20:53:07'),
(302, 42, 'image/catalog/gixoc/shipping/russianpost/russianpost_logo.png', '2022-11-12 20:53:07'),
(303, 42, 'admin/view/template/extension/module/gixochelp/extension_shipping_gixocruspostcalc', '2022-11-12 20:53:07'),
(304, 42, 'admin/view/template/extension/module/gixochelp/extension_shipping_gixocruspostcalc/help_license.twig', '2022-11-12 20:53:07'),
(305, 42, 'admin/view/template/extension/module/gixochelp/extension_shipping_gixocruspostcalc/help_support.twig', '2022-11-12 20:53:07'),
(306, 42, 'admin/view/template/extension/module/gixochelp/extension_shipping_gixocruspostcalc/help_thanks.twig', '2022-11-12 20:53:07'),
(307, 43, 'admin/controller/extension/payment/robokassa.php', '2022-11-12 20:53:20'),
(308, 43, 'admin/view/image/payment/robokassa.png', '2022-11-12 20:53:20'),
(309, 43, 'catalog/controller/extension/payment/robokassa.php', '2022-11-12 20:53:20'),
(310, 43, 'catalog/model/extension/payment/robokassa.php', '2022-11-12 20:53:20'),
(311, 43, 'admin/language/en-gb/extension/payment/robokassa.php', '2022-11-12 20:53:20'),
(312, 43, 'admin/language/ru-ru/extension/payment/robokassa.php', '2022-11-12 20:53:20'),
(313, 43, 'admin/view/template/extension/payment/robokassa.twig', '2022-11-12 20:53:20'),
(314, 43, 'catalog/language/en-gb/extension/payment/robokassa.php', '2022-11-12 20:53:20'),
(315, 43, 'catalog/language/en-gb/extension/payment/robokassa_payment.php', '2022-11-12 20:53:20'),
(316, 43, 'catalog/language/ru-ru/extension/payment/robokassa.php', '2022-11-12 20:53:20'),
(317, 43, 'catalog/view/theme/default/template/extension/payment/robokassa.twig', '2022-11-12 20:53:20'),
(318, 44, 'system/library/rbs.php', '2022-11-12 20:53:25'),
(319, 44, 'admin/controller/extension/payment/rbs.php', '2022-11-12 20:53:25'),
(320, 44, 'admin/view/image/payment/rbs.png', '2022-11-12 20:53:25'),
(321, 44, 'catalog/controller/extension/payment/rbs.php', '2022-11-12 20:53:25'),
(322, 44, 'catalog/model/extension/payment/rbs.php', '2022-11-12 20:53:25'),
(323, 44, 'admin/language/ru-ru/extension/payment/rbs.php', '2022-11-12 20:53:25'),
(324, 44, 'admin/view/template/extension/payment/rbs.twig', '2022-11-12 20:53:25'),
(325, 44, 'catalog/language/ru-ru/extension/payment/rbs.php', '2022-11-12 20:53:25'),
(326, 44, 'catalog/view/theme/default/template/error/rbs.twig', '2022-11-12 20:53:25'),
(327, 44, 'catalog/view/theme/default/template/extension/payment/rbs.twig', '2022-11-12 20:53:25'),
(328, 45, 'image/catalog/ajax-loader.gif', '2022-11-12 20:53:32'),
(329, 45, 'image/catalog/yakassa_spk_icons', '2022-11-12 20:53:32'),
(330, 45, 'system/library/yakassa_spk', '2022-11-12 20:53:32'),
(331, 45, 'image/catalog/yakassa_spk_icons/Alfaclick.png', '2022-11-12 20:53:32'),
(332, 45, 'image/catalog/yakassa_spk_icons/Anelik.png', '2022-11-12 20:53:32'),
(333, 45, 'image/catalog/yakassa_spk_icons/ApplePay.png', '2022-11-12 20:53:32'),
(334, 45, 'image/catalog/yakassa_spk_icons/BPay.png', '2022-11-12 20:53:32'),
(335, 45, 'image/catalog/yakassa_spk_icons/BankInteza.png', '2022-11-12 20:53:32'),
(336, 45, 'image/catalog/yakassa_spk_icons/BankTatfondbank.png', '2022-11-12 20:53:32'),
(337, 45, 'image/catalog/yakassa_spk_icons/Beeline.png', '2022-11-12 20:53:32'),
(338, 45, 'image/catalog/yakassa_spk_icons/BitCoin.png', '2022-11-12 20:53:32'),
(339, 45, 'image/catalog/yakassa_spk_icons/CashU.png', '2022-11-12 20:53:32'),
(340, 45, 'image/catalog/yakassa_spk_icons/CellularWorld.png', '2022-11-12 20:53:32'),
(341, 45, 'image/catalog/yakassa_spk_icons/Contact.png', '2022-11-12 20:53:32'),
(342, 45, 'image/catalog/yakassa_spk_icons/CreditCard.png', '2022-11-12 20:53:32'),
(343, 45, 'image/catalog/yakassa_spk_icons/Dixis.png', '2022-11-12 20:53:32'),
(344, 45, 'image/catalog/yakassa_spk_icons/EasyPay.png', '2022-11-12 20:53:32'),
(345, 45, 'image/catalog/yakassa_spk_icons/ElecsnetWallet.png', '2022-11-12 20:53:32'),
(346, 45, 'image/catalog/yakassa_spk_icons/Erip.png', '2022-11-12 20:53:32'),
(347, 45, 'image/catalog/yakassa_spk_icons/Euroset.png', '2022-11-12 20:53:32'),
(348, 45, 'image/catalog/yakassa_spk_icons/Fakturaru.png', '2022-11-12 20:53:32'),
(349, 45, 'image/catalog/yakassa_spk_icons/GooglePay.png', '2022-11-12 20:53:32'),
(350, 45, 'image/catalog/yakassa_spk_icons/HandyBank.png', '2022-11-12 20:53:32'),
(351, 45, 'image/catalog/yakassa_spk_icons/HandyBankBB.png', '2022-11-12 20:53:32'),
(352, 45, 'image/catalog/yakassa_spk_icons/HandyBankBO.png', '2022-11-12 20:53:32'),
(353, 45, 'image/catalog/yakassa_spk_icons/HandyBankFB.png', '2022-11-12 20:53:32'),
(354, 45, 'image/catalog/yakassa_spk_icons/HandyBankFU.png', '2022-11-12 20:53:32'),
(355, 45, 'image/catalog/yakassa_spk_icons/HandyBankKB.png', '2022-11-12 20:53:32'),
(356, 45, 'image/catalog/yakassa_spk_icons/HandyBankKSB.png', '2022-11-12 20:53:32'),
(357, 45, 'image/catalog/yakassa_spk_icons/HandyBankLOB.png', '2022-11-12 20:53:32'),
(358, 45, 'image/catalog/yakassa_spk_icons/HandyBankNSB.png', '2022-11-12 20:53:32'),
(359, 45, 'image/catalog/yakassa_spk_icons/HandyBankTB.png', '2022-11-12 20:53:32'),
(360, 45, 'image/catalog/yakassa_spk_icons/HandyBankVIB.png', '2022-11-12 20:53:32'),
(361, 45, 'image/catalog/yakassa_spk_icons/KazkomBank.png', '2022-11-12 20:53:32'),
(362, 45, 'image/catalog/yakassa_spk_icons/KievStar.png', '2022-11-12 20:53:32'),
(363, 45, 'image/catalog/yakassa_spk_icons/KupiVCredit.png', '2022-11-12 20:53:32'),
(364, 45, 'image/catalog/yakassa_spk_icons/LibertyBank.png', '2022-11-12 20:53:32'),
(365, 45, 'image/catalog/yakassa_spk_icons/Lider.png', '2022-11-12 20:53:32'),
(366, 45, 'image/catalog/yakassa_spk_icons/LiqPayMoney.png', '2022-11-12 20:53:32'),
(367, 45, 'image/catalog/yakassa_spk_icons/MasterCard.png', '2022-11-12 20:53:32'),
(368, 45, 'image/catalog/yakassa_spk_icons/Megafon.png', '2022-11-12 20:53:32'),
(369, 45, 'image/catalog/yakassa_spk_icons/Mobile4.png', '2022-11-12 20:53:32'),
(370, 45, 'image/catalog/yakassa_spk_icons/MobileTerminal.png', '2022-11-12 20:53:32'),
(371, 45, 'image/catalog/yakassa_spk_icons/Mts.png', '2022-11-12 20:53:32'),
(372, 45, 'image/catalog/yakassa_spk_icons/PerfectMoney.png', '2022-11-12 20:53:32'),
(373, 45, 'image/catalog/yakassa_spk_icons/PravexBank.png', '2022-11-12 20:53:32'),
(374, 45, 'image/catalog/yakassa_spk_icons/Privatbank.png', '2022-11-12 20:53:32'),
(375, 45, 'image/catalog/yakassa_spk_icons/PsbRetail.png', '2022-11-12 20:53:32'),
(376, 45, 'image/catalog/yakassa_spk_icons/QiwiWallet.png', '2022-11-12 20:53:32'),
(377, 45, 'image/catalog/yakassa_spk_icons/Robokassa.png', '2022-11-12 20:53:32'),
(378, 45, 'image/catalog/yakassa_spk_icons/Rsb.png', '2022-11-12 20:53:32'),
(379, 45, 'image/catalog/yakassa_spk_icons/RussianPost.png', '2022-11-12 20:53:32'),
(380, 45, 'image/catalog/yakassa_spk_icons/SamsungPay.png', '2022-11-12 20:53:32'),
(381, 45, 'image/catalog/yakassa_spk_icons/Sberbank.png', '2022-11-12 20:53:32'),
(382, 45, 'image/catalog/yakassa_spk_icons/SmartiviGEL.png', '2022-11-12 20:53:32'),
(383, 45, 'image/catalog/yakassa_spk_icons/Svyaznoy.png', '2022-11-12 20:53:32'),
(384, 45, 'image/catalog/yakassa_spk_icons/Tele2.png', '2022-11-12 20:53:32'),
(385, 45, 'image/catalog/yakassa_spk_icons/Tinkoff.png', '2022-11-12 20:53:32'),
(386, 45, 'image/catalog/yakassa_spk_icons/UkrsibBank.png', '2022-11-12 20:53:32'),
(387, 45, 'image/catalog/yakassa_spk_icons/UniMoney.png', '2022-11-12 20:53:32'),
(388, 45, 'image/catalog/yakassa_spk_icons/VTB24.png', '2022-11-12 20:53:32'),
(389, 45, 'image/catalog/yakassa_spk_icons/Viber.png', '2022-11-12 20:53:32'),
(390, 45, 'image/catalog/yakassa_spk_icons/WalletOne.png', '2022-11-12 20:53:32'),
(391, 45, 'image/catalog/yakassa_spk_icons/WebMoney.png', '2022-11-12 20:53:32'),
(392, 45, 'image/catalog/yakassa_spk_icons/YandexKassaList.png', '2022-11-12 20:53:32'),
(393, 45, 'image/catalog/yakassa_spk_icons/YandexMoney.png', '2022-11-12 20:53:32'),
(394, 45, 'image/catalog/yakassa_spk_icons/YandexMoneyList.png', '2022-11-12 20:53:32'),
(395, 45, 'image/catalog/yakassa_spk_icons/YandexPay.png', '2022-11-12 20:53:32'),
(396, 45, 'image/catalog/yakassa_spk_icons/btce.png', '2022-11-12 20:53:32'),
(397, 45, 'image/catalog/yakassa_spk_icons/creditpilot.png', '2022-11-12 20:53:32'),
(398, 45, 'image/catalog/yakassa_spk_icons/forwardmobile.png', '2022-11-12 20:53:32'),
(399, 45, 'image/catalog/yakassa_spk_icons/gazprombank.png', '2022-11-12 20:53:32'),
(400, 45, 'image/catalog/yakassa_spk_icons/kit.png', '2022-11-12 20:53:32'),
(401, 45, 'image/catalog/yakassa_spk_icons/mailru.png', '2022-11-12 20:53:32'),
(402, 45, 'image/catalog/yakassa_spk_icons/masterpass.png', '2022-11-12 20:53:32'),
(403, 45, 'image/catalog/yakassa_spk_icons/mdmbank.png', '2022-11-12 20:53:32'),
(404, 45, 'image/catalog/yakassa_spk_icons/mkb.png', '2022-11-12 20:53:32'),
(405, 45, 'image/catalog/yakassa_spk_icons/murc.png', '2022-11-12 20:53:32'),
(406, 45, 'image/catalog/yakassa_spk_icons/payberry.png', '2022-11-12 20:53:32'),
(407, 45, 'image/catalog/yakassa_spk_icons/payeer.png', '2022-11-12 20:53:32'),
(408, 45, 'image/catalog/yakassa_spk_icons/rosbank.png', '2022-11-12 20:53:32'),
(409, 45, 'image/catalog/yakassa_spk_icons/skysend.png', '2022-11-12 20:53:32'),
(410, 45, 'image/catalog/yakassa_spk_icons/smpbank.png', '2022-11-12 20:53:32'),
(411, 45, 'image/catalog/yakassa_spk_icons/svyazbank.png', '2022-11-12 20:53:32'),
(412, 45, 'image/catalog/yakassa_spk_icons/swift.png', '2022-11-12 20:53:32'),
(413, 45, 'image/catalog/yakassa_spk_icons/ubrir.png', '2022-11-12 20:53:32'),
(414, 45, 'image/catalog/yakassa_spk_icons/w1_spk.png', '2022-11-12 20:53:32'),
(415, 45, 'system/library/yakassa_spk/version.2.3.2.txt', '2022-11-12 20:53:32'),
(416, 45, 'system/library/yakassa_spk/yakassa_spk.php', '2022-11-12 20:53:32'),
(417, 45, 'admin/controller/extension/payment/yakassa_spk.php', '2022-11-12 20:53:32'),
(418, 45, 'admin/controller/extension/payment/yakassa_spk1.php', '2022-11-12 20:53:32'),
(419, 45, 'admin/controller/extension/payment/yakassa_spk10.php', '2022-11-12 20:53:32'),
(420, 45, 'admin/controller/extension/payment/yakassa_spk11.php', '2022-11-12 20:53:32'),
(421, 45, 'admin/controller/extension/payment/yakassa_spk12.php', '2022-11-12 20:53:32'),
(422, 45, 'admin/controller/extension/payment/yakassa_spk13.php', '2022-11-12 20:53:32'),
(423, 45, 'admin/controller/extension/payment/yakassa_spk14.php', '2022-11-12 20:53:32'),
(424, 45, 'admin/controller/extension/payment/yakassa_spk15.php', '2022-11-12 20:53:32'),
(425, 45, 'admin/controller/extension/payment/yakassa_spk16.php', '2022-11-12 20:53:32'),
(426, 45, 'admin/controller/extension/payment/yakassa_spk17.php', '2022-11-12 20:53:32'),
(427, 45, 'admin/controller/extension/payment/yakassa_spk18.php', '2022-11-12 20:53:32'),
(428, 45, 'admin/controller/extension/payment/yakassa_spk19.php', '2022-11-12 20:53:32'),
(429, 45, 'admin/controller/extension/payment/yakassa_spk2.php', '2022-11-12 20:53:32'),
(430, 45, 'admin/controller/extension/payment/yakassa_spk3.php', '2022-11-12 20:53:32'),
(431, 45, 'admin/controller/extension/payment/yakassa_spk4.php', '2022-11-12 20:53:32'),
(432, 45, 'admin/controller/extension/payment/yakassa_spk5.php', '2022-11-12 20:53:32'),
(433, 45, 'admin/controller/extension/payment/yakassa_spk6.php', '2022-11-12 20:53:32'),
(434, 45, 'admin/controller/extension/payment/yakassa_spk7.php', '2022-11-12 20:53:32'),
(435, 45, 'admin/controller/extension/payment/yakassa_spk8.php', '2022-11-12 20:53:32'),
(436, 45, 'admin/controller/extension/payment/yakassa_spk9.php', '2022-11-12 20:53:32'),
(437, 45, 'admin/controller/extension/total/yakassa_spk_total.php', '2022-11-12 20:53:32'),
(438, 45, 'admin/model/extension/payment/yakassa_spk.php', '2022-11-12 20:53:32'),
(439, 45, 'admin/view/image/payment/yakassa_spk.png', '2022-11-12 20:53:32'),
(440, 45, 'catalog/controller/extension/feed/yakassa_spk', '2022-11-12 20:53:32'),
(441, 45, 'catalog/controller/extension/payment/yakassa_spk.php', '2022-11-12 20:53:32'),
(442, 45, 'catalog/controller/extension/payment/yakassa_spk1.php', '2022-11-12 20:53:32'),
(443, 45, 'catalog/controller/extension/payment/yakassa_spk10.php', '2022-11-12 20:53:32'),
(444, 45, 'catalog/controller/extension/payment/yakassa_spk11.php', '2022-11-12 20:53:32'),
(445, 45, 'catalog/controller/extension/payment/yakassa_spk12.php', '2022-11-12 20:53:32'),
(446, 45, 'catalog/controller/extension/payment/yakassa_spk13.php', '2022-11-12 20:53:32'),
(447, 45, 'catalog/controller/extension/payment/yakassa_spk14.php', '2022-11-12 20:53:32'),
(448, 45, 'catalog/controller/extension/payment/yakassa_spk15.php', '2022-11-12 20:53:32'),
(449, 45, 'catalog/controller/extension/payment/yakassa_spk16.php', '2022-11-12 20:53:32'),
(450, 45, 'catalog/controller/extension/payment/yakassa_spk17.php', '2022-11-12 20:53:32'),
(451, 45, 'catalog/controller/extension/payment/yakassa_spk18.php', '2022-11-12 20:53:32'),
(452, 45, 'catalog/controller/extension/payment/yakassa_spk19.php', '2022-11-12 20:53:32'),
(453, 45, 'catalog/controller/extension/payment/yakassa_spk2.php', '2022-11-12 20:53:32'),
(454, 45, 'catalog/controller/extension/payment/yakassa_spk3.php', '2022-11-12 20:53:32'),
(455, 45, 'catalog/controller/extension/payment/yakassa_spk4.php', '2022-11-12 20:53:32'),
(456, 45, 'catalog/controller/extension/payment/yakassa_spk5.php', '2022-11-12 20:53:32'),
(457, 45, 'catalog/controller/extension/payment/yakassa_spk6.php', '2022-11-12 20:53:32'),
(458, 45, 'catalog/controller/extension/payment/yakassa_spk7.php', '2022-11-12 20:53:32'),
(459, 45, 'catalog/controller/extension/payment/yakassa_spk8.php', '2022-11-12 20:53:32'),
(460, 45, 'catalog/controller/extension/payment/yakassa_spk9.php', '2022-11-12 20:53:32'),
(461, 45, 'catalog/model/extension/payment/yakassa_spk.php', '2022-11-12 20:53:32'),
(462, 45, 'catalog/model/extension/payment/yakassa_spk1.php', '2022-11-12 20:53:32'),
(463, 45, 'catalog/model/extension/payment/yakassa_spk10.php', '2022-11-12 20:53:32'),
(464, 45, 'catalog/model/extension/payment/yakassa_spk11.php', '2022-11-12 20:53:32'),
(465, 45, 'catalog/model/extension/payment/yakassa_spk12.php', '2022-11-12 20:53:32'),
(466, 45, 'catalog/model/extension/payment/yakassa_spk13.php', '2022-11-12 20:53:32'),
(467, 45, 'catalog/model/extension/payment/yakassa_spk14.php', '2022-11-12 20:53:32'),
(468, 45, 'catalog/model/extension/payment/yakassa_spk15.php', '2022-11-12 20:53:32'),
(469, 45, 'catalog/model/extension/payment/yakassa_spk16.php', '2022-11-12 20:53:32'),
(470, 45, 'catalog/model/extension/payment/yakassa_spk17.php', '2022-11-12 20:53:32'),
(471, 45, 'catalog/model/extension/payment/yakassa_spk18.php', '2022-11-12 20:53:32'),
(472, 45, 'catalog/model/extension/payment/yakassa_spk19.php', '2022-11-12 20:53:32'),
(473, 45, 'catalog/model/extension/payment/yakassa_spk2.php', '2022-11-12 20:53:32'),
(474, 45, 'catalog/model/extension/payment/yakassa_spk3.php', '2022-11-12 20:53:32'),
(475, 45, 'catalog/model/extension/payment/yakassa_spk4.php', '2022-11-12 20:53:32'),
(476, 45, 'catalog/model/extension/payment/yakassa_spk5.php', '2022-11-12 20:53:32'),
(477, 45, 'catalog/model/extension/payment/yakassa_spk6.php', '2022-11-12 20:53:32'),
(478, 45, 'catalog/model/extension/payment/yakassa_spk7.php', '2022-11-12 20:53:32'),
(479, 45, 'catalog/model/extension/payment/yakassa_spk8.php', '2022-11-12 20:53:32'),
(480, 45, 'catalog/model/extension/payment/yakassa_spk9.php', '2022-11-12 20:53:32'),
(481, 45, 'catalog/model/extension/total/yakassa_spk_total.php', '2022-11-12 20:53:32'),
(482, 45, 'admin/language/en-gb/extension/payment/yakassa_spk.php', '2022-11-12 20:53:32'),
(483, 45, 'admin/language/en-gb/extension/payment/yakassa_spk1.php', '2022-11-12 20:53:32'),
(484, 45, 'admin/language/en-gb/extension/payment/yakassa_spk10.php', '2022-11-12 20:53:32'),
(485, 45, 'admin/language/en-gb/extension/payment/yakassa_spk11.php', '2022-11-12 20:53:32'),
(486, 45, 'admin/language/en-gb/extension/payment/yakassa_spk12.php', '2022-11-12 20:53:32'),
(487, 45, 'admin/language/en-gb/extension/payment/yakassa_spk13.php', '2022-11-12 20:53:32'),
(488, 45, 'admin/language/en-gb/extension/payment/yakassa_spk14.php', '2022-11-12 20:53:32'),
(489, 45, 'admin/language/en-gb/extension/payment/yakassa_spk15.php', '2022-11-12 20:53:32'),
(490, 45, 'admin/language/en-gb/extension/payment/yakassa_spk16.php', '2022-11-12 20:53:32'),
(491, 45, 'admin/language/en-gb/extension/payment/yakassa_spk17.php', '2022-11-12 20:53:32'),
(492, 45, 'admin/language/en-gb/extension/payment/yakassa_spk18.php', '2022-11-12 20:53:32'),
(493, 45, 'admin/language/en-gb/extension/payment/yakassa_spk19.php', '2022-11-12 20:53:32'),
(494, 45, 'admin/language/en-gb/extension/payment/yakassa_spk2.php', '2022-11-12 20:53:32'),
(495, 45, 'admin/language/en-gb/extension/payment/yakassa_spk3.php', '2022-11-12 20:53:32'),
(496, 45, 'admin/language/en-gb/extension/payment/yakassa_spk4.php', '2022-11-12 20:53:32'),
(497, 45, 'admin/language/en-gb/extension/payment/yakassa_spk5.php', '2022-11-12 20:53:32'),
(498, 45, 'admin/language/en-gb/extension/payment/yakassa_spk6.php', '2022-11-12 20:53:32'),
(499, 45, 'admin/language/en-gb/extension/payment/yakassa_spk7.php', '2022-11-12 20:53:32'),
(500, 45, 'admin/language/en-gb/extension/payment/yakassa_spk8.php', '2022-11-12 20:53:32'),
(501, 45, 'admin/language/en-gb/extension/payment/yakassa_spk9.php', '2022-11-12 20:53:32'),
(502, 45, 'admin/language/en-gb/extension/total/yakassa_spk_total.php', '2022-11-12 20:53:32'),
(503, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk.php', '2022-11-12 20:53:32'),
(504, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk1.php', '2022-11-12 20:53:32'),
(505, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk10.php', '2022-11-12 20:53:32'),
(506, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk11.php', '2022-11-12 20:53:32'),
(507, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk12.php', '2022-11-12 20:53:32'),
(508, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk13.php', '2022-11-12 20:53:32'),
(509, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk14.php', '2022-11-12 20:53:32'),
(510, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk15.php', '2022-11-12 20:53:32'),
(511, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk16.php', '2022-11-12 20:53:32'),
(512, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk17.php', '2022-11-12 20:53:32'),
(513, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk18.php', '2022-11-12 20:53:32'),
(514, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk19.php', '2022-11-12 20:53:32'),
(515, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk2.php', '2022-11-12 20:53:32'),
(516, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk3.php', '2022-11-12 20:53:32'),
(517, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk4.php', '2022-11-12 20:53:32'),
(518, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk5.php', '2022-11-12 20:53:32'),
(519, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk6.php', '2022-11-12 20:53:32'),
(520, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk7.php', '2022-11-12 20:53:32'),
(521, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk8.php', '2022-11-12 20:53:32'),
(522, 45, 'admin/language/ru-ru/extension/payment/yakassa_spk9.php', '2022-11-12 20:53:32'),
(523, 45, 'admin/language/ru-ru/extension/total/yakassa_spk_total.php', '2022-11-12 20:53:32'),
(524, 45, 'admin/view/template/extension/payment/yakassa_spk.twig', '2022-11-12 20:53:32'),
(525, 45, 'admin/view/template/extension/payment/yakassa_spk_generate.twig', '2022-11-12 20:53:32'),
(526, 45, 'admin/view/template/extension/total/yakassa_spk_total.twig', '2022-11-12 20:53:32'),
(527, 45, 'catalog/controller/extension/feed/yakassa_spk/checkorders.php', '2022-11-12 20:53:32'),
(528, 45, 'catalog/controller/extension/feed/yakassa_spk/upload.php', '2022-11-12 20:53:32'),
(529, 45, 'catalog/language/en-gb/extension/payment/yakassa_spk.php', '2022-11-12 20:53:32'),
(530, 45, 'catalog/language/en-gb/extension/payment/yakassa_spk_waiting.php', '2022-11-12 20:53:32'),
(531, 45, 'catalog/language/ru-ru/extension/payment/yakassa_spk.php', '2022-11-12 20:53:32'),
(532, 45, 'catalog/language/ru-ru/extension/payment/yakassa_spk_waiting.php', '2022-11-12 20:53:32'),
(533, 45, 'catalog/view/theme/default/template/extension/payment/yakassa_spk.twig', '2022-11-12 20:53:32'),
(534, 45, 'catalog/view/theme/default/template/extension/payment/yakassa_spk_payment.twig', '2022-11-12 20:53:32'),
(535, 45, 'catalog/view/theme/default/template/extension/payment/yakassa_spk_waiting.twig', '2022-11-12 20:53:32'),
(536, 46, 'admin/controller/extension/total/cash_on_delivery.php', '2022-11-12 20:53:38'),
(537, 46, 'catalog/model/extension/total/cash_on_delivery.php', '2022-11-12 20:53:38'),
(538, 46, 'admin/language/en-gb/extension/total/cash_on_delivery.php', '2022-11-12 20:53:38'),
(539, 46, 'admin/language/ru-ru/extension/total/cash_on_delivery.php', '2022-11-12 20:53:38'),
(540, 46, 'admin/view/template/extension/total/cash_on_delivery.twig', '2022-11-12 20:53:38'),
(541, 46, 'catalog/language/en-gb/extension/total/cash_on_delivery.php', '2022-11-12 20:53:38'),
(542, 46, 'catalog/language/ru-ru/extension/total/cash_on_delivery.php', '2022-11-12 20:53:38'),
(543, 51, 'admin/language/en', '2022-11-13 10:12:49'),
(544, 51, 'admin/language/en-us', '2022-11-13 10:12:49'),
(545, 51, 'admin/language/english', '2022-11-13 10:12:49'),
(546, 51, 'admin/language/russian', '2022-11-13 10:12:49'),
(547, 51, 'catalog/language/en', '2022-11-13 10:12:49'),
(548, 51, 'catalog/language/en-us', '2022-11-13 10:12:49'),
(549, 51, 'catalog/language/english', '2022-11-13 10:12:49'),
(550, 51, 'catalog/language/ru', '2022-11-13 10:12:49'),
(551, 51, 'catalog/language/russian', '2022-11-13 10:12:49'),
(552, 51, 'system/config/ocfilter.php', '2022-11-13 10:12:49'),
(553, 51, 'system/library/ocfilter.php', '2022-11-13 10:12:49'),
(554, 51, 'admin/language/en/extension', '2022-11-13 10:12:49'),
(555, 51, 'admin/language/en-us/extension', '2022-11-13 10:12:49'),
(556, 51, 'admin/language/english/extension', '2022-11-13 10:12:49'),
(557, 51, 'admin/language/russian/extension', '2022-11-13 10:12:49'),
(558, 51, 'admin/model/extension/ocfilter.php', '2022-11-13 10:12:49'),
(559, 51, 'admin/model/extension/ocfilter_page.php', '2022-11-13 10:12:49'),
(560, 51, 'admin/view/image/ocfilter', '2022-11-13 10:12:49'),
(561, 51, 'admin/view/javascript/ocfilter', '2022-11-13 10:12:49'),
(562, 51, 'admin/view/stylesheet/ocfilter', '2022-11-13 10:12:49'),
(563, 51, 'catalog/language/en/extension', '2022-11-13 10:12:49'),
(564, 51, 'catalog/language/en-us/extension', '2022-11-13 10:12:49'),
(565, 51, 'catalog/language/english/extension', '2022-11-13 10:12:49'),
(566, 51, 'catalog/language/ru/extension', '2022-11-13 10:12:49'),
(567, 51, 'catalog/language/russian/extension', '2022-11-13 10:12:49'),
(568, 51, 'catalog/view/javascript/ocfilter', '2022-11-13 10:12:49'),
(569, 51, 'admin/controller/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(570, 51, 'admin/language/en/extension/module', '2022-11-13 10:12:49'),
(571, 51, 'admin/language/en-us/extension/module', '2022-11-13 10:12:49'),
(572, 51, 'admin/language/english/extension/module', '2022-11-13 10:12:49'),
(573, 51, 'admin/language/russian/extension/module', '2022-11-13 10:12:49'),
(574, 51, 'admin/view/image/ocfilter/delete-value.png', '2022-11-13 10:12:49'),
(575, 51, 'admin/view/image/ocfilter/select-text.png', '2022-11-13 10:12:49'),
(576, 51, 'admin/view/image/ocfilter/sort-handler.png', '2022-11-13 10:12:49'),
(577, 51, 'admin/view/javascript/ocfilter/ocfilter.js', '2022-11-13 10:12:49'),
(578, 51, 'admin/view/stylesheet/ocfilter/ocfilter.css', '2022-11-13 10:12:49'),
(579, 51, 'catalog/controller/extension/feed/ocfilter_sitemap.php', '2022-11-13 10:12:49'),
(580, 51, 'catalog/controller/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(581, 51, 'catalog/language/en/extension/module', '2022-11-13 10:12:49'),
(582, 51, 'catalog/language/en-us/extension/module', '2022-11-13 10:12:49'),
(583, 51, 'catalog/language/english/extension/module', '2022-11-13 10:12:49'),
(584, 51, 'catalog/language/ru/extension/module', '2022-11-13 10:12:49'),
(585, 51, 'catalog/language/russian/extension/module', '2022-11-13 10:12:49'),
(586, 51, 'catalog/model/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(587, 51, 'catalog/view/javascript/ocfilter/nouislider.min.css', '2022-11-13 10:12:49'),
(588, 51, 'catalog/view/javascript/ocfilter/nouislider.min.js', '2022-11-13 10:12:49'),
(589, 51, 'catalog/view/javascript/ocfilter/ocfilter.js', '2022-11-13 10:12:49'),
(590, 51, 'admin/language/en/extension/module/ocfilter.php', '2022-11-13 10:12:49');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(591, 51, 'admin/language/en-gb/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(592, 51, 'admin/language/en-us/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(593, 51, 'admin/language/english/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(594, 51, 'admin/language/ru/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(595, 51, 'admin/language/ru-ru/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(596, 51, 'admin/language/russian/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(597, 51, 'admin/view/template/extension/module/ocfilter.twig', '2022-11-13 10:12:49'),
(598, 51, 'admin/view/template/extension/module/ocfilter_form.twig', '2022-11-13 10:12:49'),
(599, 51, 'admin/view/template/extension/module/ocfilter_list.twig', '2022-11-13 10:12:49'),
(600, 51, 'admin/view/template/extension/module/ocfilter_page_form.twig', '2022-11-13 10:12:49'),
(601, 51, 'admin/view/template/extension/module/ocfilter_page_list.twig', '2022-11-13 10:12:49'),
(602, 51, 'catalog/language/en/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(603, 51, 'catalog/language/en-gb/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(604, 51, 'catalog/language/en-us/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(605, 51, 'catalog/language/english/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(606, 51, 'catalog/language/ru/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(607, 51, 'catalog/language/ru-ru/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(608, 51, 'catalog/language/russian/extension/module/ocfilter.php', '2022-11-13 10:12:49'),
(609, 51, 'catalog/view/theme/default/image/ocfilter', '2022-11-13 10:12:49'),
(610, 51, 'catalog/view/theme/default/stylesheet/ocfilter', '2022-11-13 10:12:49'),
(611, 51, 'catalog/view/theme/default/image/ocfilter/diagram-bg-repeat.png', '2022-11-13 10:12:49'),
(612, 51, 'catalog/view/theme/default/stylesheet/ocfilter/ocfilter.css', '2022-11-13 10:12:49'),
(613, 51, 'catalog/view/theme/default/template/extension/module/ocfilter', '2022-11-13 10:12:49'),
(614, 51, 'catalog/view/theme/default/template/extension/module/ocfilter/filter_item.twig', '2022-11-13 10:12:49'),
(615, 51, 'catalog/view/theme/default/template/extension/module/ocfilter/filter_list.twig', '2022-11-13 10:12:49'),
(616, 51, 'catalog/view/theme/default/template/extension/module/ocfilter/filter_price.twig', '2022-11-13 10:12:49'),
(617, 51, 'catalog/view/theme/default/template/extension/module/ocfilter/filter_slider_item.twig', '2022-11-13 10:12:49'),
(618, 51, 'catalog/view/theme/default/template/extension/module/ocfilter/module.twig', '2022-11-13 10:12:49'),
(619, 51, 'catalog/view/theme/default/template/extension/module/ocfilter/selected_filter.twig', '2022-11-13 10:12:49'),
(620, 51, 'catalog/view/theme/default/template/extension/module/ocfilter/value_item.twig', '2022-11-13 10:12:49'),
(621, 51, 'catalog/view/theme/default/template/extension/module/ocfilter/value_list.twig', '2022-11-13 10:12:49');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(4, 1, 0),
(3, 1, 0),
(2, 1, 0),
(1, 1, 1),
(7, 2, 3),
(6, 2, 2),
(5, 2, 1),
(9, 3, 1),
(10, 3, 2),
(11, 3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(3, 1, 1, 'Yellow'),
(2, 1, 1, 'Red'),
(1, 1, 1, 'Blue'),
(6, 1, 2, 'Medium'),
(5, 1, 2, 'Small'),
(9, 1, 3, '5'),
(10, 1, 3, '10'),
(11, 1, 3, '15'),
(7, 1, 2, 'Large'),
(4, 1, 1, 'Green'),
(3, 2, 1, 'Yellow'),
(2, 2, 1, 'Red'),
(1, 2, 1, 'Blue'),
(6, 2, 2, 'Medium'),
(5, 2, 2, 'Small'),
(9, 2, 3, '5'),
(10, 2, 3, '10'),
(11, 2, 3, '15'),
(7, 2, 2, 'Large'),
(4, 2, 1, 'Green');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Color'),
(2, 1, 'Size'),
(3, 1, 'Weight'),
(1, 2, 'Цвет'),
(2, 2, 'Размер'),
(3, 2, 'Вес');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'Зона НДС', 'Облагаемые НДС', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 2, 'О нас', 'Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании... Информация о компании...', 'О нас', '', ''),
(6, 2, 'Доставка и оплата', 'Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате... Информация о доставке и оплате...', 'Доставка и оплата', '', ''),
(3, 2, 'Политика конфиденциальности', 'Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности... Политика конфиденциальности...', 'Политика конфиденциальности', '', ''),
(5, 2, 'Условия соглашения', 'Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения... Условия соглашения...', 'Условия соглашения', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(6, 0, 0),
(3, 0, 0),
(5, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 2, 0),
(2, 'Русский', 'ru-ru', 'ru_RU.UTF-8,ru_RU,Russian', 'ru-ru.png', 'russian', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Главная страница'),
(2, 'Товары'),
(3, 'Категории'),
(4, 'По умолчанию'),
(5, 'Производители'),
(6, 'Личный кабинет'),
(7, 'Оформление заказа'),
(8, 'Контакты'),
(9, 'Карта сайта'),
(10, 'Партнерская программа'),
(11, 'Информация'),
(12, 'Сравнение'),
(13, 'Поиск'),
(14, 'Блог');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2575, 4, 'html.63', 'footerright', 1),
(2595, 11, 'html.63', 'footerright', 1),
(2625, 3, 'html.55', 'footerleft', 0),
(2526, 6, 'html.63', 'footerright', 1),
(2569, 8, 'html.35', 'footerbottom', 0),
(2614, 13, 'html.35', 'footerbottom', 0),
(2525, 6, 'newsletters', 'footerright', 0),
(2624, 3, 'special.40', 'column_left', 3),
(2603, 5, 'html.35', 'footerbottom', 0),
(2555, 14, 'html.35', 'footerbottom', 0),
(2532, 10, 'html.63', 'footerright', 1),
(2531, 10, 'newsletters', 'footerright', 0),
(2568, 8, 'html.63', 'footerright', 1),
(2574, 4, 'newsletters', 'footerright', 0),
(2530, 10, 'html.55', 'footerleft', 0),
(2602, 5, 'html.63', 'footerright', 1),
(2613, 13, 'html.63', 'footerright', 1),
(2524, 6, 'html.55', 'footerleft', 0),
(2548, 7, 'html.35', 'footerbottom', 0),
(2623, 3, 'banner.32', 'column_left', 2),
(2554, 14, 'html.63', 'footerright', 1),
(2547, 7, 'html.63', 'footerright', 1),
(2546, 7, 'newsletters', 'footerright', 0),
(2601, 5, 'newsletters', 'footerright', 0),
(2523, 6, 'information', 'column_left', 1),
(2594, 11, 'newsletters', 'footerright', 0),
(2607, 2, 'html.35', 'footerbottom', 0),
(2612, 13, 'newsletters', 'footerright', 0),
(2553, 14, 'newsletters', 'footerright', 0),
(2545, 7, 'html.55', 'footerleft', 0),
(2552, 14, 'html.55', 'footerleft', 0),
(2560, 12, 'newsletters', 'footerright', 0),
(2567, 8, 'newsletters', 'footerright', 0),
(2573, 4, 'html.55', 'footerleft', 0),
(2593, 11, 'html.55', 'footerleft', 0),
(2600, 5, 'html.55', 'footerleft', 0),
(2611, 13, 'html.55', 'footerleft', 0),
(2619, 9, 'html.63', 'footerright', 1),
(2544, 7, 'special.40', 'column_left', 2),
(2586, 1, 'html.55', 'footerleft', 0),
(2559, 12, 'html.55', 'footerleft', 0),
(2585, 1, 'instagram.62', 'content_bottom', 7),
(2584, 1, 'carousel.29', 'content_bottom', 6),
(2583, 1, 'html.39', 'content_bottom', 5),
(2582, 1, 'blogger.43', 'content_bottom', 4),
(2522, 6, 'account', 'column_left', 0),
(2529, 10, 'information', 'column_left', 1),
(2622, 3, 'ocfilter', 'column_left', 1),
(2543, 7, 'banner.32', 'column_left', 1),
(2551, 14, 'information', 'column_left', 2),
(2566, 8, 'html.55', 'footerleft', 0),
(2565, 8, 'information', 'column_left', 2),
(2592, 11, 'information', 'column_left', 2),
(2599, 5, 'special.40', 'column_left', 2),
(2606, 2, 'html.63', 'footerright', 1),
(2610, 13, 'special.40', 'column_left', 2),
(2618, 9, 'newsletters', 'footerright', 0),
(2528, 10, 'account', 'column_left', 0),
(2621, 3, 'category', 'column_left', 0),
(2542, 7, 'category', 'column_left', 0),
(2581, 1, 'html.38', 'content_bottom', 3),
(2580, 1, 'html.61', 'content_bottom', 2),
(2579, 1, 'html.37', 'content_bottom', 1),
(2578, 1, 'category_tab.59', 'content_bottom', 0),
(2550, 14, 'banner.32', 'column_left', 1),
(2549, 14, 'category', 'column_left', 0),
(2558, 12, 'special.40', 'column_left', 2),
(2557, 12, 'banner.32', 'column_left', 1),
(2556, 12, 'category', 'column_left', 0),
(2564, 8, 'banner.32', 'column_left', 1),
(2563, 8, 'category', 'column_left', 0),
(2572, 4, 'special.40', 'column_left', 2),
(2571, 4, 'banner.32', 'column_left', 1),
(2570, 4, 'category', 'column_left', 0),
(2598, 5, 'banner.32', 'column_left', 1),
(2597, 5, 'category', 'column_left', 0),
(2605, 2, 'newsletters', 'footerright', 0),
(2604, 2, 'html.55', 'footerleft', 0),
(2609, 13, 'banner.32', 'column_left', 1),
(2608, 13, 'category', 'column_left', 0),
(2617, 9, 'html.55', 'footerleft', 0),
(2616, 9, 'information', 'column_left', 1),
(2591, 11, 'banner.32', 'column_left', 1),
(2590, 11, 'category', 'column_left', 0),
(2615, 9, 'account', 'column_left', 0),
(2577, 1, 'slideshow.27', 'content_top', 0),
(2527, 6, 'html.35', 'footerbottom', 0),
(2533, 10, 'html.35', 'footerbottom', 0),
(2626, 3, 'newsletters', 'footerright', 0),
(2561, 12, 'html.63', 'footerright', 1),
(2562, 12, 'html.35', 'footerbottom', 0),
(2576, 4, 'html.35', 'footerbottom', 0),
(2587, 1, 'newsletters', 'footerright', 0),
(2588, 1, 'html.63', 'footerright', 1),
(2589, 1, 'html.35', 'footerbottom', 0),
(2596, 11, 'html.35', 'footerbottom', 0),
(2620, 9, 'html.35', 'footerbottom', 0),
(2627, 3, 'html.63', 'footerright', 1),
(2628, 3, 'html.35', 'footerbottom', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(344, 6, 0, 'account/%'),
(345, 10, 0, 'affiliate/%'),
(358, 3, 0, 'product/category'),
(352, 1, 0, 'common/home'),
(355, 2, 0, 'product/product'),
(353, 11, 0, 'information/information'),
(347, 7, 0, 'checkout/%'),
(350, 8, 0, 'information/contact'),
(357, 9, 0, 'information/sitemap'),
(351, 4, 0, ''),
(354, 5, 0, 'product/manufacturer'),
(349, 12, 0, 'product/compare'),
(356, 13, 0, 'product/search'),
(348, 14, 0, 'information/blogger/blogs');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Сантиметр', 'см'),
(2, 2, 'Миллиметр', 'мм'),
(3, 2, 'Дюйм', 'in');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(1, 2, 'Localcopy OCMOD Install Fix', 'localcopy-oc3', 'opencart3x.ru', '1.0', 'https://opencart3x.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>Localcopy OCMOD Install Fix</name>\n  <code>localcopy-oc3</code>\n  <version>1.0</version>\n  <author>opencart3x.ru</author>\n  <link>https://opencart3x.ru</link>\n\n  <file path=\"admin/controller/marketplace/install.php\">\n	<operation>\n      <search>\n        <![CDATA[if ($safe) {]]>\n      </search>\n      <add position=\"before\">\n        <![CDATA[		\n		    $safe = true;\n		    ]]>\n      </add>\n    </operation>\n    <operation>\n      <search>\n        <![CDATA[if (is_dir($file) && !is_dir($path)) {]]>\n      </search>\n      <add position=\"before\">\n        <![CDATA[		\n			  if ($path == \'\') {\n  				$app_root = explode(\'/\',DIR_APPLICATION);\n  				unset($app_root[count($app_root)-2]);\n  				$app_root = implode(\'/\',$app_root);\n  				$path = $app_root . $destination;\n			  }\n		    ]]>\n      </add>\n    </operation>\n  </file> \n</modification>\n', 1, '2022-11-05 01:24:48', '2022-11-05 01:24:48'),
(2, 3, 'custom admin icon dashboard opencart 3.x whitout login', '3', 'Agenzia Web INFORMATICAZONE', '3.0', 'https://www.informaticazone.it', '<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<modification>\r\n  <name>custom admin icon dashboard opencart 3.x whitout login</name>\r\n  <version>3.0</version>\r\n  <code>3</code>\r\n  <author>Agenzia Web INFORMATICAZONE</author>\r\n  <link>https://www.informaticazone.it</link>\r\n\r\n<file path=\"admin/controller/marketplace/install.php\" error=\"log\">\r\n    <operation>\r\n      <search><![CDATA[\'admin/controller/extension/\',]]></search>\r\n      <add position=\"after\"><![CDATA[\'admin/view/template/common/\',]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"admin/controller/extension/dashboard/sale.php\" error=\"log\">\r\n    <operation>\r\n      <search error=\"log\"><![CDATA[return $this->load->view(\'extension/dashboard/sale_info\', $data);]]></search>\r\n      <add position=\"replace\"><![CDATA[return $this->load->view(\'extension/dashboard/informa_sale_info\', $data);]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[for ($i = 3; $i <= 12; $i++) {]]></search>\r\n      <add position=\"replace\"><![CDATA[for ($i = 2; $i <= 12; $i++) {]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"admin/controller/extension/dashboard/order.php\" error=\"log\">\r\n    <operation>\r\n      <search><![CDATA[return $this->load->view(\'extension/dashboard/order_info\', $data);]]></search>\r\n      <add position=\"replace\"><![CDATA[return $this->load->view(\'extension/dashboard/informa_order_info\', $data);]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[for ($i = 3; $i <= 12; $i++) {]]></search>\r\n      <add position=\"replace\"><![CDATA[for ($i = 2; $i <= 12; $i++) {]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"admin/controller/extension/dashboard/online.php\" error=\"log\">\r\n    <operation>\r\n      <search><![CDATA[return $this->load->view(\'extension/dashboard/online_info\', $data);]]></search>\r\n      <add position=\"replace\"><![CDATA[return $this->load->view(\'extension/dashboard/informa_online_info\', $data);]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[for ($i = 3; $i <= 12; $i++) {]]></search>\r\n      <add position=\"replace\"><![CDATA[for ($i = 2; $i <= 12; $i++) {]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"admin/controller/extension/dashboard/customer.php\" error=\"log\">\r\n    <operation>\r\n      <search><![CDATA[return $this->load->view(\'extension/dashboard/customer_info\', $data);]]></search>\r\n      <add position=\"replace\"><![CDATA[return $this->load->view(\'extension/dashboard/informa_customer_info\', $data);]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[for ($i = 3; $i <= 12; $i++) {]]></search>\r\n      <add position=\"replace\"><![CDATA[for ($i = 2; $i <= 12; $i++) {]]></add>\r\n    </operation>\r\n  </file>\r\n</modification>', 1, '2022-11-05 01:25:03', '2022-11-05 01:25:03'),
(3, 4, 'Extension Page in 3.0', 'Extension Page in 3.0', 'https://ocmod.net/', '3.0', 'https://ocmod.net/', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<code>Extension Page in 3.0</code>\r\n	<name>Extension Page in 3.0</name>\r\n	<version>3.0</version>\r\n	<author>https://ocmod.net/</author>\r\n	<link>https://ocmod.net/</link>\r\n\r\n	<file path=\"admin/view/template/marketplace/extension.twig\">\r\n		<operation>\r\n			<search><![CDATA[<div class=\"input-group\">]]></search>\r\n			<add position=\"replace\" offset=\"12\"><![CDATA[<?php /*NWD CODE START*/ ?>\r\n            {# <div class=\"input-group\">\r\n              <select name=\"type\" class=\"form-control\">\r\n                {% for category in categories %}\r\n                {% if type == category.code %}\r\n                <option value=\"{{ category.href }}\" selected=\"selected\">{{ category.text }}</option>\r\n                {% else %}\r\n                <option value=\"{{ category.href }}\">{{ category.text }}</option>\r\n                {% endif %}\r\n                {% endfor %}\r\n              </select>\r\n              <span class=\"input-group-addon\"><i class=\"fa fa-filter\"></i> {{ text_filter }}</span>\r\n            </div> #}\r\n			<div class=\"input-group btn-group\" style=\"margin: 0 auto;\">\r\n				{% for category in categories %}\r\n					{% set active = (type == category.code) ? \' active\' : \'\' %}\r\n					<button class=\"btn btn-primary btn-sm mod_type col-lg-2 col-md-3 col-sm-6 col-xs-12 {{ active }}\" name=\"mod_type_{{ category.code }}\" value=\"{{ category.href }}\" >{{ category.text }}</button>\r\n				{% endfor %}\r\n				<!--<span class=\"btn btn-primary btn-sm\"><i class=\"fa fa-filter\"></i> {{ text_filter }}</span>-->\r\n			</div>\r\n			<style type=\"text/css\">\r\n				.mod_type { padding: 5px; margin: 0 !important; font-size: 11px; }\r\n			</style>\r\n			<?php /*NWD CODE END*/ ?>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$(\'select[name=\"type\"]\').on(\'change\', function() {]]></search>\r\n			<add position=\"before\"><![CDATA[/*NWD CODE START*/\r\n			/*$(\'select[name=\"type\"]\').on(\'change\', function() {\r\n				$.ajax({\r\n					url: $(\'select[name=\"type\"]\').val(),\r\n					dataType: \'html\',\r\n					beforeSend: function() {\r\n						$(\'.fa-filter\').addClass(\'fa-circle-o-notch fa-spin\');\r\n						$(\'.fa-filter\').removeClass(\'fa-filter\');\r\n					},\r\n					complete: function() {\r\n						$(\'.fa-circle-o-notch\').addClass(\'fa-filter\');\r\n						$(\'.fa-circle-o-notch\').removeClass(\'fa-circle-o-notch fa-spin\');\r\n						\r\n					},\r\n					success: function(html) {\r\n						$(\'#extension\').html(html);\r\n					},\r\n					error: function(xhr, ajaxOptions, thrownError) {\r\n						alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n					}\r\n				});\r\n			});*/\r\n			{% for category in categories %}\r\n			$(\'button[name=\"mod_type_{{ category.code }}\"]\').on(\'click\', function() {\r\n				$.ajax({\r\n					url: $(\'button[name=\"mod_type_{{ category.code }}\"]\').val(),\r\n					dataType: \'html\',\r\n					beforeSend: function() {\r\n						$(\'.fa-filter\').addClass(\'fa-circle-o-notch fa-spin\');\r\n						$(\'.fa-filter\').removeClass(\'fa-filter\');\r\n					},\r\n					complete: function() {\r\n					\r\n						$(\'.fa-circle-o-notch\').addClass(\'fa-filter\');\r\n						$(\'.fa-circle-o-notch\').removeClass(\'fa-circle-o-notch fa-spin\');\r\n						\r\n					},\r\n					success: function(html) {\r\n						$(\'#extension\').html(html);\r\n					},\r\n					error: function(xhr, ajaxOptions, thrownError) {\r\n						alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n					}\r\n				});\r\n			});\r\n			{% endfor %}\r\n			if ($(\'.mod_type.active\').length > 0) {\r\n				$(\'.mod_type.active\').trigger(\'click\');\r\n			} else {\r\n				$(\'.mod_type:first\').click();\r\n				$(\'.mod_type:first\').addClass(\'active\');\r\n			}\r\n			\r\n			$(\'.mod_type\').on(\'click\', function() {\r\n				if ($(this).hasClass(\'active\')) return;\r\n				$(this).addClass(\'active\').siblings().removeClass(\'active\');\r\n				$(\'.mod_type\').trigger(\'change\');\r\n			});\r\n			/*NWD CODE END*/\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>', 1, '2022-11-05 01:26:00', '2022-11-05 01:26:00'),
(4, 5, 'Show Module Link At Left Menu', 'webocreation_show_module_link_at_left_menu', 'Rupak Nepali', '3.0', 'https://webocreation.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <name>Show Module Link At Left Menu</name>\r\n    <version>3.0</version>\r\n    <author>Rupak Nepali</author>\r\n    <link>https://webocreation.com</link>\r\n    <code>webocreation_show_module_link_at_left_menu</code>\r\n    <description>Show module link at left menu</description>\r\n    <file path=\"admin/controller/common/column_left.php\">\r\n        <operation>\r\n            <search><![CDATA[ if ($this->user->hasPermission(\'access\', \'marketplace/extension\')) { ]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n                $marketplace[] = array(\r\n                    \'name\'	   => \"Модули\",\r\n                    \'href\'     => $this->url->link(\'marketplace/extension&type=module\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n                    \'children\' => array()\r\n                );\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n</modification>', 1, '2022-11-05 01:35:11', '2022-11-05 01:35:11'),
(5, 6, 'SEARCH PRO', 'MMOSOC107', 'Www.MMOSolution.com', '2.5', 'http://MMOSolution.com', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n    <name>SEARCH PRO</name>\r\n    <version>2.5</version>\r\n    <code>MMOSOC107</code>\r\n    <author>Www.MMOSolution.com</author>\r\n    <link>http://MMOSolution.com</link>\r\n    <file path=\"catalog/controller/common/header.php\">\r\n        <operation info=\"insert multi lang category\">\r\n            <search><![CDATA[$data[\'base\'] = $server;]]></search>\r\n            <add  position=\"after\"><![CDATA[\r\n              $this->load->model(\'setting/setting\');\r\n\r\n                $mmos_ajax_search = $this->model_setting_setting->getSetting(\'mmos_ajax_search\', $this->config->get(\'config_store_id\'));\r\n\r\n                if(isset($mmos_ajax_search[\'mmos_ajax_search\'])){\r\n                \r\n                    $data_ajax_search = $mmos_ajax_search[\'mmos_ajax_search\'];\r\n\r\n                    if ($data_ajax_search[\'status\'] == \'1\') {\r\n                        $this->document->addScript(\'catalog/view/javascript/mmos_ajax_search.js\');\r\n                    }\r\n                }\r\n            ]]></add>\r\n        </operation>		\r\n    </file>\r\n\r\n</modification>', 1, '2022-11-05 01:42:27', '2022-11-05 01:42:27'),
(6, 7, 'Smart Links', 'smart_links', 'oc3x.ru', '1.0', 'https://oc3x.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>   \n   <modification>\n    <name>Smart Links</name>\n	<code>smart_links</code>\n	<version>1.0</version>\n    <author>oc3x.ru</author>\n    <link>https://oc3x.ru</link>\n  \n  \n      <file path=\"admin/language/en-gb/common/header.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[// Text]]></search>\n            <add position=\"after\">\n                <![CDATA[\n                    $_[\'text_settings\']   = \'Settings\';\n					$_[\'text_categories\']   = \'Categories\';\n					$_[\'text_products\']   = \'Products\';\n					$_[\'text_manufacturer\']   = \'Manufacturer\';\n					$_[\'text_customers\']   = \'Customers\';\n					$_[\'text_modules\']   = \'Modules\';\n					$_[\'text_coupons\']   = \'Coupons\';\n					$_[\'text_errors\']   = \'Errors\';\n                ]]>\n            </add>\n        </operation>\n    </file>\n	\n	      <file path=\"admin/language/ru-ru/common/header.php\">\n        <operation error=\"skip\">\n            <search><![CDATA[// Text]]></search>\n            <add position=\"after\">\n                <![CDATA[\n                    $_[\'text_settings\']   = \'Настройки\';\n					$_[\'text_categories\']   = \'Категории\';\n					$_[\'text_products\']   = \'Товары\';\n					$_[\'text_manufacturer\']   = \'Производители\';\n					$_[\'text_customers\']   = \'Клиенты\';\n					$_[\'text_modules\']   = \'Расширения\';\n					$_[\'text_coupons\']   = \'Купоны\';\n					$_[\'text_errors\']   = \'Журнал ошибок\';\n                ]]>\n            </add>\n        </operation>\n    </file>\n\n<file path=\"admin/controller/common/header.php\">\n		<operation error=\"skip\">\n			<search><![CDATA[$data[\'profile\']]]></search>\n			<add position=\"after\"><![CDATA[\n			$data[\'oc3x\'] = $this->url->link(\'setting/setting\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n		\n			$data[\'oc3x_setting\'] = $this->url->link(\'catalog/category\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n			$data[\'oc3x_setting1\'] = $this->url->link(\'catalog/product\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n			$data[\'oc3x_setting2\'] = $this->url->link(\'catalog/manufacturer\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n			$data[\'oc3x_setting3\'] = $this->url->link(\'customer/customer\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n			$data[\'oc3x_setting4\'] = $this->url->link(\'marketing/coupon\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n			$data[\'oc3x_setting5\'] = $this->url->link(\'marketplace/extension\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n			$data[\'oc3x_setting6\'] = $this->url->link(\'tool/log\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n			]]></add>\n		</operation>\n	</file>\n\n	<file path=\"admin/view/template/common/header.twig\">\n		<operation error=\"skip\">\n			<search><![CDATA[<ul class=\"nav navbar-nav navbar-right\">]]></search>\n			<add position=\"after\"><![CDATA[\n	  <li style=\"padding: 13px 10px 11px 10px;\">\n		<div class=\"btn-group\">\n			<a href=\"{{ oc3x }}\" class=\"btn btn-default\"><i class=\"fa fa-gears fa-lg\" style=\"color: #3c8dbc;\"></i>&nbsp;&nbsp;{{ text_settings }}</a>\n			<button type=\"button\" class=\"btn btn-default dropdown-toggle\" data-toggle=\"dropdown\">\n				<span class=\"caret\"></span>\n			</button>\n			<ul class=\"dropdown-menu dropdown-menu-right\" role=\"menu\">\n				\n				<li><a href=\"{{ oc3x_setting }}\"><i class=\"fa fa-map-signs\"></i>&nbsp;&nbsp; {{ text_categories }}</a></li>\n<li class=\"divider\"></li>\n<li><a href=\"{{ oc3x_setting1 }}\"><i class=\"fa fa-cart-plus\"></i>&nbsp;&nbsp; {{ text_products }}</a></li>\n<li class=\"divider\"></li>\n<li><a href=\"{{ oc3x_setting2 }}\"><i class=\"fa fa-circle-thin\"></i>&nbsp;&nbsp; {{ text_manufacturer }}</a></li>\n<li class=\"divider\"></li>\n<li><a href=\"{{ oc3x_setting3 }}\"><i class=\"fa fa-street-view\"></i>&nbsp;&nbsp; {{ text_customers }}</a></li>     \n<li class=\"divider\"></li>\n<li><a href=\"{{ oc3x_setting4 }}\"><i class=\"fa fa-sun-o\"></i>&nbsp;&nbsp; {{ text_coupons }}</a></li>   \n<li class=\"divider\"></li>\n<li><a href=\"{{ oc3x_setting5 }}\"><i class=\"fa fa-vcard-o\"></i>&nbsp;&nbsp; {{ text_modules }}</a></li>   \n<li class=\"divider\"></li>\n<li><a href=\"{{ oc3x_setting6 }}\"><i class=\"fa fa-times-rectangle-o\"></i>&nbsp;&nbsp; {{ text_errors }}</a></li>   \n\n		</div>\n	  </li>\n		]]></add>\n		</operation>\n	</file>\n\n</modification>\n', 1, '2022-11-05 01:46:01', '2022-11-05 01:46:01'),
(7, 8, 'Очиcтка кэша', 'Cache_Сleaner', 'opencart3x.ru', '3.1', 'https://opencart3x.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Очиcтка кэша</name>\r\n	<code>Cache_Сleaner</code>\r\n	<version>3.1</version>\r\n	<author>opencart3x.ru</author>\r\n	<link>https://opencart3x.ru</link>\r\n	<file path=\"admin/controller/common/header.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[\r\n$data[\'logged\'] = true;\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			if ($this->config->get(\'oc3x_storage_cleaner_status\') && $this->user->hasPermission(\'access\', \'extension/module/oc3x_storage_cleaner\') && $this->user->hasPermission(\'modify\', \'extension/module/oc3x_storage_cleaner\')) {\r\n				$this->load->language(\'extension/module/oc3x_storage_cleaner\');\r\n				$data[\'heading_title\'] = $this->language->get(\'page_title\');\r\n				$data[\'text_clear\'] = $this->language->get(\'text_clear\');\r\n				$data[\'text_clear_all\'] = $this->language->get(\'text_clear_all\');\r\n				$data[\'text_refresh\'] = $this->language->get(\'text_refresh\');\r\n				$data[\'text_cache\'] = $this->language->get(\'text_cache\');\r\n				$data[\'text_cache_system\'] = $this->language->get(\'text_cache_system\');\r\n				$data[\'text_cache_modification\'] = $this->language->get(\'text_cache_modification\');\r\n				$data[\'text_cache_image\'] = $this->language->get(\'text_cache_image\');\r\n				$data[\'text_log\'] = $this->language->get(\'text_log\');\r\n				$data[\'text_log_error\'] = $this->language->get(\'text_log_error\');\r\n				$data[\'text_log_modification\'] = $this->language->get(\'text_log_modification\');\r\n\r\n				$this->load->model(\'extension/module/oc3x_storage_cleaner\');\r\n\r\n				if ($this->config->get(\'oc3x_storage_cleaner_size\')) {\r\n					$data[\'text_cleaner_size\'] = $this->model_extension_module_oc3x_storage_cleaner->getSize();\r\n				} else {\r\n					$data[\'text_cleaner_size\'] = false;\r\n				}\r\n\r\n				$data[\'storage_cleaner\'] = true;\r\n			}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/common/header.twig\">\r\n		<operation error=\"skip\">\r\n			<search index=\"0\"><![CDATA[\r\n<ul class=\"nav navbar-nav navbar-right\">\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n{% if storage_cleaner %}\r\n<script type=\"text/javascript\"><!--\r\n$(document).ready(function() {\r\n	$(\'.clear-dropdown li, .clear-dropdown a\').on(\'click\', function(e) {\r\n		e.stopPropagation();\r\n	});\r\n});\r\n\r\nfunction clearOption(type, key) {\r\n	var oc3x_size = $(\'.clear-dropdown\').prev(\'a\').children(\'span\').html();\r\n	var oc3x_type = type + \'-\' + key;\r\n\r\n	$.ajax({\r\n		url: \'index.php?route=extension/module/oc3x_storage_cleaner/clear\' + type + \'&user_token=\' + getURLVar(\'user_token\'),\r\n		type: \'post\',\r\n		data: \'key=\' + key,\r\n		dataType: \'json\',\r\n		beforeSend: function() {\r\n			$(\'.clear-dropdown\').prev(\'a\').children(\'span\').html(\'<i class=\\\'fa fa-spinner\\\'></i>\');\r\n			$(\'#button-\' + oc3x_type + \' span\').html(\'<i class=\\\'fa fa-spinner\\\'></i>\');\r\n		},\r\n		error: function(xhr, ajaxOptions, thrownError) {\r\n			alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n		},\r\n		success: function(json) {\r\n			$(\'.clear-dropdown > .alert-success, .clear-dropdown > .alert-danger\').remove();\r\n\r\n			if (json[\'success\']) {\r\n				$(\'#button-\' + oc3x_type).closest(\'li\').addClass(\'bg-success\');\r\n				$(\'.clear-dropdown\').append(\'<div class=\"alert alert-success\" style=\"margin: 15px 20px 15px 20px; padding: 5px; font-size: 11px;\"><i class=\"fa fa-check-circle\"></i> \' + json[\'success\'] + \'<button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\');\r\n\r\n				if (json[\'size\']) {\r\n					$(\'.clear-dropdown\').prev(\'a\').children(\'span\').html(json[\'size\'][\'all\']);\r\n					$(\'#button-\' + oc3x_type + \' span\').html(json[\'size\'][oc3x_type]);\r\n				}\r\n			}\r\n\r\n			if (json[\'error\']) {\r\n				$(\'.clear-dropdown\').prev(\'a\').children(\'span\').html(oc3x_size);\r\n				$(\'#button-\' + oc3x_type).closest(\'li\').addClass(\'bg-danger\');\r\n				$(\'.clear-dropdown\').append(\'<div class=\"alert alert-danger\" style=\"margin: 15px 20px 15px 20px; padding: 5px; font-size: 11px;\"><i class=\"fa fa-exclamation-circle\"></i> \' + json[\'error\'] + \'<button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\');\r\n			}\r\n		}\r\n	});\r\n}\r\n\r\nfunction clearAll() {\r\n	clearOption(\'cache\', \'system\');\r\n	clearOption(\'cache\', \'modification\');\r\n	clearOption(\'cache\', \'image\');\r\n	clearOption(\'log\', \'error\');\r\n	clearOption(\'log\', \'modification\');\r\n}\r\n//--></script>\r\n{% endif %}\r\n			]]></add>\r\n		</operation>\r\n		<operation error=\"skip\">\r\n			<search index=\"0\"><![CDATA[\r\n<ul class=\"nav navbar-nav navbar-right\">\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n	{% if storage_cleaner %}\r\n	<li class=\"dropdown\"><a class=\"dropdown-toggle\" data-toggle=\"dropdown\">{% if text_cleaner_size %}<span class=\"label label-info pull-left\" style=\"margin-top:23px;margin-right:4px;\">{{ text_cleaner_size[\'all\'] }}</span>{% endif %}<i class=\"fa fa-eraser fa-lg\"></i></a>\r\n	  <ul class=\"dropdown-menu dropdown-menu-right clear-dropdown\" style=\"width: 230px;\">\r\n		<li class=\"dropdown-header\">{{ text_cache }}</li>\r\n		<li><a>{{ text_cache_system }}<button onclick=\"clearOption(\'cache\', \'system\');\" type=\"button\" data-loading-text=\"<i class=\'fa fa-spinner\'></i>\" data-toggle=\"tooltip\" title=\"{{ text_clear }}\" class=\"btn btn-danger btn-xs pull-right\" id=\"button-cache-system\">{% if text_cleaner_size %}<span>{{ text_cleaner_size[\'cache-system\'] }}</span>{% endif %} <i class=\"fa fa-eraser\"></i></button></a></li>\r\n		<li><a>{{ text_cache_modification }}<button onclick=\"clearOption(\'cache\', \'modification\');\" type=\"button\" data-loading-text=\"<i class=\'fa fa-spinner\'></i>\" data-toggle=\"tooltip\" title=\"{{ text_refresh }}\" class=\"btn btn-danger btn-xs pull-right\" id=\"button-cache-modification\">{% if text_cleaner_size %}<span>{{ text_cleaner_size[\'cache-modification\'] }}</span>{% endif %} <i class=\"fa fa-eraser\"></i></button></a></li>\r\n		<li><a>{{ text_cache_image }}<button onclick=\"clearOption(\'cache\', \'image\');\" type=\"button\" data-loading-text=\"<i class=\'fa fa-spinner\'></i>\" data-toggle=\"tooltip\" title=\"{{ text_clear }}\" class=\"btn btn-danger btn-xs pull-right\" id=\"button-cache-image\">{% if text_cleaner_size %}<span>{{ text_cleaner_size[\'cache-image\'] }}</span>{% endif %} <i class=\"fa fa-eraser\"></i></button></a></li>\r\n		<li class=\"divider\"></li>\r\n		<li class=\"dropdown-header\">{{ text_log }}</li>\r\n		<li><a>{{ text_log_error }}<button onclick=\"clearOption(\'log\', \'error\');\" type=\"button\" data-loading-text=\"<i class=\'fa fa-spinner\'></i>\" data-toggle=\"tooltip\" title=\"{{ text_clear }}\" class=\"btn btn-danger btn-xs pull-right\" id=\"button-log-error\">{% if text_cleaner_size %}<span>{{ text_cleaner_size[\'log-error\'] }}</span>{% endif %} <i class=\"fa fa-eraser\"></i></button></a></li>\r\n		<li><a>{{ text_log_modification }}<button onclick=\"clearOption(\'log\', \'modification\');\" type=\"button\" data-loading-text=\"<i class=\'fa fa-spinner\'></i>\" data-toggle=\"tooltip\" title=\"{{ text_clear }}\" class=\"btn btn-danger btn-xs pull-right\" id=\"button-log-modification\">{% if text_cleaner_size %}<span>{{ text_cleaner_size[\'log-modification\'] }}</span>{% endif %} <i class=\"fa fa-eraser\"></i></button></a></li>\r\n		<li class=\"divider\"></li>\r\n		<li><a><button onclick=\"clearAll();\" type=\"button\" data-loading-text=\"<i class=\'fa fa-spinner\'></i>\" class=\"btn btn-danger btn-sm btn-block\" id=\"button-clear-all\">{{ text_clear_all }}<span class=\"pull-right\"><i class=\"fa fa-eraser\"></i></span></button></a></li>\r\n	  </ul>\r\n	</li>\r\n	{% endif %}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>\r\n', 1, '2022-11-05 01:54:50', '2022-11-05 01:54:50'),
(8, 9, 'Отзывы звездами', 'stars-rating', 'serg pasko', '3.0', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>Отзывы звездами</name>\n  <code>stars-rating</code>\n  <version>3.0</version>\n  <author>serg pasko</author>  \n	\n	<file path=\"catalog/view/theme/*/template/product/product.twig\">\n		<operation error=\"skip\" info=\"Chenge radiobutton\">\n			<search><![CDATA[\n			<label class=\"control-label\">{{ entry_rating }}</label>\n			]]></search>\n			<add position=\"replace\" offset=\"11\"><![CDATA[\n			<label class=\"control-label\">{{ entry_rating }}</label>\n			<div class=\"stars-rating\">\n				<input name=\"rating\" id=\"s_rating\" value=\"0\" type=\"hidden\">\n				<div class=\"wrap\" data-rate=\"0\">\n					<span title=\"Ужасно\" data-rate=\"1\"></span>\n					<span title=\"Плохо\" data-rate=\"2\"></span>\n					<span title=\"Нормально\" data-rate=\"3\"></span>\n					<span title=\"Хорошо\" data-rate=\"4\"></span>\n					<span title=\"Отлично\" data-rate=\"5\"></span>\n				</div>\n			</div>\n			</div>\n\n		]]></add>\n		</operation>\n		<operation error=\"skip\" info=\"Add script adn style\">\n			<search><![CDATA[\n			{{ footer }} \n			]]></search>\n			<add position=\"before\"><![CDATA[	\n			\n<style>\n    .stars-rating label {display: block;}\n    .stars-rating .wrap {display: inline-block; font-size: 0;}\n    .stars-rating .wrap span {font-size: 24px; line-height: 20px; cursor: pointer;}\n    .stars-rating .wrap span:before {content: \"\\2606\"; color: #bbb;}\n    .stars-rating .wrap:not([data-rate=\"0\"]) span:before {content: \"\\2605\";}\n    .stars-rating .wrap:hover span:before {content: \"\\2605\"; color: #fe2;}\n    .stars-rating .wrap:hover span:hover ~ span:before {color: #bbb;}\n    .stars-rating .wrap[data-rate=\"1\"] span:nth-child(-n+1):before,\n    .stars-rating .wrap[data-rate=\"2\"] span:nth-child(-n+2):before,\n    .stars-rating .wrap[data-rate=\"3\"] span:nth-child(-n+3):before,\n    .stars-rating .wrap[data-rate=\"4\"] span:nth-child(-n+4):before,\n    .stars-rating .wrap[data-rate=\"5\"] span:nth-child(-n+5):before {color: #fa0;}\n</style>\n<script>\n    $(document).ready(function(){\n        $(\'.stars-rating span\').click(function(e){\n            var rate = $(this).attr(\'data-rate\');\n            $(\'.stars-rating .wrap\').attr(\'data-rate\', rate);\n            $(\'#s_rating\').val(rate);               \n        });\n    });\n</script>\n		]]></add>\n		</operation>\n		\n		\n	</file>\n	\n</modification>	\n	', 1, '2022-11-05 01:56:32', '2022-11-05 01:56:32'),
(9, 10, 'Wishlist without login', 'wishlist_without_login', 'Seriusis', '1.1_b', 'https://likeDev.pro', '<modification>\n    <name>Wishlist without login</name>\n    <code>wishlist_without_login</code>\n    <version>1.1_b</version>\n    <author>Seriusis</author>\n    <link>https://likeDev.pro</link>\n\n    <file path=\"catalog/controller/account/wishlist.php\">\n        <operation>\n            <search><![CDATA[\n      if (!$this->customer->isLogged()) {]]></search>\n            <add position=\"replace\" offset=\"4\"><![CDATA[]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[\n                if (isset($this->request->get[\'remove\'])) {]]></search>\n            <add position=\"after\" offset=\"7\"><![CDATA[\n            if (isset($this->request->get[\'remove_session\'])) {\n            unset($this->session->data[\'wishlist\'][array_search($this->request->get[\'remove_session\'],$this->session->data[\'wishlist\'])]);\n           if (empty($this->session->data[\'wishlist\'])) {\n               $this->response->redirect($this->url->link(\'common/home\'));\n           }\n        }\n            ]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$data[\'products\'] = array();]]></search>\n            <add position=\"after\"><![CDATA[if ($this->customer->isLogged()) {]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$this->model_account_wishlist->deleteWishlist($result[\'product_id\']);]]></search>\n            <add position=\"after\" offset=\"2\"><![CDATA[} else {\n                $results =  isset($this->session->data[\'wishlist\']) ? $this->session->data[\'wishlist\'] : [];\n            foreach ($results as $key => $result) {\n                $product_info = $this->model_catalog_product->getProduct($result);\n\n                if ($product_info) {\n                    if ($product_info[\'image\']) {\n                        if(explode(\".\", VERSION)[0] <3){\n                            $image = $this->model_tool_image->resize($product_info[\'image\'], $this->config->get($this->config->get(\'config_theme\') . \'_image_wishlist_width\'), $this->config->get($this->config->get(\'config_theme\') . \'_image_wishlist_height\'));\n                        }else{\n                            $image = $this->model_tool_image->resize($product_info[\'image\'], $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_wishlist_width\'), $this->config->get(\'theme_\' . $this->config->get(\'config_theme\') . \'_image_wishlist_height\'));\n                        }\n\n\n                    } else {\n                        $image = false;\n                    }\n                    if ($product_info[\'quantity\'] <= 0) {\n                        $stock = $product_info[\'stock_status\'];\n                    } elseif ($this->config->get(\'config_stock_display\')) {\n                        $stock = $product_info[\'quantity\'];\n                    } else {\n                        $stock = $this->language->get(\'text_instock\');\n                    }\n\n                    if ($this->customer->isLogged() || !$this->config->get(\'config_customer_price\')) {\n                        $price = $this->currency->format($this->tax->calculate($product_info[\'price\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\')), $this->session->data[\'currency\']);\n                    } else {\n                        $price = false;\n                    }\n\n                    if ((float)$product_info[\'special\']) {\n                        $special = $this->currency->format($this->tax->calculate($product_info[\'special\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\')), $this->session->data[\'currency\']);\n                    } else {\n                        $special = false;\n                    }\n\n                    $data[\'products\'][] = array(\n                        \'product_id\' => $product_info[\'product_id\'],\n                        \'thumb\' => $image,\n                        \'name\' => $product_info[\'name\'],\n                        \'model\' => $product_info[\'model\'],\n                        \'stock\' => $stock,\n                        \'price\' => $price,\n                        \'special\' => $special,\n                        \'href\' => $this->url->link(\'product/product\', \'product_id=\' . $product_info[\'product_id\']),\n                        \'remove\' => $this->url->link(\'account/wishlist\', \'remove_session=\' . $product_info[\'product_id\'])\n                    );\n                } else {\n                   unset($this->session->data[\'wishlist\'][$key]);\n                }\n            }\n        }]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$json[\'success\'] = sprintf($this->language->get(\'text_login\'), $this->url->link(\'account/login\', \'\', true), $this->url->link(\'account/register\', \'\', true), $this->url->link(\'product/product\', \'product_id=\' . (int)$this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'account/wishlist\'));]]></search>\n            <add position=\"after\"><![CDATA[$json[\'success\'] = sprintf($this->language->get(\'text_success\'), $this->url->link(\'product/product\', \'product_id=\' . (int)$this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'account/wishlist\'));]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$json[\'success\'] = sprintf($this->language->get(\'text_login\'), $this->url->link(\'account/login\', \'\', true), $this->url->link(\'account/register\', \'\', true), $this->url->link(\'product/product\', \'product_id=\' . (int)$this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'account/wishlist\'));]]></search>\n            <add position=\"replace\"><![CDATA[\n            $json[\'success\'] = sprintf($this->language->get(\'text_success\'), $this->url->link(\'product/product\', \'product_id=\' . (int)$this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'account/wishlist\'));\n            ]]></add>\n        </operation>\n    </file>\n    <file path=\"catalog/controller/common/header.php\">\n        <operation>\n        <search><![CDATA[$data[\'text_wishlist\'] = sprintf($this->language->get(\'text_wishlist\'), $this->model_account_wishlist->getTotalWishlist());]]></search>\n        <add position=\"replace\"><![CDATA[\n        if ($this->customer->isLogged()) {\n        $data[\'text_wishlist\'] = sprintf($this->language->get(\'text_wishlist\'), $this->model_account_wishlist->getTotalWishlist());\n        } else {\n        $data[\'text_wishlist\'] = sprintf($this->language->get(\'text_wishlist\'), isset($this->session->data[\'wishlist\'] ) ? count($this->session->data[\'wishlist\']) : 0);\n        }\n\n        ]]></add>\n        </operation>\n    </file>\n    \n    <!--fix wishlist saving after login-->\n    <file path=\"catalog/controller/account/login.php\">\n          <operation>\n            <search index=\"0\"><![CDATA[$this->load->model(\'account/customer\');]]></search>\n            <add position=\"after\"><![CDATA[\n            if ($this->customer->isLogged()) {\n                if (isset($this->session->data[\'wishlist\'])) {\n                    $this->load->model(\'account/wishlist\');\n                    $this->load->model(\'catalog/product\');\n    \n                    foreach ($this->session->data[\'wishlist\'] as $id) {\n                        $this->log->write($id);\n                        $product_info = $this->model_catalog_product->getProduct($id);\n                        if ($product_info) {\n                            $this->model_account_wishlist->addWishlist($id);\n                        }\n                    }\n    \n    \n                    unset($this->session->data[\'wishlist\']);\n                }\n            }\n            ]]></add>\n        </operation>\n    </file>\n      <file path=\"catalog/controller/account/register.php\">\n          <operation>\n            <search index=\"0\"><![CDATA[if ($this->customer->isLogged()) {]]></search>\n            <add position=\"after\"><![CDATA[\n          \n                if (isset($this->session->data[\'wishlist\'])) {\n                    $this->load->model(\'account/wishlist\');\n                    $this->load->model(\'catalog/product\');\n    \n                    foreach ($this->session->data[\'wishlist\'] as $id) {\n                        $this->log->write($id);\n                        $product_info = $this->model_catalog_product->getProduct($id);\n                        if ($product_info) {\n                            $this->model_account_wishlist->addWishlist($id);\n                        }\n                    }\n    \n    \n                    unset($this->session->data[\'wishlist\']);\n                }\n            \n            ]]></add>\n        </operation>\n    </file>\n    \n</modification>', 1, '2022-11-05 01:57:28', '2022-11-05 01:57:28');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(10, 11, 'Bulk specials editor + the countdown timer', 'Bulk specials editor + the countdown timer', 'Dashko L. (kagan). Email: dev.dashko@gmail.com', '3.2.6', 'http://opencart-modules.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>Bulk specials editor + the countdown timer</name>\r\n  <version>3.2.6</version>\r\n  <author>Dashko L. (kagan). Email: dev.dashko@gmail.com</author>\r\n  <code>Bulk specials editor + the countdown timer</code>\r\n  <link>http://opencart-modules.com</link>\r\n\r\n<!--\r\n  *******************************************************************************\r\n  *  Module: Bulk specials editor + the countdown timer\r\n  *  \r\n  *  Web-site: http://opencart-modules.com\r\n  *  Email: dev.dashko@gmail.com\r\n  *  © Leonid Dashko\r\n  *\r\n  *  Below source-code or any part of the source-code cannot be resold or distributed.\r\n  ******************************************************************************\r\n-->\r\n\r\n<!-- Output timer on the detailed product page -->\r\n<file path=\"catalog/model/catalog/product.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[getProduct($product_id) {]]></search>\r\n    <add position=\"after\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $this->load->model(\'extension/module/timer\');\r\n    $timer_exist = $this->model_extension_module_timer->checkExistenceExtension(\'module\', \'timer\');\r\n    \r\n    $timer_query = \'\';\r\n\r\n    if($timer_exist){\r\n      $timer_query .= \"\r\n        (SELECT date_start FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND (ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS date_start, \r\n        (SELECT date_end FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND (ps.date_end = \'0000-00-00\' OR ps.date_end > NOW()) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS date_end, \r\n        (SELECT timer FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int)$this->config->get(\'config_customer_group_id\') . \"\' AND (ps.date_end = \'0000-00-00\' OR ps.date_end > NOW()) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS timer, \";\r\n    }\r\n    \r\n    $hours_days = ($hours_days = $this->config->get(\'hours_and_days_settings\')) ? $hours_days[\'module_status\'] : false;\r\n    \r\n    if($hours_days){\r\n        $timer_query .= \"\r\n            (SELECT weekdays FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int) $this->config->get(\'config_customer_group_id\') . \"\' AND (ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS weekdays,\r\n            (SELECT hours FROM \" . DB_PREFIX . \"product_special ps WHERE ps.product_id = p.product_id AND ps.customer_group_id = \'\" . (int) $this->config->get(\'config_customer_group_id\') . \"\' AND (ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) ORDER BY ps.priority ASC, ps.price ASC LIMIT 1) AS hours, \";\r\n    }\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[pd.name AS name, p.image,]]></search>\r\n    <add position=\"replace\"><![CDATA[ pd.name AS name, p.image, $timer_query ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[$query->row[\'date_modified\'],]]></search>\r\n    <add position=\"after\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    \'timer\'          => ($timer_exist) ? $query->row[\'timer\'] : \'\',\r\n    \'date_start\'     => ($timer_exist) ? $query->row[\'date_start\'] : \'\',\r\n    \'date_end\'       => ($timer_exist) ? $query->row[\'date_end\'] : \'\',\r\n    \'datetime_end\'   => ($hours_days && !is_null($query->row[\'date_end\'])) ? $this->model_extension_module_timer->getFullDateTime($query->row[\'date_end\'], $query->row[\'weekdays\'], $query->row[\'hours\']) : \'\',\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n   </operation>\r\n</file>\r\n\r\n<file path=\"catalog/controller/product/product.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ((float)$product_info[\'special\']) {]]></search>\r\n    <add position=\"replace\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $this->load->model(\'extension/module/timer\');\r\n    $timer_exist = $this->model_extension_module_timer->checkExistenceExtension(\'module\', \'timer\');\r\n\r\n    $hours_days = ($hours_days = $this->config->get(\'hours_and_days_settings\')) ? $hours_days[\'module_status\'] : false;\r\n\r\n    $data[\'timer_custom_css_styles\'] = $this->model_extension_module_timer->getCustomCSSStyles();\r\n\r\n    $this->load->language(\'extension/module/timer\');\r\n    $data[\'text_timer_heading\'] = $this->language->get(\'text_timer_heading\');\r\n\r\n    $data[\'timer\'] = false; \r\n    $timer_settings = $this->config->get(\'timer_general_settings\');\r\n\r\n    $data[\'discount_label\'] = isset($timer_settings[\'timer_product_page_discount_label_status\']) ? 1 : 0;\r\n\r\n    if ((float)$product_info[\'special\']) {\r\n      if($timer_exist && isset($timer_settings[\'timer_product_page_status\'])){\r\n        $product_info[\'date_end\'] = ($hours_days && isset($product_info[\'datetime_end\'])) ? $product_info[\'datetime_end\'] : $product_info[\'date_end\'];\r\n\r\n        $data[\'special_date_diff\'] = $this->model_extension_module_timer->getSpecialDateDiff($product_info[\'date_end\']);\r\n        $data[\'percentage_discount\'] = $this->model_extension_module_timer->calculateTotalDiscount($product_info[\'price\'], $product_info[\'special\']);\r\n        $data[\'timer\'] = $product_info[\'timer\'];\r\n\r\n        // Load .js files and .css if we need it \r\n        $this->document->addStyle(\'catalog/view/javascript/timer/css/timer.css\');\r\n        $this->document->addScript(\'catalog/view/javascript/timer/jquery.plugin.min.js\');\r\n        $this->document->addScript(\'catalog/view/javascript/timer/jquery.countdown.min.js\');\r\n\r\n        // $lang = mb_strtolower($this->language->get(\'code\'));\r\n        $lang = mb_strtolower($this->config->get(\'config_language\'));\r\n        $lang = explode(\'-\', $lang)[0];\r\n\r\n        if ($lang !== \'en\') {\r\n            $this->document->addScript(\'catalog/view/javascript/timer/jquery.countdown-\' . $lang . \'.js\');\r\n        }\r\n      } else {\r\n        $data[\'timer\'] = false;\r\n      }\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n</file>    \r\n\r\n<file path=\"catalog/view/theme/*/template/product/product.twig\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[{% if price]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {% if timer %}\r\n    {{ timer_custom_css_styles }}\r\n    <div class=\"product-timer-block\">\r\n      <div class=\"prices-block\">\r\n        <span class=\"special-price\">{{ special }}</span>\r\n        <span class=\"old-price\">{{ price }}</span>\r\n      </div>\r\n      <div class=\"timer\">\r\n        <div class=\"text\">{{ text_timer_heading }}</div>\r\n        <div class=\"countdown-timer\"></div>\r\n      </div>\r\n      <div class=\"clearfix\"></div>\r\n    </div>\r\n\r\n    <script type=\"text/javascript\">\r\n      $(document).ready(function() {\r\n        $(\'.countdown-timer\').opencartCountdown({\r\n          until: {{ special_date_diff }}\r\n        });\r\n      });\r\n    </script>\r\n\r\n    <ul class=\"list-unstyled\">\r\n      {% if tax %}\r\n      <li>{{ text_tax }} {{ tax }}</li>\r\n      {% endif %}\r\n      {% if points %}\r\n      <li>{{ text_points }} {{ points }}</li>\r\n      {% endif %}\r\n      {% if discounts %}\r\n      <li><hr></li>\r\n      {% for discount in discounts %}\r\n      <li>{{ discount.quantity }}{{ text_discount }}{{ discount.price }}</li>\r\n      {% endfor %}\r\n      {% endif %}\r\n    </ul>\r\n\r\n    {% endif %}\r\n    {# Bulk Specials Editor #}\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[{% if price]]></search>\r\n    <add position=\"replace\"><![CDATA[{% if price and not timer]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[<ul class=\"thumbnails\">]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {% if timer is defined and discount_label and percentage_discount is defined %}\r\n    <div class=\"discount-sticker\">\r\n      - {{ percentage_discount }}%\r\n    </div>\r\n    {% endif %}\r\n    {# Bulk Specials Editor #}\r\n    ]]></add>\r\n  </operation>\r\n\r\n  <!-- /* Integration with UniShop theme (should also disable \"$price\" replacement ) */ -->\r\n  <!--\r\n    <operation error=\"log\">\r\n    <search><![CDATA[<li><span class=\"old_price\">{{ price }}</span><span>{{ special }}</span></li>]]></search>\r\n    <add position=\"replace\"><![CDATA[<li><span class=\"old_price\" style=\"{% if timer %} display: none; {% endif %}\">{{ price }}</span><span>{{ special }}</span></li>]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search index=\"1\"><![CDATA[<hr />]]></search>\r\n    <add position=\"replace\"><![CDATA[]]></add>\r\n  </operation>\r\n  -->\r\n</file>\r\n\r\n\r\n<!-- Output timer on category/special pages and in modules -->\r\n<!-- Count all timers and load scripts/styles -->\r\n<file path=\"catalog/controller/product/category.php|catalog/controller/product/special.php|catalog/controller/product/manufacturer.php|catalog/controller/product/search.php|catalog/controller/extension/module/featured.php|catalog/controller/extension/module/bestseller.php|catalog/controller/extension/module/latest.php|catalog/controller/extension/module/special.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[public function index(]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    private $total_timers = 0;\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[$this->load->model(\'catalog/product\');]]></search>\r\n    <add position=\"after\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $this->load->model(\'extension/module/timer\');\r\n    $timer_exist = $this->model_extension_module_timer->checkExistenceExtension(\'module\', \'timer\');\r\n    \r\n    $hours_days = ($hours_days = $this->config->get(\'hours_and_days_settings\')) ? $hours_days[\'module_status\'] : false;\r\n\r\n    $this->load->language(\'extension/module/timer\');\r\n    $data[\'text_timer_on_products_page\'] = $this->language->get(\'text_timer_on_products_page\');\r\n    \r\n    $timer_settings = $this->config->get(\'timer_general_settings\');\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[$price,]]></search>\r\n    <add position=\"after\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    \'special_date_diff\'  => $timer == 1 ? $special_date_diff : \'\',\r\n    \'percentage_discount\'=> $timer == 1 ? $percentage_discount : \'\',\r\n    \'timer\'              => $timer,\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"skip\">\r\n    <search><![CDATA[$data[\'header\']]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    if($this->total_timers > 0) {\r\n      # Loading custom styles for timer \r\n      $data[\'timer_custom_css_styles\'] = $this->model_extension_module_timer->getCustomCSSStyles();\r\n\r\n      $this->document->addStyle(\'catalog/view/javascript/timer/css/timer.css\');\r\n      $this->document->addScript(\'catalog/view/javascript/timer/jquery.plugin.min.js\');\r\n      $this->document->addScript(\'catalog/view/javascript/timer/jquery.countdown.min.js\');\r\n\r\n      $lang = mb_strtolower($this->language->get(\'code\'));\r\n\r\n      if ($lang !== \'en\') {\r\n          $this->document->addScript(\'catalog/view/javascript/timer/jquery.countdown-\' . $lang . \'.js\');\r\n      }\r\n    }\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/controller/extension/module/featured.php|catalog/controller/extension/module/bestseller.php|catalog/controller/extension/module/latest.php|catalog/controller/extension/module/special.php\">\r\n  <!-- Load styles for OpenCart 2.2 -->\r\n  <operation error=\"log\">\r\n    <search><![CDATA[return $this->load->view(]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    if($this->total_timers > 0) {\r\n      # Loading custom styles for timer \r\n      $data[\'timer_custom_css_styles\'] = $this->model_extension_module_timer->getCustomCSSStyles();\r\n\r\n      $this->document->addStyle(\'catalog/view/javascript/timer/css/timer.css\');\r\n      $this->document->addScript(\'catalog/view/javascript/timer/jquery.plugin.min.js\');\r\n      $this->document->addScript(\'catalog/view/javascript/timer/jquery.countdown.min.js\');\r\n\r\n      $lang = mb_strtolower($this->language->get(\'code\'));\r\n\r\n      if ($lang !== \'en\') {\r\n          $this->document->addScript(\'catalog/view/javascript/timer/jquery.countdown-\' . $lang . \'.js\');\r\n      }\r\n    }\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\')]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    if($this->total_timers > 0) {\r\n      # Loading custom styles for timer \r\n      $data[\'timer_custom_css_styles\'] = $this->model_extension_module_timer->getCustomCSSStyles();\r\n\r\n      $this->document->addStyle(\'catalog/view/javascript/timer/css/timer.css\');\r\n      $this->document->addScript(\'catalog/view/javascript/timer/jquery.plugin.min.js\');\r\n      $this->document->addScript(\'catalog/view/javascript/timer/jquery.countdown.min.js\');\r\n\r\n      $lang = mb_strtolower($this->language->get(\'code\'));\r\n\r\n      if ($lang !== \'en\') {\r\n          $this->document->addScript(\'catalog/view/javascript/timer/jquery.countdown-\' . $lang . \'.js\');\r\n      }\r\n    }\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n\r\n\r\n<!-- Do the replacement ONLY on Category, Special pages and Bestseller, Latest, Special modules (because of output the data through $result variable) -->\r\n<file path=\"catalog/controller/product/category.php|catalog/controller/product/special.php|catalog/controller/product/manufacturer.php|catalog/controller/product/search.php|catalog/controller/extension/module/bestseller.php|catalog/controller/extension/module/latest.php|catalog/controller/extension/module/special.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ((float)$result[\'special\']) {]]></search>\r\n    <add position=\"replace\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $timer = false;\r\n\r\n    if ((float)$result[\'special\']) {\r\n      if ($timer_exist) {\r\n        $timer = $result[\'timer\'];\r\n\r\n        $result[\'date_end\'] = ($hours_days && isset($result[\'datetime_end\'])) ? $result[\'datetime_end\'] : $result[\'date_end\'];\r\n\r\n        $special_date_diff   = $this->model_extension_module_timer->getSpecialDateDiff($result[\'date_end\']);\r\n        $percentage_discount = $this->model_extension_module_timer->calculateTotalDiscount($result[\'price\'], $result[\'special\']);\r\n\r\n        $this->total_timers++;\r\n      } else {\r\n        $timer = false;\r\n      }\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n\r\n<!-- Do the replacement ONLY in the Featured Module (because of output the data through $product_info variable) -->\r\n<file path=\"catalog/controller/extension/module/featured.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ((float)$product_info[\'special\']) {]]></search>\r\n    <add position=\"replace\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $timer = false;\r\n\r\n    if ((float)$product_info[\'special\']) {\r\n      if ($timer_exist) {\r\n        $timer = $product_info[\'timer\'];\r\n\r\n        $product_info[\'date_end\'] = ($hours_days && isset($product_info[\'datetime_end\'])) ? $product_info[\'datetime_end\'] : $product_info[\'date_end\'];\r\n\r\n        $special_date_diff   = $this->model_extension_module_timer->getSpecialDateDiff($product_info[\'date_end\']);\r\n        $percentage_discount = $this->model_extension_module_timer->calculateTotalDiscount($product_info[\'price\'], $product_info[\'special\']);\r\n\r\n        $this->total_timers++;\r\n      } else {\r\n        $timer = false;\r\n      }\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n\r\n\r\n<!-- To separate display on different pages (Category, Special page + in modules) -->\r\n<file path=\"catalog/controller/product/category.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ($timer_exist) {]]></search>\r\n    <add position=\"replace\"><![CDATA[if ($timer_exist && isset($timer_settings[\'timer_category_page_status\'])) {]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/controller/product/special.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ($timer_exist) {]]></search>\r\n    <add position=\"replace\"><![CDATA[if($timer_exist && isset($timer_settings[\'timer_special_page_status\'])) {]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/controller/product/search.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ($timer_exist) {]]></search>\r\n    <add position=\"replace\"><![CDATA[if($timer_exist && isset($timer_settings[\'timer_search_page_status\'])) {]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/controller/product/manufacturer.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ($timer_exist) {]]></search>\r\n    <add position=\"replace\"><![CDATA[if($timer_exist && isset($timer_settings[\'timer_manufacturer_page_status\'])) {]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/controller/extension/module/featured.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ($timer_exist) {]]></search>\r\n    <add position=\"replace\"><![CDATA[if($timer_exist && isset($timer_settings[\'timer_in_featured_module_status\'])) {]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/controller/extension/module/bestseller.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ($timer_exist) {]]></search>\r\n    <add position=\"replace\"><![CDATA[if($timer_exist && isset($timer_settings[\'timer_in_bestseller_module_status\'])) {]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/controller/extension/module/latest.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ($timer_exist) {]]></search>\r\n    <add position=\"replace\"><![CDATA[if($timer_exist && isset($timer_settings[\'timer_in_latest_module_status\'])) {]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/controller/extension/module/special.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[if ($timer_exist) {]]></search>\r\n    <add position=\"replace\"><![CDATA[if($timer_exist && isset($timer_settings[\'timer_in_special_module_status\'])) {]]></add>\r\n  </operation>\r\n</file>\r\n\r\n\r\n<!-- Output timer on Category, Special pages -->\r\n<file path=\"catalog/view/theme/*/template/product/category.twig|catalog/view/theme/*/template/product/special.twig|catalog/view/theme/*/template/product/manufacturer_info.twig|catalog/view/theme/*/template/product/search.twig\">\r\n  <operation error=\"log\">\r\n    <search index=\"0\"><![CDATA[{% if product.price]]></search>\r\n    <add position=\"replace\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {% if product.timer %}\r\n      \r\n    <div class=\"timer-block\">\r\n      <div class=\"prices-block\">\r\n        <span class=\"special-price\">{{ product.special }}</span>\r\n        <span class=\"old-price\">{{ product.price }}</span>\r\n        <span class=\"percentage-discount\">{{ text_timer_on_products_page ~ \'-\' ~ product.percentage_discount }}%</span>\r\n      </div>\r\n      <div class=\"timer_{{ product.product_id }}\"></div>\r\n    </div>\r\n\r\n    <script type=\"text/javascript\">\r\n      $(document).ready(function() {\r\n        $(\'.timer_{{ product.product_id }}\').opencartCountdown({\r\n          until: {{ product.special_date_diff }}\r\n        });\r\n      });\r\n    </script>\r\n\r\n    {% endif %}\r\n    {# Bulk Specials Editor #}\r\n\r\n    {% if product.price and not product.timer\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n\r\n\r\n<!-- Output timer in Modules: Featured, Bestseller, Latest, Special -->\r\n<file path=\"catalog/view/theme/*/template/extension/module/featured.twig|catalog/view/theme/*/template/extension/module/bestseller.twig|catalog/view/theme/*/template/extension/module/latest.twig|catalog/view/theme/*/template/extension/module/special.twig\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[{% if product.price]]></search>\r\n    <add position=\"replace\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {% if product.timer %}\r\n      \r\n    <div class=\"timer-block\">\r\n      <div class=\"prices-block\">\r\n        <span class=\"special-price\">{{ product.special }}</span>\r\n        <span class=\"old-price\">{{ product.price }}</span>\r\n        <span class=\"percentage-discount\">{{ text_timer_on_products_page ~ \'-\' ~ product.percentage_discount }}%</span>\r\n      </div>\r\n      <div class=\"timer_{{ product.product_id }}\"></div>\r\n    </div>\r\n\r\n    <script type=\"text/javascript\">\r\n      $(document).ready(function() {\r\n        $(\'.timer_{{ product.product_id }}\').opencartCountdown({\r\n          until: {{ product.special_date_diff }}\r\n        });\r\n      });\r\n    </script>\r\n\r\n    {% endif %}\r\n    {# Bulk Specials Editor #}\r\n\r\n    {% if product.price and not product.timer\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n\r\n<!-- Loading custom styles in the template -->\r\n<file path=\"catalog/view/theme/*/template/product/category.twig|catalog/view/theme/*/template/product/special.twig|catalog/view/theme/*/template/product/manufacturer_info.twig|catalog/view/theme/*/template/product/search.twig\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[{{ footer]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {{ timer_custom_css_styles is defined ? timer_custom_css_styles : \'\' }}\r\n    {# Bulk Specials Editor #}\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/view/theme/*/template/extension/module/featured.twig|catalog/view/theme/*/template/extension/module/bestseller.twig|catalog/view/theme/*/template/extension/module/latest.twig|catalog/view/theme/*/template/extension/module/special.twig\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[{% for product in products]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {{ timer_custom_css_styles is defined ? timer_custom_css_styles : \'\' }}\r\n    {# Bulk Specials Editor #}\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n\r\n<!-- To prevent matches in classes in modules-->\r\n<file path=\"catalog/view/theme/*/template/extension/module/featured.twig\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[timer_{{ product.product_id }}]]></search>\r\n    <add position=\"replace\"><![CDATA[timer_featured_{{ product.product_id }}]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/view/theme/*/template/extension/module/bestseller.twig\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[timer_{{ product.product_id }}]]></search>\r\n    <add position=\"replace\"><![CDATA[timer_bestseller_{{ product.product_id }}]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/view/theme/*/template/extension/module/latest.twig\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[timer_{{ product.product_id }}]]></search>\r\n    <add position=\"replace\"><![CDATA[timer_latest_{{ product.product_id }}]]></add>\r\n  </operation>\r\n</file>\r\n<file path=\"catalog/view/theme/*/template/extension/module/special.twig\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[timer_{{ product.product_id }}]]></search>\r\n    <add position=\"replace\"><![CDATA[timer_special_{{ product.product_id }}]]></add>\r\n  </operation>\r\n</file>\r\n\r\n\r\n<!-- ============================= -->\r\n<!-- Manipulation in the admin panel-->\r\n\r\n<!-- Changes in the Model -->\r\n<file path=\"admin/model/catalog/product.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[as $product_special) {]]></search>\r\n    <add position=\"after\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $this->load->model(\'extension/module/timer\');\r\n    \r\n    if($this->model_extension_module_timer->checkExistenceExtension(\'module\', \'timer\')){\r\n      $timer = \"timer = \'\" . $this->db->escape($product_special[\'timer\']) . \"\', product_special_group_id = \'\" . (int) $product_special[\'product_special_group_id\'] . \"\',\";\r\n    } else {\r\n      $timer = \'\';\r\n    }\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[date_start = \'\" . $this->db->escape($product_special[\'date_start\']) . \"\',]]></search>\r\n    <add position=\"replace\"><![CDATA[date_start = \'\" . $this->db->escape($product_special[\'date_start\']) . \"\', $timer]]></add>\r\n  </operation>\r\n  <!-- Full search by product name and model -->\r\n  <operation error=\"log\">\r\n    <search><![CDATA[$sql .= \" AND pd.name LIKE \'\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";]]></search>\r\n    <add position=\"replace\"><![CDATA[$sql .= \" AND pd.name LIKE \'%\" . $this->db->escape($data[\'filter_name\']) . \"%\'\";]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[$sql .= \" AND p.model LIKE \'\" . $this->db->escape($data[\'filter_model\']) . \"%\'\";]]></search>\r\n    <add position=\"replace\"><![CDATA[$sql .= \" AND p.model LIKE \'%\" . $this->db->escape($data[\'filter_model\']) . \"%\'\";]]></add>\r\n  </operation>\r\n</file>\r\n\r\n\r\n<file path=\"admin/controller/catalog/product.php\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[function getForm() {]]></search>\r\n    <add position=\"after\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $this->load->model(\'extension/module/timer\');\r\n    \r\n    $data[\'special_groups\'] = $this->model_extension_module_timer->getSpecialGroups();\r\n\r\n    $timer_exist = $this->model_extension_module_timer->checkExistenceExtension(\'module\', \'timer\');\r\n\r\n    if($timer_exist){\r\n      $data[\'timer\'] = true;\r\n    } else {\r\n      $data[\'timer\'] = false;\r\n    }\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[$this->language->get(\'entry_customer_group\');]]></search>\r\n    <add position=\"after\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $data[\'entry_special_group\'] = $this->language->get(\'entry_special_group\');\r\n    $data[\'entry_timer\'] = $this->language->get(\'entry_timer\');\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[$product_special[\'price\'],]]></search>\r\n    <add position=\"after\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    \'timer\'                    => ($timer_exist) ? $product_special[\'timer\'] : \'\',\r\n    \'product_special_group_id\' => ($timer_exist) ? $product_special[\'product_special_group_id\'] : 0,\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n   </operation>\r\n</file>\r\n\r\n<file path=\"admin/view/template/catalog/product_form.twig\">\r\n  <operation error=\"log\">\r\n    <search><![CDATA[<td colspan=\"5\">]]></search>\r\n    <add position=\"replace\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {% if timer %}\r\n      <td colspan=\"7\">\r\n    {% else %}\r\n      <td colspan=\"5\">\r\n    {% endif %}\r\n    {# Bulk Specials Editor #}\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[<td class=\"text-right\"><input type=\"text\" name=\"product_special[{{ special_row }}][priority]]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {% if timer %}\r\n      <td class=\"text-left\">\r\n        <select name=\"product_special[{{ special_row }}][product_special_group_id]\" class=\"form-control\">\r\n          <option value=\"0\"></option>\r\n          {% for special_group in special_groups %}\r\n          {% if special_group.product_special_group_id == product_special.product_special_group_id %}\r\n          <option value=\"{{ special_group.product_special_group_id }}\" selected=\"selected\">{{ special_group.name }}</option>\r\n          {% else %}\r\n          <option value=\"{{ special_group.product_special_group_id }}\">{{ special_group.name }}</option>\r\n          {% endif %}\r\n          {% endfor %}\r\n        </select>\r\n      </td>\r\n    {% endif %}\r\n    {# Bulk Specials Editor #}\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[<td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#special-row]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {% if timer %}\r\n      <td class=\"center\">\r\n        <select name=\"product_special[{{ special_row }}][timer]\" class=\"form-control\">\r\n          <option value=1 {{ product_special.timer == 1 ? \'selected\' : \'\' }} >{{ text_enabled }}</option>\r\n          <option value=0 {{ product_special.timer == 0 ? \'selected\' : \'\' }} >{{ text_disabled }}</option>\r\n        </select>\r\n      </td>\r\n    {% endif %}\r\n    {# Bulk Specials Editor #}\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[html += \'  <td class=\"text-right\"><input type=\"text\" name=\"product_special[\' + special_row + \'][priority]]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    {% if timer %}\r\n      html += \'  <td class=\"text-left\"><select name=\"product_special[\' + special_row + \'][product_special_group_id]\" class=\"form-control\">\';\r\n      html += \'    <option value=\"0\"></option>\';\r\n      {% for special_group in special_groups %}\r\n      html += \'    <option value=\"{{ special_group.product_special_group_id }}\">{{ special_group.name | escape(\'js\') }}</option>\';\r\n      {% endfor %}\r\n      html += \'  </select></td>\';\r\n    {% endif %}\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#special-row\' + special_row + \'\\\').remove();]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    {% if timer %}\r\n      html += \'<td class=\"center\"><select name=\"product_special[\' + special_row + \'][timer]\" class=\"form-control\"> <option value=1 selected>{{ text_enabled }}</option> <option value=0 >{{ text_disabled }}</option></select></td>\';\r\n    {% endif %}\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  <operation error=\"log\">\r\n    <search><![CDATA[{{ footer }}]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    {# Bulk Specials Editor #}\r\n    {% if timer %}\r\n      <script type=\"text/javascript\">\r\n        $(\'<td class=\"text-left\">{{ entry_special_group }}</td>\').insertAfter( $(\'#tab-special table thead td:first\') );\r\n        $(\'<td class=\"text-center\">{{ entry_timer }}</td>\').insertBefore( $(\'#tab-special table thead td:last\') );\r\n      </script>\r\n    {% endif %}\r\n    {# Bulk Specials Editor #}\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n\r\n<file path=\"admin/controller/common/column_left.php\">\r\n  <operation error=\"skip\">\r\n    <search><![CDATA[if ($this->user->hasPermission(\'access\', \'catalog/recurring\')) {]]></search>\r\n    <add position=\"before\"><![CDATA[      \r\n    if ($this->user->hasPermission(\'access\', \'extension/module/timer\')) {        \r\n        $catalog[] = array(\r\n            \'name\'     => \'\'. $this->language->get(\'Массовое управление акциями, таймер акций\') . \'\',\r\n            \'href\'     => $this->url->link(\'extension/module/timer\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n            \'children\' => array()        \r\n        );                    \r\n    }\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n\r\n\r\n<!-- Replacement in languages files -->\r\n<file path=\"admin/language/english/catalog/product.php|admin/language/en-gb/catalog/product.php\">\r\n  <operation>\r\n    <search><![CDATA[$_[\'entry_customer_group\']]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $_[\'entry_special_group\'] = \'Special group\';\r\n    $_[\'entry_timer\']         = \'Timer\';\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n  </file>\r\n  \r\n  <file path=\"admin/language/russian/catalog/product.php|admin/language/ru-ru/catalog/product.php\">\r\n  <operation>\r\n    <search><![CDATA[$_[\'entry_customer_group\']]]></search>\r\n    <add position=\"before\"><![CDATA[\r\n    /* Bulk Specials Editor */\r\n    $_[\'entry_special_group\'] = \'Группа акций\';\r\n    $_[\'entry_timer\']         = \'Таймер\';\r\n    /* Bulk Specials Editor */\r\n    ]]></add>\r\n  </operation>\r\n</file>\r\n\r\n</modification>\r\n', 1, '2022-11-05 02:13:26', '2022-11-05 02:19:20');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(11, 13, 'Days and hours in specials', 'Days and hours in specials', 'Dashko L. (kagan). Email: dev.dashko@gmail.com', '1.0.4', 'http://opencart-modules.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>Days and hours in specials</name>\r\n  <code>Days and hours in specials</code>\r\n  <version>1.0.4</version>\r\n  <author>Dashko L. (kagan). Email: dev.dashko@gmail.com</author>\r\n  <link>http://opencart-modules.com</link>\r\n<!--\r\n *******************************************************************************\r\n *  Module: Days and hours in specials\r\n *\r\n *  Web-site: http://opencart-modules.com\r\n *  Email: dev.dashko@gmail.com\r\n *  © Leonid Dashko\r\n *\r\n *  Below source-code or any part of the source-code cannot be resold or distributed.\r\n ******************************************************************************\r\n-->\r\n\r\n<!-- CATALOG CHANGES -->\r\n<!-- Changes in the Models -->\r\n    <file path=\"catalog/model/catalog/product.php|catalog/model/feed/yandex_market.php|catalog/model/extension/feed/yandex_market.php|catalog/model/export/yandex_yml.php|catalog/model/extension/feed/yandex_yml.php|catalog/model/extension/module/specialpercategory.php|catalog/model/journal3/filter.php|catalog/model/journal3/product.php\">\r\n      <operation error=\"log\">\r\n        <search><![CDATA[extends Model {]]></search>\r\n        <!--<search><![CDATA[public function getProduct(]]></search>-->\r\n        <add position=\"after\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        private $count_checks_hours_days = 0;\r\n        private $hours_and_days_sql = \"\";\r\n\r\n        private function getHoursAndDatesSQL()\r\n        {\r\n            if ($this->count_checks_hours_days == 0) {\r\n                // Settings of the module \"Days and hours in specials\"\r\n                $settings = $this->config->get(\'hours_and_days_settings\');\r\n\r\n                if (isset($settings) && $settings[\'module_status\'] != false) {\r\n                    $this->hours_and_days_sql = \"AND FIND_IN_SET(\'\" . date(\'w\') . \"\', weekdays) AND FIND_IN_SET(\'\" . date(\'H\') . \"\', hours) \";\r\n                }\r\n\r\n                $this->count_checks_hours_days++;\r\n            }\r\n            \r\n            return $this->hours_and_days_sql;\r\n        }\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[ps.date_start = \'0000-00-00\' OR ps.date_start < NOW())]]></search>\r\n        <add position=\"replace\"><![CDATA[ps.date_start = \'0000-00-00\' OR ps.date_start < NOW()) \" . $this->getHoursAndDatesSQL() . \" ]]></add>\r\n      </operation>\r\n    </file>\r\n    <!-- Integration with Yandex.Market module -->\r\n    <file path=\"catalog/model/catalog/product.php|catalog/model/extension/feed/yandex_market.php|catalog/model/export/yandex_yml.php|catalog/model/extension/feed/yandex_yml.php\">\r\n      <operation error=\"log\">\r\n        <search><![CDATA[(ps.date_end = \'0000-00-00\' OR ps.date_end > NOW())]]></search>\r\n        <add position=\"replace\"><![CDATA[(ps.date_end = \'0000-00-00\' OR ps.date_end > NOW()) \" . $this->getHoursAndDatesSQL() . \" ]]></add>\r\n       </operation>\r\n   </file>\r\n\r\n    <!-- system/library/cart/cart.php for opencart 2.2 -->\r\n    <file path=\"system/library/cart.php|system/library/cart/cart.php\">\r\n      <operation error=\"log\">\r\n        <search><![CDATA[$product_special_query =]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        // Settings of the module \"Days and hours in specials\"\r\n        $hd_settings = $this->config->get(\'hours_and_days_settings\');\r\n        $hours_and_days_sql = (isset($hd_settings) && $hd_settings[\'module_status\'] != false) ? \"FIND_IN_SET(\'\" . date(\'w\') . \"\', weekdays) AND FIND_IN_SET(\'\" . date(\'H\') . \"\', hours) AND \" : \"\";\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[$product_special_query = $this->db->query(\"SELECT price FROM \" . DB_PREFIX . \"product_special WHERE ]]></search>\r\n        <add position=\"replace\"><![CDATA[$product_special_query = $this->db->query(\"SELECT price FROM \" . DB_PREFIX . \"product_special WHERE \" . $hours_and_days_sql . \" ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n\r\n<!-- ADMIN CHANGES -->\r\n<!-- Changes in the Models -->\r\n    <file path=\"admin/model/catalog/product.php\">\r\n      <operation error=\"log\">\r\n        <search><![CDATA[foreach ($data[\'product_special\'] as $product_special) {]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        $hours_and_days_settings = $this->config->get(\'hours_and_days_settings\');\r\n        $hours_and_days_settings = (isset($hours_and_days_settings) && $hours_and_days_settings[\'module_status\'] != false) ? true : false;\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[foreach ($data[\'product_special\'] as $product_special) {]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        // Check the status of module \"Days and Hours\"\r\n        if ($hours_and_days_settings) {\r\n            $weekdays = isset($product_special[\'weekdays\']) ? $product_special[\'weekdays\'] : \'\';\r\n            $hours = isset($product_special[\'hours\']) ? $product_special[\'hours\'] : \'\';\r\n            \r\n            if (!empty($weekdays) && is_array($weekdays)) {                   \r\n                $weekdays = implode(\',\', $product_special[\'weekdays\']);\r\n            }\r\n\r\n            if (!empty($hours) && is_array($hours)) {\r\n                $hours = implode(\',\', $product_special[\'hours\']);\r\n            }\r\n\r\n            $sql_part = \"weekdays = \'\" . $weekdays . \"\', hours = \'\" . $hours . \"\', \";\r\n        } else {\r\n            $sql_part = \"\";\r\n        }\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[$this->db->escape($product_special[\'date_start\']) . \"\',]]></search>\r\n        <add position=\"replace\"><![CDATA[$this->db->escape($product_special[\'date_start\']) . \"\', $sql_part]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n<!-- Changes in the Controllers -->\r\n    <file path=\"admin/controller/catalog/product.php\">\r\n      <operation error=\"log\">\r\n        <search><![CDATA[extends Controller {]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        private $count_checks_hours_days = 0;\r\n        private $hours_days_status = false;\r\n\r\n        private function getHoursDaysStatus()\r\n        {\r\n            if ($this->count_checks_hours_days == 0) {\r\n                // Settings of the module \"Days and hours in specials\"\r\n                $settings = $this->config->get(\'hours_and_days_settings\');\r\n\r\n                if (isset($settings) && $settings[\'module_status\'] != false) {\r\n                    $this->hours_days_status = true;\r\n                }\r\n\r\n                $this->count_checks_hours_days++;\r\n            }\r\n            \r\n            return $this->hours_days_status;\r\n        }\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[protected function getForm() {]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        $data[\'entry_days\'] = $this->language->get(\'entry_days\');\r\n        $data[\'entry_hours\'] = $this->language->get(\'entry_hours\');\r\n\r\n        $data[\'text_select_all\'] = $this->language->get(\'text_select_all\');\r\n        $data[\'text_all_selected\'] = $this->language->get(\'text_all_selected\');\r\n        $data[\'text_choose\'] = $this->language->get(\'text_choose\');\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[if (isset($this->request->post[\'product_image\'])) {]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n        // Check the status of module \"Days and Hours\"\r\n        $data[\'hours_and_days\'] = $this->getHoursDaysStatus();\r\n\r\n        /* Days and hours in specials */\r\n        if ($this->getHoursDaysStatus() === true) {\r\n            $this->load->model(\'extension/module/hours_and_days\');\r\n\r\n            $data[\'weekdays\'] = $this->model_extension_module_hours_and_days->getWeekdays();\r\n            $data[\'hours\'] = $this->model_extension_module_hours_and_days->getHours();\r\n            \r\n            $this->document->addStyle(\'view/javascript/multiselect/multiple-select.css\');\r\n            $this->document->addScript(\'view/javascript/multiselect/multiple-select.js\');\r\n        }\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[=> $product_special[\'price\'],]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        \'weekdays\' => ($this->getHoursDaysStatus() === true) ? $product_special[\'weekdays\'] : false,\r\n        \'hours\'    => ($this->getHoursDaysStatus() === true) ? $product_special[\'hours\'] : false,\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[if (($product_special[\'date_start\'] == \'0000-00-00\']]></search>\r\n        <add position=\"before\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        $additional_check = true;\r\n        \r\n        // If the we found matches in days and hours for now and the module is enabled\r\n        if ($this->getHoursDaysStatus() === true && (strpos($product_special[\'weekdays\'], date(\'w\')) === false || strpos($product_special[\'hours\'], date(\'H\')) === false)) {\r\n            $additional_check = false;\r\n        }\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[strtotime($product_special[\'date_end\']) > time())]]></search>\r\n        <add position=\"replace\"><![CDATA[strtotime($product_special[\'date_end\']) > time()) && $additional_check]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n<!-- Changes in the Views -->\r\n    <file path=\"admin/view/template/catalog/product_form.twig\">\r\n      <operation error=\"log\">\r\n        <search><![CDATA[html += \'  <td class=\"text-left\"><button type=\"button\" onclick=\"$(\\\'#special-row\' + special_row]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        {% if hours_and_days %}\r\n          html += \'    <td class=\"left\"><select name=\"product_special[\' + special_row + \'][weekdays][]\" multiple=\"true\" class=\"weekdays\">\';\r\n          {% for weekday in weekdays %}\r\n          html += \'      <option value=\"{{ weekday.id }}\" selected=\"true\">{{ weekday.name }}</option>\';\r\n          {% endfor %}\r\n          html += \'    </select></td>\';\r\n  \r\n          html += \'    <td class=\"left\"><select name=\"product_special[\' + special_row + \'][hours][]\" multiple=\"true\" class=\"hours\">\';\r\n          {% for hour in hours %}\r\n          html += \'      <option value=\"{{ hour.id }}\" selected=\"true\">{{ hour.name }}</option>\';\r\n          {% endfor %}\r\n          html += \'    </select></td>\';\r\n        {% endif %}\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[$(\'#special tbody\').append(html);]]></search>\r\n        <add position=\"after\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        {% if hours_and_days %}\r\n          set_weekdays_multiselect(\'#special-row\' + special_row + \' .weekdays\');\r\n          set_hours_multiselect(\'#special-row\' + special_row + \' .hours\');\r\n        {% endif %}\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[<td colspan=\"5\">]]></search>\r\n        <add position=\"replace\"><![CDATA[\r\n        {# Days and hours in specials -#}\r\n        {% if hours_and_days and timer is defined %}\r\n          <td colspan=\"8\">\r\n        {% elseif hours_and_days and timer is not defined %}\r\n          <td colspan=\"7\">\r\n        {% else %}\r\n          <td colspan=\"5\">\r\n        {% endif %}\r\n        {# Days and hours in specials #}\r\n        ]]></add>\r\n      </operation>\r\n      <operation error=\"log\">\r\n        <search><![CDATA[<td class=\"text-left\"><button type=\"button\" onclick=\"$(\'#special-row]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n        {# Days and hours in specials #}\r\n        {% if hours_and_days %}\r\n          <td class=\"left\">\r\n            <select name=\"product_special[{{ special_row }}][weekdays][]\" multiple=\"true\" class=\"weekdays\">\r\n              {% for weekday in weekdays %}\r\n                {% if weekday.id in product_special.weekdays %}\r\n                  <option value=\"{{ weekday.id }}\" selected=\"true\">{{ weekday.name }}</option>\r\n                {% else %}\r\n                  <option value=\"{{ weekday.id }}\">{{ weekday.name }}</option>\r\n                {% endif %}\r\n              {% endfor %}\r\n            </select>\r\n          </td>\r\n\r\n          <td class=\"left\">\r\n            <select name=\"product_special[{{ special_row }}][hours][]\" multiple=\"true\" class=\"hours\">\r\n              {% for hour in hours %}\r\n                {% if hour.id in product_special.hours %}\r\n                  <option value=\"{{ hour.id }}\" selected=\"true\">{{ hour.name }}</option>\r\n                {% else %}\r\n                  <option value=\"{{ hour.id }}\">{{ hour.name }}</option>\r\n                {% endif %}\r\n              {% endfor %}\r\n            </select>\r\n          </td>\r\n        {% endif %}\r\n        {# Days and hours in specials #}\r\n        ]]></add>\r\n      </operation>   \r\n      <operation error=\"log\">\r\n        <search><![CDATA[{{ footer]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n        {# Days and hours in specials #}\r\n        {% if hours_and_days %}\r\n          <script type=\"text/javascript\">\r\n            // Remove overlap for dropdown multiselect\r\n            $(\'.table-responsive\').filter(\':eq(3), :eq(6)\').css(\'overflow-x\', \'visible\');\r\n\r\n            $(\'<td class=\"text-center\">{{ entry_days }}</td><td class=\"text-center\">{{ entry_hours }}</td>\')\r\n                .insertBefore($(\'#tab-special table thead td:last\'));\r\n\r\n            set_weekdays_multiselect(\'.weekdays\');\r\n            set_hours_multiselect(\'.hours\');\r\n\r\n            function set_weekdays_multiselect(identificator) {\r\n              $(identificator).multipleSelect({\r\n                multiple: true,\r\n                width: 120,\r\n                multipleWidth: \'100%\',\r\n                placeholder: \"{{ text_choose }}\",\r\n                selectAllText: \"{{ text_select_all }}\",\r\n                allSelected: \"{{ text_select_all }}\",\r\n                countSelected: false,\r\n              });\r\n            }        \r\n\r\n            function set_hours_multiselect(identificator) {\r\n              $(identificator).multipleSelect({\r\n                multiple: true,\r\n                width: 120,\r\n                multipleWidth: \'100%\',\r\n                placeholder: \"{{ text_choose }}\",\r\n                selectAllText: \"{{ text_select_all }}\",\r\n                allSelected: \"{{ text_select_all }}\",\r\n                countSelected: false,\r\n              });\r\n            }\r\n          </script>\r\n        {% endif %}\r\n        {# Days and hours in specials #}\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n<!-- Changes in the language files -->\r\n    <file path=\"admin/language/ru-ru/catalog/product.php\">\r\n      <operation error=\"log\">\r\n        <search><![CDATA[$_[\'entry_priority\']]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        $_[\'entry_days\']  = \'Дни недели\';\r\n        $_[\'entry_hours\'] = \'Часы\';\r\n\r\n        $_[\'text_choose\'] = \'--- Выберите ---\';\r\n        $_[\'text_select_all\'] = \'Всегда\';\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n    <file path=\"admin/language/en-gb/catalog/product.php\">\r\n      <operation error=\"log\">\r\n        <search><![CDATA[$_[\'entry_priority\']]]></search>\r\n        <add position=\"before\"><![CDATA[\r\n        /* Days and hours in specials */\r\n        $_[\'entry_days\']  = \'Days\';\r\n        $_[\'entry_hours\'] = \'Hours\';\r\n\r\n        $_[\'text_choose\'] = \'--- Select ---\';\r\n        $_[\'text_select_all\'] = \'Always\';\r\n        /* Days and hours in specials */\r\n        ]]></add>\r\n      </operation>\r\n    </file>\r\n\r\n</modification>\r\n', 1, '2022-11-05 02:13:47', '2022-11-05 02:13:47'),
(12, 14, 'Modification Manager', 'modification_manager', 'opencart3x.ru', '3.x', 'https://opencart3x.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<name>Modification Manager</name>\n	<code>modification_manager</code>\n	<version>3.x</version>\n	<author>opencart3x.ru</author>\n	<link>https://opencart3x.ru</link>\n\n	<file path=\"admin/language/ru-ru/marketplace/modification.php\">\n		<operation>\n			<search index=\"0\"><![CDATA[<?php]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'tab_error\'] = \'Ошибки\';\n$_[\'tab_files\'] = \'Файлы\';\n\n$_[\'text_add\'] = \'Создать\';\n$_[\'text_edit\'] = \'Редактировать: %s\';\n\n$_[\'text_enabled\'] = \'Включено\';\n$_[\'text_disabled\'] = \'Отключено\';\n\n$_[\'entry_author\'] = \'Автор\';\n$_[\'entry_name\'] = \'Название\';\n$_[\'entry_xml\'] = \'XML\';\n\n$_[\'button_filter\'] = \'Фильтр\';\n$_[\'button_reset\'] = \'Сброс\';\n\n$_[\'column_date_modified\'] = \'Дата измен.\';\n\n$_[\'error_warning\'] = \'Возникла ошибка, проверьте данные и попробуйте еще раз\';\n$_[\'error_required\'] = \'Это поле обязательно\';\n$_[\'error_name\'] = \'Пропущен тег name\';\n$_[\'error_code\'] = \'Пропущен тег code\';\n$_[\'error_exists\'] = \'Модификация \\\'%s\\\' уже использует идентификатор code: %s!\';]]></add>\n		</operation>\n	</file>\n\n	<file path=\"admin/language/en-gb/marketplace/modification.php\">\n		<operation>\n			<search index=\"0\"><![CDATA[<?php]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'tab_error\'] = \'Error\';\n$_[\'tab_files\'] = \'Files\';\n\n$_[\'text_add\'] = \'Add Modification\';\n$_[\'text_edit\'] = \'Edit Modification: %s\';\n\n$_[\'text_enabled\'] = \'Enabled\';\n$_[\'text_disabled\'] = \'Disabled\';\n\n$_[\'entry_author\'] = \'Author\';\n$_[\'entry_name\'] = \'Name\';\n$_[\'entry_xml\'] = \'XML\';\n\n$_[\'button_filter\'] = \'Filter\';\n$_[\'button_reset\'] = \'Reset\';\n\n$_[\'column_date_modified\'] = \'Last Modified\';\n\n$_[\'error_warning\'] = \'There has been an error. Please check your data and try again\';\n$_[\'error_required\'] = \'This field is required\';\n$_[\'error_name\'] = \'Missing name tag\';\n$_[\'error_code\'] = \'Missing code tag\';\n$_[\'error_exists\'] = \'Modification \\\'%s\\\' is already using the same code: %s!\';]]></add>\n		</operation>\n	</file>\n\n	<file path=\"admin/controller/marketplace/modification.php\">\n	    <operation>\n			<search index=\"0\"><![CDATA[public function index() {]]></search>\n			<add position=\"after\"><![CDATA[      	$this->load->model(\'extension/module/modification_manager\');\n\n		$this->model_extension_module_modification_manager->install();\n]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$handle = fopen(DIR_LOGS . \'ocmod.log\', \'w+\');]]></search>\n			<add position=\"before\"><![CDATA[      	fclose($handle);\n			\n					$handle = fopen(DIR_LOGS . \'ocmod_error.log\', \'w+\');]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$maintenance = $this->config->get(\'config_maintenance\');]]></search>\n			<add position=\"after\"><![CDATA[\n			// Clear logs on refresh\n			$handle = fopen(DIR_LOGS . \'ocmod.log\', \'w+\');\n			fclose($handle);\n\n			$handle = fopen(DIR_LOGS . \'ocmod_error.log\', \'w+\');\n			fclose($handle);\n]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\n			<add position=\"before\"><![CDATA[      	$this->load->model(\'extension/module/modification_manager\');\n\n		if (isset($this->request->get[\'filter_name\'])) {\n			$filter_name = $this->request->get[\'filter_name\'];\n		} else {\n			$filter_name = null;\n		}\n\n      	if (isset($this->request->get[\'filter_xml\'])) {\n			$filter_xml = $this->request->get[\'filter_xml\'];\n		} else {\n			$filter_xml = null;\n		}\n\n		if (isset($this->request->get[\'filter_author\'])) {\n			$filter_author = $this->request->get[\'filter_author\'];\n		} else {\n			$filter_author = null;\n		}\n\n		$url = $this->getListUrlParams();\n\n		$data[\'add\'] = $this->url->link(\'marketplace/modification/add\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n		$data[\'clear_log\'] = $this->url->link(\'marketplace/modification/clearlog\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true);\n		$data[\'filter_action\'] = $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n		$data[\'reset_url\'] = $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n\n		$data[\'tab_files\'] = $this->language->get(\'tab_files\');\n		$data[\'tab_error\'] = $this->language->get(\'tab_error\');]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$data[\'sort_name\'] =]]></search>\n			<add position=\"before\"><![CDATA[      	if (isset($this->request->get[\'filter_name\'])) {\n			$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($this->request->get[\'filter_author\'])) {\n			$url .= \'&filter_author=\' . urlencode(html_entity_decode($this->request->get[\'filter_author\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($this->request->get[\'filter_xml\'])) {\n			$url .= \'&filter_xml=\' . urlencode(html_entity_decode($this->request->get[\'filter_xml\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		$data[\'sort_date_modified\'] = $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=date_modified\' . $url, true);]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$filter_data = array(]]></search>\n			<add position=\"after\"><![CDATA[      	\'filter_name\'	  => $filter_name,\n			\'filter_author\'	  => $filter_author,\n			\'filter_xml\'	  => $filter_xml,]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$modification_total = $this->model_setting_modification->getTotalModifications();]]></search>\n			<add position=\"replace\"><![CDATA[$modification_total = $this->model_extension_module_modification_manager->getTotalModifications($filter_data);]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$results = $this->model_setting_modification->getModifications($filter_data);]]></search>\n			<add position=\"replace\"><![CDATA[$results = $this->model_extension_module_modification_manager->getModifications($filter_data);]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$data[\'modifications\'][] = array(]]></search>\n			<add position=\"after\"><![CDATA[				\'date_modified\'      => isset($result[\'date_modified\']) ? (date(\'Ymd\') == date(\'Ymd\', strtotime($result[\'date_modified\'])) ? date(\'G:i\', strtotime($result[\'date_modified\'])) : date($this->language->get(\'date_format_short\'), strtotime($result[\'date_modified\']))) : null,\n				\'edit\'			     => $this->url->link(\'marketplace/modification/edit\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&modification_id=\' . $result[\'modification_id\'] . $url, true),]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$pagination = new Pagination();]]></search>\n			<add position=\"before\"><![CDATA[      	if (isset($this->request->get[\'filter_name\'])) {\n			$url .= \'&filter_name=\' . urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($this->request->get[\'filter_author\'])) {\n			$url .= \'&filter_author=\' . urlencode(html_entity_decode($this->request->get[\'filter_author\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($this->request->get[\'filter_xml\'])) {\n			$url .= \'&filter_xml=\' . urlencode(html_entity_decode($this->request->get[\'filter_xml\'], ENT_QUOTES, \'UTF-8\'));\n		}]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$data[\'clear_log\'] =]]></search>\n			<add position=\"before\"><![CDATA[		$data[\'filter_name\'] = $filter_name;\n		$data[\'filter_author\'] = $filter_author;\n		$data[\'filter_xml\'] = $filter_xml;\n\n		$data[\'modified_files\'] = array();\n\n		$modified_files = self::modifiedFiles(DIR_MODIFICATION);\n\n		$modification_files = $this->getModificationXmlFiles();\n\n		foreach($modified_files as $modified_file) {\n			if(isset($modification_files[$modified_file])){\n				$modifications = $modification_files[$modified_file];\n			} else {\n				$modifications = array();\n			}\n\n			$data[\'modified_files\'][] = array(\n				\'file\' => $modified_file,\n				\'modifications\' => $modifications\n			);\n		}\n\n		// Error log\n		$error_file = DIR_LOGS . \'ocmod_error.log\';\n\n		if (file_exists($error_file)) {\n			$data[\'error_log\'] = htmlentities(file_get_contents($error_file, FILE_USE_INCLUDE_PATH, null));\n		} else {\n			$data[\'error_log\'] = \'\';\n		}\n		]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$this->load->view(\'marketplace/modification\']]></search>\n			<add position=\"replace\"><![CDATA[$this->load->view(\'extension/module/modification_manager/list\']]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[$this->response->redirect($this->url->link(!empty($data[\'redirect\']) ? $data[\'redirect\'] : \'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));]]></search>\n			<ignoreif position=\"replace\"><![CDATA[if (!empty($data[\'redirect\'])) {]]></ignoreif>\n			<add position=\"replace\"><![CDATA[$url = $this->getListUrlParams();\n\n			if (!empty($data[\'redirect\'])) {\n				$redirect = $data[\'redirect\'];\n			} elseif (!empty($this->request->get[\'redirect\'])) {\n				$redirect = $this->request->get[\'redirect\'];\n			} else {\n				$redirect = \'marketplace/modification\';\n			}\n\n			$this->response->redirect($this->url->link($redirect, \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));]]></add>\n		</operation>\n	    <operation>\n			<search index=\"0\"><![CDATA[if ($this->validate()) {]]></search>\n			<add position=\"after\"><![CDATA[				$error_log = array();\n\n			// Clear vqmod cache\n			$vqmod_path = substr(DIR_SYSTEM, 0, -7) . \'vqmod/\';\n\n			if (file_exists($vqmod_path)) {\n				$vqmod_cache = glob($vqmod_path.\'vqcache/vq*\');\n\n				if ($vqmod_cache) {\n					foreach ($vqmod_cache as $file) {\n						if (file_exists($file)) {\n							@unlink($file);\n						}\n					}\n				}\n\n				if (file_exists($vqmod_path.\'mods.cache\')) {\n					@unlink($vqmod_path.\'mods.cache\');\n				}\n\n				if (file_exists($vqmod_path.\'checked.cache\')) {\n					@unlink($vqmod_path.\'checked.cache\');\n				}\n			}\n]]></add>\n		</operation>\n	    <operation>\n			<search index=\"0\"><![CDATA[$log[] = \'MOD:]]></search>\n			<add position=\"after\"><![CDATA[				$error_log_mod = \'MOD: \' . $dom->getElementsByTagName(\'name\')->item(0)->textContent;\n]]></add>\n		</operation>\n	    <operation>\n			<search index=\"0\"><![CDATA[$operations = $file->getElementsByTagName(\'operation\');]]></search>\n			<add position=\"after\"><![CDATA[				\n					$file_error = $file->getAttribute(\'error\');]]></add>\n		</operation>\n	    <operation>\n			<search index=\"0\"><![CDATA[$files = glob($path, GLOB_BRACE);]]></search>\n			<add position=\"after\"><![CDATA[							if (!$files) {\n								if ($file_error != \'skip\') {\n									$error_log[] = \'----------------------------------------------------------------\';\n									$error_log[] = $error_log_mod;\n									$error_log[] = \'MISSING FILE!\';\n									$error_log[] = $path;									\n								}\n							}]]></add>\n		</operation>\n	    <operation>\n			<search index=\"0\"><![CDATA[if (!$status) {]]></search>\n			<add position=\"after\"><![CDATA[											if ($error != \'skip\') {\n												$error_log[] = \"\\n\";\n												$error_log[] = $error_log_mod;\n												$error_log[] = \'NOT FOUND!\';\n												$error_log[] = \'CODE: \' . $search;\n												$error_log[] = \'FILE: \' . $key;\n											}]]></add>\n		</operation>\n	    <operation>\n			<search index=\"0\"><![CDATA[$ocmod->write(implode(\"\\n\", $log));]]></search>\n			<add position=\"after\"><![CDATA[\n			if ($error_log) {\n				$ocmod = new Log(\'ocmod_error.log\');\n				$ocmod->write(implode(\"\\n\", $error_log));\n			}]]></add>\n		</operation>\n		<operation>\n			<search index=\"0\"><![CDATA[protected function validate(]]></search>\n			<add position=\"before\"><![CDATA[\n\npublic function add() {\n		$this->load->language(\'marketplace/modification\');\n\n		$this->load->model(\'setting/modification\');\n\n		if (($this->request->server[\'REQUEST_METHOD\'] == \'POST\') && $this->validateForm()) {\n			$xml = html_entity_decode($this->request->post[\'xml\'], ENT_QUOTES, \'UTF-8\');\n\n			$dom = new DOMDocument(\'1.0\', \'UTF-8\');\n			$dom->preserveWhiteSpace = false;\n			$dom->loadXml($xml);\n\n			$data = array(\n				\'version\' => \'\',\n				\'author\' => \'\',\n				\'link\' => \'\',\n				\'status\' => 1\n			);\n\n			$data[\'xml\'] = $xml;\n\n			$data[\'name\'] = $dom->getElementsByTagName(\'name\')->item(0)->textContent;\n\n			$data[\'code\'] = $dom->getElementsByTagName(\'code\')->item(0)->textContent;\n\n			if ($dom->getElementsByTagName(\'version\')->length) {\n				$data[\'version\'] = $dom->getElementsByTagName(\'version\')->item(0)->textContent;\n			}\n\n			if ($dom->getElementsByTagName(\'author\')->length) {\n				$data[\'author\'] = $dom->getElementsByTagName(\'author\')->item(0)->textContent;\n			}\n\n			$this->model_setting_modification->addModification($data);\n\n			$modification_id = $this->db->getLastId();\n\n			$this->session->data[\'success\'] = $this->language->get(\'text_success\');\n\n			$this->response->redirect($this->url->link(\'marketplace/modification/edit\', \'user_token=\' . $this->session->data[\'user_token\'] . $this->getListUrlParams(array(\'modification_id\' => $modification_id)), true));\n		}\n\n		$this->getForm();\n	}\n\n	public function edit() {\n		$this->load->language(\'marketplace/modification\');\n\n		$this->load->model(\'setting/modification\');\n		\n		if (($this->request->server[\'REQUEST_METHOD\'] == \'POST\') && !empty($this->request->get[\'modification_id\']) && $this->validateForm()) {\n			$modification_id = $this->request->get[\'modification_id\'];\n\n			$xml = html_entity_decode($this->request->post[\'xml\'], ENT_QUOTES, \'UTF-8\');\n\n			$dom = new DOMDocument(\'1.0\', \'UTF-8\');\n			$dom->preserveWhiteSpace = false;\n			$dom->loadXml($xml);\n\n			$data = array();\n\n			$data[\'xml\'] = $xml;\n\n			$data[\'name\'] = $dom->getElementsByTagName(\'name\')->item(0)->textContent;\n\n			$data[\'code\'] = $dom->getElementsByTagName(\'code\')->item(0)->textContent;\n\n			if ($dom->getElementsByTagName(\'version\')->length) {\n				$data[\'version\'] = $dom->getElementsByTagName(\'version\')->item(0)->textContent;\n			} else {\n				$data[\'version\'] = \'\';\n			}\n\n			if ($dom->getElementsByTagName(\'author\')->length) {\n				$data[\'author\'] = $dom->getElementsByTagName(\'author\')->item(0)->textContent;\n			} else {\n				$data[\'author\'] = \'\';\n			}\n\n			if ($dom->getElementsByTagName(\'link\')->length) {\n				$data[\'link\'] = $dom->getElementsByTagName(\'link\')->item(0)->textContent;\n			} else {\n				$data[\'link\'] = \'\';\n			}\n\n			$this->load->model(\'extension/module/modification_manager\');\n\n			$this->model_extension_module_modification_manager->editModification($modification_id, $data);\n\n			$url = $this->getListUrlParams(array(\'modification_id\' => $modification_id));\n\n			if (isset($this->request->get[\'refresh\'])) {\n				$this->response->redirect($this->url->link(\'marketplace/modification/refresh\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\n			}\n\n			if ($this->db->countAffected()) {\n				$this->session->data[\'success\'] = $this->language->get(\'text_success\');\n\n				$this->response->redirect($this->url->link(\'marketplace/modification/edit\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\n			}\n		}\n\n		$this->getForm();\n	}\n\n	public function getForm() {\n		$data[\'heading_title\'] = $this->language->get(\'heading_title\');\n\n		$data[\'text_enabled\'] = $this->language->get(\'text_enabled\');\n		$data[\'text_disabled\'] = $this->language->get(\'text_disabled\');\n\n		$data[\'button_save\'] = $this->language->get(\'button_save\');\n		$data[\'button_refresh\'] = $this->language->get(\'button_refresh\');\n		$data[\'button_cancel\'] = $this->language->get(\'button_cancel\');\n\n		if (isset($this->error[\'warning\'])) {\n			$data[\'error_warning\'] = $this->error[\'warning\'];\n		} elseif (!empty($this->error)) {\n			$data[\'error_warning\'] = $this->language->get(\'error_warning\');\n		} else {\n			$data[\'error_warning\'] = \'\';\n		}\n\n		if (isset($this->session->data[\'success\'])) {\n			$data[\'success\'] = $this->session->data[\'success\'];\n\n			unset($this->session->data[\'success\']);\n		} else {\n			$data[\'success\'] = false;\n		}\n\n		if (isset($this->error[\'xml\'])) {\n			$data[\'error_xml\'] = $this->error[\'xml\'];\n		}\n\n		$data[\'breadcrumbs\'] = array();\n\n		$data[\'breadcrumbs\'][] = array(\n			\'text\' => $this->language->get(\'text_home\'),\n			\'href\' => $this->url->link(\'common/dashboard\', \'user_token=\' . $this->session->data[\'user_token\'], true)\n		);\n\n		$data[\'breadcrumbs\'][] = array(\n			\'text\' => $this->language->get(\'heading_title\'),\n			\'href\' => $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'] . $this->getListUrlParams(), true)\n		);\n\n		if (isset($this->request->get[\'modification_id\'])) {\n			$modification_info = $this->model_setting_modification->getModification($this->request->get[\'modification_id\']);\n			if (!$modification_info) exit;\n\n			$data[\'text_form\'] = sprintf($this->language->get(\'text_edit\'), $modification_info[\'name\']);\n\n			$data[\'action\'] = $this->url->link(\'marketplace/modification/edit\', \'&modification_id=\' . $modification_info[\'modification_id\'] . \'&user_token=\' . $this->session->data[\'user_token\'], true);\n\n			$data[\'refresh\'] = $this->url->link(\'marketplace/modification/edit\', \'&modification_id=\' . $modification_info[\'modification_id\'] . \'&refresh=1&user_token=\' . $this->session->data[\'user_token\'], true);\n\n			$this->document->setTitle($modification_info[\'name\'] . \' » \' . $data[\'heading_title\']);\n		} else {\n			$data[\'text_form\'] = $this->language->get(\'text_add\');\n\n			$data[\'refresh\'] = false;\n\n			$data[\'action\'] = $this->url->link(\'marketplace/modification/add\', \'user_token=\' . $this->session->data[\'user_token\'], true);\n\n			$this->document->setTitle($data[\'heading_title\']);\n		}\n\n		$data[\'cancel\'] = $this->url->link(\'marketplace/modification\', \'user_token=\' . $this->session->data[\'user_token\'] . $this->getListUrlParams(), true);\n\n		$data[\'modification\'] = array();\n\n		if (!empty($modification_info)) {\n			$data[\'modification\'][\'status\'] = $modification_info[\'status\'];\n		} else {\n			$data[\'modification\'][\'status\'] = 0;\n		}\n\n		if (isset($this->request->post[\'xml\'])) {\n			$data[\'modification\'][\'xml\'] = html_entity_decode($this->request->post[\'xml\'], ENT_QUOTES, \'UTF-8\');\n		} elseif (!empty($modification_info)) {\n			$data[\'modification\'][\'xml\'] = $modification_info[\'xml\'];\n		} else {\n			$data[\'modification\'][\'xml\'] = \'\';\n		}\n\n		$this->document->addStyle(\'view/javascript/codemirror/lib/codemirror.css\');\n		$this->document->addScript(\'view/javascript/codemirror/lib/codemirror.js\');\n		$this->document->addScript(\'view/javascript/codemirror/mode/xml/xml.js\');\n\n		$data[\'header\'] = $this->load->controller(\'common/header\');\n		$data[\'column_left\'] = $this->load->controller(\'common/column_left\');\n		$data[\'footer\'] = $this->load->controller(\'common/footer\');\n\n		$this->response->setOutput($this->load->view(\'extension/module/modification_manager/form\', $data));\n	}\n\n	private function validateForm() {\n		if (!$this->user->hasPermission(\'modify\', \'marketplace/modification\')) {\n			$this->error[\'warning\'] = $this->language->get(\'error_permission\');\n		}\n\n		$error = false;\n\n		// Required\n		if (empty($this->request->post[\'xml\'])) {\n			$error = $this->language->get(\'error_required\');\n		}\n\n		// 2. Validate XML\n		if (!$error) {\n			libxml_use_internal_errors(true);\n\n			$dom = new DOMDocument(\'1.0\', \'UTF-8\');\n\n			if(!$dom->loadXml(html_entity_decode($this->request->post[\'xml\'], ENT_QUOTES, \'UTF-8\'))){\n\n			    foreach (libxml_get_errors() as $error) {\n			        $msg = \'\';\n\n			        switch ($error->level) {\n			            case LIBXML_ERR_WARNING :\n			                $msg .= \"Warning $error->code: \";\n			                break;\n			            case LIBXML_ERR_ERROR :\n			                $msg .= \"Error $error->code: \";\n			                break;\n			            case LIBXML_ERR_FATAL :\n			                $msg .= \"Fatal Error $error->code: \";\n			                break;\n			        }\n\n			        $msg .= trim ( $error->message ) . \"\\nLine: $error->line\";\n\n			        $error = $msg;\n			    }\n\n			    libxml_clear_errors();\n			}\n\n			libxml_use_internal_errors(false);\n		}\n\n		// 3. Required tags\n		if (!$error && (!$dom->getElementsByTagName(\'name\') || $dom->getElementsByTagName(\'name\')->length == 0 || $dom->getElementsByTagName(\'name\')->item(0)->textContent == \'\')) {\n			$error = $this->language->get(\'error_name\');\n		}\n\n		if (!$error && (!$dom->getElementsByTagName(\'code\') || $dom->getElementsByTagName(\'code\')->length == 0 || $dom->getElementsByTagName(\'code\')->item(0)->textContent == \'\')) {\n			$error = $this->language->get(\'error_code\');\n		}\n\n		// 4. Check code isn\'t duplicate\n		if (!$error) {\n			$code = $dom->getElementsByTagName(\'code\')->item(0)->textContent;\n\n			$this->load->model(\'setting/modification\');\n			\n			$modification_info = $this->model_setting_modification->getModificationByCode($code);\n\n			if ($modification_info && (!isset($this->request->get[\'modification_id\']) || $modification_info[\'modification_id\'] != $this->request->get[\'modification_id\'])) {\n				$error = sprintf($this->language->get(\'error_exists\'), $modification_info[\'name\'], $modification_info[\'code\']);\n			}\n		}\n\n		if ($error) {\n			$this->error[\'xml\'] = $error;\n		}\n\n		return !$this->error;\n	}\n\n	static function modifiedFiles($dir, $dirLen = 0) {\n		$tree = glob(rtrim($dir, \'/\') . \'/*\');\n		if (!$dirLen) {\n			$dirLen = strlen($dir);\n		}\n		$files = array();\n\n	    if (is_array($tree)) {\n	        foreach($tree as $file) {\n	        	if ($file == $dir . \'index.html\') {\n					continue;\n				} elseif (is_file($file)) {\n	                $files[] = substr($file, $dirLen);\n	            } elseif (is_dir($file)) {\n	                $files = array_merge($files, self::modifiedFiles($file, $dirLen));\n	            }\n	        }\n	    }\n\n	    return $files;\n	}\n\n	protected function getListUrlParams(array $params = array()) {\n		if (isset($params[\'sort\'])) {\n			$params[\'sort\'] = $params[\'sort\'];\n		} elseif (isset($this->request->get[\'sort\'])) {\n			$params[\'sort\'] = $this->request->get[\'sort\'];\n		}\n\n		if (isset($params[\'order\'])) {\n			$params[\'order\'] = $params[\'order\'];\n		} elseif (isset($this->request->get[\'order\'])) {\n			$params[\'order\'] = $this->request->get[\'order\'];\n		}\n\n		if (isset($params[\'filter_name\'])) {\n			$params[\'filter_name\'] = urlencode(html_entity_decode($params[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n		} elseif (isset($this->request->get[\'filter_name\'])) {\n			$params[\'filter_name\'] = urlencode(html_entity_decode($this->request->get[\'filter_name\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($params[\'filter_author\'])) {\n			$params[\'filter_author\'] = urlencode(html_entity_decode($params[\'filter_author\'], ENT_QUOTES, \'UTF-8\'));\n		} elseif (isset($this->request->get[\'filter_author\'])) {\n			$params[\'filter_author\'] = urlencode(html_entity_decode($this->request->get[\'filter_author\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($params[\'filter_xml\'])) {\n			$params[\'filter_xml\'] = urlencode(html_entity_decode($params[\'filter_xml\'], ENT_QUOTES, \'UTF-8\'));\n		} elseif (isset($this->request->get[\'filter_xml\'])) {\n			$params[\'filter_xml\'] = urlencode(html_entity_decode($this->request->get[\'filter_xml\'], ENT_QUOTES, \'UTF-8\'));\n		}\n\n		if (isset($params[\'page\'])) {\n			$params[\'page\'] = $params[\'page\'];\n		} elseif (isset($this->request->get[\'page\'])) {\n			$params[\'page\'] = $this->request->get[\'page\'];\n		}\n\n		$paramsJoined = array();\n\n		foreach($params as $param => $value) {\n			$paramsJoined[] = \"$param=$value\";\n		}\n\n		return \'&\' . implode(\'&\', $paramsJoined);\n	}\n\n	protected function getModificationXmlFiles() {\n		$return = array();\n\n		$baseLen = strlen(substr(DIR_SYSTEM, 0, -7));\n\n		$xml = array();\n\n		$xml[] = file_get_contents(DIR_SYSTEM . \'modification.xml\');\n\n		$files = glob(DIR_SYSTEM . \'*.ocmod.xml\');\n\n		if ($files) {\n			foreach ($files as $file) {\n				$xml[] = file_get_contents($file);\n			}\n		}\n\n		$results = $this->model_setting_modification->getModifications();\n\n		foreach ($results as $result) {\n			if ($result[\'status\']) {\n				$xml[] = $result[\'xml\'];\n			}\n		}\n\n		foreach ($xml as $xml) {\n			if (empty($xml)){\n				continue;\n			}\n\n			$dom = new DOMDocument(\'1.0\', \'UTF-8\');\n			$dom->preserveWhiteSpace = false;\n			$dom->loadXml($xml);\n\n			$files = $dom->getElementsByTagName(\'modification\')->item(0)->getElementsByTagName(\'file\');\n\n			foreach ($files as $file) {\n				$operations = $file->getElementsByTagName(\'operation\');\n\n				$files = explode(\',\', $file->getAttribute(\'path\'));\n\n				foreach ($files as $file) {\n					$path = \'\';\n\n					// Get the full path of the files that are going to be used for modification\n					if (substr($file, 0, 7) == \'catalog\') {\n						$path = DIR_CATALOG . str_replace(\'../\', \'\', substr($file, 8));\n					}\n\n					if (substr($file, 0, 5) == \'admin\') {\n						$path = DIR_APPLICATION . str_replace(\'../\', \'\', substr($file, 6));\n					}\n\n					if (substr($file, 0, 6) == \'system\') {\n						$path = DIR_SYSTEM . str_replace(\'../\', \'\', substr($file, 7));\n					}\n\n					if ($path) {\n						$files = glob($path, GLOB_BRACE);\n\n						if ($files) {\n							foreach ($files as $file) {\n								$file = substr($file, $baseLen);\n\n								if (!isset($return[$file])) {\n									$return[$file] = array();\n								}\n\n								if ($dom->getElementsByTagName(\'author\')->length) {\n									$author = $dom->getElementsByTagName(\'author\')->item(0)->textContent;\n								} else {\n									$author = \'\';\n								}\n\n								$return[$file][] = array(\n									\'code\' => $dom->getElementsByTagName(\'code\')->item(0)->textContent,\n									\'name\' => $dom->getElementsByTagName(\'name\')->item(0)->textContent,\n									\'author\' => $author\n								);\n							}\n						}\n					}\n				}\n			}\n		}\n\n		return $return;\n	}\n\n]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2022-11-05 02:17:48', '2022-11-05 02:17:48'),
(13, 15, 'Auto add product quantity', 'auto_add_product_quantity', 'oc3x.ru', '3.0.x', 'https://oc3x.ru', '<modification>\n    <name>Auto add product quantity</name>\n	<version>3.0.x</version>\n	<code>auto_add_product_quantity</code>\n	<author>oc3x.ru</author>\n	<link>https://oc3x.ru</link>\n\n	<file path=\"admin/controller/catalog/product.php\">\n		<operation>\n		<search><![CDATA[$data[\'quantity\'] = 1;]]></search>\n			<add position=\"replace\"><![CDATA[\n          $data[\'quantity\'] = 10000;\n            ]]></add>\n		</operation>\n	</file>\n  <file path=\"admin/view/template/catalog/product_form.twig\">\n		<operation>\n			<search><![CDATA[html += \'  <td class=\"text-right\"><input type=\"text\" name=\"product_option[\' + option_row + \'][product_option_value][\' + option_value_row + \'][quantity]\" value=\"\" placeholder=\"{{ entry_quantity }}\" class=\"form-control\" /></td>\';]]></search>\n			<add position=\"replace\"><![CDATA[\n        html += \'  <td class=\"text-right\"><input type=\"text\" name=\"product_option[\' + option_row + \'][product_option_value][\' + option_value_row + \'][quantity]\" value=\"10000\" placeholder=\"{{ entry_quantity }}\" class=\"form-control\" /></td>\';\n	        ]]></add>\n		</operation>		\n	</file>\n</modification>\n', 1, '2022-11-06 08:22:45', '0000-00-00 00:00:00');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(14, 16, 'Image translit on upload', 'image-translit-upload', 'https://prowebber.ru/', '1.0', 'https://prowebber.ru/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n  <name>Image translit on upload</name>\n  <code>image-translit-upload</code>\n  <version>1.0</version>\n  <author>https://prowebber.ru/</author>\n  <link>https://prowebber.ru/</link>\n  <file path=\"admin/controller/common/filemanager.php\">\n  \n    <operation>\n      <search><![CDATA[\'gif\',]]></search>\n      <add position=\"replace\" ><![CDATA[//\'gif\', // customized]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[\'image/gif\']]></search>\n      <add position=\"replace\" ><![CDATA[//\'image/gif\' // customized]]></add>\n    </operation>\n    \n    <operation>\n      <search><![CDATA[public function index() {]]></search>\n      <add position=\"before\" ><![CDATA[\n	protected function translit($text) {\n		$rus = array(\"а\",\"А\",\"б\",\"Б\",\"в\",\"В\",\"г\",\"Г\",\"д\",\"Д\",\"е\",\"Е\",\"ё\",\"Ё\",\"є\",\"Є\",\"ж\", \"Ж\",  \"з\",\"З\",\"и\",\"И\",\"і\",\"І\",\"ї\",\"Ї\",\"й\",\"Й\",\"к\",\"К\",\"л\",\"Л\",\"м\",\"М\",\"н\",\"Н\",\"о\",\"О\",\"п\",\"П\",\"р\",\"Р\", \"с\",\"С\",\"т\",\"Т\",\"у\",\"У\",\"ф\",\"Ф\",\"х\",\"Х\",\"ц\",\"Ц\",\"ч\", \"Ч\", \"ш\", \"Ш\", \"щ\",  \"Щ\", \"ъ\",\"Ъ\", \"ы\",\"Ы\",\"ь\",\"Ь\",\"э\",\"Э\",\"ю\", \"Ю\", \"я\",\"Я\",\'/\',\' \');\n		$eng =array(\"a\",\"A\",\"b\",\"B\",\"v\",\"V\",\"g\",\"G\",\"d\",\"D\",\"e\",\"E\",\"e\",\"E\",\"e\",\"E\", \"zh\",\"ZH\",\"z\",\"Z\",\"i\",\"I\",\"i\",\"I\",\"yi\",\"YI\",\"j\",\"J\",\"k\",\"K\",\"l\",\"L\",\"m\",\"M\",\"n\",\"N\",\"o\",\"O\", \"p\",\"P\",\"r\",\"R\",\"s\",\"S\",\"t\",\"T\",\"u\",\"U\",\"f\",\"F\",\"h\",\"H\",\"c\",\"C\",\"ch\",\"CH\", \"sh\",\"SH\",\"sch\",\"SCH\",\"\", \"\", \"y\",\"Y\",\"\",\"\",\"e\",\"E\",\"ju\",\"JU\",\"ja\",\"JA\",\'\',\'-\');\n		$text = strtolower(str_replace($rus,$eng,$text));\n		$text = trim($text, \'-\');\n    $disallow_symbols = array(\n        \' \' => \'-\', \'\"\' => \'\', \'@\' => \'\', \'#\' => \'\', \'№\' => \'\', \'%\' => \'\', \'\\\\\' => \'-\', \'/\' => \'-\', \':\' => \'-\', \'*\' => \'\',\n        \'?\' => \'\', \',\' => \'\', \'\"\' => \'\', \'\\\'\' => \'\', \'<\' => \'\', \'>\' => \'\', \'|\' => \'\'\n    );\n		return trim(strip_tags(str_replace(array_keys($disallow_symbols), array_values($disallow_symbols), trim(html_entity_decode($text, ENT_QUOTES, \'UTF-8\')))), \'-\');\n	}\n      ]]></add>\n    </operation>\n    \n    <operation>\n      <search><![CDATA[move_uploaded_file]]></search>\n      <add position=\"before\" offset=\"2\" ><![CDATA[\n			if (!$json) {									\n				if (is_file($directory . \'/\' . $filename)) {\n					$json[\'error\'] = \"Файл \'$filename\' уже существует в каталоге \'\".$this->request->get[\'directory\'].\"\'!\";\n				}		\n			}\n			\n      ]]></add>\n    </operation>\n	\n    <operation>\n      <search><![CDATA[$filename = basename(html_entity_decode($file[\'name\'], ENT_QUOTES, \'UTF-8\'));]]></search>\n      <add position=\"replace\"><![CDATA[		\n					$filename = basename($this->translit(html_entity_decode($file[\'name\'], ENT_QUOTES, \'UTF-8\')));\n      ]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[$filename = basename(html_entity_decode($file[\'name\'], ENT_QUOTES, \'UTF-8\'));]]></search>\n      <add position=\"replace\"><![CDATA[		\n					$filename = basename($this->translit(html_entity_decode($file[\'name\'], ENT_QUOTES, \'UTF-8\')));\n      ]]></add>\n    </operation>\n    \n  </file>\n</modification>\n', 1, '2022-11-06 08:22:58', '0000-00-00 00:00:00'),
(15, 17, 'Category Images', 'category_images', 'freeopencart.ru', '1.0', 'https://freeopencart.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n\r\n    <name>Category Images</name>\r\n    <code>category_images</code>\r\n    <version>1.0</version>\r\n    <author>freeopencart.ru</author>\r\n    <link>https://freeopencart.ru</link>\r\n	\r\n    <file path=\"catalog/controller/product/category.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n            $category_info = $this->model_catalog_category->getCategory($category_id);\r\n            ]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n			$this->model_catalog_product->setProduct2();\r\n		    $this->model_catalog_category->setCategory2();\r\n            $category_v = $this->model_catalog_category->getCategory1();\r\n			if (!empty($category_v)){\r\n		 foreach ($category_v as $category_vn) {\r\n			 $ProductCategory_v = $this->model_catalog_category->getProductCategory1($category_vn[\'category_id\']);\r\n			 if (!empty ($ProductCategory_v)){\r\n				  foreach ($ProductCategory_v as $key=> $ProductCategory_vn) {\r\n				 $category_v2 = $this->model_catalog_category->getCategory3($category_vn[\'category_id\']);\r\n				 foreach ($category_v2 as $category_v2n) {\r\n				\r\n				 if (empty($category_v2n[\'image\'])) {\r\n				 $Product_v = $this->model_catalog_product->getProduct_v($ProductCategory_vn[\'product_id\']);\r\n				foreach ($Product_v as $Product_vn) {\r\n					if (!empty($Product_vn[\'image\'])){\r\n						$this->model_catalog_category->setCategory1($category_v2n[\'category_id\'],$Product_vn[\'image\']);\r\n				\r\n				}}\r\n				 }}}\r\n			 }}}\r\n			 $category_v = $this->model_catalog_category->getCategory1();\r\n			if (!empty($category_v)){\r\n		 foreach ($category_v as $category_vn) {\r\n			 $category_v3 = $this->model_catalog_category->getCategory2();\r\n			 foreach ($category_v3 as $category_v1n) {\r\n			 \r\n			 if ($category_vn[\'category_id\']==$category_v1n[\'parent_id\']) {\r\n			 $category_v2 = $this->model_catalog_category->getCategory3($category_vn[\'category_id\']);\r\n				 foreach ($category_v2 as $category_v2n) {\r\n				 if( empty($category_v2n[\'image\']) && !empty($category_v1n[\'image\'])) {\r\n			 $this->model_catalog_category->setCategory1($category_vn[\'category_id\'],$category_v1n[\'image\']);\r\n			 }\r\n			 }\r\n			 }}\r\n			 \r\n			  }}\r\n            ]]></add>\r\n        </operation>\r\n    </file>  \r\n	<file path=\"catalog/model/catalog/category.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n            public function getCategory($category_id)\r\n            ]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            public function getCategory1() {\r\n		$query = $this->db->query(\"SELECT category_id, image, parent_id FROM \" . DB_PREFIX . \"category WHERE image=\'\'\");\r\n\r\n		return $query->rows;\r\n	}\r\n	 public function getCategory2() {\r\n		$query = $this->db->query(\"SELECT category_id, image, parent_id FROM \" . DB_PREFIX . \"category WHERE image !=\'\'\");\r\n\r\n		return $query->rows;\r\n	}\r\n	public function getCategory3($id) {\r\n		$query = $this->db->query(\"SELECT category_id, image FROM \" . DB_PREFIX . \"category WHERE category_id=\'\" . (int)$id . \"\'\");\r\n\r\n		return $query->rows;\r\n	}\r\npublic function getProductCategory1($id) {\r\n		$query = $this->db->query(\"SELECT category_id, product_id FROM \" . DB_PREFIX . \"product_to_category WHERE category_id=\'\" . (int)$id . \"\'\");\r\n\r\n		return $query->rows;\r\n	}\r\n	public function setCategory1($id,$image) {\r\n		$this->db->query(\"UPDATE \" . DB_PREFIX . \"category SET image =\'\" . $this->db->escape($image) . \"\' WHERE category_id=\'\" . (int)$id . \"\'\");\r\n		}\r\n		public function setCategory2() {\r\n		$this->db->query(\"UPDATE \" . DB_PREFIX . \"category SET image =\'\' WHERE image IS NULL\");\r\n		}\r\n            ]]></add>\r\n        </operation>\r\n    </file> \r\n	<file path=\"catalog/model/catalog/product.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n            public function getProduct($product_id)\r\n            ]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            public function getProduct_v($id) {\r\n	$query = $this->db->query(\"SELECT product_id, image FROM \" . DB_PREFIX . \"product WHERE product_id=\'\" . (int)$id . \"\'\");\r\n\r\n		return $query->rows;\r\n}\r\npublic function setProduct2() {\r\n		$this->db->query(\"UPDATE \" . DB_PREFIX . \"product SET image =\'\' WHERE image IS NULL\");\r\n		}\r\n            ]]></add>\r\n        </operation>\r\n    </file> \r\n</modification>\r\n', 1, '2022-11-06 08:23:11', '0000-00-00 00:00:00'),
(16, 18, 'Product information', 'product_information', 'OpencartMod', '1.4', 'https://opencartmod.ru/', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Product information</name>\r\n	<code>product_information</code>\r\n	<version>1.4</version>\r\n	<author>OpencartMod</author>\r\n	<link>https://opencartmod.ru/</link>\r\n	\r\n	<file path=\"admin/model/catalog/review.php\"> \r\n        <operation>\r\n			<search><![CDATA[if (!empty($data[\'filter_author\']))]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				if (!empty($data[\'filter_product_id\'])) {\r\n					$sql .= \" AND r.product_id LIKE \'\" . $this->db->escape($data[\'filter_product_id\']) . \"\'\";\r\n				}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[r.rating, r.status]]></search>\r\n			<add position=\"replace\"><![CDATA[r.rating, r.status, r.text]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/review.php\">\r\n        <operation>\r\n			<search><![CDATA[protected function getList() {]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				if (isset($this->request->get[\'filter_product_id\'])) {\r\n					$filter_product_id = $this->request->get[\'filter_product_id\'];\r\n				} else {\r\n					$filter_product_id = null;\r\n				}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$filter_data = array(]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				\'filter_product_id\' => $filter_product_id,\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/model/sale/order.php\"> \r\n        <operation>\r\n			<search><![CDATA[if (!empty($data[\'filter_customer\']))]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				if (!empty($data[\'filter_product_id\'])) {\r\n					$sql .= \" AND o.order_id IN (SELECT \" . DB_PREFIX . \"order_product.order_id FROM \" . DB_PREFIX . \"order_product WHERE \" . DB_PREFIX . \"order_product.product_id LIKE \'\" . $this->db->escape($data[\'filter_product_id\']) . \"\')\";\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/product_list.twig\">\r\n        <operation>\r\n			<search><![CDATA[<a href=\"{{ product.edit }}]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				<a class=\"btn btn-warning hover_product_id\" data-product_id=\"{{ product.product_id }}\"><i class=\"fa fa-info\"></i></a>\r\n				<a href=\"{{ product.edit }}]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[{{ footer }}]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<div id=\"modal_inform_product\" class=\"modal\" role=\"dialog\">\r\n	<div class=\"modal-dialog modal-lg\" role=\"document\">\r\n	</div>\r\n</div>\r\n<script type=\"text/javascript\"><!--\r\n$(\'.hover_product_id\').each(function() {\r\n	$( this ).click(function(e){\r\n		$product_id = $( this ).data(\'product_id\');\r\n		$.ajax({\r\n			url: \'index.php?route=catalog/product_extended/info&user_token={{ user_token }}&product_id=\' + $product_id,\r\n			type: \'get\',\r\n			dataType: \'text\',\r\n			beforeSend: function() {\r\n			$(\'#modal_inform_product .modal-dialog\').html(\'\');\r\n\r\n			},\r\n			success: function(responseText) {\r\n				$(\'#modal_inform_product .modal-dialog\').html(responseText);\r\n			},\r\n			error: function(xhr, ajaxOptions, thrownError) {\r\n				alert(thrownError + \"\\r\\n\" + xhr.statusText + \"\\r\\n\" + xhr.responseText);\r\n			}\r\n		});\r\n\r\n		$(\'#modal_inform_product\').modal();\r\n	});\r\n});\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/en*/en-gb.php\">\r\n        <operation>\r\n			<search><![CDATA[$_[\'text_home\']]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$_[\'text_inform\']		= \'Product info: \';\r\n				$_[\'text_order\'] 		= \'Order\';\r\n				$_[\'text_review\'] 		= \'Review\';\r\n				$_[\'text_wishlist\'] 	= \'Wishlist\';\r\n				$_[\'text_cart\'] 		= \'Cart\';\r\n				$_[\'text_prodano\'] 		= \'Sold: \';\r\n				$_[\'text_summa\'] 		= \'Total: \';\r\n				$_[\'text_allse\'] 		= \'All: \';\r\n				$_[\'text_qte\'] 			= \'Quantity: \';\r\n				$_[\'text_off\'] 			= \'Disabled: \';\r\n				$_[\'text_on\'] 			= \'Enabled:\';\r\n				$_[\'text_pokupatel\'] 	= \'Customer:\';\r\n				$_[\'text_gostu\'] 		= \'Guests:\';\r\n				$_[\'column_quantity\'] 	= \'Quantity\';\r\n				$_[\'column_text\'] 		= \'Text\';\r\n			]]></add> \r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/ru*/ru-ru.php\">\r\n        <operation>\r\n			<search><![CDATA[$_[\'text_home\']]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$_[\'text_inform\']		= \'Информация о товаре: \';\r\n				$_[\'text_order\'] 		= \'Заказы\';\r\n				$_[\'text_review\'] 		= \'Отзывы\';\r\n				$_[\'text_wishlist\'] 	= \'Закладки\';\r\n				$_[\'text_cart\'] 		= \'Корзина\';\r\n				$_[\'text_prodano\'] 		= \'Продано: \';\r\n				$_[\'text_summa\'] 		= \'На сумму: \';\r\n				$_[\'text_allse\'] 		= \'Всего: \';\r\n				$_[\'text_qte\'] 			= \'Кол-во: \';\r\n				$_[\'text_off\'] 			= \'Выключено: \';\r\n				$_[\'text_on\'] 			= \'Включено:\';\r\n				$_[\'text_pokupatel\'] 	= \'Покупатели:\';\r\n				$_[\'text_gostu\'] 		= \'Гости:\';\r\n				$_[\'column_quantity\'] 	= \'Кол-во\';\r\n				$_[\'column_text\'] 		= \'Текст\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2022-11-06 08:23:32', '0000-00-00 00:00:00'),
(17, 19, 'Задать вопрос о товаре v2.0.1', 'Ask a question about this product', 'freeopencart.ru', '2.0.1', 'https://freeopencart.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Задать вопрос о товаре v2.0.1</name>\r\n	<code>Ask a question about this product</code>\r\n	<version>2.0.1</version>\r\n	<link>https://freeopencart.ru</link>\r\n	<author>freeopencart.ru</author>\r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'header\'] = $this->load->controller(\'common/header\');\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n		$this->load->model(\'extension/module/art_aqa_product\');\r\n		$data[\'art_aqa_product_send\'] = $this->config->get(\'module_art_aqa_product_status\');\r\n		$data[\'art_aqa_product_form\'] = $this->load->controller(\'extension/module/art_aqa_product/getForm\', array(\'product_name\' => $product_info[\'name\']));\r\n		$art_aqa_product_title_tab = $this->config->get(\'module_art_aqa_product_title_tab\');\r\n\r\n		if (!empty($art_aqa_product_title_tab)) {\r\n			$data[\'art_aqa_product_tab\'] = $art_aqa_product_title_tab;\r\n		} else {\r\n			$data[\'art_aqa_product_tab\'] = $this->language->get(\'text_art_aqa_product_tab\');\r\n		}\r\n\r\n	   	$data[\'art_aqa_product_title\'] = $this->language->get(\'art_aqa_product_title \');\r\n	   	\r\n	   	$data[\'art_aqa_product_total\'] = $this->model_extension_module_art_aqa_product->getTotalQuestion($product_info[\'product_id\']);\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/view/theme/*/template/product/product.twig\">\r\n		<operation>\r\n			<search index=\"1\"><![CDATA[{% if review_status %}]]></search>\r\n			<add position=\"before\" ><![CDATA[\r\n			{% if art_aqa_product_send %}\r\n            <li><a href=\"#tab-art_aqa_product\" data-toggle=\"tab\">{{ art_aqa_product_tab }} ({{ art_aqa_product_total }})</a></li>\r\n            {% endif %}\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search index=\"2\"><![CDATA[\r\n			{% if review_status %}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n        {% if art_aqa_product_send %}\r\n        <div class=\"tab-pane\" id=\"tab-art_aqa_product\">\r\n          {{ art_aqa_product_form }}\r\n        </div>\r\n        {% endif %}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'logout\'] = $this->url->link(\'common/logout\', \'user_token=\' . $this->session->data[\'user_token\'], true);\r\n			]]></search>\r\n			<add position=\"after\">\r\n			<![CDATA[\r\n			$this->load->model(\'extension/module/art_aqa_product\');\r\n			$data[\'art_aqa_product_total\'] = $this->model_extension_module_art_aqa_product->getTotalAqaProductsStatus();\r\n            $data[\'art_aqa_product\'] = $this->url->link(\'extension/module/art_aqa_product\', \'user_token=\' . $this->session->data[\'user_token\'], true);\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/common/header.twig\">\r\n		<operation>\r\n			<search><![CDATA[<ul class=\"nav navbar-nav navbar-right\">]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			<li><a href=\"{{ art_aqa_product }}\"><span class=\"label label-danger pull-left\">{{ art_aqa_product_total }}</span> <i class=\"fa fa-question-circle fa-lg\"></i></a></li>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2022-11-06 08:24:37', '2022-11-06 08:28:06'),
(18, 21, 'Лимит Автодополнения', 'Limit Autocomplete', 'opencart3x.ru', '3.0', 'https://opencart3x.ru/', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>Лимит Автодополнения</name>\r\n  <code>Limit Autocomplete</code>\r\n  <version>3.0</version>\r\n  <author>opencart3x.ru</author>\r\n  <link>https://opencart3x.ru/</link>\r\n  \r\n  <file path=\"admin/controller/setting/setting.php\">\r\n	<operation error=\"skip\">	\r\n	  <search><![CDATA[\r\n		if (isset($this->error[\'encryption\'])) {\r\n	  ]]></search>\r\n	  <add position=\"before\" trim=\"true\"><![CDATA[\r\n		if (isset($this->error[\'autocomplete_limit\'])) {\r\n		  $data[\'error_autocomplete_limit\'] = $this->error[\'autocomplete_limit\'];\r\n		} else {\r\n		  $data[\'error_autocomplete_limit\'] = \'\';\r\n		}\r\n	  ]]></add>\r\n	</operation>	\r\n	<operation error=\"skip\">	\r\n	  <search><![CDATA[\r\n		if (isset($this->request->post[\'config_product_count\'])) {\r\n	  ]]></search>\r\n	  <add position=\"before\" trim=\"true\"><![CDATA[\r\n		if (isset($this->request->post[\'config_autocomplete_limit\'])) {\r\n		  $data[\'config_autocomplete_limit\'] = $this->request->post[\'config_autocomplete_limit\'];\r\n		} else {\r\n		  $data[\'config_autocomplete_limit\'] = $this->config->get(\'config_autocomplete_limit\');\r\n		}\r\n	  ]]></add>\r\n	</operation>	\r\n	<operation error=\"skip\">	\r\n	  <search><![CDATA[\r\n		if (!$this->request->post[\'config_limit_admin\']) {\r\n	  ]]></search>\r\n	  <add position=\"before\" trim=\"true\"><![CDATA[\r\n		if (!$this->request->post[\'config_autocomplete_limit\']) {\r\n		  $this->error[\'autocomplete_limit\'] = $this->language->get(\'error_limit\');\r\n		}\r\n	  ]]></add>\r\n	</operation>\r\n  </file> \r\n  <file path=\"admin/language/ru-ru/setting/setting.php\">\r\n	<operation error=\"skip\">\r\n	  <search><![CDATA[\r\n		$_[\'entry_limit_admin\']\r\n	  ]]></search>\r\n	  <add position=\"before\" trim=\"true\"><![CDATA[\r\n		$_[\'entry_autocomplete_limit\']              = \'Лимит в полях Автозаполнения (Admin)\';\r\n	  ]]></add>\r\n	</operation>	\r\n	<operation error=\"skip\">\r\n	  <search><![CDATA[\r\n		$_[\'help_limit_admin\']\r\n	  ]]></search>\r\n	  <add position=\"before\"><![CDATA[\r\n		$_[\'help_autocomplete_limit\']  = \'Определяет, сколько элементов отображать при автозаполении (в панели администрирования: товары, категории и т.д).\';\r\n	  ]]></add>\r\n	</operation>\r\n  </file>\r\n  <file path=\"admin/language/en-gb/setting/setting.php\">\r\n	<operation error=\"skip\">\r\n	  <search><![CDATA[\r\n		$_[\'entry_limit_admin\']\r\n	  ]]></search>\r\n	  <add position=\"before\"><![CDATA[\r\n		$_[\'entry_autocomplete_limit\']              = \'The limit in the autocomplete field. (Admin)\';\r\n	  ]]></add>\r\n	</operation>	\r\n	<operation error=\"skip\">\r\n	  <search><![CDATA[\r\n		$_[\'help_limit_admin\']\r\n	  ]]></search>\r\n	  <add position=\"before\"><![CDATA[\r\n		$_[\'help_autocomplete_limit\']  = \'Determines how many items to display in autocomplete. (in the admin panel: Products, Categories, Clients, etc.).\';\r\n	  ]]></add>\r\n	</operation>\r\n  </file>\r\n  <file path=\"admin/view/template/common/header.twig\">\r\n  <operation error=\"skip\">\r\n	  <search><![CDATA[\r\n		<link type=\"text/css\" href=\"view/stylesheet/stylesheet.css\" rel=\"stylesheet\" media=\"screen\" />\r\n	  ]]></search>\r\n	  <add position=\"after\"><![CDATA[\r\n		<link type=\"text/css\" href=\"view/stylesheet/autocomplete.css\" rel=\"stylesheet\" media=\"screen\" />\r\n	  ]]></add>\r\n  </operation>\r\n  </file>\r\n  <file path=\"admin/view/template/setting/setting.twig\">\r\n	<operation error=\"skip\">\r\n	  <search><![CDATA[\r\n		<legend>{{ text_review }}</legend>\r\n	  ]]></search>\r\n	  <add position=\"before\" offset=\"2\"><![CDATA[\r\n		<div class=\"form-group required\">\r\n		  <label class=\"col-sm-2 control-label\" for=\"input-autocomplete-limit\"><span data-toggle=\"tooltip\" title=\"{{ help_autocomplete_limit }}\">{{ entry_autocomplete_limit }}</span></label>\r\n		  <div class=\"col-sm-10\">\r\n			<input type=\"text\" name=\"config_autocomplete_limit\" value=\"{{ config_autocomplete_limit }}\" placeholder=\"{{ entry_autocomplete_limit }}\" id=\"input-autocomplete-limit\" class=\"form-control\" />\r\n			{% if (error_autocomplete_limit) %} \r\n			  <div class=\"text-danger\">{{ error_autocomplete_limit }}</div>\r\n			{% endif %} \r\n		  </div>\r\n		</div>\r\n	  ]]></add>\r\n	</operation>\r\n  </file>	\r\n  <file path=\"admin/controller/*/*.php\">\r\n	<operation error=\"skip\">\r\n	  <search><![CDATA[\r\n		\'limit\'       => 5\r\n	  ]]></search>\r\n	  <add position=\"replace\" trim=\"true\"><![CDATA[\r\n		\'limit\'        => $this->config->get(\'config_autocomplete_limit\')\r\n	  ]]></add>\r\n	</operation>\r\n	<operation error=\"skip\">\r\n	  <search><![CDATA[\r\n		$limit = 5;\r\n	  ]]></search>\r\n	  <add position=\"replace\" trim=\"true\"><![CDATA[\r\n		$limit = $this->config->get(\'config_autocomplete_limit\');\r\n	  ]]></add>\r\n	</operation>\r\n	<operation error=\"skip\">\r\n	  <search><![CDATA[\r\n		\'limit\'        => 5\r\n	  ]]></search>\r\n	  <add position=\"replace\" trim=\"true\"><![CDATA[\r\n		\'limit\'        => $this->config->get(\'config_autocomplete_limit\')\r\n	  ]]></add>\r\n	</operation>\r\n  </file>\r\n</modification>', 1, '2022-11-06 08:31:05', '0000-00-00 00:00:00'),
(19, 22, 'BreadCrumbs LastNotActive', 'BreadCrumbs LastNotActive', 'freeopencart.ru', '1.0.5', 'https://freeopencart.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>BreadCrumbs LastNotActive</name>\n    <code>BreadCrumbs LastNotActive</code>\n    <version>1.0.5</version>\n    <author>freeopencart.ru</author>\n    <link>https://freeopencart.ru</link>\n\n    <file path=\"catalog/view/theme/*/template/{product,information,error,account,affiliate,checkout,extension}/*.twig\">\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[{% for breadcrumb in breadcrumbs %}]]>\n            </search>\n            <add position=\"replace\">\n                <![CDATA[{% for key, breadcrumb in breadcrumbs %}]]>\n            </add>\n        </operation>\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[<ul class=\"breadcrumb\">]]>\n            </search>\n            <add position=\"replace\">\n                <![CDATA[<ul class=\"breadcrumb\" itemscope itemtype=\"https://schema.org/BreadcrumbList\">]]>\n            </add>\n        </operation>\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[<li><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>]]>\n            </search>\n            <add position=\"before\">\n                <![CDATA[{% if (breadcrumb.href != \'\') %}]]>\n            </add>\n        </operation>\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[<li><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>]]>\n            </search>\n            <add position=\"after\">\n                <![CDATA[\n                <li itemprop=\"itemListElement\" itemscope itemtype=\"https://schema.org/ListItem\">\n                    <a itemprop=\"item\" href=\"{{ breadcrumb.href }}\">\n                        <span itemprop=\"name\" content=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</span>\n                    </a>\n                    <meta itemprop=\"position\" content=\"{{ key }}\">\n                </li>\n            {% else %}\n                <li itemprop=\"itemListElement\" itemscope itemtype=\"https://schema.org/ListItem\">\n                    <a itemprop=\"item\" href=\"{{ breadcrumb.href }}\" style=\"pointer-events: none; cursor: default;\">\n                        <span itemprop=\"name\" content=\"{{ breadcrumb.text }}\">{{ breadcrumb.text }}</span>\n                    </a>\n                    <meta itemprop=\"position\" content=\"{{ key }}\">\n                </li>\n            {% endif %}]]>\n            </add>\n        </operation>\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[<li><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>]]>\n            </search>\n            <add position=\"replace\">\n                <![CDATA[]]>\n            </add>\n        </operation>\n    </file>\n\n    <file path=\"catalog/view/theme/*/template/extension/payment/*.twig\">\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[{% for breadcrumb in breadcrumbs %}]]>\n            </search>\n            <add position=\"replace\">\n                <![CDATA[{% for key, breadcrumb in breadcrumbs %}]]>\n            </add>\n        </operation>\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[<ul class=\"breadcrumb\">]]>\n            </search>\n            <add position=\"replace\">\n                <![CDATA[<ul class=\"breadcrumb\" itemscope itemtype=\"https://schema.org/BreadcrumbList\">]]>\n            </add>\n        </operation>\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[<li><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>]]>\n            </search>\n            <add position=\"before\">\n                <![CDATA[{% if (breadcrumb.href != \'\') %}]]>\n            </add>\n        </operation>\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[<li><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>]]>\n            </search>\n            <add position=\"after\">\n                <![CDATA[\n                <li itemprop=\"itemListElement\" itemscope itemtype=\"https://schema.org/ListItem\">\n                    <a itemprop=\"item\" href=\"{{ breadcrumb.href }}\">\n                        <span itemprop=\"name\" content=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</span>\n                    </a>\n                    <meta itemprop=\"position\" content=\"{{ key }}\">\n                </li>\n            {% else %}\n                <li itemprop=\"itemListElement\" itemscope itemtype=\"https://schema.org/ListItem\">\n                    <a itemprop=\"item\" href=\"{{ breadcrumb.href }}\" style=\"pointer-events: none; cursor: default;\">\n                        <span itemprop=\"name\" content=\"{{ breadcrumb.text }}\">{{ breadcrumb.text }}</span>\n                    </a>\n                    <meta itemprop=\"position\" content=\"{{ key }}\">\n                </li>\n            {% endif %}]]>\n            </add>\n        </operation>\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[<li><a href=\"{{ breadcrumb.href }}\">{{ breadcrumb.text }}</a></li>]]>\n            </search>\n            <add position=\"replace\">\n                <![CDATA[]]>\n            </add>\n        </operation>\n    </file>\n\n    <file path=\"catalog/controller/*/*.php\">\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[$this->response->setOutput($this->load->view]]>\n            </search>\n            <add position=\"before\">\n                <![CDATA[		if (isset($data[\'breadcrumbs\'])) {\n            $data[\'breadcrumbs\'][count($data[\'breadcrumbs\']) - 1][\'href\'] = \'\';\n        }\n		]]>\n            </add>\n        </operation>\n    </file>\n\n    <file path=\"catalog/controller/extension/*/*.php\">\n        <operation error=\"skip\">\n            <search>\n                <![CDATA[$this->response->setOutput($this->load->view]]>\n            </search>\n            <add position=\"before\">\n                <![CDATA[		if (isset($data[\'breadcrumbs\'])) {\n            $data[\'breadcrumbs\'][count($data[\'breadcrumbs\']) - 1][\'href\'] = \'\';\n        }\n		]]>\n            </add>\n        </operation>\n    </file>\n</modification>', 1, '2022-11-06 08:31:23', '0000-00-00 00:00:00'),
(20, 23, 'HP Notification Menu', 'HPNotificationMenu', 'HP Web Design', '1.0.0', 'http://www.hpwebdesign.id', '<modification>\r\n  <name><![CDATA[HP Notification Menu]]></name>\r\n  <code>HPNotificationMenu</code>\r\n  <version>1.0.0</version>\r\n  <link>http://www.hpwebdesign.id</link>\r\n  <author><![CDATA[HP Web Design]]></author>\r\n\r\n  <!-- language override-->\r\n  <file path=\"admin/controller/common/header.php\">\r\n    <operation error=\"skip\">\r\n      <search trim=\"true\"><![CDATA[// Online Stores]]></search>\r\n      <add position=\"before\"><![CDATA[		\r\n            // notification\r\n            $data[\'text_order\'] = $this->language->get(\'text_order\');\r\n            $data[\'text_processing_status\'] = $this->language->get(\'text_processing_status\');\r\n            $data[\'text_complete_status\'] = $this->language->get(\'text_complete_status\');\r\n            $data[\'text_return\'] = $this->language->get(\'text_return\');\r\n            $data[\'text_customer\'] = $this->language->get(\'text_customer\');\r\n            $data[\'text_online\'] = $this->language->get(\'text_online\');\r\n            $data[\'text_approval\'] = $this->language->get(\'text_approval\');\r\n            $data[\'text_product\'] = $this->language->get(\'text_product\');\r\n            $data[\'text_stock\'] = $this->language->get(\'text_stock\');\r\n            $data[\'text_review\'] = $this->language->get(\'text_review\');\r\n            $data[\'text_affiliate\'] = $this->language->get(\'text_affiliate\');\r\n            $data[\'text_store\'] = $this->language->get(\'text_store\');\r\n            $data[\'text_front\'] = $this->language->get(\'text_front\');\r\n            $data[\'text_help\'] = $this->language->get(\'text_help\');\r\n            $data[\'text_homepage\'] = $this->language->get(\'text_homepage\');\r\n            $data[\'text_documentation\'] = $this->language->get(\'text_documentation\');\r\n            $data[\'text_support\'] = $this->language->get(\'text_support\');\r\n            $data[\'text_logged\'] = sprintf($this->language->get(\'text_logged\'), $this->user->getUserName());\r\n            $data[\'text_logout\'] = $this->language->get(\'text_logout\');\r\n\r\n            // Orders\r\n            $this->load->model(\'sale/order\');\r\n\r\n            // Processing Orders\r\n            $data[\'processing_status_total\'] = $this->model_sale_order->getTotalOrders(array(\'filter_order_status\' => implode(\',\', $this->config->get(\'config_processing_status\'))));\r\n            $data[\'processing_status\'] = $this->url->link(\'sale/order\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&filter_order_status=\' . implode(\',\', $this->config->get(\'config_processing_status\')), true);\r\n\r\n            // Complete Orders\r\n            $data[\'complete_status_total\'] = $this->model_sale_order->getTotalOrders(array(\'filter_order_status\' => implode(\',\', $this->config->get(\'config_complete_status\'))));\r\n            $data[\'complete_status\'] = $this->url->link(\'sale/order\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&filter_order_status=\' . implode(\',\', $this->config->get(\'config_complete_status\')), true);\r\n\r\n            // Returns\r\n            $this->load->model(\'sale/return\');\r\n\r\n            $return_total = $this->model_sale_return->getTotalReturns(array(\'filter_return_status_id\' => $this->config->get(\'config_return_status_id\')));\r\n\r\n            $data[\'return_total\'] = $return_total;\r\n\r\n            $data[\'return\'] = $this->url->link(\'sale/return\', \'user_token=\' . $this->session->data[\'user_token\'], true);\r\n\r\n            // Customers\r\n            $this->load->model(\'report/customer\');\r\n\r\n            $data[\'online_total\'] = $this->model_report_customer->getTotalCustomersOnline();\r\n\r\n            $data[\'online\'] = $this->url->link(\'report/online\', \'user_token=\' . $this->session->data[\'user_token\'], true);\r\n\r\n            $this->load->model(\'customer/customer_approval\');\r\n\r\n            $customer_total = $this->model_customer_customer_approval->getTotalCustomerApprovals();\r\n\r\n            $data[\'customer_total\'] = $customer_total;\r\n            $data[\'customer_approval\'] = $this->url->link(\'customer/customer_approval\', \'user_token=\' . $this->session->data[\'user_token\'], true);\r\n\r\n            // Products\r\n            $this->load->model(\'catalog/product\');\r\n\r\n            $product_total = $this->model_catalog_product->getTotalProducts(array(\'filter_quantity\' => 0));\r\n\r\n            $data[\'product_total\'] = $product_total;\r\n\r\n            $data[\'product\'] = $this->url->link(\'catalog/product\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&filter_quantity=0\', true);\r\n\r\n            // Reviews\r\n            $this->load->model(\'catalog/review\');\r\n\r\n            $review_total = $this->model_catalog_review->getTotalReviews(array(\'filter_status\' => 0));\r\n\r\n            $data[\'review_total\'] = $review_total;\r\n\r\n            $data[\'review\'] = $this->url->link(\'catalog/review\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&filter_status=0\', true);\r\n\r\n			$data[\'alerts\'] = $customer_total + $product_total + $review_total + $return_total;\r\n            \r\n			// notification\r\n		    ]]>\r\n      </add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"admin/view/template/common/header.twig\">\r\n    <operation error=\"skip\" >\r\n      <search trim=\"true\" >\r\n        <![CDATA[<ul class=\"nav navbar-nav navbar-right\">]]>\r\n      </search>\r\n      <add position=\"after\">\r\n        <![CDATA[\r\n          {# notification #}\r\n                            <li class=\"dropdown\">\r\n                                <a class=\"dropdown-toggle\" data-toggle=\"dropdown\">\r\n                                {% if alerts > 0 %}\r\n                                    <span class=\"label label-danger pull-left\">{{ alerts }}</span>\r\n                                {% endif %}\r\n                                    <i class=\"fa fa-bell fa-lg\"></i>\r\n                                </a>\r\n                                <ul class=\"dropdown-menu dropdown-menu-right alerts-dropdown\" style=\"min-width: 180px;\">\r\n                                    <li class=\"dropdown-header\" >{{ text_order }}</li>\r\n                                    <li>\r\n                                        <a href=\"{{ processing_status }}\" style=\"display: block; overflow: auto;\">\r\n                                            <span class=\"label label-warning pull-right\">{{ processing_status_total }}</span>{{ text_processing_status }}</a>\r\n                                    </li>\r\n                                    <li>\r\n                                        <a href=\"{{ complete_status }}\">\r\n                                            <span class=\"label label-success pull-right\">{{ complete_status_total }}</span>{{ text_complete_status }}</a>\r\n                                    </li>\r\n                                    <li>\r\n                                        <a href=\"{{ return }}\">\r\n                                            <span class=\"label label-danger pull-right\">{{ return_total }}</span>{{ text_return }}</a>\r\n                                    </li>\r\n                                    <li class=\"divider\"></li>\r\n                                    <li class=\"dropdown-header\">{{ text_customer }}</li>\r\n                                    <li>\r\n                                        <a href=\"{{ online }}\">\r\n                                            <span class=\"label label-success pull-right\">{{ online_total }}</span>{{ text_online }}</a>\r\n                                    </li>\r\n                                    <li>\r\n                                        <a href=\"{{ customer_approval }}\">\r\n                                            <span class=\"label label-danger pull-right\">{{ customer_total }}</span>{{ text_approval }}</a>\r\n                                    </li>\r\n                                    <li class=\"divider\"></li>\r\n                                    <li class=\"dropdown-header\">{{ text_product }}</li>\r\n                                    <li>\r\n                                        <a href=\"{{ product }}\">\r\n                                            <span class=\"label label-danger pull-right\">{{ product_total }}</span>{{ text_stock }}</a>\r\n                                    </li>\r\n                                    <li>\r\n                                        <a href=\"{{ review }}\">\r\n                                            <span class=\"label label-danger pull-right\">{{ review_total }}</span>{{ text_review }}</a>\r\n                                    </li>\r\n                                </ul>\r\n                            </li>\r\n                            {# notification #}\r\n        ]]>\r\n      </add>\r\n    </operation>\r\n\r\n    <operation error=\"skip\" >\r\n      <search trim=\"true\">\r\n        <![CDATA[</head>]]>\r\n      </search>\r\n      <add position=\"before\" >\r\n        <![CDATA[\r\n          <style>\r\n            #header .nav > li li {\r\n                min-width: 200px;\r\n            }\r\n            #header .nav > li > a > .label {\r\n                text-shadow: none;\r\n                padding: 1px 4px;\r\n                position: absolute;\r\n                top: 8px;\r\n                left: 6px;\r\n            }\r\n          </style>\r\n        ]]>\r\n      </add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"admin/language/en-gb/common/header.php\">\r\n    <operation error=\"skip\">\r\n      <search trim=\"true\">\r\n        <![CDATA[// Text]]>\r\n      </search>\r\n      <add position=\"after\">\r\n        <![CDATA[\r\n		  $_[\'text_order\'] = \'Orders\';\r\n          $_[\'text_processing_status\'] = \'Processing\';\r\n          $_[\'text_complete_status\'] = \'Completed\';\r\n          $_[\'text_customer\'] = \'Customers\';\r\n          $_[\'text_online\'] = \'Customers Online\';\r\n          $_[\'text_approval\'] = \'Pending approval\';\r\n          $_[\'text_product\'] = \'Products\';\r\n          $_[\'text_stock\'] = \'Out of stock\';\r\n          $_[\'text_review\'] = \'Reviews\';\r\n          $_[\'text_return\'] = \'Returns\';\r\n          $_[\'text_affiliate\'] = \'Affiliates\';\r\n          $_[\'text_store\'] = \'Stores\';\r\n          $_[\'text_front\'] = \'Store Front\';\r\n          $_[\'text_help\'] = \'Help\';\r\n          $_[\'text_homepage\'] = \'OpenCart Homepage\';\r\n          $_[\'text_support\'] = \'Support Forum\';\r\n          $_[\'text_documentation\'] = \'Documentation\';\r\n          $_[\'text_logout\'] = \'Logout\';		  \r\n        ]]>\r\n      </add>\r\n    </operation>\r\n  </file>\r\n  \r\n  <file path=\"admin/language/ru-ru/common/header.php\">\r\n    <operation error=\"skip\">\r\n      <search trim=\"true\">\r\n        <![CDATA[// Text]]>\r\n      </search>\r\n      <add position=\"after\">\r\n        <![CDATA[\r\n		  $_[\'text_order\'] = \'Заказы\';\r\n          $_[\'text_processing_status\'] = \'В процессе\';\r\n          $_[\'text_complete_status\'] = \'Завершено\';\r\n          $_[\'text_customer\'] = \'Покупатели\';\r\n          $_[\'text_online\'] = \'Онлайн\';\r\n          $_[\'text_approval\'] = \'В ожидании\';\r\n          $_[\'text_product\'] = \'Товары\';\r\n          $_[\'text_stock\'] = \'Нет в наличии\';\r\n          $_[\'text_review\'] = \'Отзывы\';\r\n          $_[\'text_return\'] = \'Возвраты\';\r\n          $_[\'text_affiliate\'] = \'Партнеры\';\r\n          $_[\'text_store\'] = \'Магазины\';\r\n          $_[\'text_front\'] = \'Витрина\';\r\n          $_[\'text_help\'] = \'Помощь\';\r\n          $_[\'text_homepage\'] = \'Домашняя страница OpenCart\';\r\n          $_[\'text_support\'] = \'Форум поддержки\';\r\n          $_[\'text_documentation\'] = \'Документация\';\r\n          $_[\'text_logout\'] = \'Выйти\';		  \r\n        ]]>\r\n      </add>\r\n    </operation>\r\n  </file>\r\n</modification>', 1, '2022-11-06 08:31:50', '0000-00-00 00:00:00'),
(21, 24, 'Quick View', 'quickview-adw', 'AlexDW', '1.00', 'https://liveopencart.ru/alexdw', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Quick View</name>\r\n	<version>1.00</version>\r\n	<author>AlexDW</author>\r\n	<link>https://liveopencart.ru/alexdw</link>\r\n	<code>quickview-adw</code>\r\n	<file path=\"admin/controller/catalog/category.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'sort_order\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => HTTP_CATALOG.\'index.php?route=product/category&path=\' . $result[\'category_id\'],\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/category_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ category.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview --><a href=\"{{ category.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a><!-- quickview end --> <a href=\"{{ category.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'product_id\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => HTTP_CATALOG.\'index.php?route=product/product&product_id=\' . $result[\'product_id\'],\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/product_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ product.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview --><a href=\"{{ product.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a><!-- quickview end --> <a href=\"{{ product.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/catalog/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'sort_order\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => HTTP_CATALOG.\'index.php?route=product/manufacturer/info&manufacturer_id=\' . $result[\'manufacturer_id\'],\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/manufacturer_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ manufacturer.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview --><a href=\"{{ manufacturer.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a><!-- quickview end --> <a href=\"{{ manufacturer.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/catalog/information.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'sort_order\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => HTTP_CATALOG.\'index.php?route=information/information&information_id=\' . $result[\'information_id\'],\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/information_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ information.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview --><a href=\"{{ information.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a><!-- quickview end --> <a href=\"{{ information.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/model/catalog/review.php\">\r\n		<operation>\r\n			<search><![CDATA[\"SELECT r.review_id, pd.name]]></search>\r\n			<add position=\"replace\"><![CDATA[\"SELECT r.review_id, r.product_id, pd.name]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/review.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n=> $result[\'review_id\'],\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n//quickview\r\n				\'qview\' => !empty($result[\'product_id\']) ? HTTP_CATALOG.\'index.php?route=product/product&product_id=\' . $result[\'product_id\'] : !1,\r\n//quickview end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/catalog/review_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<a href=\"{{ review.edit }}\"]]></search>\r\n			<add position=\"replace\"><![CDATA[<!-- quickview -->{% if review.qview %}<a href=\"{{ review.qview }}\" target=\"_blank\" data-toggle=\"tooltip\" title=\"View\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a>{% endif %} <!-- quickview end --><a href=\"{{ review.edit }}\"]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2022-11-06 08:32:54', '0000-00-00 00:00:00');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(22, 25, 'Sla SEO Pro 3020', 'sla_seo_pro_modification', 'SlaSoft', '1.02 beta', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>Sla SEO Pro 3020</name>\n	<code>sla_seo_pro_modification</code>\n    <version>1.02 beta</version>\n    <author>SlaSoft</author>\n    <link></link>\n\n    <file path=\"admin/controller/catalog/product.php\">\n        <operation>\n            <search><![CDATA[// Filters]]></search>\n            <add position=\"before\"><![CDATA[\n		if (isset($this->request->post[\'main_category_id\'])) {\n			$data[\'main_category_id\'] = $this->request->post[\'main_category_id\'];\n		} elseif (isset($product_info)) {\n			$data[\'main_category_id\'] = $this->model_catalog_product->getProductMainCategoryId($this->request->get[\'product_id\']);\n		} else {\n			$data[\'main_category_id\'] = 0;\n		}]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/language/en-gb/catalog/product.php\">\n        <operation>\n            <search><![CDATA[// Entry]]></search>\n            <add position=\"after\"><![CDATA[$_[\'entry_main_category\']    = \'Main category:\';]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/language/ru-ru/catalog/product.php\">\n        <operation>\n            <search><![CDATA[// Entry]]></search>\n            <add position=\"after\"><![CDATA[$_[\'entry_main_category\']    = \'Главная категория:\';]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/model/catalog/product.php\">\n        <operation>\n            <search><![CDATA[if (isset($data[\'product_related\'])) {]]></search>\n            <add position=\"before\"><![CDATA[\n			if(isset($data[\'main_category_id\']) && $data[\'main_category_id\'] > 0) {\n            	$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product_to_category WHERE product_id = \'\" . (int)$product_id . \"\' AND category_id = \'\" . (int)$data[\'main_category_id\'] . \"\'\");\n            	$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"product_to_category SET product_id = \'\" . (int)$product_id . \"\', category_id = \'\" . (int)$data[\'main_category_id\'] . \"\', main_category = 1\");\n            } elseif(isset($data[\'product_category\'][0])) {\n            	$this->db->query(\"UPDATE \" . DB_PREFIX . \"product_to_category SET main_category = 1 WHERE product_id = \'\" . (int)$product_id . \"\' AND category_id = \'\" . (int)$data[\'product_category\'][0] . \"\'\");\n            }]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[public function getProductRelated($product_id) {]]></search>\n            <add position=\"before\"><![CDATA[	public function getProductMainCategoryId($product_id) {\n		$query = $this->db->query(\"SELECT category_id FROM \" . DB_PREFIX . \"product_to_category WHERE product_id = \'\" . (int)$product_id . \"\' AND main_category = \'1\' LIMIT 1\");\n\n		return ($query->num_rows ? (int)$query->row[\'category_id\'] : 0);\n	}\n]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$this->getProductCategories($product_id)]]></search>\n            <add position=\"before\"><![CDATA[	\n		$data[\'main_category_id\'] = $this->getProductMainCategoryId($product_id);]]></add>\n        </operation>\n    </file>\n    <file path=\"admin/view/template/catalog/product_form.twig\">\n	\n        <operation>\n            <search><![CDATA[<label class=\"col-sm-2 control-label\" for=\"input-category\"><span data-toggle=\"tooltip\" title=\"{{ help_category }}\">{{ entry_category }}</span></label>]]></search>\n            <add position=\"before\" offset=\"1\"><![CDATA[\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-category\">{{ entry_main_category }}</label>\n				  <div class=\"col-sm-10\">\n					<select id=\"main_category_id\" name=\"main_category_id\" class=\"form-control\">\n						<option value=\"0\" selected=\"selected\">{{ text_none}}</option>\n						{% for category in product_categories %}\n							{% if category.category_id == main_category_id %}\n								<option value=\"{{ category.category_id }}\" selected=\"selected\">{{ category.name }}</option>\n							{% else %}\n								<option value=\"{{ category.category_id }}\">{{ category.name }}</option>\n							{% endif %}\n						{% endfor %}\n					</select>\n                </div>\n              </div>]]></add>\n        </operation>\n\n        <operation>\n            <search><![CDATA[$(\'#product-category\').append(\'<div id=\"product-category\' + item[\'value\'] + \'\"><i class=\"fa fa-minus-circle\"></i> \' + item[\'label\'] + \'<input type=\"hidden\" name=\"product_category[]\" value=\"\' + item[\'value\'] + \'\" /></div>\');]]></search>\n            <add position=\"after\"><![CDATA[		if ($(\'#main_category_id option[value=\"\' + item[\'value\'] + \'\"]\').length == 0) {\n			$(\'#main_category_id\').append(\'<option value=\"\' + item[\'value\'] + \'\">\' + item[\'label\'] + \'</option>\');\n		}]]></add>\n        </operation>\n        <operation>\n            <search><![CDATA[$(\'#product-category\').delegate(\'.fa-minus-circle\', \'click\', function() {]]></search>\n            <add position=\"after\"><![CDATA[    var category_id = $(this).parent().find(\'input[name=\"product_category\\\\[\\\\]\"]\').val();\n	$(\'#main_category_id option[value=\"\' + category_id + \'\"]\').remove();\n]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2022-11-06 08:33:16', '0000-00-00 00:00:00'),
(23, 26, '<i class=\"fa fa-arrows\"></i> Сортировка модулей в макетах', 'layoutmodulessort', 'Pavel Kravchenko', '2.0.0', 'https://opencartforum.com/profile/711752-paulkravchenko/', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name><![CDATA[<i class=\"fa fa-arrows\"></i> Сортировка модулей в макетах]]></name>\r\n	<code>layoutmodulessort</code>\r\n	<version>2.0.0</version>\r\n	<author>Pavel Kravchenko</author>\r\n	<link>https://opencartforum.com/profile/711752-paulkravchenko/</link>\r\n	<date>2019.10.13</date>\r\n	<file path=\"admin/view/template/design/layout_form.tpl\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[<?php echo $footer; ?>]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\" src=\"view/javascript/jquery/jquery-ui-custom.min.js\"></script>\r\n<script type=\"text/javascript\"><!--\r\n$(\'#module-column-left, #module-column-right, #module-content-top, #module-content-bottom\').prepend(\"<tr></tr>\").addClass( \"table-sort\" );\r\n$(\'.table-sort\').sortable({\r\n	items: \'tbody > tr\',\r\n    helper: fixWidthHelper,\r\n	placeholder: \"placeholder-sortable\",\r\n	connectWith: \".table-sort\",\r\n	dropOnEmpty: true,\r\n	receive: function( event, ui ){\r\n		$(this).find(\"tbody > tr\").append(ui.item);\r\n        $(this).find(\'input[name*=\\\'sort_order\\\']\').each(function(i){\r\n            $(this).val(i+1);\r\n        });\r\n		var id = $(this).attr(\"id\");\r\n		$(this).find(\'input[name*=\\\'position\\\']\').each(function(){\r\n            $(this).val(id.replace(\'module-\', \'\').replace(\'-\', \'_\'));\r\n        });\r\n    },\r\n	stop: function( event, ui ){\r\n        $(this).find(\'input[name*=\\\'sort_order\\\']\').each(function(i){\r\n            $(this).val(i+1);\r\n        });\r\n    }\r\n});\r\nfunction fixWidthHelper(e, ui) {\r\n    ui.children().each(function() {\r\n        $(this).width($(this).width());\r\n    });\r\n    return ui;\r\n}\r\n//--></script>\r\n<style>\r\n#module-content-bottom tbody tr td:first-child,\r\n#module-content-top tbody tr td:first-child,\r\n#module-column-left tbody tr td:first-child,\r\n#module-column-right tbody tr td:first-child {\r\n    cursor:move;\r\n    position:relative;\r\n    padding-left:20px;\r\n}\r\n\r\n#module-content-bottom tbody tr td:before,\r\n#module-content-top tbody tr td:before,\r\n#module-column-left tbody tr td:before,\r\n#module-column-right tbody tr td:before {\r\n    content: \"\\f0dc\";\r\n    font-family: FontAwesome;\r\n    left:5px;\r\n    top:15px;\r\n    position:absolute;\r\n}\r\n.ui-sortable-helper { border: 1px solid #aaa!important;}\r\n.placeholder-sortable { border: 2px dashed #bbb!important; height:40px!important; opacity: 0.1!important; }\r\n.arrow-icon-sortable {float: left;padding: 7px;}\r\ntfoot > tr > td > .arrow-icon-sortable{display:none;}\r\n</style>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/design/layout_form.twig\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[{{ footer }}]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\" src=\"view/javascript/jquery/jquery-ui-custom.min.js\"></script>\r\n<script type=\"text/javascript\"><!--\r\n$(\'#module-column-left, #module-column-right, #module-content-top, #module-content-bottom\').prepend(\"<tr></tr>\").addClass( \"table-sort\" );\r\n$(\'.table-sort\').sortable({\r\n	items: \'tbody > tr\',\r\n    helper: fixWidthHelper,\r\n	placeholder: \"placeholder-sortable\",\r\n	connectWith: \".table-sort\",\r\n	dropOnEmpty: true,\r\n	receive: function( event, ui ){\r\n		$(this).find(\"tbody > tr\").append(ui.item);\r\n        $(this).find(\'input[name*=\\\'sort_order\\\']\').each(function(i){\r\n            $(this).val(i+1);\r\n        });\r\n		var id = $(this).attr(\"id\");\r\n		$(this).find(\'input[name*=\\\'position\\\']\').each(function(){\r\n            $(this).val(id.replace(\'module-\', \'\').replace(\'-\', \'_\'));\r\n        });\r\n    },\r\n	stop: function( event, ui ){\r\n        $(this).find(\'input[name*=\\\'sort_order\\\']\').each(function(i){\r\n            $(this).val(i+1);\r\n        });\r\n    }\r\n});\r\nfunction fixWidthHelper(e, ui) {\r\n    ui.children().each(function() {\r\n        $(this).width($(this).width());\r\n    });\r\n    return ui;\r\n}\r\n//--></script>\r\n<style>\r\n#module-content-bottom tbody tr td:first-child,\r\n#module-content-top tbody tr td:first-child,\r\n#module-column-left tbody tr td:first-child,\r\n#module-column-right tbody tr td:first-child {\r\n    cursor:move;\r\n    position:relative;\r\n    padding-left:20px;\r\n}\r\n\r\n#module-content-bottom tbody tr td:before,\r\n#module-content-top tbody tr td:before,\r\n#module-column-left tbody tr td:before,\r\n#module-column-right tbody tr td:before {\r\n    content: \"\\f0dc\";\r\n    font-family: FontAwesome;\r\n    left:5px;\r\n    top:15px;\r\n    position:absolute;\r\n}\r\n.ui-sortable-helper { border: 1px solid #aaa!important;}\r\n.placeholder-sortable { border: 2px dashed #bbb!important; height:40px!important; opacity: 0.1!important; }\r\n.arrow-icon-sortable {float: left;padding: 7px;}\r\ntfoot > tr > td > .arrow-icon-sortable{display:none;}\r\n</style>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>', 1, '2022-11-06 08:33:34', '0000-00-00 00:00:00'),
(24, 27, 'order delete button - likeDev', 'order delete button', 'Seriusis', '1.0.0', 'likeDev.pro', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>order delete button - likeDev</name>\n    <code>order delete button</code>\n    <version>1.0.0</version>\n    <author>Seriusis</author>\n    <link>likeDev.pro</link>\n\n    <file path=\"admin/view/template/sale/order_list.twig\">\n\n        <operation  error = \"skip\">\n            <search><![CDATA[<a href=\"{{ add }}\" data-toggle=\"tooltip\" title=\"{{ button_add }}\" class=\"btn btn-primary\"><i class=\"fa fa-plus\"></i></a>]]></search>\n            <add position=\"before\"><![CDATA[\n            <!--delete orders-->\n            <button id=\"button-delete-orders\" formaction=\"{{ delete_orders }}\" data-toggle=\"tooltip\" title=\"{{ button_delete }}\" class=\"btn btn-danger\"><i class=\"fa fa-trash-o\"></i></button>\n            <!---->\n            ]]></add>\n        </operation>\n\n\n        <operation  error = \"skip\">\n            <search><![CDATA[{{ footer }}]]></search>\n            <add position=\"before\"><![CDATA[\n             <!--delete orders-->\n                <script>\n                    $(\'#button-delete-orders\').on(\'click\', function(e) {\n                        $(\'#form-order\').attr(\'action\', this.getAttribute(\'formAction\'));\n\n                        if (confirm(\'{{ text_confirm }}\')) {\n                            $(\'#form-order\').submit();\n                        } else {\n                            return false;\n                        }\n                    });\n                </script>\n                <!---->\n            ]]></add>\n        </operation>\n\n\n\n\n    </file>\n\n    <file path=\"admin/controller/sale/order.php\">\n\n\n        <operation  error = \"skip\">\n            <search><![CDATA[$data[\'delete\'] = str_replace(\'&amp;\', \'&\', $this->url->link(\'sale/order/delete\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));]]></search>\n            <add position=\"before\"><![CDATA[\n            $data[\'delete_orders\'] = str_replace(\'&amp;\', \'&\', $this->url->link(\'sale/order/deleteOrders\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\n            ]]></add>\n        </operation>\n\n        <operation  error = \"skip\">\n            <search><![CDATA[public function delete() {]]></search>\n            <add position=\"before\"><![CDATA[\n             /*delete orders*/\n                public function deleteOrders() {\n                    $this->load->language(\'sale/order\');\n\n                    $this->document->setTitle($this->language->get(\'heading_title\'));\n\n                    $this->load->model(\'sale/order\');\n\n                    $url = \'\';\n\n                        if (isset($this->request->get[\'filter_order_id\'])) {\n                            $url .= \'&filter_order_id=\' . $this->request->get[\'filter_order_id\'];\n                        }\n\n                        if (isset($this->request->get[\'filter_customer\'])) {\n                            $url .= \'&filter_customer=\' . urlencode(html_entity_decode($this->request->get[\'filter_customer\'], ENT_QUOTES, \'UTF-8\'));\n                        }\n\n                        if (isset($this->request->get[\'filter_order_status\'])) {\n                            $url .= \'&filter_order_status=\' . $this->request->get[\'filter_order_status\'];\n                        }\n\n                        if (isset($this->request->get[\'filter_total\'])) {\n                            $url .= \'&filter_total=\' . $this->request->get[\'filter_total\'];\n                        }\n\n                        if (isset($this->request->get[\'filter_date_added\'])) {\n                            $url .= \'&filter_date_added=\' . $this->request->get[\'filter_date_added\'];\n                        }\n\n                        if (isset($this->request->get[\'filter_date_modified\'])) {\n                            $url .= \'&filter_date_modified=\' . $this->request->get[\'filter_date_modified\'];\n                        }\n\n                    if (isset($this->request->post[\'selected\']) && $this->validate()) {\n                        foreach ($this->request->post[\'selected\'] as $order_id) {\n                            $this->model_sale_order->deleteOrder($order_id);\n                        }\n\n                        $this->session->data[\'success\'] = $this->language->get(\'text_success\');\n\n                    }\n\n                    $this->response->redirect($this->url->link(\'sale/order\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\n                }\n                /**/\n            ]]></add>\n        </operation>\n\n    </file>\n\n\n    <file path=\"admin/model/sale/order.php\">\n\n        <operation  error = \"skip\">\n            <search><![CDATA[public function getOrder($order_id) {]]></search>\n            <add position=\"before\"><![CDATA[\n            /*delete orders*/\n            public function deleteOrder($order_id) {\n                $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"order` WHERE order_id = \'\" . (int)$order_id . \"\'\");\n                $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"order_product` WHERE order_id = \'\" . (int)$order_id . \"\'\");\n                $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"order_option` WHERE order_id = \'\" . (int)$order_id . \"\'\");\n                $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"order_voucher` WHERE order_id = \'\" . (int)$order_id . \"\'\");\n                $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"order_total` WHERE order_id = \'\" . (int)$order_id . \"\'\");\n                $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"order_history` WHERE order_id = \'\" . (int)$order_id . \"\'\");\n                $this->db->query(\"DELETE `or`, ort FROM `\" . DB_PREFIX . \"order_recurring` `or`, `\" . DB_PREFIX . \"order_recurring_transaction` `ort` WHERE order_id = \'\" . (int)$order_id . \"\' AND ort.order_recurring_id = `or`.order_recurring_id\");\n                $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"customer_transaction` WHERE order_id = \'\" . (int)$order_id . \"\'\");\n\n                // Delete voucher data as well\n                $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"voucher` WHERE order_id = \'\" . (int)$order_id . \"\'\");\n                $this->db->query(\"DELETE FROM `\" . DB_PREFIX . \"voucher_history` WHERE order_id = \'\" . (int)$order_id . \"\'\");\n\n            }\n                /**/\n            ]]></add>\n        </operation>\n\n    </file>\n\n</modification>\n  ', 1, '2022-11-06 08:33:52', '0000-00-00 00:00:00'),
(25, 28, 'ToolBar - информационная панель', 'ToolBar', 'https://ocmod.net', '1.0', 'https://ocmod.net', '<modification>\r\n    <name>ToolBar - информационная панель</name>\r\n    <code>ToolBar</code>\r\n    <version>1.0</version>\r\n    <author>https://ocmod.net</author>\r\n    <link>https://ocmod.net</link>\r\n\r\n	<file path=\"admin/view/template/common/header.twig\">\r\n        <operation>\r\n            <search><![CDATA[<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><img src=\"{{ image }}\" alt=\"{{ firstname }} {{ lastname }}\" title=\"{{ username }}\" id=\"user-profile\" class=\"img-circle\" />{{ firstname }} {{ lastname }} <i class=\"fa fa-caret-down fa-fw\"></i></a>]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n      <li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"><i class=\"fa fa-folder-open fa-lg\"></i></a>\r\n        <ul class=\"dropdown-menu dropdown-menu-right\">\r\n					<li class=\"dropdown-header\" style=\"min-width: 250px;\">Информация по товарам</li>\r\n					<li><a>Без описания <span class=\"label {% if  no_desc > 0 %} label-warning {% else %} label-success {% endif %} pull-right\">{{ no_desc }}</span></a></li>\r\n					<li><a>Без цены <span class=\"label {% if  no_price > 0 %} label-warning {% else %} label-success {% endif %} pull-right\">{{ no_price }}</span></a></li>\r\n					<li><a>Без главного изображения<span class=\"label {% if  no_img > 0 %} label-warning {% else %} label-success {% endif %} pull-right\">{{ no_img }}</span></a></li>\r\n					<li><a>Товар выключен<span class=\"label {% if  no_status > 0 %} label-warning {% else %} label-success {% endif %} pull-right\">{{ no_status }}</span></a></li>\r\n					<li><a>Осталось меньше 10 шт.<span class=\"label {% if  quantity > 0 %} label-warning {% else %} label-success {% endif %} pull-right\">{{ quantity }}</span></a></li>\r\n					<li style=\"margin-bottom: 13px;\"><a>Акция закончится завтра<span class=\"label {% if  date_end > 0 %} label-warning {% else %} label-success {% endif %} pull-right\">{{ date_end }}</span></a></li>\r\n        </ul>\r\n      </li>\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n	<file path=\"admin/controller/common/header.php\">\r\n        <operation>\r\n            <search><![CDATA[\'href\' => $result[\'url\']]]></search>\r\n            <add position=\"after\" offset=\"3\"><![CDATA[\r\n			/* FullToolbar Lite */\r\n\r\n			$no_desc = $this->db->query(\"SELECT COUNT(product_id) FROM \" . DB_PREFIX . \"product_description WHERE description = \'\'\");\r\n			$data[\'no_desc\'] = $no_desc->row[\'COUNT(product_id)\'];\r\n			\r\n			$no_price = $this->db->query(\"SELECT COUNT(product_id) FROM \" . DB_PREFIX . \"product WHERE price = \'0\'\");\r\n			$data[\'no_price\'] = $no_price->row[\'COUNT(product_id)\'];\r\n			\r\n			$no_img = $this->db->query(\"SELECT COUNT(product_id) FROM \" . DB_PREFIX . \"product WHERE image = \'\'\");\r\n			$data[\'no_img\'] = $no_img->row[\'COUNT(product_id)\'];\r\n			\r\n			$no_status = $this->db->query(\"SELECT COUNT(product_id) FROM \" . DB_PREFIX . \"product WHERE status = \'0\'\");\r\n			$data[\'no_status\'] = $no_status->row[\'COUNT(product_id)\'];\r\n			\r\n			$quantity = $this->db->query(\"SELECT COUNT(product_id) FROM \" . DB_PREFIX . \"product WHERE quantity < 10\");\r\n			$data[\'quantity\'] = $quantity->row[\'COUNT(product_id)\'];\r\n			\r\n			$date = date(\'Y-m-d\', time() + 86400);		\r\n		\r\n			$date_end = $this->db->query(\"SELECT COUNT(product_id) FROM \" . DB_PREFIX . \"product_special WHERE date_end = \'\" . $date . \"\'\");\r\n			$data[\'date_end\'] = $date_end->row[\'COUNT(product_id)\'];\r\n			\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n	\r\n</modification>', 1, '2022-11-06 08:34:40', '0000-00-00 00:00:00'),
(26, 29, 'Phone and email in order list', 'phone_and_email', 'freeopencart.ru', '1.1', 'https://freeopencart.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <name>Phone and email in order list</name>\r\n    <code>phone_and_email</code>\r\n    <version>1.1</version>\r\n    <author>freeopencart.ru</author>\r\n    <link>https://freeopencart.ru</link>\r\n	\r\n	<file path=\"admin/view/template/sale/order_list.twig\">\r\n		<operation>\r\n			<search><![CDATA[<td class=\"text-left\">{% if sort == \'order_status\' %}]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				<td class=\"text-left\">{% if (sort == \'order_telephone\') %} \r\n                    <a href=\"{{ sort_telephone }}\" class=\"{{ strtolower.order }}\">{{ entry_telephone }}</a>\r\n                    {% else %} \r\n                    <a href=\"{{ sort_telephone }}\">{{ entry_telephone }}</a>\r\n                    {% endif %}</td>\r\n                    <td class=\"text-left\">{% if (sort == \'order_email\') %} \r\n                    <a href=\"{{ sort_email }}\" class=\"{{ strtolower.order }}\"> {{ entry_email }}</a>\r\n                    {% else %} \r\n                    <a href=\"{{ sort_email }}\">{{ entry_email }}</a>\r\n                    {% endif %}</td>]]>\r\n	  </add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[<td class=\"text-left\">{{ order.order_status }}</td>]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				<td class=\"text-left\">{{ order.order_telephone }}</td>\r\n				<td class=\"text-left\">{{ order.order_email }}</td>\r\n				]]>\r\n	  </add>\r\n	  </operation>\r\n        <operation>\r\n            <search index=\"0\">\r\n                <![CDATA[<div class=\"panel-body\">]]>\r\n            </search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n            <div class=\"form-group\">\r\n                <label class=\"control-label\" for=\"input-filter-email\">{{ entry_email }}</label>\r\n                <input type=\"text\" name=\"filter_email\" value=\"{{ filter_email }}\" placeholder=\"{{ entry_email }}\" id=\"input-filter-email\" class=\"form-control\" />\r\n            </div>\r\n            <div class=\"form-group\">\r\n                <label class=\"control-label\" for=\"input-filter-phone\">{{ entry_telephone }}</label>\r\n                <input type=\"text\" name=\"filter_phone\" value=\"{{ filter_phone }}\" placeholder=\"{{ entry_telephone }}\" id=\"input-filter-phone\" class=\"form-control\" />\r\n            </div>]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search>\r\n                <![CDATA[var filter_order_id = $(\'input[name=\\\'filter_order_id\\\']\').val();]]>\r\n            </search>\r\n            <add position=\"after\">\r\n                <![CDATA[	var filter_email = $(\'input[name=\\\'filter_email\\\']\').val();\r\n\r\n    if (filter_email) {\r\n        url += \'&filter_email=\' + encodeURIComponent(filter_email);\r\n    }\r\n\r\n	var filter_phone = $(\'input[name=\\\'filter_phone\\\']\').val();\r\n\r\n    if (filter_phone) {\r\n        url += \'&filter_phone=\' + encodeURIComponent(filter_phone);\r\n    }]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n	<file path=\"admin/model/sale/order.php\">\r\n		<operation>\r\n			<search><![CDATA[SELECT o.order_id, CONCAT(o.firstname, \' \', o.lastname) AS customer,]]></search>\r\n			<add position=\"replace\"><![CDATA[ SELECT o.order_id, CONCAT(o.firstname, \' \', o.lastname) AS customer,CONCAT(o.email) AS email ,CONCAT(o.telephone) AS telephone,\r\n				]]>\r\n	  </add>\r\n		</operation>\r\n		        <operation>\r\n            <search index=\"0\">\r\n                <![CDATA[\r\n		if (!empty($data[\'filter_order_id\'])) {]]>\r\n            </search>\r\n            <add position=\"befor\">\r\n                <![CDATA[\r\n\r\n        if (!empty($data[\'filter_email\'])) {\r\n            $sql .= \" AND order_id IN (SELECT \" . DB_PREFIX . \"order.order_id FROM \" . DB_PREFIX . \"order WHERE \" . DB_PREFIX . \"order.email LIKE \'%\" . $this ->db->escape($data[\'filter_email\']) . \"%\')\";\r\n        }\r\n\r\n        if (!empty($data[\'filter_phone\'])) {\r\n            $sql .= \" AND order_id IN (SELECT \" . DB_PREFIX . \"order.order_id FROM \" . DB_PREFIX . \"order WHERE \" . DB_PREFIX . \"order.telephone LIKE \'%\" . $this ->db->escape($data[\'filter_phone\']) . \"%\')\";\r\n        }\r\n\r\n		if (!empty($data[\'filter_order_id\'])) {]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search index=\"1\">\r\n                <![CDATA[\r\n		if (!empty($data[\'filter_order_id\'])) {]]>\r\n            </search>\r\n            <add position=\"befor\">\r\n                <![CDATA[\r\n\r\n        if (!empty($data[\'filter_email\'])) {\r\n            $sql .= \" AND order_id IN (SELECT \" . DB_PREFIX . \"order.order_id FROM \" . DB_PREFIX . \"order WHERE \" . DB_PREFIX . \"order.email LIKE \'%\" . $this ->db->escape($data[\'filter_email\']) . \"%\')\";\r\n        }\r\n\r\n        if (!empty($data[\'filter_phone\'])) {\r\n            $sql .= \" AND order_id IN (SELECT \" . DB_PREFIX . \"order.order_id FROM \" . DB_PREFIX . \"order WHERE \" . DB_PREFIX . \"order.telephone LIKE \'%\" . $this ->db->escape($data[\'filter_phone\']) . \"%\')\";\r\n        }\r\n\r\n		if (!empty($data[\'filter_order_id\'])) {]]>\r\n            </add>\r\n        </operation>\r\n	</file>\r\n	<file path=\"admin/controller/sale/order.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'sort_status\'] = $this->url->link(\'sale/order\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=order_status\' . $url, true);]]></search>\r\n			<add position=\"before\"><![CDATA[$data[\'sort_email\'] = $this->url->link(\'sale/order\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=order_email\' . $url, true);\r\n				$data[\'sort_telephone\'] = $this->url->link(\'sale/order\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&sort=order_telephone\' . $url, true);]]>\r\n	  </add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\'order_status\'  => $result[\'order_status\'] ? $result[\'order_status\'] : $this->language->get(\'text_missing\'),]]></search>\r\n			<add position=\"before\"><![CDATA[ \'order_email\'  => $result[\'email\'],\r\n				\'order_telephone\'  => $result[\'telephone\'],]]>\r\n	  </add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[if (isset($this->request->get[\'filter_order_status\'])) {]]></search>\r\n			<add position=\"before\"><![CDATA[ if (isset($this->request->get[\'filter_order_email\'])) {\r\n			$filter_order_email = $this->request->get[\'filter_order_email\'];\r\n		} else {\r\n			$filter_order_email = null;\r\n		}if (isset($this->request->get[\'filter_order_telephone\'])) {\r\n			$filter_order_telephone = $this->request->get[\'filter_order_telephone\'];\r\n		} else {\r\n			$filter_order_telephone = null;\r\n		}]]>\r\n	  </add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[if (isset($this->request->get[\'filter_order_status\'])) {]]></search>\r\n			<add position=\"before\"><![CDATA[ if (isset($this->request->get[\'filter_order_email\'])) {\r\n			$url .= \'&filter_order_email=\' . $this->request->get[\'filter_order_email\'];\r\n		}  if (isset($this->request->get[\'filter_order_telephone\'])) {\r\n			$url .= \'&filter_order_telephone=\' . $this->request->get[\'filter_order_telephone\'];\r\n		}]]>\r\n	  </add>\r\n		</operation>\r\n		        <operation>\r\n            <search>\r\n                <![CDATA[protected function getList() {]]>\r\n            </search>\r\n            <add position=\"after\">\r\n                <![CDATA[\r\n\r\n		if (isset($this->request->get[\'filter_email\'])) {\r\n            $filter_email = $this->request->get[\'filter_email\'];\r\n		} else {\r\n            $filter_email = \'\';\r\n		}\r\n\r\n		if (isset($this->request->get[\'filter_phone\'])) {\r\n            $filter_phone = $this->request->get[\'filter_phone\'];\r\n		} else {\r\n            $filter_phone = \'\';\r\n		}\r\n]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search>\r\n                <![CDATA[\'filter_order_id\'        => $filter_order_id,]]>\r\n            </search>\r\n            <add position=\"befor\">\r\n                <![CDATA[\'filter_email\'           => $filter_email,\r\n			\'filter_phone\'            => $filter_phone,]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search index=\"3\">\r\n                <![CDATA[$url = \'\';]]>\r\n            </search>\r\n            <add position=\"befor\">\r\n                <![CDATA[\r\n\r\n        if (isset($this->request->get[\'filter_email\'])) {\r\n            $url .= \'&filter_email=\' . urlencode(html_entity_decode($this->request->get[\'filter_email\'], ENT_QUOTES, \'UTF-8\'));\r\n        }\r\n\r\n        if (isset($this->request->get[\'filter_phone\'])) {\r\n            $url .= \'&filter_phone=\' . urlencode(html_entity_decode($this->request->get[\'filter_phone\'], ENT_QUOTES, \'UTF-8\'));\r\n        }]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search>\r\n                <![CDATA[$data[\'filter_order_id\'] = $filter_order_id;]]>\r\n            </search>\r\n            <add position=\"befor\">\r\n                <![CDATA[$data[\'filter_email\'] = $filter_email;\r\n		$data[\'filter_phone\'] = $filter_phone;]]>\r\n            </add>\r\n        </operation>\r\n	</file>\r\n</modification>', 1, '2022-11-06 08:34:54', '0000-00-00 00:00:00'),
(27, 30, 'Скрыть отключенные языки', 'hidedisabledlangs', 'https://ocmod.net', '1.0.0', 'https://ocmod.net', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Скрыть отключенные языки</name>\r\n	<code>hidedisabledlangs</code>\r\n	<version>1.0.0</version>\r\n	<author>https://ocmod.net</author>\r\n	<link>https://ocmod.net</link>\r\n\r\n	<file path=\"admin/model/localisation/language.php\">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					public function getLanguages($data = array()) {\r\n				]]>\r\n			</search>\r\n			<add position=\"after\" trim=\"true\">\r\n				<![CDATA[\r\n		if( !empty( $this->request->get[\'route\'] ) && ( $this->request->get[\'route\'] == \'localisation/language\' ) ) {\r\n			$lang_status = \'\';\r\n		}else{\r\n			$lang_status = \' WHERE status = \\\'1\\\'\';\r\n		}\r\n		$this->cache->delete( \'language\' );\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$sql = \"SELECT * FROM \" . DB_PREFIX . \"language\";\r\n				]]>\r\n			</search>\r\n			<add position=\"replace\" trim=\"true\">\r\n				<![CDATA[\r\n					$sql = \"SELECT * FROM \" . DB_PREFIX . \"language\" . $lang_status;\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"language ORDER BY sort_order, name\");\r\n				]]>\r\n			</search>\r\n			<add position=\"replace\">\r\n				<![CDATA[\r\n				if( !empty( $this->request->get[\'route\'] ) && ( $this->request->get[\'route\'] == \'localisation/language\' ) ) {\r\n					$lang_status = \'\';\r\n				}else{\r\n					$lang_status = \' status = \\\'1\\\'\';\r\n				}\r\n\r\n				$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"language WHERE\" . $lang_status . \" ORDER BY sort_order, name\");\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2022-11-06 08:35:08', '0000-00-00 00:00:00');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(28, 33, 'DEV-OPENCART.COM - Обновление цены при выборе опций', 'dev_opencart_com_autocalc_price_opencart', 'DEV-OPENCART.COM', '1', 'https://dev-opencart.com', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<modification>\n  <name>DEV-OPENCART.COM - Обновление цены при выборе опций</name>\n  <version>1</version>\n  <link>https://dev-opencart.com</link>\n  <author>DEV-OPENCART.COM</author>\n  <code>dev_opencart_com_autocalc_price_opencart</code>\n  <file path=\"admin/view/template/setting/setting.twig\">\n    <operation error=\"skip\">                           \n      <search><![CDATA[<label class=\"col-sm-2 control-label\"><span data-toggle=\"tooltip\" title=\"{{ help_currency_auto }}\">{{ entry_currency_auto }}</span></label>]]></search>\n      <add position=\"before\"><![CDATA[\n          <label class=\"col-sm-2 control-label\"><span data-toggle=\"tooltip\" title=\"Выводится модулем autocalc_price_option в карточке товара\">Дополнительная валюта <i>(autocalc)</i>:</span></label>\n          <div class=\"col-sm-10\">\n            <select name=\"config_currency2\" id=\"input-currency\" class=\"form-control\">\n              <option value=\"\">{{ text_none }}</option>\n              {% for currency in currencies %}\n                {% if currency.code == config_currency2 %}\n                  <option value=\"{{ currency.code }}\" selected=\"selected\">{{ currency.title }}</option>\n                {% else %}\n                  <option value=\"{{ currency.code }}\">{{ currency.title }}</option>\n                {% endif %}\n              {% endfor %}\n            </select>\n          </div>\n        </div>\n        <div class=\"form-group\">\n          <label class=\"col-sm-2 control-label\"><span data-toggle=\"tooltip\" title=\"Акция на опции пропорционально акции на товар (autocalc_price_option)\">Акция на опции <i>(autocalc)</i>:</span></label>\n          <div class=\"col-sm-10\">\n            <label class=\"radio-inline\"> \n              {% if config_autocalc_option_special %}\n              <input type=\"radio\" name=\"config_autocalc_option_special\" value=\"1\" checked=\"checked\" />\n              {{ text_yes }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_option_special\" value=\"1\" />\n              {{ text_yes }}\n              {% endif %}\n            </label>\n            <label class=\"radio-inline\">\n              {% if not config_autocalc_option_special %}\n              <input type=\"radio\" name=\"config_autocalc_option_special\" value=\"0\" checked=\"checked\" />\n              {{ text_no }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_option_special\" value=\"0\" />\n              {{ text_no }}\n              {% endif %}\n            </label>\n          </div>\n        </div>\n        <div class=\"form-group\">\n          <label class=\"col-sm-2 control-label\"><span data-toggle=\"tooltip\" title=\"Скидка на опции пропорционально скидке на товар (autocalc_price_option)\">Скидка на опции <i>(autocalc)</i>:</span></label>\n          <div class=\"col-sm-10\">\n            <label class=\"radio-inline\">\n              {% if config_autocalc_option_discount %}\n              <input type=\"radio\" name=\"config_autocalc_option_discount\" value=\"1\" checked=\"checked\" />\n              {{ text_yes }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_option_discount\" value=\"1\" />\n              {{ text_yes }}\n              {% endif %}\n            </label>\n            <label class=\"radio-inline\">\n              {% if not config_autocalc_option_discount %}\n              <input type=\"radio\" name=\"config_autocalc_option_discount\" value=\"0\" checked=\"checked\" />\n              {{ text_no }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_option_discount\" value=\"0\" />\n              {{ text_no }}\n              {% endif %}\n            </label>\n          </div>\n        </div>\n        <div class=\"form-group\">\n          <label class=\"col-sm-2 control-label\"><span data-toggle=\"tooltip\" title=\"Отключении функции умножения на количество (autocalc_price_option)\">Не умножать на количество <i>(autocalc)</i>:</span></label>\n          <div class=\"col-sm-10\">\n            <label class=\"radio-inline\">\n              {% if config_autocalc_not_mul_qty %}\n              <input type=\"radio\" name=\"config_autocalc_not_mul_qty\" value=\"1\" checked=\"checked\" />\n              {{ text_yes }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_not_mul_qty\" value=\"1\" />\n              {{ text_yes }}\n              {% endif %} </label>\n            <label class=\"radio-inline\">\n              {% if not config_autocalc_not_mul_qty %}\n              <input type=\"radio\" name=\"config_autocalc_not_mul_qty\" value=\"0\" checked=\"checked\" />\n              {{ text_no }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_not_mul_qty\" value=\"0\" />\n              {{ text_no }}\n              {% endif %}\n            </label>\n          </div>\n        </div>\n        <div class=\"form-group\">\n          <label class=\"col-sm-2 control-label\"><span data-toggle=\"tooltip\" title=\"Автоматический выбор первой опции (radio,select). (autocalc_price_option)\">Выбор первой опции <i>(autocalc)</i>:</span></label>\n          <div class=\"col-sm-10\">\n            <label class=\"radio-inline\">\n              {% if config_autocalc_select_first %}\n              <input type=\"radio\" name=\"config_autocalc_select_first\" value=\"1\" checked=\"checked\" />\n              {{ text_yes }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_select_first\" value=\"1\" />\n              {{ text_yes }}\n              {% endif %}\n            </label>\n            <label class=\"radio-inline\">\n              {% if not config_autocalc_select_first %}\n              <input type=\"radio\" name=\"config_autocalc_select_first\" value=\"0\" checked=\"checked\" />\n              {{ text_no }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_select_first\" value=\"0\" />\n              {{ text_no }}\n              {% endif %}\n            </label>\n          </div>\n        </div>\n        <div class=\"form-group\">\n          <label class=\"col-sm-2 control-label\"><span data-toggle=\"tooltip\" title=\"Скрыть вывод наценки для опции. (autocalc_price_option)\">Не показывать цену опции <i>(autocalc)</i>:</span></label>\n          <div class=\"col-sm-10\">\n            <label class=\"radio-inline\">\n              {% if config_autocalc_hide_option_price %}\n              <input type=\"radio\" name=\"config_autocalc_hide_option_price\" value=\"1\" checked=\"checked\" />\n              {{ text_yes }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_hide_option_price\" value=\"1\" />\n              {{ text_yes }}\n              {% endif %}\n            </label>\n            <label class=\"radio-inline\">\n              {% if not config_autocalc_hide_option_price %}\n              <input type=\"radio\" name=\"config_autocalc_hide_option_price\" value=\"0\" checked=\"checked\" />\n              {{ text_no }}\n              {% else %}\n              <input type=\"radio\" name=\"config_autocalc_hide_option_price\" value=\"0\" />\n              {{ text_no }}\n              {% endif %}\n            </label>\n          </div>\n        </div>\n        <div class=\"form-group\">\n      ]]></add>\n    </operation>        \n  </file>  \n  <file path=\"admin/controller/setting/setting.php\">\n    <operation>                           \n      <search><![CDATA[if (isset($this->request->post[\'config_currency\'])) {]]></search>\n      <add position=\"before\"><![CDATA[\n        if (isset($this->request->post[\'config_currency2\'])) {\n            $data[\'config_currency2\'] = $this->request->post[\'config_currency2\'];\n        } else {\n            $data[\'config_currency2\'] = $this->config->get(\'config_currency2\');\n        }\n        if (isset($this->request->post[\'config_autocalc_option_special\'])) {\n            $data[\'config_autocalc_option_special\'] = $this->request->post[\'config_autocalc_option_special\'];\n        } else {\n            $data[\'config_autocalc_option_special\'] = $this->config->get(\'config_autocalc_option_special\');\n        }        \n        if (isset($this->request->post[\'config_autocalc_option_discount\'])) {\n            $data[\'config_autocalc_option_discount\'] = $this->request->post[\'config_autocalc_option_discount\'];\n        } else {\n            $data[\'config_autocalc_option_discount\'] = $this->config->get(\'config_autocalc_option_discount\');\n        }\n        if (isset($this->request->post[\'config_autocalc_not_mul_qty\'])) {\n            $data[\'config_autocalc_not_mul_qty\'] = $this->request->post[\'config_autocalc_not_mul_qty\'];\n        } else {\n            $data[\'config_autocalc_not_mul_qty\'] = $this->config->get(\'config_autocalc_not_mul_qty\');\n        }\n        if (isset($this->request->post[\'config_autocalc_select_first\'])) {\n            $data[\'config_autocalc_select_first\'] = $this->request->post[\'config_autocalc_select_first\'];\n        } else {\n            $data[\'config_autocalc_select_first\'] = $this->config->get(\'config_autocalc_select_first\');\n        }        \n        if (isset($this->request->post[\'config_autocalc_hide_option_price\'])) {\n            $data[\'config_autocalc_hide_option_price\'] = $this->request->post[\'config_autocalc_hide_option_price\'];\n        } else {\n            $data[\'config_autocalc_hide_option_price\'] = $this->config->get(\'config_autocalc_hide_option_price\');\n        }\n      ]]></add>\n    </operation>        \n  </file>\n  \n  \n  <file path=\"admin/view/template/catalog/product_form.twig\">\n    <operation error=\"skip\">                           \n      <search><![CDATA[{% if product_option_value.price_prefix == \'+\' %}]]></search>\n      <add position=\"before\"><![CDATA[\n        {% if product_option_value.price_prefix == \'=\' %}\n          <option value=\"=\" selected=\"selected\">=</option>\n        {% else %}\n          <option value=\"=\">=</option>\n        {% endif %}\n        {% if product_option_value.price_prefix == \'%\' %}\n          <option value=\"%\" selected=\"selected\">%</option>\n        {% else %}\n          <option value=\"%\">%</option>\n        {% endif %}\n        {% if product_option_value.price_prefix == \'*\' %}\n          <option value=\"*\" selected=\"selected\">*</option>\n        {% else %}\n          <option value=\"*\">*</option>\n        {% endif %}\n        {% if product_option_value.price_prefix == \'/\' %}\n          <option value=\"/\" selected=\"selected\">/</option>\n        {% else %}\n          <option value=\"/\">/</option>\n        {% endif %}\n      ]]></add>\n    </operation>    \n    <operation error=\"skip\">                           \n      <search index=\"0\"><![CDATA[html += \'    <option value=\"-\">-</option>\';]]></search>\n      <add position=\"after\"><![CDATA[\n        html += \'    <option value=\"=\">=</option>\';\n        html += \'    <option value=\"%\">%</option>\';\n        html += \'    <option value=\"*\">*</option>\';\n        html += \'    <option value=\"/\">/</option>\';\n      ]]></add>\n    </operation>\n  </file>\n  \n  \n  <file path=\"system/library/cart/cart.php\">    \n    <operation>\n      <search><![CDATA[if ($product_discount_query->num_rows) {]]></search>\n      <add position=\"after\"><![CDATA[\n        if ((float)$product_discount_query->row[\'price\'] && (float)$product_query->row[\'price\'] && $this->config->get(\'config_autocalc_option_discount\')) {\n            $autocalc_discount_coefficient = (float)$product_discount_query->row[\'price\'] / (float)$product_query->row[\'price\'];\n            $option_price *= $autocalc_discount_coefficient;\n        }\n      ]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[if ($product_special_query->num_rows) {]]></search>\n      <add position=\"after\"><![CDATA[\n        if ((float)$product_special_query->row[\'price\'] && (float)$product_query->row[\'price\'] &&  $this->config->get(\'config_autocalc_option_special\')) {\n            $autocalc_special_coefficient = (float)$product_special_query->row[\'price\'] / (float)$product_query->row[\'price\'];\n            $option_price *= $autocalc_special_coefficient;\n        }\n      ]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[if ($product_query->num_rows && ($cart[\'quantity\'] > 0)) {]]></search>\n      <add position=\"after\"><![CDATA[\n        $autocalc_override_price = false;\n        $autocalc_discount_coefficient = false;\n        $autocalc_special_coefficient = false;\n        $autocalc_option_prices = array();\n      ]]></add>\n    </operation>    \n    <operation>\n      <search><![CDATA[if ($option_value_query->row[\'price_prefix\'] == \'+\') {]]></search>\n      <add position=\"replace\"><![CDATA[\n        if (true) {\n            if ($option_value_query->row[\'price_prefix\'] == \'=\') {\n                $autocalc_override_price += $option_value_query->row[\'price\'];\n            } else {\n                $autocalc_option_prices[] = array(\'prefix\' => $option_value_query->row[\'price_prefix\'], \'value\' => $option_value_query->row[\'price\']);\n            }\n        } else \n        if ($option_value_query->row[\'price_prefix\'] == \'+\') {]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[$recurring_query = $this->db->query(\"SELECT]]></search>\n      <add position=\"before\"><![CDATA[\n        $option_price = 0;\n        if ($autocalc_override_price !== false) {\n            $price = 0;\n            $option_price = $autocalc_override_price;\n        }\n        foreach ($autocalc_option_prices as $op) {\n            switch ($op[\'prefix\']) {\n                case \'+\':\n                    $option_price += $op[\'value\'];\n                    break;\n                case \'-\':\n                    $option_price -= $op[\'value\'];\n                    break;\n                case \'*\':\n                    $price *= $op[\'value\'];\n                    $option_price *= $op[\'value\'];\n                    break;\n                case \'/\':\n                    $price /= $op[\'value\'];\n                    $option_price /= $op[\'value\'];\n                    break;\n                case \'%\':\n                    $price *= 1.0 + $op[\'value\'] / 100.0;\n                    $option_price *= 1.0 + $op[\'value\'] / 100.0;\n                    break;\n            }\n        }\n        if ($autocalc_discount_coefficient !== false) {\n            $option_price *= $autocalc_discount_coefficient;\n        }\n        if ($autocalc_special_coefficient !== false) {\n            $option_price *= $autocalc_special_coefficient;\n        }\n      ]]></add>\n    </operation>\n  </file>\n\n\n  <file path=\"catalog/model/catalog/product.php\">\n    <operation>\n      <search><![CDATA[=> $product_option_value[\'weight\'],]]></search>\n      <add position=\"before\"><![CDATA[\n        \'points\'        => $product_option_value[\'points\'],\n        \'points_prefix\' => $product_option_value[\'points_prefix\'],\n      ]]></add>\n    </operation>\n  </file>\n  \n  <file path=\"catalog/controller/product/product.php\">\n    <operation>\n      <search><![CDATA[$data[\'options\'] = array();]]></search>\n      <add position=\"before\"><![CDATA[\n        if ($data[\'price\']) {\n            $data[\'price\'] = \'<span data-value=\\\'\' . $this->tax->calculate($product_info[\'price\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\')) . \'\\\' class=\\\'autocalc-product-price\\\'>\' . $data[\'price\'] . \'</span>\';\n        }\n        if ($data[\'special\']) {\n            $data[\'special\'] = \'<span data-value=\\\'\' . $this->tax->calculate($product_info[\'special\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\')) . \'\\\' class=\\\'autocalc-product-special\\\'>\' . $data[\'special\'] . \'</span>\';\n        }\n        if ($data[\'points\']) {\n            $data[\'points\'] = \'<span data-value=\\\'\' . $product_info[\'points\'] . \'\\\' class=\\\'autocalc-product-points\\\'>\' . $data[\'points\'] . \'</span>\';\n        }\n        if ($data[\'tax\']) {\n            $data[\'tax\'] = \'<span data-value=\\\'\' . (float)($product_info[\'special\'] ? $product_info[\'special\'] : $product_info[\'price\']) . \'\\\' class=\\\'autocalc-product-tax\\\'>\' . $data[\'tax\'] . \'</span>\';\n        }\n        \n        $data[\'apo_price_value\'] = $product_info[\'price\'];\n        $data[\'apo_special_value\'] = $product_info[\'special\'];\n        $data[\'apo_tax_value\'] = (float)$product_info[\'special\'] ? $product_info[\'special\'] : $product_info[\'price\'];\n        $data[\'apo_points_value\'] = $product_info[\'points\'];\n        \n        $currency_code = $this->session->data[\'currency\'];\n        $data[\'autocalc_currency\'] = array(\n            \'value\'           => (float)$this->currency->getValue($currency_code),\n            \'symbol_left\'     => str_replace(\"\'\", \"\\\'\", $this->currency->getSymbolLeft($currency_code)),\n            \'symbol_right\'    => str_replace(\"\'\", \"\\\'\", $this->currency->getSymbolRight($currency_code)),\n            \'decimals\'        => (int)$this->currency->getDecimalPlace($currency_code),\n            \'decimal_point\'   => $this->language->get(\'decimal_point\'),\n            \'thousand_point\'  => $this->language->get(\'thousand_point\'),\n        );\n        \n\n        $currency2_code = $this->config->get(\'config_currency2\');\n        if ($this->currency->has($currency2_code) && $currency2_code != $currency_code) {\n            $currency_code = $currency2_code;\n            $data[\'autocalc_currency2\'] = array(\n                \'value\'           => (float)$this->currency->getValue($currency_code),\n                \'symbol_left\'     => str_replace(\"\'\", \"\\\'\", $this->currency->getSymbolLeft($currency_code)),\n                \'symbol_right\'    => str_replace(\"\'\", \"\\\'\", $this->currency->getSymbolRight($currency_code)),\n                \'decimals\'        => (int)$this->currency->getDecimalPlace($currency_code),\n                \'decimal_point\'   => $this->language->get(\'decimal_point\'),\n                \'thousand_point\'  => $this->language->get(\'thousand_point\'),\n            );\n        }\n        \n        $data[\'discounts_raw\'] = $discounts;\n\n        $data[\'tax_class_id\'] = $product_info[\'tax_class_id\'];\n        $data[\'tax_rates\'] = $this->tax->getRates(0, $product_info[\'tax_class_id\']);\n      \n        $data[\'autocalc_option_special\'] = $this->config->get(\'config_autocalc_option_special\');\n        $data[\'autocalc_option_discount\'] = $this->config->get(\'config_autocalc_option_discount\');\n        $data[\'autocalc_not_mul_qty\'] = $this->config->get(\'config_autocalc_not_mul_qty\');\n        $data[\'autocalc_select_first\'] = $this->config->get(\'config_autocalc_select_first\');\n      ]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[$product_option_value_data[] = array(]]></search>\n      <add position=\"before\"><![CDATA[\n        if ($price) {\n            switch ($option_value[\'price_prefix\']) {\n                case \'%\':\n                    $price = ($option_value[\'price\'] > 0 ? \'+\' : \'\') . (float)$option_value[\'price\'] . \'%\';\n                    break;\n                case \'*\':\n                    $price = \'*\' . (float)$option_value[\'price\'];\n                    break;\n                case \'/\':\n                    $price = \'/\' . (float)$option_value[\'price\'];\n                    break;\n            }\n        }\n        if ($this->config->get(\'config_autocalc_hide_option_price\')) $price = false;\n      ]]></add>\n    </operation>\n    <operation>\n      <search><![CDATA[$product_option_value_data[] = array(]]></search>\n      <add position=\"after\"><![CDATA[\n        \'apo_price_value\'               => $option_value[\'price\'],\n        \'apo_points_value\'              => isset($option_value[\'points_prefix\']) && $option_value[\'points\'] ? intval($option_value[\'points_prefix\'].$option_value[\'points\']) : 0,\n      ]]></add>\n    </operation>\n  </file>\n    \n  <file path=\"catalog/controller/common/footer.php\">\n    <operation>\n      <search><![CDATA[public function index() {]]></search>\n      <add position=\"after\"><![CDATA[\n        $currency_code = $this->session->data[\'currency\'];\n        $data[\'autocalc_currency\'] = array(\n            \'value\'           => (float)$this->currency->getValue($currency_code),\n            \'symbol_left\'     => str_replace(\"\'\", \"\\\'\", $this->currency->getSymbolLeft($currency_code)),\n            \'symbol_right\'    => str_replace(\"\'\", \"\\\'\", $this->currency->getSymbolRight($currency_code)),\n            \'decimals\'        => (int)$this->currency->getDecimalPlace($currency_code),\n            \'decimal_point\'   => $this->language->get(\'decimal_point\'),\n            \'thousand_point\'  => $this->language->get(\'thousand_point\'),\n        );\n        \n        $data[\'autocalc_option_special\'] = $this->config->get(\'config_autocalc_option_special\');\n        $data[\'autocalc_option_discount\'] = $this->config->get(\'config_autocalc_option_discount\');\n        $data[\'autocalc_not_mul_qty\'] = $this->config->get(\'config_autocalc_not_mul_qty\');\n        $data[\'autocalc_select_first\'] = $this->config->get(\'config_autocalc_select_first\');\n      ]]></add>\n    </operation>\n  </file>\n  <file path=\"catalog/model/extension/module/uni_new_data.php\">\n    <operation error=\"skip\">\n      <search><![CDATA[$product_option_value_data[] = array(]]></search>\n      <add position=\"before\"><![CDATA[\n        if (!empty($option_price)) {\n            switch ($option_value[\'price_prefix\']) {\n                case \'%\':\n                    $option_price = ($option_value[\'price\'] > 0 ? \'+\' : \'\') . (float)$option_value[\'price\'] . \'%\';\n                    break;\n                case \'*\':\n                    $option_price = \'*\' . (float)$option_value[\'price\'];\n                    break;\n                case \'/\':\n                    $option_price = \'/\' . (float)$option_value[\'price\'];\n                    break;\n            }\n        }\n      ]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[if(isset($uniset[\'liveprice\'])) {]]></search>\n      <add position=\"replace\"><![CDATA[if(true) {]]></add>\n    </operation>    \n  </file>\n  \n  <!-- NS -->  \n  <file path=\"catalog/controller/{product/*,extension/module/*}.php\">\n    <operation error=\"skip\">\n      <search><![CDATA[$option_price = $this->currency->format]]></search>\n      <add position=\"after\"><![CDATA[\n        if ($this->config->get(\'config_autocalc_hide_option_price\')) $option_price = false;\n      ]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[$price = $this->currency->format($this->tax->calculate($option_value[\'price\']]]></search>\n      <add position=\"after\"><![CDATA[\n        if ($this->config->get(\'config_autocalc_hide_option_price\')) $price = false;\n      ]]></add>\n    </operation>\n  </file>\n  \n  \n  <file path=\"catalog/view/theme/*/template/product/product*.twig\">\n    <operation error=\"skip\"> <!-- royal -->\n      <search><![CDATA[{{ option_value[\'price_prefix\'] }}{{ option_value[\'price\'] }}]]></search>\n      <add position=\"replace\"><![CDATA[{{ option_value.price_prefix }}{{ option_value.price }}]]></add>\n    </operation>\n  </file>  \n\n  <file path=\"catalog/view/theme/unishop2/template/{product/*,extension/module/*}.twig\">\n    <operation error=\"skip\">\n      <search><![CDATA[{{option_value.price_prefix}}{{option_value.price}}]]></search>\n      <add position=\"replace\"><![CDATA[{% if option_value.price_prefix == \'+\' or option_value.price_prefix == \'-\' %}{{ option_value.price_prefix }}{% endif %}{{ option_value.price }}]]></add>\n    </operation>\n  </file>  \n  <file path=\"catalog/view/theme/newstore/template/{product/*,extension/module/*}.twig\">\n    <operation error=\"skip\">\n      <search><![CDATA[{{ option_value.price_prefix }}{{ option_value.price }}]]></search>\n      <add position=\"replace\"><![CDATA[{% if option_value.price_prefix == \'+\' or option_value.price_prefix == \'-\' %}{{ option_value.price_prefix }}{% endif %}{{ option_value.price }}]]></add>\n    </operation>    \n    <operation error=\"skip\">\n      <search><![CDATA[onchange=\"recalc]]></search>\n      <add position=\"replace\"><![CDATA[data-old-onchange=\"recalc]]></add>\n    </operation>    \n    <operation error=\"skip\">\n      <search><![CDATA[data-option-prefix=\"{{ option_value.price_prefix }}\" data-option-price=\"{{ option_value.price_value }}\"]]></search>\n      <add position=\"replace\"><![CDATA[data-prefix=\"{{ option_value.price_prefix }}\" data-price=\"{{ option_value.price_value }}\" data-option-prefix=\"{{ option_value.price_prefix }}\" data-option-price=\"{{ option_value.price_value }}\"]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[<p class=\"price\">]]></search>\n      <add position=\"replace\"><![CDATA[<p class=\"price\" data-price=\"{{ product.price_no_format }}\" data-special=\"{{ product.special_no_format }}\">]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[<div class=\"price\">]]></search>\n      <add position=\"replace\"><![CDATA[<div class=\"price\" data-price=\"{{ product.price_no_format }}\" data-special=\"{{ product.special_no_format }}\">]]></add>\n    </operation>    \n    <operation error=\"skip\">\n      <search><![CDATA[onkeyup=\"validate_quantity(]]></search>\n      <add position=\"replace\"><![CDATA[data-old-onkeyup=\"validate_quantity(]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[recalc_quantity(]]></search>\n      <add position=\"replace\"><![CDATA[// recalc_quantity(]]></add>\n    </operation>\n  </file>\n  \n  <file path=\"catalog/view/theme/{unishop2,newstore}/template/common/footer.twig\">    \n    <operation error=\"skip\">\n      <search><![CDATA[<footer>]]></search>\n      <add position=\"before\"><![CDATA[\n<!--autocalc_price_option_v4-->\n<script type=\"text/javascript\"><!--\nfunction price_format_ucat(price) { \nc={{ autocalc_currency.decimals }};d=\'{{ autocalc_currency.decimal_point }}\';t=\'{{ autocalc_currency.thousand_point }}\';sl=\'{{ autocalc_currency.symbol_left }}\';sr=\'{{ autocalc_currency.symbol_right }}\';n=price;i=parseInt(n=Math.abs(n).toFixed(c))+\'\'; j=((j=i.length)>3)?j%3:0;price_text=sl+(j?i.substr(0,j)+t:\'\')+i.substr(j).replace(/(\\d{3})(?=\\d)/g,\"$1\"+t)+(c?d+Math.abs(n-i).toFixed(c).slice(2):\'\')+sr;{% if autocalc_currency2 %}c={{ autocalc_currency2.decimals }};d=\'{{ autocalc_currency2.decimal_point }}\';t=\'{{ autocalc_currency2.thousand_point }}\';sl=\'{{ autocalc_currency2.symbol_left }}\';sr=\'{{ autocalc_currency2.symbol_right }}\';n=price*{{ autocalc_currency2.value }};i=parseInt(n=Math.abs(n).toFixed(c))+\'\'; j=((j=i.length)>3)?j%3:0; price_text+=\'  <span class=\"currency2\">(\' + sl+(j?i.substr(0,j)+t:\'\')+i.substr(j).replace(/(\\d{3})(?=\\d)/g,\"$1\"+t)+(c?d+Math.abs(n-i).toFixed(c).slice(2):\'\')+sr + \')</span>\';{% endif %}return price_text;\n}\nfunction aa_ucat($s,p,dp,ff){$s.each(function(){var $t=$(this);$({value:$t.data(\'value\')||dp}).animate({value:p},{easing:\'swing\',duration:500,step:function(value){$t.html(ff(value));$t.data(\'value\',value);}});});}\nfunction aa_pds(d,p,q){if(!d)return(p);d=JSON.parse(d.replace(/\'/g,\'\"\'));d.forEach(function(di){if(q>=Number(di.quantity))p=Number(di.price)||p;});return p;}\nfunction recalculateprice_cat(o) {\n  dc=1;$o=$(o);$c=$o.closest(\'#quick_order\');if($c.length==0)$c=$o.closest(\'.product-thumb\');q=Number($c.find(\'input[name=\"quantity\"]\').first().val())||1;$pd=$c.find(\'p.price,div.price\').first();pp=Number($pd.data(\'price\')||0);ps=Number($pd.data(\'special\')||0);if(isNaN(pp))return;if(ps==0){ps=false;dp=aa_pds($pd.data(\'discount\'),pp,q);{% if autocalc_option_discount %}if(pp)dc=dp/pp;{% else %}pp=dp;{% endif %}}var spp=pp;var sps=ps;var op=0;var sc=1.0;if(ps!==false)sc=pp/ps;$c.find(\'input:checked,option:selected\').each(function(){if($(this).data(\'prefix\')==\'=\'){op+=Number($(this).data(\'price\'));pp=0;if(ps!==false)ps=0;}});$c.find(\'input:checked,option:selected\').each(function(){if($(this).data(\'prefix\')==\'+\'){op+=Number($(this).data(\'price\'));}if($(this).data(\'prefix\')==\'-\'){op-=Number($(this).data(\'price\'));}if($(this).data(\'prefix\')==\'%\'){pcnt=1.0+(Number($(this).data(\'price\'))/100.0);op*=pcnt;pp*=pcnt;if(ps!==false)ps*=pcnt;}if($(this).data(\'prefix\')==\'*\'){op*=Number($(this).data(\'price\'));pp*=Number($(this).data(\'price\'));if(ps!==false)ps*=Number($(this).data(\'price\'));}if($(this).data(\'prefix\')==\'/\'){op/=Number($(this).data(\'price\'));pp/=Number($(this).data(\'price\'));if(ps!==false)ps/=Number($(this).data(\'price\'));}});pp+=op;if(ps!==false){ps+=op;{% if autocalc_option_special %}ps=pp/sc;{% else %}pp=ps*sc;{% endif %}}else{pp*=dc;}pp*=q;if(ps!==false){ps*=q;aa_ucat($c.find(\'.price-old\'),pp,spp,price_format_ucat);aa_ucat($c.find(\'.price-new\'),ps,sps,price_format_ucat);}else{aa_ucat($pd,pp,spp,price_format_ucat);}\n}\nfunction autocalc_init() {\n  $(\'.product-thumb .price-tax\').remove();\n  $(\'#quick_order input[type=\"checkbox\"],#quick_order input[type=\"radio\"],#quick_order select,.product-thumb input[type=\"checkbox\"],.product-thumb input[type=\"radio\"],.product-thumb select\').each(function(){if($(this).data(\'autocalc\'))return;$(this).data(\'autocalc\',1).on(\'change\',function(){recalculateprice_cat(this);});});\n  $(\'#quick_order input[name=\"quantity\"],.product-thumb input[name=\"quantity\"]\').each(function(){if($(this).data(\'autocalc\'))return;$(this).data(\'autocalc\',1).on(\'input change\',function(){recalculateprice_cat(this);});}); \n  $(\'.product-thumb .option\').wrapInner(function(){return $(this).find(\'form\').length==0?\'<form></form>\':\'\';});\n  {% if autocalc_select_first %}\n  $(\'#quick_order select[name^=\"option\"] option[value=\"\"], .product-thumb select[name^=\"option\"] option[value=\"\"]\').remove();\n  last_name=\'\';$(\'#quick_order input[type=\"radio\"][name^=\"option\"], .product-thumb input[type=\"radio\"][name^=\"option\"]\').each(function(){if($(this).attr(\'name\')!=last_name)$(this).prop(\'checked\',true).trigger(\'change\');last_name=$(this).attr(\'name\');});\n  $(\'#quick_order input[type=\"checkbox\"]:checked,#quick_order input[type=\"radio\"]:checked,#quick_order select,.product-thumb input[type=\"checkbox\"]:checked,.product-thumb input[type=\"radio\"]:checked,.product-thumb select\').each(function(){$(this).trigger(\'change\');});\n  {% endif %}\n}\n$(document).ready(function() {\n  autocalc_init();\n});\n//--></script>\n      ]]></add>\n    </operation>\n  </file>\n  <file path=\"catalog/view/theme/unishop2/template/extension/module/uni_quick_order.twig\">    \n    <operation error=\"skip\">\n      <search><![CDATA[<div id=\"modal-quick-order\" class=\"modal fade\">]]></search>\n      <add position=\"after\"><![CDATA[\n<script type=\"text/javascript\"><!--\n$(document).ready(function() {\n  if (typeof autocalc_init == \'function\') autocalc_init();\n});\n//--></script>\n      ]]></add>\n    </operation>\n  </file>\n  \n  <file path=\"catalog/view/theme/*/template/product/product*.twig\">\n    <operation error=\"skip\">\n      <search><![CDATA[{{ option_value.price_prefix }}{{ option_value.price }}]]></search>\n      <add position=\"replace\"><![CDATA[{% if option_value.price_prefix == \'+\' or option_value.price_prefix == \'-\' %}{{ option_value.price_prefix }}{% endif %}{{ option_value.price }}]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[value=\"{{ option_value.product_option_value_id }}\"]]></search>\n      <add position=\"replace\"><![CDATA[value=\"{{ option_value.product_option_value_id }}\" data-points=\"{{ option_value.apo_points_value }}\" data-prefix=\"{{ option_value.price_prefix }}\" data-price=\"{{ option_value.apo_price_value }}\"]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[{{option_value.price_prefix}}{{option_value.price}}]]></search>\n      <add position=\"replace\"><![CDATA[{% if option_value.price_prefix == \'+\' or option_value.price_prefix == \'-\' %}{{ option_value.price_prefix }}{% endif %}{{ option_value.price }}]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[value=\"{{option_value.product_option_value_id}}\"]]></search>\n      <add position=\"replace\"><![CDATA[value=\"{{ option_value.product_option_value_id }}\" data-points=\"{{ option_value.apo_points_value }}\" data-prefix=\"{{ option_value.price_prefix }}\" data-price=\"{{ option_value.apo_price_value }}\"]]></add>\n    </operation>    \n    <operation error=\"skip\">\n      <search><![CDATA[value=\"{{ option_value[\'product_option_value_id\'] }}\"]]></search>\n      <add position=\"replace\"><![CDATA[value=\"{{ option_value[\'product_option_value_id\'] }}\" data-points=\"{{ option_value.apo_points_value }}\" data-prefix=\"{{ option_value.price_prefix }}\" data-price=\"{{ option_value.apo_price_value }}\"]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[{{footer}}]]></search>\n      <add position=\"replace\"><![CDATA[{{ footer }}]]></add>\n    </operation>\n    <operation error=\"skip\">\n      <search><![CDATA[{{ footer }}]]></search>\n      <add position=\"before\"><![CDATA[\n<!--autocalc_price_option_v4-->\n<script type=\"text/javascript\"><!--\nfunction price_format(price) { \nc={{ autocalc_currency.decimals }};d=\'{{ autocalc_currency.decimal_point }}\';t=\'{{ autocalc_currency.thousand_point }}\';sl=\'{{ autocalc_currency.symbol_left }}\';sr=\'{{ autocalc_currency.symbol_right }}\';n=price*{{ autocalc_currency.value }};i=parseInt(n=Math.abs(n).toFixed(c))+\'\'; j=((j=i.length)>3)?j%3:0;price_text=sl+(j?i.substr(0,j)+t:\'\')+i.substr(j).replace(/(\\d{3})(?=\\d)/g,\"$1\"+t)+(c?d+Math.abs(n-i).toFixed(c).slice(2):\'\')+sr;{% if autocalc_currency2 %}c={{ autocalc_currency2.decimals }};d=\'{{ autocalc_currency2.decimal_point }}\';t=\'{{ autocalc_currency2.thousand_point }}\';sl=\'{{ autocalc_currency2.symbol_left }}\';sr=\'{{ autocalc_currency2.symbol_right }}\';n=price*{{ autocalc_currency2.value }};i=parseInt(n=Math.abs(n).toFixed(c))+\'\'; j=((j=i.length)>3)?j%3:0; price_text+=\'  <span class=\"currency2\">(\' + sl+(j?i.substr(0,j)+t:\'\')+i.substr(j).replace(/(\\d{3})(?=\\d)/g,\"$1\"+t)+(c?d+Math.abs(n-i).toFixed(c).slice(2):\'\')+sr + \')</span>\';{% endif %}return price_text;\n}\nfunction points_format(v) {\nreturn v.toFixed(0);\n}\nfunction process_discounts(price, quantity) {\n{% for discounts in discounts_raw %}if(quantity>={{ discounts.quantity }}){price={{ discounts.price }};}{% endfor %}return price;\n}\nfunction calculate_tax(price) {\nvar p=price;{% for tax_rate in tax_rates %}{% if tax_rate.type == \'F\' %}p+={{ tax_rate.rate }};{% endif %}{% if tax_rate.type == \'P\' %}p+=price*{{ tax_rate.rate / 100.0 }};{% endif %}{% endfor %}return p;\n}\nfunction autocalc_aap(s,p,ff){$(s).each(function(){var $t=$(this);$({value:$t.data(\'value\')||0}).animate({value:p},{easing:\'swing\',duration:500,step:function(value){$t.html(ff(value));$t.data(\'value\',value);}});});}\nfunction recalculateprice() {\n    var main_price = {{ apo_price_value + 0.0 }};\n    var special = {{ apo_special_value + 0.0 }};\n    var input_quantity = Number($(\'#product input[name=\"quantity\"]\').val()) || 1;\n    var discount_coefficient = 1;\n    var option_price = 0;\n    var discount_quantity = 0;\n    \n    $(\'#product .owq-option input[type=\"checkbox\"]\').each(function() {\n        $qty = $(this).closest(\'tr\').find(\'.owq-input\');\n        if ($(this).data(\'split\')==\'/\') discount_quantity += Number($qty.val()) || 0;\n    });    \n    if (discount_quantity == 0) discount_quantity = input_quantity;\n    \n    {% if special %}\n    special_coefficient = {{ apo_price_value / apo_special_value }};\n    {% else %}\n    {% if autocalc_option_discount %}\n    if (main_price) discount_coefficient = process_discounts(main_price, discount_quantity) / main_price;\n    {% else %}\n    main_price = process_discounts(main_price, discount_quantity);\n    {% endif %}\n    {% endif %}\n    \n    {% if points %}\n    var points = {{ apo_points_value }};\n    $(\'#product input:checked,#product option:selected\').each(function() {\n        if ($(this).data(\'points\')) points += Number($(this).data(\'points\'));\n    });\n    autocalc_aap(\'.autocalc-product-points\', points, points_format);\n    {% endif %}\n    \n    $(\'#product input:checked,#product option:selected\').each(function() {\n    if ($(this).data(\'prefix\') == \'=\') {\n        option_price += Number($(this).data(\'price\'));\n        main_price = 0;\n        special = 0;\n    }\n    });\n    \n    $(\'#product input:checked,#product option:selected\').each(function() {\n    if ($(this).data(\'prefix\') == \'+\') {\n        option_price += Number($(this).data(\'price\'));\n    }\n    if ($(this).data(\'prefix\') == \'-\') {\n        option_price -= Number($(this).data(\'price\'));\n    }\n    if ($(this).data(\'prefix\') == \'%\') {\n        pcnt = 1.0 + (Number($(this).data(\'price\')) / 100.0);\n        option_price *= pcnt;\n        main_price *= pcnt;\n        special *= pcnt;\n    }\n    if ($(this).data(\'prefix\') == \'*\') {\n        option_price *= Number($(this).data(\'price\'));\n        main_price *= Number($(this).data(\'price\'));\n        special *= Number($(this).data(\'price\'));\n    }\n    if ($(this).data(\'prefix\') == \'/\') {\n        option_price /= Number($(this).data(\'price\'));\n        main_price /= Number($(this).data(\'price\'));\n        special /= Number($(this).data(\'price\'));\n    }\n    });\n    \n    special += option_price;\n    main_price += option_price;\n\n    {% if special %}\n    {% if autocalc_option_special %}\n    special = main_price / special_coefficient;\n    {% else %}\n    main_price = special * special_coefficient;\n    {% endif %}\n    tax = special;\n    {% else %}\n    {% if autocalc_option_discount %}\n    main_price *= discount_coefficient;\n    {% endif %}\n    tax = main_price;\n    {% endif %}\n    \n    {% if tax %}\n    main_price = calculate_tax(main_price);\n    {% if special %}\n    special = calculate_tax(special);\n    {% endif %}\n    {% endif %}\n    \n    {% if not autocalc_not_mul_qty %}\n    if (input_quantity > 0) {\n        main_price *= input_quantity;\n        special *= input_quantity;\n        {% if tax %}tax *= input_quantity;{% endif %}\n    }\n    {% endif %}\n    \n    autocalc_aap(\'.autocalc-product-price\', main_price, price_format);\n    {% if special %}autocalc_aap(\'.autocalc-product-special\', special, price_format);{% endif %}\n    {% if tax %}autocalc_aap(\'.autocalc-product-tax\', tax, price_format);{% endif %}\n}\n\n$(document).ready(function() {\n    $(\'#product input[type=\"checkbox\"],#product input[type=\"radio\"],#product select\').each(function(){if($(this).data(\'autocalc\'))return;$(this).data(\'autocalc\',1).on(\'change\',function(){recalculateprice();});});    \n    $(\'#product input[name=\"quantity\"]\').each(function(){if($(this).data(\'autocalc\'))return;var $q=$(this);$q.data(\'autocalc\',1).data(\'val\',$q.val());(function(){if($q.val()!=$q.data(\'val\')){$q.data(\'val\',$q.val());recalculateprice();}setTimeout(arguments.callee,250);})();});\n    \n    {% if autocalc_select_first %}\n    $(\'#product select[name^=\"option\"] option[value=\"\"]\').remove();\n    last_name=\'\';$(\'#product input[type=\"radio\"][name^=\"option\"]\').each(function(){if($(this).attr(\'name\')!=last_name)$(this).prop(\'checked\',true);last_name=$(this).attr(\'name\');});\n    {% endif %}\n    \n    recalculateprice();\n});\n//--></script>\n      ]]></add>\n    </operation>\n  </file>\n  <file path=\"catalog/language/*/common/footer.php\">\n    <operation>\n      <search ><![CDATA[http://opencart.pro/]]></search>\n      <add position=\"replace\"><![CDATA[https://dev-opencart.com/]]></add>\n    </operation>\n  </file>\n  <file path=\"catalog/language/*/common/footer.php\">\n    <operation>\n      <search ><![CDATA[http://myopencart.com/]]></search>\n      <add position=\"replace\"><![CDATA[https://dev-opencart.com/]]></add>\n    </operation>\n  </file>\n  <file path=\"catalog/language/*/common/footer.php\">\n    <operation>\n      <search ><![CDATA[http://www.opencart.com]]></search>\n      <add position=\"replace\"><![CDATA[https://dev-opencart.com/]]></add>\n    </operation>\n  </file>\n  <file path=\"catalog/language/*/common/footer.php\">\n    <operation>\n      <search ><![CDATA[http://lowenet.biz/]]></search>\n      <add position=\"replace\"><![CDATA[https://dev-opencart.com/]]></add>\n    </operation>\n  </file>\n</modification>', 1, '2022-11-06 08:35:47', '0000-00-00 00:00:00'),
(29, 34, 'Обновление модификаций на странице установщика', 'como_admin_installer_refreshbutton', 'http://ocmod.net', '3.0', 'http://ocmod.net', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <name>Обновление модификаций на странице установщика</name>\r\n    <code>como_admin_installer_refreshbutton</code>\r\n    <version>3.0</version>\r\n    <author>http://ocmod.net</author>\r\n    <link>http://ocmod.net</link>\r\n    \r\n    <file path=\"admin/view/template/marketplace/installer.twig\">\r\n        <operation>\r\n            <search><![CDATA[{{ heading_title }}]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                <div class=\"pull-right\"><a href=\"{{ refresh }}\" data-toggle=\"tooltip\" title=\"{{ button_refresh }}\" class=\"btn btn-info\"><i class=\"fa fa-refresh\"></i></a>\r\n                </div>\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[<div class=\"panel panel-default\">]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                {% if success is defined and success %}\r\n                <div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> {{ success }}\r\n                  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button>\r\n                </div>\r\n                {% endif %}\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"admin/controller/marketplace/installer.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->response->setOutput($this->load->view(\'marketplace/installer\']]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                $data[\'button_refresh\'] = $this->language->get(\'button_refresh\');\r\n                $data[\'refresh\'] = $this->url->link(\'marketplace/modification/refresh\', \'user_token=\' . $this->session->data[\'user_token\'] . \'&redir_inst=1\', true);\r\n            ]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[$this->response->setOutput($this->load->view(\'marketplace/installer\']]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                if (isset($this->session->data[\'success\'])) {\r\n                    $data[\'success\'] = $this->session->data[\'success\'];\r\n\r\n                    unset($this->session->data[\'success\']);\r\n                } else {\r\n                    $data[\'success\'] = \'\';\r\n                }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"admin/controller/marketplace/modification.php\">\r\n        <operation>\r\n            <search><![CDATA[$this->response->redirect($this->url->link(]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n                if (isset($this->request->get[\'redir_inst\']) && $this->request->get[\'redir_inst\']) {\r\n                    $this->response->redirect($this->url->link(\'marketplace/installer\', \'user_token=\' . $this->session->data[\'user_token\'] . $url, true));\r\n                }\r\n            ]]></add>\r\n        </operation>\r\n    </file>\r\n</modification>\r\n', 1, '2022-11-06 08:36:08', '0000-00-00 00:00:00');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(30, 36, 'Quick Save 3x', 'quicksave-adw', 'AlexDW', '1.03', 'https://liveopencart.ru/alexdw', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Quick Save 3x</name>\r\n	<version>1.03</version>\r\n	<author>AlexDW</author>\r\n	<link>https://liveopencart.ru/alexdw</link>\r\n	<code>quicksave-adw</code>\r\n	<file path=\"admin/view/template/catalog/product_form.twig\">\r\n		<operation>\r\n			<search><![CDATA[\r\n<button type=\"submit\"\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<!-- quicksave -->\r\n	  {% if pidqs %}\r\n	  <button id=\"qsave\" style=\"margin: 0 10px;\" data-toggle=\"tooltip\" title=\"Быстрое сохранение\" class=\"btn btn-warning\"><i class=\"fa fa-save\"></i></button>\r\n	  {% endif %}\r\n<!-- quicksave end -->\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n//quicksave\r\n$(\"#qsave\").on(\"click\",function(){for(var e=$(\".note-editor\").length,r=0;e>r;r++){var t=$(\".note-editor\").eq(r).parent().children(\"textarea\").attr(\"id\");if(\"function\"==typeof $().code)var a=$(\"#\"+t).code();else a=$(\"#\"+t).summernote(\"code\");$(\"#\"+t).html(a)}$(\"textarea\").each(function(){var t,a=$(this).attr(\"id\");\"undefined\"!=typeof CKEDITOR&&void 0!==CKEDITOR.instances[a]&&(t=CKEDITOR.instances[a].getData(),$(\"#\"+a).html(t))});$.ajax({type:\"post\",data:$(\"form\").serialize(),url:\"index.php?route=catalog/product/qsave&user_token={{ user_token }}&product_id={{ pidqs }}\",dataType:\"json\",beforeSend:function(){$(\"#qsave\").prop(\"disabled\",!0)},complete:function(){$(\"#qsave\").prop(\"disabled\",!1)},success:function(e){if($(\".alert\").remove(),$(\".text-danger\").remove(),$(\"div\").removeClass(\"has-error\"),e.error){if(html=\'<div class=\"alert alert-danger\">\',html+=\" \"+e.error.warning+\' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></br>\',e.error.name){var t=\"\";for(r in e.error.name){var a=$(\"#input-name\"+r);$(a).after(\'<div class=\"text-danger\">\'+e.error.name[r]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.name[r]}html+=t}if(e.error.meta_title){t=\"\";for(r in e.error.meta_title){a=$(\"#input-meta-title\"+r);$(a).after(\'<div class=\"text-danger\">\'+e.error.meta_title[r]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.meta_title[r]}html+=t}if(e.error.model&&($(\"#input-model\").after(\'<div class=\"text-danger\">\'+e.error.model+\"</div>\"),$(\"#input-model\").parent().addClass(\"has-error\"),html+=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.model),e.error.keyword){t=\"\";for(s in e.error.keyword)for(r in e.error.keyword[s]){a=$(\'[name=\"product_seo_url[\'+s+\"][\"+r+\']\"]\');$(a).parent().after(\'<div class=\"text-danger\">\'+e.error.keyword[s][r]+\"</div>\"),$(a).parent(\".input-group\").addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.keyword[s][r],html+=t}}html+=\" </div>\",$(\"#content > .container-fluid\").prepend(html)}e.success&&$(\"#content > .container-fluid\").prepend(\'<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> \'+e.success+\'  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\')},error:function(e,r,t){alert(t+\"\\r\\n\"+e.statusText+\"\\r\\n\"+e.responseText)}})});\r\n//quicksave end\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\npublic function index() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	public function qsave() {\r\n		$this->language->load(\'catalog/product\');\r\n		$this->load->model(\'catalog/product\');\r\n		$json = array();\r\n		if ($this->validateForm()) {\r\n			$this->model_catalog_product->editProduct($this->request->get[\'product_id\'], $this->request->post);\r\n			$json[\'success\'] = ($this->language->get(\'text_success\')).\' --- \'.(date(\"Y-m-d - H:i:s\"));\r\n		} else {\r\n			$json[\'error\'] = $this->error;\r\n		}\r\n		$this->response->addHeader(\'Content-Type: application/json; charset=utf-8\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n$data[\'cancel\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	$data[\'pidqs\'] = isset($this->request->get[\'product_id\']) ? $this->request->get[\'product_id\'] : \'\';\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/catalog/category_form.twig\">\r\n		<operation>\r\n			<search><![CDATA[\r\n<button type=\"submit\"\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<!-- quicksave -->\r\n	  {% if pidqs %}\r\n	  <button id=\"qsave\" style=\"margin: 0 10px;\" data-toggle=\"tooltip\" title=\"Быстрое сохранение\" class=\"btn btn-warning\"><i class=\"fa fa-save\"></i></button>\r\n	  {% endif %}\r\n<!-- quicksave end -->\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n//quicksave\r\n$(\"#qsave\").on(\"click\",function(){for(var e=$(\".note-editor\").length,r=0;e>r;r++){var t=$(\".note-editor\").eq(r).parent().children(\"textarea\").attr(\"id\");if(\"function\"==typeof $().code)var a=$(\"#\"+t).code();else a=$(\"#\"+t).summernote(\"code\");$(\"#\"+t).html(a)}$(\"textarea\").each(function(){var t,a=$(this).attr(\"id\");\"undefined\"!=typeof CKEDITOR&&void 0!==CKEDITOR.instances[a]&&(t=CKEDITOR.instances[a].getData(),$(\"#\"+a).html(t))});$.ajax({type:\"post\",data:$(\"form\").serialize(),url:\"index.php?route=catalog/category/qsave&user_token={{ user_token }}&category_id={{ pidqs }}\",dataType:\"json\",beforeSend:function(){$(\"#qsave\").prop(\"disabled\",!0)},complete:function(){$(\"#qsave\").prop(\"disabled\",!1)},success:function(e){if($(\".alert\").remove(),$(\".text-danger\").remove(),$(\"div\").removeClass(\"has-error\"),e.error){if(html=\'<div class=\"alert alert-danger\">\',html+=\" \"+e.error.warning+\' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></br>\',e.error.name){var t=\"\";for(r in e.error.name){var a=$(\"#input-name\"+r);$(a).after(\'<div class=\"text-danger\">\'+e.error.name[r]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.name[r]}html+=t}if(e.error.meta_title){t=\"\";for(r in e.error.meta_title){a=$(\"#input-meta-title\"+r);$(a).after(\'<div class=\"text-danger\">\'+e.error.meta_title[r]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.meta_title[r]}html+=t}if(e.error.parent&&($(\"#input-parent\").after(\'<div class=\"text-danger\">\'+e.error.parent+\"</div>\"),$(\"#input-parent\").parent().addClass(\"has-error\"),html+=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.parent),e.error.keyword){t=\"\";for(s in e.error.keyword)for(r in e.error.keyword[s]){a=$(\'[name=\"category_seo_url[\'+s+\"][\"+r+\']\"]\');$(a).parent().after(\'<div class=\"text-danger\">\'+e.error.keyword[s][r]+\"</div>\"),$(a).parent(\".input-group\").addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.keyword[s][r],html+=t}}html+=\" </div>\",$(\"#content > .container-fluid\").prepend(html)}e.success&&$(\"#content > .container-fluid\").prepend(\'<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> \'+e.success+\'  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\')},error:function(e,r,t){alert(t+\"\\r\\n\"+e.statusText+\"\\r\\n\"+e.responseText)}})});\r\n//quicksave end\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/category.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\npublic function index() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	public function qsave() {\r\n		$this->language->load(\'catalog/category\');\r\n		$this->load->model(\'catalog/category\');\r\n		$json = array();\r\n		if ($this->validateForm()) {\r\n			$this->model_catalog_category->editCategory($this->request->get[\'category_id\'], $this->request->post);\r\n			$json[\'success\'] = ($this->language->get(\'text_success\')).\' --- \'.(date(\"Y-m-d - H:i:s\"));\r\n		} else {\r\n			$json[\'error\'] = $this->error;\r\n		}\r\n		$this->response->addHeader(\'Content-Type: application/json; charset=utf-8\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n$data[\'cancel\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	$data[\'pidqs\'] = isset($this->request->get[\'category_id\']) ? $this->request->get[\'category_id\'] : \'\';\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/catalog/manufacturer_form.twig\">\r\n		<operation>\r\n			<search><![CDATA[\r\n<button type=\"submit\"\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<!-- quicksave -->\r\n	  {% if pidqs %}\r\n	  <button id=\"qsave\" style=\"margin: 0 10px;\" data-toggle=\"tooltip\" title=\"Быстрое сохранение\" class=\"btn btn-warning\"><i class=\"fa fa-save\"></i></button>\r\n	  {% endif %}\r\n<!-- quicksave end -->\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n//quicksave\r\n$(\"#qsave\").on(\"click\",function(){for(var e=$(\".note-editor\").length,r=0;e>r;r++){var t=$(\".note-editor\").eq(r).parent().children(\"textarea\").attr(\"id\");if(\"function\"==typeof $().code)var a=$(\"#\"+t).code();else a=$(\"#\"+t).summernote(\"code\");$(\"#\"+t).html(a)}$(\"textarea\").each(function(){var t,a=$(this).attr(\"id\");\"undefined\"!=typeof CKEDITOR&&void 0!==CKEDITOR.instances[a]&&(t=CKEDITOR.instances[a].getData(),$(\"#\"+a).html(t))});$.ajax({type:\"post\",data:$(\"form\").serialize(),url:\"index.php?route=catalog/manufacturer/qsave&user_token={{ user_token }}&manufacturer_id={{ pidqs }}\",dataType:\"json\",beforeSend:function(){$(\"#qsave\").prop(\"disabled\",!0)},complete:function(){$(\"#qsave\").prop(\"disabled\",!1)},success:function(e){if($(\".alert\").remove(),$(\".text-danger\").remove(),$(\"div\").removeClass(\"has-error\"),e.error){if(html=\'<div class=\"alert alert-danger\">\',html+=\" \"+e.error.warning+\' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></br>\',e.error.name&&($(\"#input-name\").after(\'<div class=\"text-danger\">\'+e.error.name+\"</div>\"),$(\"#input-name\").parent().addClass(\"has-error\"),html+=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.name),e.error.keyword){var t=\"\";for(s in e.error.keyword)for(r in e.error.keyword[s]){var a=$(\'[name=\"manufacturer_seo_url[\'+s+\"][\"+r+\']\"]\');$(a).parent().after(\'<div class=\"text-danger\">\'+e.error.keyword[s][r]+\"</div>\"),$(a).parent(\".input-group\").addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+e.error.keyword[s][r],html+=t}}html+=\" </div>\",$(\"#content > .container-fluid\").prepend(html)}e.success&&$(\"#content > .container-fluid\").prepend(\'<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> \'+e.success+\'  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\')},error:function(e,r,t){alert(t+\"\\r\\n\"+e.statusText+\"\\r\\n\"+e.responseText)}})});\r\n//quicksave end\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\npublic function index() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	public function qsave() {\r\n		$this->language->load(\'catalog/manufacturer\');\r\n		$this->load->model(\'catalog/manufacturer\');\r\n		$json = array();\r\n		if ($this->validateForm()) {\r\n			$this->model_catalog_manufacturer->editManufacturer($this->request->get[\'manufacturer_id\'], $this->request->post);\r\n			$json[\'success\'] = ($this->language->get(\'text_success\')).\' --- \'.(date(\"Y-m-d - H:i:s\"));\r\n		} else {\r\n			$json[\'error\'] = $this->error;\r\n\r\n			//fix for manufacturer error\r\n			if ($this->error && !isset($this->error[\'warning\'])) {\r\n				$this->language->load(\'catalog/information\');\r\n				$json[\'error\'][\'warning\'] = $this->language->get(\'error_warning\');\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json; charset=utf-8\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n$data[\'cancel\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	$data[\'pidqs\'] = isset($this->request->get[\'manufacturer_id\']) ? $this->request->get[\'manufacturer_id\'] : \'\';\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/view/template/catalog/information_form.twig\">\r\n		<operation>\r\n			<search><![CDATA[\r\n<button type=\"submit\"\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<!-- quicksave -->\r\n	  {% if pidqs %}\r\n	  <button id=\"qsave\" style=\"margin: 0 10px;\" data-toggle=\"tooltip\" title=\"Быстрое сохранение\" class=\"btn btn-warning\"><i class=\"fa fa-save\"></i></button>\r\n	  {% endif %}\r\n<!-- quicksave end -->\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n{{ footer }}\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n<script type=\"text/javascript\"><!--\r\n//quicksave\r\n$(\"#qsave\").on(\"click\",function(){for(var r=$(\".note-editor\").length,e=0;r>e;e++){var t=$(\".note-editor\").eq(e).parent().children(\"textarea\").attr(\"id\");if(\"function\"==typeof $().code)var a=$(\"#\"+t).code();else a=$(\"#\"+t).summernote(\"code\");$(\"#\"+t).html(a)}$(\"textarea\").each(function(){var t,a=$(this).attr(\"id\");\"undefined\"!=typeof CKEDITOR&&void 0!==CKEDITOR.instances[a]&&(t=CKEDITOR.instances[a].getData(),$(\"#\"+a).html(t))});$.ajax({type:\"post\",data:$(\"form\").serialize(),url:\"index.php?route=catalog/information/qsave&user_token={{ user_token }}&information_id={{ pidqs }}\",dataType:\"json\",beforeSend:function(){$(\"#qsave\").prop(\"disabled\",!0)},complete:function(){$(\"#qsave\").prop(\"disabled\",!1)},success:function(r){if($(\".alert\").remove(),$(\".text-danger\").remove(),$(\"div\").removeClass(\"has-error\"),r.error){if(html=\'<div class=\"alert alert-danger\">\',html+=\" \"+r.error.warning+\' <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></br>\',r.error.title){var t=\"\";for(e in r.error.title){var a=$(\"#input-title\"+e);$(a).after(\'<div class=\"text-danger\">\'+r.error.title[e]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+r.error.title[e]}html+=t}if(r.error.description){t=\"\";for(e in r.error.description){a=$(\"#input-description\"+e);$(a).after(\'<div class=\"text-danger\">\'+r.error.description[e]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+r.error.description[e]}html+=t}if(r.error.meta_title){t=\"\";for(e in r.error.meta_title){a=$(\"#input-meta-title\"+e);$(a).after(\'<div class=\"text-danger\">\'+r.error.meta_title[e]+\"</div>\"),$(a).parent().addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+r.error.meta_title[e]}html+=t}if(r.error.keyword){t=\"\";for(s in r.error.keyword)for(e in r.error.keyword[s]){a=$(\'[name=\"information_seo_url[\'+s+\"][\"+e+\']\"]\');$(a).parent().after(\'<div class=\"text-danger\">\'+r.error.keyword[s][e]+\"</div>\"),$(a).parent(\".input-group\").addClass(\"has-error\"),t=\'</br><i class=\"fa fa-exclamation-circle\"></i> \'+r.error.keyword[s][e],html+=t}}html+=\" </div>\",$(\"#content > .container-fluid\").prepend(html)}r.success&&$(\"#content > .container-fluid\").prepend(\'<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\"></i> \'+r.success+\'  <button type=\"button\" class=\"close\" data-dismiss=\"alert\">&times;</button></div>\')},error:function(r,e,t){alert(t+\"\\r\\n\"+r.statusText+\"\\r\\n\"+r.responseText)}})});\r\n//quicksave end\r\n//--></script>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/catalog/information.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\npublic function index() {\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	public function qsave() {\r\n		$this->language->load(\'catalog/information\');\r\n		$this->load->model(\'catalog/information\');\r\n		$json = array();\r\n		if ($this->validateForm()) {\r\n			$this->model_catalog_information->editInformation($this->request->get[\'information_id\'], $this->request->post);\r\n			$json[\'success\'] = ($this->language->get(\'text_success\')).\' --- \'.(date(\"Y-m-d - H:i:s\"));\r\n		} else {\r\n			$json[\'error\'] = $this->error;\r\n		}\r\n		$this->response->addHeader(\'Content-Type: application/json; charset=utf-8\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n$data[\'cancel\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n//quicksave\r\n	$data[\'pidqs\'] = isset($this->request->get[\'information_id\']) ? $this->request->get[\'information_id\'] : \'\';\r\n//quicksave end\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>', 1, '2022-11-06 08:36:29', '0000-00-00 00:00:00'),
(33, 37, 'Cookies agree', 'cookies_agree', 'Alexandr Sergeevich', '1.1', 'https://', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>Cookies agree</name>\n    <version>1.1</version>\n    <author>Alexandr Sergeevich</author>\n    <link>https://</link>\n    <code>cookies_agree</code>\n	<file path=\"catalog/controller/common/footer.php\">\n	    <operation>\n	    <search trim=\"true\"><![CDATA[$data[\'informations\'] = array();]]></search>\n	    <add position=\"after\"><![CDATA[\n			if( $this->config->get(\'module_agree_cookie_status\') && !isset($this->request->cookie[\'cookiesDirective\']) ) {\n			    \n				$this->document->addScript(\'catalog/view/javascript/cookies-alert-core.js\', \'footer\');\n				$this->document->addScript(\'catalog/view/javascript/cookies-alert-script.js\', \'footer\');\n				\n				$text = $this->config->get(\'module_agree_cookie_text\');\n				\n				$data[\'set_agree_cooki\'] = \'<input name=\"cookieData\" type=\"hidden\" data-cookie-customDialogSelector=\\\'null\\\' data-cookie-colorText=\\\'#e5e6e6\\\' data-cookie-colorBg=\\\'rgba(0, 0, 0, 0.85)\\\' data-cookie-textButton=\\\'Принимаю\\\' data-cookie-colorButton=\\\'#ffb400\\\' data-cookie-colorLink=\\\'#3498db\\\' data-cookie-underlineLink=\\\'true\\\' data-cookie-text=\"\'.$text.\'\">\';\n			\n			}\n	    ]]></add>\n	    </operation>\n    </file>\n    <file path=\"catalog/view/theme/*/template/common/footer.twig\">\n	    <operation>\n	    <search trim=\"true\"><![CDATA[</footer>]]></search>\n	    <add position=\"after\"><![CDATA[\n		    {% if set_agree_cooki %}\n	        {{ set_agree_cooki }} \n	        {% endif %}\n	    ]]></add>\n	    </operation>\n    </file>\n</modification>', 1, '2022-11-11 19:59:31', '0000-00-00 00:00:00'),
(42, 47, 'Counters to footer', 'Counters to footer', 'SlaSoft', '1.0 for OC 3.0', '', '<?xml version=\"1.0\"?>\n<modification>\n	<name>Counters to footer</name>\n	<code>Counters to footer</code>\n	<version>1.0 for OC 3.0</version>\n	<author>SlaSoft</author>\n	<file path=\"admin/view/template/setting/setting.twig\">\n		<operation>\n		<search><![CDATA[{{ text_error }}]]></search>\n		<add position=\"before\" offset=\"2\"><![CDATA[\n            <fieldset>\n              <legend>SEO счётчики</legend>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-counters\"><span data-toggle=\"tooltip\" data-html=\"true\" data-trigger=\"click\" title=\"{{ help_entry_counters }}\">{{ entry_counters }}</span></label>\n                <div class=\"col-sm-10\">\n                  <textarea name=\"config_counters\" rows=\"5\" placeholder=\"{{ placeholder_entry_counters }}\" id=\"input-counters\" class=\"form-control\">{{ config_counters }}</textarea>\n                </div>\n              </div>\n			  \n              </fieldset>\n]]></add>\n		</operation>\n	</file>\n\n	<file path=\"admin/language/en-gb/setting/{setting,store}.php\">\n		<operation>\n			<search><![CDATA[$_[\'heading_title\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_counters\'] = \'SEO counters\';\n$_[\'entry_counters\'] = \'Codes different counters including Yansex metrica\';\n$_[\'help_entry_counters\'] = \'Copy and paste code your counters or script\';\n$_[\'placeholder_entry_counters\'] = \'Your code\';\n            ]]></add>\n        </operation>\n	</file>\n	<file path=\"admin/language/ru-ru/setting/{setting,store}.php\">\n		<operation>\n			<search><![CDATA[$_[\'heading_title\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_counters\'] = \'Сео счётчики\';\n$_[\'entry_counters\'] = \'Коды различных счётчиков, в том числе и Яндекс метрика\';\n$_[\'help_entry_counters\'] = \'Добавляйте ваши коды счётчиков, скриптов, стилей\';\n$_[\'placeholder_entry_counters\'] = \'Ваш код\';\n            ]]></add>\n		</operation>\n	</file>\n\n	<file path=\"admin/controller/setting/setting.php\">\n		<operation>\n			<search><![CDATA[if (isset($this->request->post[\'config_limit_admin\'])) {]]></search>\n			<add position=\"before\"><![CDATA[\n				$data[\'entry_counters\'] = $this->language->get(\'entry_counters\');\n				$data[\'help_entry_counters\'] = $this->language->get(\'help_entry_counters\');\n				$data[\'placeholder_entry_counters\'] = $this->language->get(\'placeholder_entry_counters\');\n				if (isset($this->request->post[\'config_counters\'])) {\n					$data[\'config_counters\'] = $this->request->post[\'config_counters\']; \n				} else {\n					$data[\'config_counters\'] = $this->config->get(\'config_counters\');\n				}\n]]></add>\n		</operation>\n	</file>\n\n	<file path=\"admin/controller/setting/store.php\">\n		<operation>\n			<search><![CDATA[if (isset($this->request->post[\'config_theme\'])) {]]></search>\n			<add position=\"before\"><![CDATA[\n				$data[\'entry_counters\'] = $this->language->get(\'entry_counters\');\n				$data[\'help_entry_counters\'] = $this->language->get(\'help_entry_counters\');\n				$data[\'placeholder_entry_counters\'] = $this->language->get(\'placeholder_entry_counters\');\n				if (isset($this->request->post[\'config_counters\'])) {\n					$data[\'config_counters\'] = $this->request->post[\'config_counters\']; \n				} elseif (isset($store_info[\'config_counters\'])) {\n					$data[\'config_counters\'] = $store_info[\'config_counters\'];\n				} else {\n					$data[\'config_counters\'] = \'\';\n				}\n]]></add>\n		</operation>\n	</file>\n\n		<file path=\"catalog/controller/common/footer.php\">\n			<operation>\n				<search><![CDATA[view(\'common/footer]]></search>\n				<add position=\"before\"><![CDATA[$data[\'config_counters\'] = html_entity_decode($this->config->get(\'config_counters\'), ENT_QUOTES, \'UTF-8\');\n]]></add>\n			</operation>\n		</file>\n\n	<file path=\"catalog/view/theme/*/template/common/footer.twig\">\n		<operation>\n			<search><![CDATA[</body>]]></search>\n			<add position=\"before\"><![CDATA[\n				{% if config_counters %}\n				{{ config_counters }}\n				{% endif %}\n]]></add>\n		</operation>\n	</file>\n\n	<file path=\"admin/view/template/setting/store_form.twig\">\n		<operation>\n			<search><![CDATA[<div class=\"tab-pane\" id=\"tab-server\">]]></search>\n			<add position=\"after\"><![CDATA[\n            <fieldset>\n              <legend>SEO счётчики</legend>\n              <div class=\"form-group\">\n                <label class=\"col-sm-2 control-label\" for=\"input-counters\"><span data-toggle=\"tooltip\" data-html=\"true\" data-trigger=\"click\" title=\"{{ help_entry_counters }}\">{{ entry_counters }}</span></label>\n                <div class=\"col-sm-10\">\n                  <textarea name=\"config_counters\" rows=\"5\" placeholder=\"{{ placeholder_entry_counters }}\" id=\"input-counters\" class=\"form-control\">{{ config_counters }}</textarea>\n                </div>\n              </div>\n            </fieldset>\n]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2022-11-13 09:59:49', '0000-00-00 00:00:00'),
(48, 53, 'SVG-support', 'SVG-support', 'Ihor Chyshkala', '0.2 Beta', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n	<code>SVG-support</code>\n	<name>SVG-support</name>\n	<id>SVG-support</id>\n	<version>0.2 Beta</version>\n	<author>Ihor Chyshkala</author>\n\n	<file path=\"admin/controller/common/filemanager.php\">\n		<operation error=\"log\">\n			<search>\n				<![CDATA[jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF]]>\n			</search>\n			<add position=\"replace\">\n				<![CDATA[jpg,jpeg,png,gif,JPG,JPEG,PNG,GIF,svg,SVG]]]>\n			</add>\n		</operation>\n		<operation error=\"log\">\n			<search>\n				<![CDATA[\'jpg\',]]>\n			</search>\n			<add position=\"after\">\n				<![CDATA[						\'svg\',]]>\n			</add>\n		</operation>\n				<operation error=\"log\">\n			<search>\n				<![CDATA[\'image/jpeg\',]]>\n			</search>\n			<add position=\"after\">\n				<![CDATA[						\'image/svg+xml\',]]>\n			</add>\n		</operation>\n	</file>\n	<file path=\"admin/model/tool/image.php\">\n		<operation error=\"log\">\n			<search>\n				<![CDATA[$extension = pathinfo($filename, PATHINFO_EXTENSION);]]>\n			</search>\n			<add position=\"after\">\n				<![CDATA[\n		if(\'svg\' == $extension) {\n            if ($this->request->server[\'HTTPS\']) {\n                return HTTPS_CATALOG . \'image/\' . $filename;\n            } else {\n                return HTTP_CATALOG . \'image/\' . $filename;\n            }\n    	}]]>\n			</add>\n		</operation>\n	</file>\n\n	<file path=\"catalog/model/tool/image.php\">\n		<operation error=\"log\">\n			<search>\n				<![CDATA[$extension = pathinfo($filename, PATHINFO_EXTENSION);]]>\n			</search>\n			<add position=\"after\">\n				<![CDATA[\n		if(\'svg\' == $extension) {\n            if ($this->request->server[\'HTTPS\']) {\n                return HTTPS_SERVER . \'image/\' . $filename;\n            } else {\n                return HTTP_SERVER . \'image/\' . $filename;\n            }\n    	}]]>\n			</add>\n		</operation>\n	</file>\n</modification>', 1, '2022-11-14 18:11:06', '0000-00-00 00:00:00'),
(36, 40, 'user_group_visual.ocmod', 'user_group_visual.ocmod', 'SlaSoft', '3.0', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>user_group_visual.ocmod</name>\r\n  <code>user_group_visual.ocmod</code>\r\n  <version>3.0</version>\r\n  <author>SlaSoft</author>\r\n  <file path=\"admin/view/template/user/user_group_form.twig\">\r\n	<operation>\r\n      <search><![CDATA[{% for permission in permissions %}]]></search>\r\n      <add position=\"replace\"><![CDATA[{% for key, permission in permissions %}]]></add>\r\n    </operation>\r\n\r\n	<operation>\r\n      <search><![CDATA[<input type=\"checkbox\" name=\"permission[modify][]\"]]></search>\r\n      <add position=\"after\" offset=\"1\"><![CDATA[&nbsp;::&nbsp;<b>{{ name_permissions[key] }}</b>]]></add>\r\n    </operation>\r\n	<operation>\r\n      <search><![CDATA[<input type=\"checkbox\" name=\"permission[access][]\"]]></search>\r\n      <add position=\"after\" offset=\"1\"><![CDATA[&nbsp;::&nbsp;<b>{{ name_permissions[key] }}</b>]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"admin/controller/user/user_permission.php\">\r\n	<operation>\r\n      <search><![CDATA[common/startup]]></search>\r\n      <add position=\"after\"><![CDATA[\'common/column_left\',]]></add>\r\n    </operation>\r\n	<operation>\r\n      <search><![CDATA[$data[\'permissions\'][] = $permission;]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n				$this->load->language($permission);\r\n				$heading_title = strip_tags($this->language->get(\'heading_title\'));\r\n				if ($heading_title == $old_heading_title) { \r\n					$heading_title = \'\';\r\n				} else {\r\n					$old_heading_title = $heading_title;\r\n				}\r\n				$data[\'name_permissions\'][] = $heading_title;\r\n]]>\r\n      </add>\r\n    </operation>\r\n\r\n	<operation>\r\n      <search><![CDATA[$data[\'permissions\'] = array();]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n		$data[\'name_permissions\'] = array();\r\n		$old_heading_title = \'\';\r\n]]>\r\n      </add>\r\n    </operation>\r\n  </file>\r\n</modification>\r\n', 1, '2022-11-11 20:00:09', '0000-00-00 00:00:00'),
(37, 999998, 'SlaSoft Seopro On', 'SlaSoft.Seopro.On', 'SlaSoft', '1.0', '', '<?xml version=\"1.0\"?>\n<modification>\n	<name>SlaSoft Seopro On</name>\n	<code>SlaSoft.Seopro.On</code>\n	<version>1.0</version>\n	<author>SlaSoft</author>\n		\n	<file path=\"system/library/pagination.php\">\n		<operation>\n			<search><![CDATA[if ($num_pages > 1)]]></search>\n			<add position=\"before\"><![CDATA[\n		$output = str_replace(\'page-{page}\', \'\',$output);\n			]]></add>\n		</operation>\n	</file>\n\n	<file path=\"catalog/controller/startup/seo_url.php\">\n		<operation>\n			<search><![CDATA[public function index() {]]></search>\n			<add position=\"before\"><![CDATA[\n	private $sla_seo_pro;\n	\n	public function __construct($registry) {\n		parent::__construct($registry);	\n		$this->sla_seo_pro = new SlaSeoPro($registry);\n	}\n			]]></add>\n		</operation>\n\n		<operation>\n			<search><![CDATA[if ($data) {]]></search>\n			<add position=\"after\"><![CDATA[\n				$url = $this->sla_seo_pro->getPage($url,$data);\n	]]></add>\n		</operation>\n\n		<operation>\n			<search><![CDATA[$parts = explode(\'/\', $this->request->get[\'_route_\']);]]></search>\n			<add position=\"after\"><![CDATA[\n			$parts = $this->sla_seo_pro->prepareRoute();\n	]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[$this->request->get[\'route\'] = \'information/information\';]]></search>\n			<add position=\"after\" offset=\"3\"><![CDATA[\n			$this->sla_seo_pro->validate();\n	]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[parse_str($url_info[\'query\'], $data);]]></search>\n			<add position=\"after\"><![CDATA[\n			$url = $this->sla_seo_pro->rewrite($data);\n	]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[return $url_info[\'scheme\']]]></search>\n			<add position=\"before\"><![CDATA[\n			if ($url === true) $url = \'\';\n	]]></add>\n		</operation>\n	</file>\n\n	<file path=\"catalog/controller/common/language.php\">\n		<operation>\n			<search><![CDATA[$data[\'redirect\'] = $this->url->link($route, $url, $this->request->server[\'HTTPS\']);]]></search>\n			<add position=\"replace\"><![CDATA[$redirect_data = [\'route\' => $route, \'url\' => $url, \'protocol\' => $this->request->server[\'HTTPS\']];\n				$data[\'redirect\'] = base64_encode(json_encode($redirect_data));\n]]></add>\n		</operation>\n		<operation>\n			<search><![CDATA[public function language() {]]></search>\n			<add position=\"replace\"><![CDATA[\n	private function slasoft_seo_pro_language() {\n		if (isset($this->request->post[\'code\'])) {\n			$this->session->data[\'language\'] = $this->request->post[\'code\'];\n			$languages = $this->model_localisation_language->getLanguages();\n			if (isset($languages[$this->request->post[\'code\']])) {\n				$this->config->set(\'config_language_id\', $languages[$this->request->post[\'code\']][\'language_id\']);	\n			}\n		}\n\n		if (isset($this->request->post[\'redirect\'])) {\n			$redirect = json_decode(base64_decode($this->request->post[\'redirect\']), true);\n			if (isset($redirect[\'route\']) && isset($redirect[\'url\']) && isset($redirect[\'protocol\'])) {\n				$redirect_url = $this->url->link($redirect[\'route\'], $redirect[\'url\'], $redirect[\'protocol\']);\n			} else {\n				$redirect_url = $this->url->link(\'common/home\');\n			}\n			$this->response->redirect($redirect_url);\n		} else {\n			$this->response->redirect($this->url->link(\'common/home\'));\n		}\n	}\n			\n	public function language() {\n		$this->slasoft_seo_pro_language();\n]]></add>\n		</operation>\n	</file>\n</modification>', 1, '2022-11-11 20:05:38', '0000-00-00 00:00:00'),
(38, 0, '2 simple url rewrite', '2 simple url rewrite', 'deeman', '2.0.0', 'http://simpleopencart.com', '\r\n            <modification>\r\n                <name>2 simple url rewrite</name>\r\n                <code>2 simple url rewrite</code>\r\n                <version>2.0.0</version>\r\n                <author>deeman</author>\r\n                <link>http://simpleopencart.com</link>\r\n\r\n                <file path=\"catalog/controller/startup/startup.php\">\r\n                    <operation error=\"skip\">\r\n                        <search><![CDATA[$this->registry->set(\'url\']]></search>\r\n                        <add position=\"after\"><![CDATA[$this->url->addRewrite(new Simple\\Rewrite($this->config, $this->session));]]></add>\r\n                    </operation>\r\n                </file>\r\n            </modification>', 1, '2022-11-12 20:52:43', '0000-00-00 00:00:00'),
(39, 41, 'CDEK opencart', 'CDEK', 'OpenCart.ru', '1.5.1.0', 'http://www.opencart.ru', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <code>CDEK</code>\r\n  <name>CDEK opencart</name>\r\n  <version>1.5.1.0</version>\r\n  <author>OpenCart.ru</author>\r\n  <link>http://www.opencart.ru</link>\r\n  <file path=\"catalog/view/theme/*/template/checkout/shipping_method.twig\">\r\n    <operation>\r\n      <search><![CDATA[{{ quote.text }}]]></search>\r\n      <add position=\"after\"><![CDATA[{% if quote.description is not empty %}{{quote.description}}{% endif %}]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"admin/controller/common/column_left.php\">\r\n    <operation>\r\n      <search><![CDATA[$catalog = array();]]></search>\r\n      <add position=\"before\" offset=\"1\"><![CDATA[// CDEK OCMOD START\r\n      // CDEK\r\n      $cdek = array();\r\n      $cdek[] = array(\r\n        \'name\'     => \'Отгрузка в СДЭК\',\r\n        \'href\'     => $this->url->link(\'extension/module/cdek_integrator\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n        \'children\' => array()\r\n      );\r\n      $cdek[] = array(\r\n        \'name\'     => \'Расчет доставки\',\r\n        \'href\'     => $this->url->link(\'extension/shipping/cdek\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n        \'children\' => array()\r\n      );\r\n      $cdek[] = array(\r\n        \'name\'     => \'Наложенный платеж\',\r\n        \'href\'     => $this->url->link(\'extension/payment/cod_cdek\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n        \'children\' => array()\r\n      );\r\n      $cdek[] = array(\r\n        \'name\'     => \'Учитывать в заказе\',\r\n        \'href\'     => $this->url->link(\'extension/total/cdek\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n        \'children\' => array()\r\n      );\r\n\r\n      $cdek_other = array();\r\n      $cdek_other[] = array(\r\n        \'name\'     => \'Документация\',\r\n        \'href\'     => \'http://cdek.opencart.ru/documentation\',\r\n        \'children\' => array()\r\n      );\r\n      $cdek_other[] = array(\r\n        \'name\'     => \'Поддержка\',\r\n        \'href\'     => \'http://helpdesk.opencart.ru\',\r\n        \'children\' => array()\r\n      );\r\n      $cdek_other[] = array(\r\n        \'name\'     => \'Лицензия\',\r\n        \'href\'     => $this->url->link(\'tool/cdektool\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n        \'children\' => array()\r\n      );\r\n\r\n      $cdek[] = array(\r\n        \'name\'     => \'Другое\',\r\n        \'href\'     => \'\',\r\n        \'children\' => $cdek_other\r\n      );\r\n\r\n      $data[\'menus\'][] = array(\r\n        \'id\'       => \'menu-cdek\',\r\n        \'icon\'     => \'fa-truck\',\r\n        \'name\'     => \'СДЭК\',\r\n        \'href\'     => \'\',\r\n        \'children\' => $cdek\r\n      );\r\n      // CDEK OCMOD END]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path=\"admin/view/template/common/header.twig\">\r\n    <operation>\r\n      <search><![CDATA[<script type=\"text/javascript\" src=\"view/javascript/jquery/jquery-2.1.1.min.js\"></script>]]></search>\r\n      <add position=\"after\"><![CDATA[<link rel=\"stylesheet\" href=\"view/stylesheet/chosen/chosen.min.css\">\r\n        <script src=\"view/javascript/jquery/chosen.jquery.min.js\"></script>]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n</modification>', 1, '2022-11-12 20:53:02', '0000-00-00 00:00:00'),
(40, 43, 'Robokassa opencart', 'Robokassa', 'Robokassa', '1.0.0', 'https://robokassa.com', '<modification>  \r\n  <code>Robokassa</code>\r\n  <name>Robokassa opencart</name>\r\n  <version>1.0.0</version>\r\n  <author>Robokassa</author>\r\n  <link>https://robokassa.com</link>\r\n  <file path=\"catalog/controller/api/order.php\">\r\n    <operation>\r\n        <search><![CDATA[$this->model_checkout_order->addOrderHistory($order_id, $this->request->post[\'order_status_id\'], $this->request->post[\'comment\'], $this->request->post[\'notify\'], $this->request->post[\'override\']);]]></search>\r\n		<!-- подключение виджета карты в страницу заказа -->\r\n        <add position=\"before\"><![CDATA[\r\n			/* Робокасса */\r\n			if($order_info[\'order_status_id\'] != $this->request->post[\'order_status_id\'] && $order_info[\'payment_code\'] == \'robokassa\' && $this->request->post[\'order_status_id\'] == $this->config->get(\'payment_robokassa_order_status_id_2check\') && $this->config->get(\'payment_robokassa_fiscal\') == 1){\r\n				$this->load->model(\'extension/payment/robokassa\');\r\n					\r\n				$this->model_extension_payment_robokassa->sendSecondCheck($order_id);\r\n			}\r\n			/* Робокасса */\r\n        ]]></add>\r\n    </operation>\r\n  </file>\r\n</modification>', 1, '2022-11-12 20:53:20', '0000-00-00 00:00:00'),
(41, 45, 'Яндекс.Касса и Яндекс.Деньги 20 способов', 'yakassa_spk', 'kin208', '1.0', '', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n    <name>Яндекс.Касса и Яндекс.Деньги 20 способов</name>\r\n    <code>yakassa_spk</code>\r\n    <version>1.0</version>\r\n    <author>kin208</author> \r\n	\r\n	<file path=\"admin/controller/sale/order.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[$this->response->setOutput($this->load->view(\'sale/order_info\', $data));]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				/* start yakassa_spk */\r\n				if( $this->config->get(\'payment_yakassa_spk_status\') )\r\n				{\r\n					$data[\'yakassa_spk_order\'] = $this->load->controller(\'extension/payment/yakassa_spk/showGenerateForm\');\r\n				}\r\n				/* end yakassa_spk */\r\n			]]></add>\r\n		</operation> \r\n	</file>\r\n	<file path=\"admin/view/template/sale/order_info.twig\"> \r\n		<operation error=\"skip\">\r\n			<search><![CDATA[<div class=\"pull-right\">]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			<div class=\"pull-right\">\r\n			  {{ yakassa_spk_order }}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n    <file path=\"catalog/controller/api/order.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n            foreach ($keys as $key) {\r\n            ]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n            if( isset( $this->request->post[\'comment\'] ))\r\n			{\r\n				$this->request->post[\'comment\'] = str_replace(\"&amp;amp;\", \"&\", $this->request->post[\'comment\']);\r\n				$this->request->post[\'comment\'] = str_replace(\"&amp;\", \"&\", $this->request->post[\'comment\']);\r\n				$this->request->post[\'comment\'] = str_replace(\"amp;\", \"\", $this->request->post[\'comment\']);\r\n			}\r\n			\r\n            ]]></add>\r\n        </operation>\r\n    </file>  \r\n	\r\n	<file path=\"catalog/language/*/account/order.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[heading_title]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				/* start oplata_spk */\r\n				$_[\'text_paylink\']          = \'Перейти\';\r\n				/* end oplata_spk */\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/controller/account/order.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[$data[\'histories\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				/* start yakassa_spk */\r\n				if( strstr($result[\'comment\'], \'payment/yakassa_spk/payment&\') &&\r\n					!strstr($result[\'comment\'], \"href=\")\r\n				)\r\n				{\r\n					$result[\'comment\'] = str_replace(\"&amp;\", \"&\", $result[\'comment\']);\r\n				\r\n					$ar = array();\r\n					preg_match(\"/([^\\s\\\"\\\']+payment\\/yakassa_spk\\/payment&code=[^\\s\\\"\\\']+)/\", \r\n								   $result[\'comment\'], \r\n								   $ar);\r\n					\r\n					\r\n					if( !empty($ar[1]) )\r\n						$result[\'comment\'] = str_replace($ar[1], \r\n							 \"<a href=\'\".$ar[1].\"\' target=_blank>\".$this->language->get(\'text_paylink\').\"</a>\", \r\n							 $result[\'comment\']);\r\n					\r\n				}\r\n				/* end yakassa_spk */\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n    <file path=\"admin/controller/extension/extension/payment.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n           $extension = basename($file, \'.php\');\r\n            ]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n            /* start yakassa_spk */\r\n			if( preg_match(\"/^yakassa_spk[\\d]+$/\", $extension) ) continue;\r\n			/* end yakassa_spk */\r\n            ]]></add>\r\n        </operation>\r\n    </file>  \r\n\r\n	<file path=\"catalog/view/theme/*/template/checkout/payment_method.twig\">\r\n		<operation>\r\n			<search><![CDATA[{{ payment_method.title }}]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			{% if payment_method[\'html_image\'] %}\r\n				{{ payment_method[\'html_image\'] }} \r\n			{% else %}\r\n				{{ payment_method[\'title\'] }} \r\n			{% endif %}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	<file path=\"catalog/view/theme/*/template/checkout/simplecheckout_payment.twig\">\r\n		<operation>\r\n			<search><![CDATA[{{ payment_method[\'title\'] }}]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			{% if payment_method[\'html_image\'] %}\r\n				{{ payment_method[\'html_image\'] }}\r\n			{% else %}\r\n				{{ payment_method[\'title\'] }}\r\n			{% endif %}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n	\r\n	<file path=\"catalog/view/theme/*/template/checkout/unipayment.twig\">\r\n		<operation>\r\n			<search><![CDATA[{{payment_method.title}}]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n			{% if payment_method[\'html_image\'] %}\r\n				{{ payment_method[\'html_image\'] }}\r\n			{% else %}\r\n				{{ payment_method[\'title\'] }}\r\n			{% endif %}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	\r\n</modification>', 1, '2022-11-12 20:53:32', '0000-00-00 00:00:00'),
(47, 52, 'Header Footer Custom script ', 'AT-0296', 'Aara Technologies Pvt. Ltd.', '3.x.0', 'https://https.aaratechnologies.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>Header Footer Custom script </name>\r\n  <code>AT-0296</code>\r\n  <version>3.x.0</version>\r\n  <author>Aara Technologies Pvt. Ltd.</author>\r\n  <link>https://https.aaratechnologies.com</link>\r\n\r\n  <file path=\"admin/controller/setting/setting.php\">\r\n    <operation>\r\n      <search><![CDATA[if (isset($this->request->post[\'config_comment\'])) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n        if (isset($this->request->post[\'config_at_custom_css\'])) {\r\n          $data[\'config_at_custom_css\'] = $this->request->post[\'config_at_custom_css\'];\r\n        } else {\r\n          $data[\'config_at_custom_css\'] = html_entity_decode($this->config->get(\'config_at_custom_css\'), ENT_QUOTES, \'UTF-8\');\r\n        }\r\n        if (isset($this->request->post[\'config_at_custom_js\'])) {\r\n          $data[\'config_at_custom_js\'] = $this->request->post[\'config_at_custom_js\'];\r\n        } else {\r\n          $data[\'config_at_custom_js\'] = html_entity_decode($this->config->get(\'config_at_custom_js\'), ENT_QUOTES, \'UTF-8\');\r\n        }\r\n        if (isset($this->request->post[\'config_at_custom_head\'])) {\r\n          $data[\'config_at_custom_head\'] = $this->request->post[\'config_at_custom_head\'];\r\n        } else {\r\n          $data[\'config_at_custom_head\'] = html_entity_decode($this->config->get(\'config_at_custom_head\'), ENT_QUOTES, \'UTF-8\');\r\n        }\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n  \r\n  <file path=\"admin/view/template/setting/setting.twig\">\r\n    <operation>\r\n      <search><![CDATA[<li><a href=\"#tab-server\" data-toggle=\"tab\">{{ tab_server }}</a></li>]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n      <li><a href=\"#at_custom_codes\" data-toggle=\"tab\">Пользовательские коды</a></li>\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[<div class=\"tab-content\">]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n        <div class=\"tab-pane\" id=\"at_custom_codes\">\r\n          <div class=\"form-group\">\r\n            <label class=\"col-sm-2 control-label\" for=\"at_custom_css\">\r\n              <span data-toggle=\"tooltip\" title=\"\" data-original-title=\"Ваш пользовательский css скрипт.\">Пользовательский скрипт в шапке</span>\r\n            </label>\r\n            <div class=\"col-sm-10\">\r\n              <textarea name=\"config_at_custom_css\" id=\"at_custom_css\"  class=\"form-control\" style=\"height: 300px;\">{{ config_at_custom_css }}</textarea>\r\n            </div>\r\n          </div>\r\n          <div class=\"form-group\">\r\n            <label class=\"col-sm-2 control-label\" for=\"at_custom_js\">\r\n              <span data-toggle=\"tooltip\" title=\"\" data-original-title=\"пользовательский js-скрипт здесь.\">Пользовательский скрипт в подвале</span>\r\n            </label>\r\n            <div class=\"col-sm-10\">\r\n              <textarea name=\"config_at_custom_js\" id=\"at_custom_js\" class=\"form-control\" style=\"height: 300px;\">{{ config_at_custom_js }}</textarea>\r\n            </div>\r\n          </div>\r\n           <div class=\"form-group\">\r\n            <label class=\"col-sm-2 control-label\" for=\"at_custom_head\">\r\n              <span data-toggle=\"tooltip\" title=\"\" data-original-title=\"Пользовательский код внутри заголовка.\">Пользовательский заголовок</span>\r\n            </label>\r\n            <div class=\"col-sm-10\">\r\n              <textarea name=\"config_at_custom_head\" id=\"at_custom_head\" class=\"form-control\" style=\"height: 300px;\">{{ config_at_custom_head }}</textarea>\r\n            </div>\r\n          </div>\r\n        </div>\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"catalog/controller/common/header.php\">\r\n    <operation>\r\n      <search><![CDATA[return $this->load->view(\'common/header\', $data);]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n        $data[\'at_css\'] = html_entity_decode($this->config->get(\'config_at_custom_css\') ? $this->config->get(\'config_at_custom_css\') : \'\', ENT_QUOTES, \'UTF-8\');\r\n        $data[\'at_custom_head\'] = html_entity_decode($this->config->get(\'config_at_custom_head\') ? $this->config->get(\'config_at_custom_head\') : \'\', ENT_QUOTES, \'UTF-8\');\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"catalog/view/theme/*/template/common/header.twig\">\r\n    <operation>\r\n      <search><![CDATA[</head>]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n        {% if at_css %}\r\n        <style type=\"text/css\">\r\n        {{ at_css }}\r\n        </style>\r\n        {% endif %}\r\n\r\n        {% if at_custom_head %}\r\n          {{ at_custom_head }}\r\n        {% endif %}\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"catalog/controller/common/footer.php\">\r\n    <operation>\r\n      <search><![CDATA[return $this->load->view(\'common/footer\', $data);]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n        $data[\'at_js\'] = html_entity_decode($this->config->get(\'config_at_custom_js\') ? $this->config->get(\'config_at_custom_js\') : \'\', ENT_QUOTES, \'UTF-8\');\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"catalog/view/theme/*/template/common/footer.twig\">\r\n    <operation>\r\n      <search><![CDATA[</body>]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n        {% if at_js %}\r\n        <script type=\"text/javascript\">\r\n        {{ at_js }}\r\n        </script>\r\n        {% endif %}\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n  \r\n</modification>', 1, '2022-11-14 18:10:55', '0000-00-00 00:00:00');
INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`, `date_modified`) VALUES
(46, 51, 'OCFilter Modification', 'ocfilter-product-filter', 'Aleksandr S.', '4.7.5.0.3', 'https://ocfilter.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n  <name>OCFilter Modification</name>\r\n  <code>ocfilter-product-filter</code>\r\n  <version>4.7.5.0.3</version>\r\n  <author>Aleksandr S.</author>\r\n  <link>https://ocfilter.com</link>\r\n\r\n  <!-- CONTROLLER -->\r\n	<file path=\"admin/controller/catalog/product.php\">\r\n    <operation>\r\n      <search><![CDATA[function getForm() {]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n    // OCFilter start\r\n    $this->document->addStyle(\'view/stylesheet/ocfilter/ocfilter.css\');\r\n    $this->document->addScript(\'view/javascript/ocfilter/ocfilter.js\');\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[if (isset($this->error[\'warning\']))]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n    // OCFilter start\r\n    $data[\'tab_ocfilter\'] = $this->language->get(\'tab_ocfilter\');\r\n    $data[\'entry_values\'] = $this->language->get(\'entry_values\');\r\n    $data[\'ocfilter_select_category\'] = $this->language->get(\'ocfilter_select_category\');\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"admin/controller/common/column_left.php\">\r\n    <operation>\r\n      <search><![CDATA[if ($this->user->hasPermission(\'access\', \'catalog/filter\')) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      // OCFilter start\r\n			$ocfilter = array();\r\n\r\n			if ($this->user->hasPermission(\'access\', \'extension/module/ocfilter\')) {\r\n				$ocfilter[] = array(\r\n					\'name\'     => $this->language->get(\'text_ocfilter_option\'),\r\n					\'href\'     => $this->url->link(\'extension/module/ocfilter/filter\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n					\'children\' => array()\r\n				);\r\n\r\n				$ocfilter[] = array(\r\n					\'name\'	   => $this->language->get(\'text_ocfilter_page\'),\r\n					\'href\'     => $this->url->link(\'extension/module/ocfilter/page\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n					\'children\' => array()\r\n				);\r\n\r\n				$ocfilter[] = array(\r\n					\'name\'	   => $this->language->get(\'text_ocfilter_setting\'),\r\n					\'href\'     => $this->url->link(\'extension/module/ocfilter\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n					\'children\' => array()\r\n				);\r\n			}\r\n\r\n			if ($ocfilter) {\r\n				$catalog[] = array(\r\n					\'name\'	   => $this->language->get(\'text_ocfilter\'),\r\n					\'href\'     => \'\',\r\n					\'children\' => $ocfilter\r\n				);\r\n			}\r\n		  // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/controller/common/column_left.php -->\r\n  <!-- /CONTROLLER -->\r\n\r\n  <!-- LANGUAGE -->\r\n	<file path=\"admin/language/{en}*/catalog/product.php\">\r\n    <operation>\r\n      <search><![CDATA[$_[\'text_success\']]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n// OCFilter start\r\n$_[\'entry_values\']          		= \'Add the values ​​for this option.\';\r\n$_[\'tab_ocfilter\']          		= \'OCFilter Options\';\r\n$_[\'ocfilter_select_category\'] 	= \'To start, select a category for this product.\';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"admin/language/{ru}*/catalog/product.php\">\r\n    <operation>\r\n      <search><![CDATA[$_[\'text_success\']]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n// OCFilter start\r\n$_[\'entry_values\']          		= \'Добавьте значения для этой опции.\';\r\n$_[\'tab_ocfilter\']          		= \'Опции фильтра\';\r\n$_[\'ocfilter_select_category\'] 	= \'Для начала, выберите категории для этого товара.\';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"admin/language/{en}*/common/column_left.php\">\r\n    <operation>\r\n      <search><![CDATA[$_[\'text_option\']]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n// OCFilter start\r\n$_[\'text_ocfilter\']                    = \'OCFilter\';\r\n$_[\'text_ocfilter_option\']             = \'Filters\';\r\n$_[\'text_ocfilter_page\']               = \'SEO Pages\';\r\n$_[\'text_ocfilter_setting\']            = \'Settings\';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"admin/language/{ru}*/common/column_left.php\">\r\n    <operation>\r\n      <search><![CDATA[$_[\'text_option\']]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n// OCFilter start\r\n$_[\'text_ocfilter\']                    = \'OCFilter\';\r\n$_[\'text_ocfilter_option\']             = \'Фильтры\';\r\n$_[\'text_ocfilter_page\']               = \'Страницы\';\r\n$_[\'text_ocfilter_setting\']            = \'Настройки\';\r\n// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <!-- /LANGUAGE -->\r\n\r\n  <!-- MODEL -->\r\n	<file path=\"admin/model/catalog/product.php\">\r\n    <operation>\r\n      <search><![CDATA[if (isset($data[\'product_layout\'])) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n    // OCFilter start\r\n    $this->db->query(\"DELETE FROM \" . DB_PREFIX . \"ocfilter_option_value_to_product WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n\r\n		if (isset($data[\'ocfilter_product_option\'])) {\r\n			foreach ($data[\'ocfilter_product_option\'] as $option_id => $values) {\r\n				foreach ($values[\'values\'] as $value_id => $value) {\r\n					if (isset($value[\'selected\'])) {\r\n						$this->db->query(\"INSERT INTO \" . DB_PREFIX . \"ocfilter_option_value_to_product SET product_id = \'\" . (int)$product_id . \"\', option_id = \'\" . (int)$option_id . \"\', value_id = \'\" . (string)$value_id . \"\', slide_value_min = \'\" . (isset($value[\'slide_value_min\']) ? (float)$value[\'slide_value_min\'] : 0) . \"\', slide_value_max = \'\" . (isset($value[\'slide_value_max\']) ? (float)$value[\'slide_value_max\'] : 0) . \"\'\");\r\n					}\r\n				}\r\n			}\r\n		}\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[$data[\'product_attribute\'] = $this->getProductAttributes($product_id);]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n 		// OCFilter start\r\n		$this->load->model(\'extension/ocfilter\');\r\n\r\n		$data[\'ocfilter_product_option\'] = $this->model_extension_ocfilter->getProductOCFilterValues($product_id);\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n    <operation>\r\n      <search><![CDATA[$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"product WHERE product_id = \'\" . (int)$product_id . \"\'\");]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n		// OCFilter start\r\n		$this->db->query(\"DELETE FROM \" . DB_PREFIX . \"ocfilter_option_value_to_product WHERE product_id = \'\" . (int)$product_id . \"\'\");\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/model/catalog/product.php -->\r\n\r\n  <!-- /MODEL -->\r\n\r\n  <!-- VIEW -->\r\n	<file path=\"admin/view/template/catalog/product_form.twig\">\r\n    <operation>\r\n      <search index=\"0\"><![CDATA[<script type=\"text/javascript\">]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n  <!-- OCFilter start -->\r\n  <script>\r\n      ocfilter.php = {\r\n      	text_select: \'{{ text_select }}\',\r\n      	ocfilter_select_category: \'{{ ocfilter_select_category }}\',\r\n      	entry_values: \'{{ entry_values }}\',\r\n      	tab_ocfilter: \'{{ tab_ocfilter }}\'\r\n      };\r\n\r\n      ocfilter.php.languages = [];\r\n\r\n      {% for language in languages %}\r\n      ocfilter.php.languages.push({\r\n      	\'language_id\': {{ language.language_id }},\r\n      	\'name\': \'{{ language.name }}\',\r\n        \'image\': \'{{ language.image }}\'\r\n      });\r\n      {% endfor %}\r\n  </script>\r\n  <!-- OCFilter end -->\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /admin/view/template/catalog/product_form.twig -->\r\n  <!-- /VIEW -->\r\n\r\n  <!-- CATALOG -->\r\n\r\n  <file path=\"catalog/controller/startup/startup.php\">\r\n    <operation>\r\n      <search><![CDATA[Cart($this->registry));]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n		// OCFilter\r\n		$this->registry->set(\'ocfilter\', new OCFilter($this->registry));\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"catalog/controller/startup/seo_url.php\">\r\n    <operation>\r\n      <search><![CDATA[$this->url->addRewrite($this);]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n      // OCFilter start\r\n      if ($this->registry->has(\'ocfilter\')) {\r\n  			$this->url->addRewrite($this->ocfilter);\r\n  		}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"catalog/controller/{common,startup}/seo_pro.php\">\r\n    <operation>\r\n      <search><![CDATA[$this->url->addRewrite($this);]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n      // OCFilter start\r\n      if ($this->registry->has(\'ocfilter\')) {\r\n  			$this->url->addRewrite($this->ocfilter);\r\n  		}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"catalog/controller/{common,startup}/seo_pro.php\">\r\n    <operation>\r\n      <search><![CDATA[$this->url->addRewrite($this, $lang_data);]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n      // OCFilter start\r\n      if ($this->registry->has(\'ocfilter\')) {\r\n  			$this->url->addRewrite($this->ocfilter);\r\n  		}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"catalog/model/catalog/product.php\">\r\n    <operation>\r\n      <search><![CDATA[$sql .= \" LEFT JOIN \" . DB_PREFIX . \"product_description]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n		// OCFilter start\r\n		if (!empty($data[\'filter_ocfilter\'])) {\r\n    	$this->load->model(\'extension/module/ocfilter\');\r\n\r\n      $ocfilter_product_sql = $this->model_extension_module_ocfilter->getSearchSQL($data[\'filter_ocfilter\']);\r\n		} else {\r\n      $ocfilter_product_sql = false;\r\n    }\r\n\r\n    if ($ocfilter_product_sql && $ocfilter_product_sql->join) {\r\n    	$sql .= $ocfilter_product_sql->join;\r\n    }\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[if (!empty($data[\'filter_manufacturer_id]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n    // OCFilter start\r\n    if (!empty($ocfilter_product_sql) && $ocfilter_product_sql->where) {\r\n    	$sql .= $ocfilter_product_sql->where;\r\n    }\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"catalog/controller/product/category.php\">\r\n    <operation>\r\n      <search index=\"0\"><![CDATA[$data[\'breadcrumbs\'] = array();]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n		// OCFilter start\r\n    if (isset($this->request->get[\'filter_ocfilter\'])) {\r\n      $filter_ocfilter = $this->request->get[\'filter_ocfilter\'];\r\n    } else {\r\n      $filter_ocfilter = \'\';\r\n    }\r\n		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <!-- Filter params to product model -->\r\n\r\n    <operation>\r\n      <search><![CDATA[$product_total =]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n  		// OCFilter start\r\n  		$filter_data[\'filter_ocfilter\'] = $filter_ocfilter;\r\n\r\n      if ($this->config->get(\'module_ocfilter_sub_category\')) {\r\n        if (empty($filter_data[\'filter_sub_category\'])) {\r\n          $filter_data[\'filter_sub_category\'] = true;\r\n        }\r\n\r\n        if (isset($this->request->get[\'filter_ocfilter\'])) {\r\n          $data[\'categories\'] = array();\r\n        }\r\n      }\r\n  		// OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <!-- Add url -->\r\n\r\n    <operation>\r\n      <search index=\"2\"><![CDATA[if (isset($this->request->get[\'filter\'])) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      // OCFilter start\r\n			if (isset($this->request->get[\'filter_ocfilter\'])) {\r\n				$url .= \'&filter_ocfilter=\' . $this->request->get[\'filter_ocfilter\'];\r\n			}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search index=\"3\"><![CDATA[if (isset($this->request->get[\'filter\'])) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      // OCFilter start\r\n			if (isset($this->request->get[\'filter_ocfilter\'])) {\r\n				$url .= \'&filter_ocfilter=\' . $this->request->get[\'filter_ocfilter\'];\r\n			}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search index=\"4\"><![CDATA[if (isset($this->request->get[\'filter\'])) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n      // OCFilter start\r\n			if (isset($this->request->get[\'filter_ocfilter\'])) {\r\n				$url .= \'&filter_ocfilter=\' . $this->request->get[\'filter_ocfilter\'];\r\n			}\r\n      // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search limit=\"1\"><![CDATA[$data[\'limit\'] = $limit;]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n      // OCFilter Start\r\n      if ($this->ocfilter->getParams()) {\r\n        if (isset($product_total) && !$product_total) {\r\n      	  $this->response->redirect($this->url->link(\'product/category\', \'path=\' . $this->request->get[\'path\']));\r\n        }\r\n\r\n        if (isset($data[\'description_bottom\'])) {\r\n          $data[\'description_bottom\'] = \'\';\r\n        }\r\n\r\n        if (isset($data[\'description_2\'])) {\r\n          $data[\'description_2\'] = \'\';\r\n        }\r\n\r\n        if (isset($data[\'description\'])) {\r\n          $data[\'description\'] = \'\';\r\n        }\r\n\r\n        if (isset($data[\'ext_description\'])) {\r\n          $data[\'ext_description\'] = \'\';\r\n        }\r\n\r\n        $this->document->setTitle($this->ocfilter->getPageMetaTitle($this->document->getTitle()));\r\n			  $this->document->setDescription($this->ocfilter->getPageMetaDescription($this->document->getDescription()));\r\n        $this->document->setKeywords($this->ocfilter->getPageMetaKeywords($this->document->getKeywords()));\r\n\r\n        $data[\'heading_title\'] = $data[\'seo_h1\'] = $this->ocfilter->getPageHeadingTitle($data[\'heading_title\']);\r\n\r\n        if (isset($data[\'description_bottom\'])) {\r\n          $data[\'description_bottom\'] = $this->ocfilter->getPageDescription();\r\n        } else if (isset($data[\'description_2\'])) {\r\n          $data[\'description_2\'] = $this->ocfilter->getPageDescription();\r\n        } else if (isset($data[\'description\'])) {\r\n          $data[\'description\'] = $this->ocfilter->getPageDescription();\r\n        } else if (isset($data[\'ext_description\'])) {\r\n          $data[\'ext_description\'] = $this->ocfilter->getPageDescription();\r\n        }\r\n\r\n        if (!trim(strip_tags(html_entity_decode($data[\'description\'], ENT_QUOTES, \'UTF-8\')))) {\r\n        	$data[\'thumb\'] = \'\';\r\n        }\r\n\r\n        $breadcrumb = $this->ocfilter->getPageBreadCrumb();\r\n\r\n        if ($breadcrumb) {\r\n  			  $data[\'breadcrumbs\'][] = $breadcrumb;\r\n        }\r\n\r\n        $this->document->deleteLink(\'canonical\');\r\n        $this->document->deleteLink(\'prev\');\r\n        $this->document->deleteLink(\'next\');\r\n\r\n        if ($page > 1) {\r\n          $this->document->addLink($this->url->link(\'product/category\', \'path=\' . $category_info[\'category_id\'] . \'&filter_ocfilter=\' . $this->request->get[\'filter_ocfilter\'], true), \'canonical\');\r\n        }\r\n\r\n  			if ($page == 2) {\r\n  			  $this->document->addLink($this->url->link(\'product/category\', \'path=\' . $category_info[\'category_id\'] . \'&filter_ocfilter=\' . $this->request->get[\'filter_ocfilter\'], true), \'prev\');\r\n  			} else if ($page > 2) {\r\n  			  $this->document->addLink($this->url->link(\'product/category\', \'path=\' . $category_info[\'category_id\'] . \'&filter_ocfilter=\' . $this->request->get[\'filter_ocfilter\'] . \'&page=\' . ($page - 1), true), \'prev\');\r\n  			}\r\n\r\n  			if ($limit && ceil($product_total / $limit) > $page) {\r\n  			  $this->document->addLink($this->url->link(\'product/category\', \'path=\' . $category_info[\'category_id\'] . \'&filter_ocfilter=\' . $this->request->get[\'filter_ocfilter\'] . \'&page=\' . ($page + 1), true), \'next\');\r\n  			}\r\n      }\r\n      // OCFilter End\r\n      ]]></add>\r\n    </operation>\r\n  </file><!-- /catalog/controller/product/category.php -->\r\n\r\n  <!-- Document Noindex & Canonical -->\r\n\r\n	<file path=\"system/library/document.php\">\r\n    <operation>\r\n      <search index=\"0\"><![CDATA[public function getLinks]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n  // OCFilter canonical fix start\r\n	public function deleteLink($rel) {\r\n    foreach ($this->links as $href => $link) {\r\n      if ($link[\'rel\'] == $rel) {\r\n      	unset($this->links[$href]);\r\n      }\r\n    }\r\n	}\r\n  // OCFilter canonical fix end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[private $keywords;]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n  // OCFilter start\r\n  private $noindex = false;\r\n  // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n\r\n    <operation>\r\n      <search><![CDATA[public function setTitle($title) {]]></search>\r\n      <add position=\"before\"><![CDATA[\r\n  // OCFilter start\r\n  public function setNoindex($state = false) {\r\n  	$this->noindex = $state;\r\n  }\r\n\r\n	public function isNoindex() {\r\n		return $this->noindex;\r\n	}\r\n  // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <!-- Seo Pro Fix -->\r\n\r\n	<file path=\"system/library/seopro.php\">\r\n    <operation>\r\n      <search index=\"0\"><![CDATA[validate() {]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n    $this->detectAjax();\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n	<file path=\"catalog/controller/common/header.php\">\r\n    <operation>\r\n      <search><![CDATA[getTitle();]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n    // OCFilter start\r\n    $data[\'noindex\'] = $this->document->isNoindex();\r\n    // OCFilter end\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n\r\n  <file path=\"catalog/view/theme/*/template/common/header.twig\">\r\n    <operation>\r\n      <search><![CDATA[</title>]]></search>\r\n      <add position=\"after\"><![CDATA[\r\n{% if noindex %}\r\n<!-- OCFilter Start -->\r\n<meta name=\"robots\" content=\"noindex,nofollow\" />\r\n<!-- OCFilter End -->\r\n{% endif %}\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n</modification>', 1, '2022-11-13 10:12:49', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Категории', 'banner', '{\"name\":\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Производители - Главная страница', 'carousel', '{\"name\":\"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u0434\\u0438\\u0442\\u0435\\u043b\\u0438 - \\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"87\",\"status\":\"1\"}'),
(27, 'Слайдшоу - Главная страница', 'slideshow', '{\"name\":\"\\u0421\\u043b\\u0430\\u0439\\u0434\\u0448\\u043e\\u0443 - \\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"banner_id\":\"7\",\"width\":\"1903\",\"height\":\"850\",\"status\":\"1\"}'),
(31, 'Баннер 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Левый баннер - Боковая панель', 'banner', '{\"name\":\"\\u041b\\u0435\\u0432\\u044b\\u0439 \\u0431\\u0430\\u043d\\u043d\\u0435\\u0440 - \\u0411\\u043e\\u043a\\u043e\\u0432\\u0430\\u044f \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c\",\"banner_id\":\"9\",\"width\":\"242\",\"height\":\"320\",\"status\":\"1\"}'),
(35, 'Логотипы платежных систем – Нижняя часть подвала', 'html', '{\"name\":\"\\u041b\\u043e\\u0433\\u043e\\u0442\\u0438\\u043f\\u044b \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436\\u043d\\u044b\\u0445 \\u0441\\u0438\\u0441\\u0442\\u0435\\u043c\\u00a0\\u2013 \\u041d\\u0438\\u0436\\u043d\\u044f\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u043f\\u043e\\u0434\\u0432\\u0430\\u043b\\u0430\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;paiement_logo_block footer-block&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/visa.jpg&quot; alt=&quot;visa&quot; width=&quot;89&quot; height=&quot;30&quot;&gt;&amp;nbsp;\\r\\n&lt;img src=&quot;image\\/catalog\\/mastercard.jpg&quot; alt=&quot;mastercard&quot; width=&quot;48&quot; height=&quot;30&quot;&gt;&amp;nbsp;\\r\\n&lt;img src=&quot;image\\/catalog\\/mir.jpg&quot; alt=&quot;mir&quot; width=&quot;100&quot; height=&quot;30&quot;&gt;\\r\\n&lt;\\/div&gt;\"},\"1\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;paiement_logo_block footer-block&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/american_express.png&quot; alt=&quot;american_express&quot; width=&quot;40&quot; height=&quot;25&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/visa.png&quot; alt=&quot;visa&quot; width=&quot;40&quot; height=&quot;25&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/master_card.png&quot; alt=&quot;master_card&quot; width=&quot;40&quot; height=&quot;25&quot;&gt;\\r\\n&lt;img src=&quot;image\\/catalog\\/paypal.png&quot; alt=&quot;paypal&quot; width=&quot;40&quot; height=&quot;25&quot;&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(37, 'Блок Баннеры - Главная страница', 'html', '{\"name\":\"\\u0411\\u043b\\u043e\\u043a \\u0411\\u0430\\u043d\\u043d\\u0435\\u0440\\u044b - \\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czbannercmsblock&quot; class=&quot;block czbanners&quot;&gt; \\r\\n&lt;div class=&quot;cmsbanners&quot;&gt;\\r\\n&lt;div class=&quot;one-fourth cmsbanner-part1&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-top&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-1.jpg&quot; alt=&quot;cms-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;12 \\u0448\\u0442.&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430 1&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-bottom&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner2&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-2.jpg&quot; alt=&quot;cms-banner2&quot; class=&quot;banner-image2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;10 \\u0448\\u0442.&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430 2&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-fourth cmsbanner-part2&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner3&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-3.jpg&quot; alt=&quot;cms-banner3&quot; class=&quot;banner-image3&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;15 \\u0448\\u0442.&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430 3&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-fourth cmsbanner-part3&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-top&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner4&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-4.jpg&quot; alt=&quot;cms-banner4&quot; class=&quot;banner-image4&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;17 \\u0448\\u0442.&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430 4&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-bottom&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner5&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-5.jpg&quot; alt=&quot;cms-banner5&quot; class=&quot;banner-image5&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;10 \\u0448\\u0442.&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430 5&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-fourth cmsbanner-part4&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-top&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner6&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-6.jpg&quot; alt=&quot;cms-banner6&quot; class=&quot;banner-image6&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;18 \\u0448\\u0442.&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430 6&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-bottom&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner7&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-7.jpg&quot; alt=&quot;cms-banner7&quot; class=&quot;banner-image7&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;20 \\u0448\\u0442.&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435 \\u0442\\u043e\\u0432\\u0430\\u0440\\u0430 7&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czbannercmsblock&quot; class=&quot;block czbanners&quot;&gt; \\r\\n&lt;div class=&quot;cmsbanners&quot;&gt;\\r\\n&lt;div class=&quot;one-fourth cmsbanner-part1&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-top&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner1&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-1.jpg&quot; alt=&quot;cms-banner1&quot; class=&quot;banner-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;12 Items&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;Long Black Coffee&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-bottom&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner2&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-2.jpg&quot; alt=&quot;cms-banner2&quot; class=&quot;banner-image2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;10 Items&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;Fresh Cappuccino&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-fourth cmsbanner-part2&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner3&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-3.jpg&quot; alt=&quot;cms-banner3&quot; class=&quot;banner-image3&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;15 Items&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;Flate White Coffee&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-fourth cmsbanner-part3&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-top&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner4&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-4.jpg&quot; alt=&quot;cms-banner4&quot; class=&quot;banner-image4&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;17 Items&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;Piccolo Latte Coffee&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-bottom&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner5&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-5.jpg&quot; alt=&quot;cms-banner5&quot; class=&quot;banner-image5&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;10 Items&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;Espresso Coffee&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;one-fourth cmsbanner-part4&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-top&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner6&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-6.jpg&quot; alt=&quot;cms-banner6&quot; class=&quot;banner-image6&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;18 Items&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;Cortado Coffee&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cmsbanner-inner banner-bottom&quot;&gt;\\r\\n&lt;div class=&quot;cmsbanner cmsbanner7&quot;&gt;&lt;a href=&quot;#&quot; class=&quot;banner-anchor&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-banner-7.jpg&quot; alt=&quot;cms-banner7&quot; class=&quot;banner-image7&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;div class=&quot;cmsbanner-text&quot;&gt;\\r\\n&lt;div class=&quot;quantity-title&quot;&gt;20 Items&lt;\\/div&gt;\\r\\n&lt;div class=&quot;cms-title&quot;&gt;Mocha Coffee Cup&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(59, 'Вкладки категорий товаров - Главная страница', 'category_tab', '{\"name\":\"\\u0412\\u043a\\u043b\\u0430\\u0434\\u043a\\u0438 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0439 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 - \\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"heading\":\"\",\"category\":\"\",\"product_category\":[\"20\",\"17\",\"58\",\"24\"],\"category_limit\":\"5\",\"product_limit\":\"10\",\"width\":\"328\",\"height\":\"328\",\"status\":\"1\"}'),
(38, 'Блок Услуги - Главная страница', 'html', '{\"name\":\"\\u0411\\u043b\\u043e\\u043a \\u0423\\u0441\\u043b\\u0443\\u0433\\u0438 - \\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czservicecmsblock&quot;&gt;\\r\\n&lt;div class=&quot;service_container container&quot;&gt;\\r\\n&lt;div class=&quot;service-area&quot;&gt;\\r\\n&lt;div class=&quot;service-fourth service1&quot;&gt;\\r\\n&lt;div class=&quot;service-icon icon1&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-content&quot;&gt;\\r\\n&lt;div class=&quot;service-heading&quot;&gt;\\u0411\\u044b\\u0441\\u0442\\u0440\\u0430\\u044f \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-description&quot;&gt;\\u0412 \\u0442\\u0435\\u0447\\u0435\\u043d\\u0438\\u0435 30 \\u043c\\u0438\\u043d\\u0443\\u0442 \\u043f\\u043e\\u0441\\u043b\\u0435 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0430&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-fourth service2&quot;&gt;\\r\\n&lt;div class=&quot;service-icon icon2&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-content&quot;&gt;\\r\\n&lt;div class=&quot;service-heading&quot;&gt;\\u0411\\u043e\\u043d\\u0443\\u0441\\u044b \\u0438 \\u043d\\u0430\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u044f&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-description&quot;&gt;\\u041a\\u044d\\u0448\\u0431\\u044d\\u043a \\u0434\\u043e 10%&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-fourth service3&quot;&gt;\\r\\n&lt;div class=&quot;service-icon icon3&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-content&quot;&gt;\\r\\n&lt;div class=&quot;service-heading&quot;&gt;\\u041c\\u044b \\u0440\\u0430\\u0431\\u043e\\u0442\\u0430\\u0435\\u043c 24\\/7&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-description&quot;&gt;\\u041a\\u0440\\u0443\\u0433\\u043b\\u043e\\u0441\\u0443\\u0442\\u043e\\u0447\\u043d\\u044b\\u0439 \\u043e\\u043d\\u043b\\u0430\\u0439\\u043d-\\u043f\\u0440\\u0438\\u0451\\u043c \\u0437\\u0430\\u043a\\u0430\\u0437\\u043e\\u0432&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-fourth service4&quot;&gt;\\r\\n&lt;div class=&quot;service-icon icon4&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-content&quot;&gt;\\r\\n&lt;div class=&quot;service-heading&quot;&gt;\\u0415\\u0436\\u0435\\u0434\\u043d\\u0435\\u0432\\u043d\\u044b\\u0435 \\u0430\\u043a\\u0446\\u0438\\u0438 \\u0438 \\u0441\\u043a\\u0438\\u0434\\u043a\\u0438&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-description&quot;&gt;\\u041f\\u0440\\u0438 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0435 3 \\u0447\\u0430\\u0448\\u0435\\u043a \\u043a\\u043e\\u0444\\u0435, \\u0431\\u0443\\u0442\\u0435\\u0440\\u0431\\u0440\\u043e\\u0434 \\u0432 \\u043f\\u043e\\u0434\\u0430\\u0440\\u043e\\u043a&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czservicecmsblock&quot;&gt;\\r\\n&lt;div class=&quot;service_container container&quot;&gt;\\r\\n&lt;div class=&quot;service-area&quot;&gt;\\r\\n&lt;div class=&quot;service-fourth service1&quot;&gt;\\r\\n&lt;div class=&quot;service-icon icon1&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-content&quot;&gt;\\r\\n&lt;div class=&quot;service-heading&quot;&gt;Fastest Delivery&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-description&quot;&gt;Lorem Ipsum is simply dummy text&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-fourth service2&quot;&gt;\\r\\n&lt;div class=&quot;service-icon icon2&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-content&quot;&gt;\\r\\n&lt;div class=&quot;service-heading&quot;&gt;Return Exchange&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-description&quot;&gt;Lorem Ipsum is simply dummy text&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-fourth service3&quot;&gt;\\r\\n&lt;div class=&quot;service-icon icon3&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-content&quot;&gt;\\r\\n&lt;div class=&quot;service-heading&quot;&gt;Customer Center&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-description&quot;&gt;Lorem Ipsum is simply dummy text&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-fourth service4&quot;&gt;\\r\\n&lt;div class=&quot;service-icon icon4&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-content&quot;&gt;\\r\\n&lt;div class=&quot;service-heading&quot;&gt;Quality Support&lt;\\/div&gt;\\r\\n&lt;div class=&quot;service-description&quot;&gt;Lorem Ipsum is simply dummy text&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(39, 'Блок Отзывы - Главная страница', 'html', '{\"name\":\"\\u0411\\u043b\\u043e\\u043a \\u041e\\u0442\\u0437\\u044b\\u0432\\u044b - \\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;cztestimonialcmsblock&quot;&gt;\\r\\n&lt;div class=&quot;testimonial_container container&quot;&gt;\\r\\n&lt;div class=&quot;testimonial_wrapper&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-area&quot;&gt;\\r\\n&lt;ul id=&quot;testimonial-carousel&quot; class=&quot;cz-carousel product_list&quot;&gt;\\r\\n&lt;li class=&quot;slider-item&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-item&quot;&gt;\\r\\n&lt;div class=&quot;item cms_face&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/user1.jpg&quot; alt=&quot;testimonial-user1&quot; title=&quot;testimonial-user1&quot; width=&quot;105&quot; height=&quot;105&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;\\r\\n&lt;div class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;\\u0418\\u043c\\u044f \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1&lt;\\/a&gt;\\r\\n&lt;span class=&quot;subheading&quot;&gt;(\\u0433. \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430)&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;quote_img&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;product_inner_cms&quot;&gt;\\r\\n&lt;div class=&quot;des&quot;&gt;\\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 1... &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li class=&quot;slider-item&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-item&quot;&gt;\\r\\n&lt;div class=&quot;item cms_face&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/user2.jpg&quot; alt=&quot;testimonial-user2&quot; title=&quot;testimonial-user2&quot; width=&quot;105&quot; height=&quot;105&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;\\r\\n&lt;div class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;\\u0418\\u043c\\u044f \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2&lt;\\/a&gt;\\r\\n&lt;span class=&quot;subheading&quot;&gt;(\\u0433. \\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433)&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;quote_img&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;product_inner_cms&quot;&gt;\\r\\n&lt;div class=&quot;des&quot;&gt;\\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 2...&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li class=&quot;slider-item&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-item&quot;&gt;\\r\\n&lt;div class=&quot;item cms_face&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/user3.jpg&quot; alt=&quot;testimonial-user3&quot; title=&quot;testimonial-user3&quot; width=&quot;105&quot; height=&quot;105&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;\\r\\n&lt;div class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;\\u0418\\u043c\\u044f \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3&lt;\\/a&gt;\\r\\n&lt;span class=&quot;subheading&quot;&gt;(\\u0433. \\u041d\\u043e\\u0432\\u043e\\u0441\\u0438\\u0431\\u0438\\u0440\\u0441\\u043a)&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;quote_img&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;product_inner_cms&quot;&gt;\\r\\n&lt;div class=&quot;des&quot;&gt;\\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3... \\u041e\\u0442\\u0437\\u044b\\u0432 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f 3... &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;cztestimonialcmsblock&quot;&gt;\\r\\n&lt;div class=&quot;testimonial_container container&quot;&gt;\\r\\n&lt;div class=&quot;testimonial_wrapper&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-area&quot;&gt;\\r\\n&lt;ul id=&quot;testimonial-carousel&quot; class=&quot;cz-carousel product_list&quot;&gt;\\r\\n&lt;li class=&quot;slider-item&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-item&quot;&gt;\\r\\n&lt;div class=&quot;item cms_face&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/user1.jpg&quot; alt=&quot;testimonial-user1&quot; title=&quot;testimonial-user1&quot; width=&quot;105&quot; height=&quot;105&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;\\r\\n&lt;div class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;Mark Jofferson&lt;\\/a&gt;\\r\\n&lt;span class=&quot;subheading&quot;&gt;(CEO)&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;quote_img&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;product_inner_cms&quot;&gt;\\r\\n&lt;div class=&quot;des&quot;&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. LoremIpsum has been the industry\'s standard since the 1500s, Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li class=&quot;slider-item&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-item&quot;&gt;\\r\\n&lt;div class=&quot;item cms_face&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/user2.jpg&quot; alt=&quot;testimonial-user2&quot; title=&quot;testimonial-user2&quot; width=&quot;105&quot; height=&quot;105&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;\\r\\n&lt;div class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;luies charls&lt;\\/a&gt;\\r\\n&lt;span class=&quot;subheading&quot;&gt;(Web CEO)&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;quote_img&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;product_inner_cms&quot;&gt;\\r\\n&lt;div class=&quot;des&quot;&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. LoremIpsum has been the industry\'s standard since the 1500s, Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;li class=&quot;slider-item&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-item&quot;&gt;\\r\\n&lt;div class=&quot;item cms_face&quot;&gt;\\r\\n&lt;div class=&quot;testimonial-image&quot;&gt;&lt;img src=&quot;image\\/catalog\\/user3.jpg&quot; alt=&quot;testimonial-user3&quot; title=&quot;testimonial-user3&quot; width=&quot;105&quot; height=&quot;105&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;title&quot;&gt;\\r\\n&lt;div class=&quot;name&quot;&gt;&lt;a href=&quot;#&quot;&gt;jecob goeckno&lt;\\/a&gt;\\r\\n&lt;span class=&quot;subheading&quot;&gt;(Manager)&lt;\\/span&gt;&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;div class=&quot;quote_img&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;product_inner_cms&quot;&gt;\\r\\n&lt;div class=&quot;des&quot;&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. LoremIpsum has been the industry\'s standard since the 1500s, Lorem Ipsum is simply dummy text of the printing and typesetting industry.&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(62, 'Блок Инстаграм - Главная страница', 'instagram', '{\"name\":\"\\u0411\\u043b\\u043e\\u043a \\u0418\\u043d\\u0441\\u0442\\u0430\\u0433\\u0440\\u0430\\u043c - \\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"user_id\":\"4259751768\",\"access_token\":\"4259751768.1677ed0.a0cf8fd1499342d88a5a4e7c7e76791a\",\"item\":\"15\",\"status\":\"0\"}'),
(40, 'Товары по акции - Боковая панель', 'special', '{\"name\":\"\\u0422\\u043e\\u0432\\u0430\\u0440\\u044b \\u043f\\u043e \\u0430\\u043a\\u0446\\u0438\\u0438 - \\u0411\\u043e\\u043a\\u043e\\u0432\\u0430\\u044f \\u043f\\u0430\\u043d\\u0435\\u043b\\u044c\",\"limit\":\"3\",\"width\":\"85\",\"height\":\"85\",\"status\":\"1\"}'),
(43, 'Последние статьи из блога - Главная страница', 'blogger', '{\"module_id\":\"43\",\"name\":\"\\u041f\\u043e\\u0441\\u043b\\u0435\\u0434\\u043d\\u0438\\u0435 \\u0441\\u0442\\u0430\\u0442\\u044c\\u0438 \\u0438\\u0437 \\u0431\\u043b\\u043e\\u0433\\u0430 - \\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"status\":\"1\",\"width\":\"1098\",\"height\":\"1069\",\"limit\":\"6\",\"char_limit\":\"220\",\"comments\":\"1\",\"login\":\"1\",\"auto_approve\":\"0\"}'),
(55, 'Блок Подвал - Левая часть подвала', 'html', '{\"name\":\"\\u0411\\u043b\\u043e\\u043a \\u041f\\u043e\\u0434\\u0432\\u0430\\u043b - \\u041b\\u0435\\u0432\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u043f\\u043e\\u0434\\u0432\\u0430\\u043b\\u0430\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czfootercmsblock&quot; class=&quot;footer-cms-block&quot;&gt;  \\r\\n&lt;div class=&quot;footerdiv&quot;&gt;\\r\\n&lt;div class=&quot;footerlogo&quot;&gt;&lt;img src=&quot;image\\/catalog\\/logo.png&quot;&gt;&lt;\\/div&gt;\\r\\n&lt;div class=&quot;footerdesc&quot;&gt;\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435...&lt;\\/div&gt;\\r\\n&lt;\\/div&gt; \\r\\n&lt;div class=&quot;footercms-inner&quot;&gt;\\r\\n&lt;a class=&quot;footercms&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-footer-1.png&quot; alt=&quot;cms-footer1&quot; class=&quot;footercms-image1&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;a class=&quot;footercms&quot; href=&quot;#&quot;&gt;&lt;img src=&quot;image\\/catalog\\/cms-footer-2.png&quot; alt=&quot;cms-footer2&quot; class=&quot;footercms-image2&quot;&gt;&lt;\\/a&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(63, 'Блок Социальные сети - Правая часть подвала', 'html', '{\"name\":\"\\u0411\\u043b\\u043e\\u043a \\u0421\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0441\\u0435\\u0442\\u0438 - \\u041f\\u0440\\u0430\\u0432\\u0430\\u044f \\u0447\\u0430\\u0441\\u0442\\u044c \\u043f\\u043e\\u0434\\u0432\\u0430\\u043b\\u0430\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div class=&quot;social-block&quot;&gt;\\r\\n&lt;ul&gt;\\r\\n&lt;li class=&quot;vk&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;\\u0412\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li class=&quot;ok&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;\\u041e\\u0434\\u043d\\u043e\\u043a\\u043b\\u0430\\u0441\\u0441\\u043d\\u0438\\u043a\\u0438&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li class=&quot;telegram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;\\u0422\\u0435\\u043b\\u0435\\u0433\\u0440\\u0430\\u043c&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Facebook&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Twitter&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li class=&quot;youtube&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;YouTube&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li class=&quot;googleplus&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Google +&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;li class=&quot;instagram&quot;&gt;&lt;a href=&quot;#&quot;&gt;&lt;span&gt;Instagram&lt;\\/span&gt;&lt;\\/a&gt;&lt;\\/li&gt;\\r\\n&lt;\\/ul&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(61, 'Блок О магазине - Главная страница', 'html', '{\"name\":\"\\u0411\\u043b\\u043e\\u043a \\u041e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435 - \\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\"module_description\":{\"2\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czaboutcmsblock&quot; class=&quot;about-cms-block&quot;&gt;\\r\\n&lt;div class=&quot;container&quot;&gt;\\r\\n&lt;div class=&quot;box-heading&quot;&gt;\\u041e \\u043d\\u0430\\u0441&lt;\\/div&gt;\\r\\n&lt;div class=&quot;about-store&quot;&gt;\\r\\n&lt;div class=&quot;about-store-inner&quot;&gt;\\r\\n&lt;div class=&quot;aboutus-text&quot;&gt;\\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... \\u0418\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f \\u043e \\u043a\\u043e\\u0444\\u0435\\u0439\\u043d\\u0435... &lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"},\"1\":{\"title\":\"\",\"description\":\"&lt;div id=&quot;czaboutcmsblock&quot; class=&quot;about-cms-block&quot;&gt;\\r\\n&lt;div class=&quot;container&quot;&gt;\\r\\n&lt;div class=&quot;box-heading&quot;&gt;Our Little Story&lt;\\/div&gt;\\r\\n&lt;div class=&quot;about-store&quot;&gt;\\r\\n&lt;div class=&quot;about-store-inner&quot;&gt;\\r\\n&lt;div class=&quot;aboutus-text&quot;&gt;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever \\r\\n  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy since the 1500s, when an unknown printer \\r\\n  took a galley of type and scrambled it to make a type specimen book&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\\r\\n&lt;\\/div&gt;\"}},\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_newsletter`
--

CREATE TABLE `oc_newsletter` (
  `news_id` int(11) NOT NULL,
  `news_email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option`
--

CREATE TABLE `oc_ocfilter_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(16) NOT NULL DEFAULT 'checkbox',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `selectbox` tinyint(1) NOT NULL DEFAULT '0',
  `grouping` tinyint(2) NOT NULL DEFAULT '0',
  `color` tinyint(1) NOT NULL DEFAULT '0',
  `image` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option`
--

INSERT INTO `oc_ocfilter_option` (`option_id`, `type`, `keyword`, `selectbox`, `grouping`, `color`, `image`, `status`, `sort_order`) VALUES
(10001, 'checkbox', '', 0, 0, 0, 0, 0, 1),
(10002, 'checkbox', 'kolichestvo-jader', 0, 0, 0, 0, 1, 5),
(10003, 'checkbox', 'taktovaja-chastota', 0, 0, 0, 0, 1, 3),
(10004, 'checkbox', 'test-1', 0, 0, 0, 0, 1, 1),
(10005, 'checkbox', '', 0, 0, 0, 0, 0, 2),
(10006, 'checkbox', '', 0, 0, 0, 0, 0, 3),
(10007, 'checkbox', '', 0, 0, 0, 0, 0, 4),
(10008, 'checkbox', '', 0, 0, 0, 0, 0, 5),
(10009, 'checkbox', '', 0, 0, 0, 0, 0, 6),
(10010, 'checkbox', '', 0, 0, 0, 0, 0, 7),
(10011, 'checkbox', '', 0, 0, 0, 0, 0, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_description`
--

CREATE TABLE `oc_ocfilter_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` tinyint(2) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `postfix` varchar(32) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_description`
--

INSERT INTO `oc_ocfilter_option_description` (`option_id`, `language_id`, `name`, `postfix`, `description`) VALUES
(10001, 1, 'Description', '', ''),
(10002, 1, 'No. of Cores', '', ''),
(10004, 1, 'test 1', '', ''),
(10005, 1, 'test 2', '', ''),
(10006, 1, 'test 3', '', ''),
(10007, 1, 'test 4', '', ''),
(10008, 1, 'test 5', '', ''),
(10009, 1, 'test 6', '', ''),
(10010, 1, 'test 7', '', ''),
(10011, 1, 'test 8', '', ''),
(10003, 1, 'Clockspeed', '', ''),
(10001, 2, 'Описание', '', ''),
(10002, 2, 'Количество ядер', '', ''),
(10004, 2, 'test 1', '', ''),
(10005, 2, 'test 2', '', ''),
(10006, 2, 'test 3', '', ''),
(10007, 2, 'test 4', '', ''),
(10008, 2, 'test 5', '', ''),
(10009, 2, 'test 6', '', ''),
(10010, 2, 'test 7', '', ''),
(10011, 2, 'test 8', '', ''),
(10003, 2, 'Тактовая частота', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_to_category`
--

CREATE TABLE `oc_ocfilter_option_to_category` (
  `option_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_to_category`
--

INSERT INTO `oc_ocfilter_option_to_category` (`option_id`, `category_id`) VALUES
(10002, 17),
(10003, 17),
(10004, 17),
(10002, 18),
(10004, 18),
(10002, 20),
(10003, 20),
(10004, 20),
(10002, 24),
(10003, 24),
(10004, 24),
(10002, 25),
(10003, 25),
(10004, 25),
(10002, 26),
(10003, 26),
(10004, 26),
(10002, 27),
(10003, 27),
(10004, 27),
(10002, 28),
(10003, 28),
(10004, 28),
(10002, 30),
(10003, 30),
(10004, 30),
(10002, 31),
(10003, 31),
(10004, 31),
(10002, 32),
(10004, 32),
(10002, 33),
(10004, 33),
(10002, 37),
(10003, 37),
(10004, 37),
(10002, 38),
(10003, 38),
(10004, 38),
(10003, 39),
(10002, 40),
(10003, 40),
(10004, 40),
(10002, 43),
(10003, 43),
(10004, 43),
(10002, 49),
(10004, 49),
(10002, 50),
(10003, 50),
(10004, 50),
(10002, 51),
(10003, 51),
(10004, 51),
(10003, 52),
(10002, 53),
(10003, 53),
(10004, 53),
(10002, 54),
(10003, 54),
(10004, 54),
(10003, 55),
(10003, 56),
(10002, 57),
(10004, 57),
(10002, 59),
(10003, 59),
(10004, 59);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_to_store`
--

CREATE TABLE `oc_ocfilter_option_to_store` (
  `option_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_to_store`
--

INSERT INTO `oc_ocfilter_option_to_store` (`option_id`, `store_id`) VALUES
(10001, 0),
(10002, 0),
(10003, 0),
(10004, 0),
(10005, 0),
(10006, 0),
(10007, 0),
(10008, 0),
(10009, 0),
(10010, 0),
(10011, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_value`
--

CREATE TABLE `oc_ocfilter_option_value` (
  `value_id` bigint(20) NOT NULL,
  `option_id` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL DEFAULT '',
  `color` varchar(6) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_value`
--

INSERT INTO `oc_ocfilter_option_value` (`value_id`, `option_id`, `keyword`, `color`, `image`, `sort_order`) VALUES
(524560165, 10004, '16gb', '', '', 0),
(842406183, 10003, '100mhz', '', '', 0),
(1897338026, 10004, '8gb', '', '', 0),
(2188934714, 10002, '1', '', '', 0),
(4062032309, 10002, '4', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_value_description`
--

CREATE TABLE `oc_ocfilter_option_value_description` (
  `value_id` bigint(20) NOT NULL,
  `option_id` int(11) NOT NULL,
  `language_id` tinyint(2) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_value_description`
--

INSERT INTO `oc_ocfilter_option_value_description` (`value_id`, `option_id`, `language_id`, `name`) VALUES
(524560165, 10004, 2, '16GB'),
(842406183, 10003, 2, '100mhz'),
(1897338026, 10004, 2, '8gb'),
(2188934714, 10002, 2, '1'),
(4062032309, 10002, 2, '4');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_value_to_product`
--

CREATE TABLE `oc_ocfilter_option_value_to_product` (
  `ocfilter_option_value_to_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value_id` bigint(20) NOT NULL,
  `slide_value_min` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `slide_value_max` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_ocfilter_option_value_to_product`
--

INSERT INTO `oc_ocfilter_option_value_to_product` (`ocfilter_option_value_to_product_id`, `product_id`, `option_id`, `value_id`, `slide_value_min`, `slide_value_max`) VALUES
(1, 43, 10002, 2188934714, '0.0000', '0.0000'),
(2, 42, 10003, 842406183, '0.0000', '0.0000'),
(3, 47, 10004, 524560165, '0.0000', '0.0000'),
(4, 47, 10002, 4062032309, '0.0000', '0.0000'),
(5, 43, 10004, 1897338026, '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_option_value_to_product_description`
--

CREATE TABLE `oc_ocfilter_option_value_to_product_description` (
  `product_id` int(11) NOT NULL,
  `value_id` bigint(20) NOT NULL,
  `option_id` int(11) NOT NULL,
  `language_id` tinyint(2) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_page`
--

CREATE TABLE `oc_ocfilter_page` (
  `ocfilter_page_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `keyword` varchar(255) NOT NULL,
  `params` varchar(255) NOT NULL,
  `over` set('domain','category') NOT NULL DEFAULT 'category',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_ocfilter_page_description`
--

CREATE TABLE `oc_ocfilter_page_description` (
  `ocfilter_page_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Текст'),
(6, 2, 'Текстовая область'),
(8, 2, 'Дата'),
(7, 2, 'Файл'),
(5, 2, 'Выбрать'),
(9, 2, 'Время'),
(10, 2, 'Дата и время'),
(12, 2, 'Дата доставки'),
(11, 2, 'Размер');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Большой'),
(32, 2, 1, 'Маленький'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Средний'),
(42, 2, 5, 'Желтый'),
(41, 2, 5, 'Зеленый'),
(39, 2, 5, 'Красный'),
(40, 2, 5, 'Синий'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Большой'),
(47, 2, 11, 'Средний'),
(46, 2, 11, 'Маленький');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_simple_fields`
--

CREATE TABLE `oc_order_simple_fields` (
  `order_id` int(11) NOT NULL,
  `metadata` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'В обработке'),
(3, 2, 'Доставлено'),
(7, 2, 'Отменено'),
(5, 2, 'Сделка завершена'),
(8, 2, 'Возврат'),
(9, 2, 'Отмена и аннулирование'),
(10, 2, 'Неудавшийся'),
(11, 2, 'Возмещенный'),
(12, 2, 'Полностью измененный'),
(13, 2, 'Полный возврат'),
(1, 2, 'Ожидание'),
(16, 2, 'Аннулированный'),
(15, 2, 'Обработанный'),
(14, 2, 'Просроченный');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 9999, 7, 'catalog/07.jpg', 5, 1, '100.0000', 200, 0, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 12, '2009-02-03 16:06:50', '2022-11-04 21:35:13'),
(29, 'Product 2', '', '', '', '', '', '', '', 9998, 6, 'catalog/06.jpg', 6, 1, '79.9900', 0, 0, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 13, '2009-02-03 16:42:17', '2022-11-04 21:37:09'),
(30, 'Product 3', '', '', '', '', '', '', '', 9999, 6, 'catalog/05.jpg', 9, 1, '95.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 12, '2009-02-03 16:59:00', '2022-11-04 21:37:28'),
(31, 'Product 4', '', '', '', '', '', '', '', 9999, 6, 'catalog/08.jpg', 9, 1, '80.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 12, '2009-02-03 17:00:10', '2022-11-04 21:36:49'),
(32, 'Product 5', '', '', '', '', '', '', '', 9999, 6, 'catalog/14.jpg', 5, 1, '97.0000', 0, 0, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 17, '2009-02-03 17:07:26', '2022-11-04 21:35:19'),
(34, 'Product 7', '', '', '', '', '', '', '', 0, 6, 'catalog/12.jpg', 7, 1, '86.0000', 0, 0, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 14, '2009-02-03 18:07:54', '2022-11-04 21:34:14'),
(35, 'Product 8', '', '', '', '', '', '', '', 10000, 5, 'catalog/03.jpg', 6, 1, '112.0000', 0, 0, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 19, '2009-02-03 18:08:31', '2022-11-04 21:38:02'),
(36, 'Product 9', '', '', '', '', '', '', '', 10000, 6, 'catalog/09.jpg', 8, 1, '98.0000', 100, 0, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 10, '2009-02-03 18:09:19', '2022-11-04 21:36:38'),
(40, 'product 11', '', '', '', '', '', '', '', 9999, 5, 'catalog/13.jpg', 8, 1, '105.0000', 0, 0, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 16, '2009-02-03 21:07:12', '2022-11-04 21:34:27'),
(41, 'Product 14', '', '', '', '', '', '', '', 9999, 5, 'catalog/11.jpg', 8, 1, '68.0000', 0, 0, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 13, '2009-02-03 21:07:26', '2022-11-04 20:30:25'),
(42, 'Product 15', '', '', '', '', '', '', '', 1000, 5, 'catalog/04.jpg', 8, 1, '98.0000', 400, 0, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 18, '2009-02-03 21:07:37', '2022-11-04 21:37:40'),
(43, 'Product 16', '', '', '', '', '', '', '', 9999, 5, 'catalog/02.jpg', 9, 0, '89.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 9, '2009-02-03 21:07:49', '2022-11-04 21:38:21'),
(45, 'Product 18', '', '', '', '', '', '', '', 9999, 5, 'catalog/10.jpg', 5, 1, '118.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 15, '2009-02-03 21:08:17', '2022-11-05 02:23:12'),
(47, 'Product 21', '', '', '', '', '', '', '', 10000, 5, 'catalog/01.jpg', 7, 1, '85.0000', 400, 0, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 24, '2009-02-03 21:08:40', '2022-11-04 20:30:03'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 9999, 5, 'catalog/15.jpg', 8, 1, '115.0000', 0, 0, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 19, '2009-02-08 17:21:51', '2022-11-04 21:35:06');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 2, '1'),
(42, 3, 2, '100mhz'),
(47, 4, 1, '16GB'),
(43, 2, 1, '1'),
(42, 3, 1, '100mhz'),
(47, 4, 2, '16GB'),
(47, 2, 2, '4'),
(47, 2, 1, '4'),
(43, 4, 1, '8gb'),
(43, 4, 2, '8gb');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(40, 1, 'Praesentium Voluptatum', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', 'megastore, furniture, clothes, accessories', 'Praesentium Voluptatum', '', ''),
(29, 2, 'Демо товар 6', '&lt;p&gt;Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6... Описание демо товара 6...&lt;br&gt;&lt;/p&gt;', 'кофе', 'Демо товар 6', '', ''),
(29, 1, 'Laborum Eveniet', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GP&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'megastore, furniture, clothes, accessories', 'Laborum Eveniet', '', ''),
(47, 1, 'Accusantium Doloremque', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', 'fashion, electronics, megastore, furniture', 'Accusantium Doloremque', '', ''),
(32, 2, 'Демо товар 13', '&lt;p&gt;Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13... Описание демо товара 13...&lt;br&gt;&lt;/p&gt;', 'кофе', 'Демо товар 13', '', ''),
(32, 1, 'Reprehenderit Aliquam', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Reprehenderit Aliquam', '', ''),
(41, 1, 'Nostrud Exercitation', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there?s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ?08, and it?s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes', 'Nostrud Exercitation', '', ''),
(35, 2, 'Демо товар 3', '&lt;p&gt;Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3... Описание демо товара 3...&lt;br&gt;&lt;/p&gt;', 'кофе', 'Демо товар 3', '', ''),
(35, 1, 'Commodi Consequatur', '&lt;p&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500&lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe. The result? Cool, easy, chic looks with youthful elegance.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&lt;/p&gt;\r\n\r\n&lt;p&gt;c It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Commodi Consequatur', '', ''),
(48, 2, 'Демо товар 15', 'Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15... Описание демо товара 15...', 'кофе', 'Демо товар 15', '', ''),
(48, 1, 'Voluptates Repudiandae', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'megastore, furniture, clothes, accessories', 'Voluptates Repudiandae', '', ''),
(34, 2, 'Демо товар 11', '&lt;p&gt;Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11... Описание демо товара 11...&lt;br&gt;&lt;/p&gt;', 'кофе', 'Демо товар 11', '', ''),
(34, 1, 'Occasion Praesentium', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes, accessories', 'Occasion Praesentium', '', ''),
(31, 2, 'Демо товар 7', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7... Описание демо товара 7...&lt;br&gt;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'кофе', 'Демо товар 7', '', ''),
(31, 1, 'Laudant Doloremque', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'megastore, furniture, clothes, accessories', 'Laudant Doloremque', '', ''),
(40, 2, 'Демо товар 12', '&lt;p class=&quot;intro&quot;&gt;Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12... Описание демо товара 12...&lt;br&gt;&lt;/p&gt;\r\n', 'кофе', 'Демо товар 12', '', ''),
(28, 2, 'Демо товар 14', '&lt;p&gt;Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14... Описание демо товара 14...&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', 'кофе', 'Демо товар 14', '', ''),
(47, 2, 'Демо товар 1', '&lt;p&gt;Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1... Описание демо товара 1...&lt;br&gt;&lt;/p&gt;\r\n', 'кофе', 'Демо товар 1', '', ''),
(36, 2, 'Демо товар 8', '&lt;div&gt;\r\n	&lt;p&gt;Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8... Описание демо товара 8...&lt;br&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'кофе', 'Демо товар 8', '', ''),
(36, 1, 'Necessitatibus', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'electronics, megastore, furniture, clothes, accessories', 'Necessitatibus', '', ''),
(45, 2, 'Демо товар 9', 'Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9... Описание демо товара 9...', 'кофе', 'Демо товар 9', '', ''),
(45, 1, 'Neque Porro Quisquam', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Neque Porro Quisquam', '', ''),
(43, 2, 'Демо товар 2', 'Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2... Описание демо товара 2...', 'кофе', 'Демо товар 2', '', ''),
(43, 1, 'Aliquam Quaerat', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', 'fashion, electronics, megastore', 'Aliquam Quaerat', '', ''),
(42, 2, 'Демо товар 4', '&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: Helvetica; font-size: small;&quot;&gt;Описание демо товара 4...&lt;/span&gt;&lt;br&gt;', 'кофе', 'Демо товар 4', '', ''),
(42, 1, 'Consectetur Hampden', '&lt;p&gt;&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Consectetur Hampden', '', ''),
(30, 2, 'Демо товар 5', '&lt;p&gt;Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5... Описание демо товара 5...&lt;br&gt;&lt;/p&gt;', 'кофе', 'Демо товар 5', '', ''),
(30, 1, 'Exercitat Virginia', '&lt;p&gt;&lt;b&gt;The standard Lorem Ipsum passage, used since the 1500&lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe. The result? Cool, easy, chic looks with youthful elegance.Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&lt;/p&gt;\r\n\r\n&lt;p&gt;c It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature,&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Contrary to popular belief, Lorem Ipsum is not simply random text. &lt;/b&gt;&lt;/p&gt;\r\n&lt;p&gt;Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.&lt;/p&gt;', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Exercitat Virginia', '', ''),
(41, 2, 'Демо товар 10', '&lt;div&gt;Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10... Описание демо товара 10...&lt;br&gt;&lt;/div&gt;\r\n', 'кофе', 'Демо товар 10', '', ''),
(28, 1, 'Voluptas Assumenda', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', 'fashion, electronics, megastore, furniture, clothes, accessories', 'Voluptas Assumenda', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(464, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(463, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(462, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(28, 3),
(28, 4),
(28, 5),
(28, 9),
(28, 10),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 7),
(29, 9),
(29, 10),
(29, 11),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(30, 5),
(30, 6),
(30, 7),
(30, 9),
(30, 10),
(30, 11),
(31, 2),
(31, 3),
(31, 4),
(31, 5),
(31, 7),
(31, 9),
(31, 10),
(32, 1),
(32, 2),
(32, 3),
(32, 6),
(32, 7),
(32, 9),
(34, 1),
(34, 3),
(34, 4),
(34, 5),
(34, 6),
(34, 7),
(34, 9),
(34, 10),
(34, 11),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(35, 9),
(35, 10),
(35, 11),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(36, 5),
(36, 6),
(36, 7),
(36, 9),
(36, 10),
(40, 1),
(40, 2),
(40, 5),
(40, 9),
(41, 2),
(41, 3),
(41, 4),
(41, 5),
(41, 6),
(41, 7),
(42, 1),
(42, 2),
(42, 4),
(42, 5),
(42, 6),
(42, 7),
(42, 9),
(42, 10),
(42, 11),
(43, 1),
(43, 5),
(43, 9),
(45, 1),
(45, 2),
(45, 3),
(45, 5),
(45, 6),
(45, 7),
(45, 9),
(45, 10),
(47, 1),
(47, 2),
(47, 4),
(47, 5),
(47, 6),
(47, 7),
(47, 9),
(47, 10),
(47, 11),
(48, 1),
(48, 2),
(48, 3),
(48, 5),
(48, 9),
(48, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2990, 30, 'catalog/06.jpg', 0),
(2870, 47, 'catalog/05.jpg', 0),
(2917, 28, 'catalog/05.jpg', 0),
(2876, 41, 'catalog/02.jpg', 0),
(2887, 40, 'catalog/04.jpg', 0),
(2974, 36, 'catalog/10.jpg', 0),
(2973, 36, 'catalog/11.jpg', 0),
(2881, 34, 'catalog/13.jpg', 0),
(2880, 34, 'catalog/14.jpg', 0),
(2923, 32, 'catalog/15.jpg', 0),
(2922, 32, 'catalog/01.jpg', 0),
(2921, 32, 'catalog/02.jpg', 0),
(3007, 43, 'catalog/03.jpg', 0),
(3006, 43, 'catalog/04.jpg', 0),
(2869, 47, 'catalog/07.jpg', 0),
(3049, 45, 'catalog/01.jpg', 0),
(3048, 45, 'catalog/15.jpg', 0),
(2979, 31, 'catalog/13.jpg', 0),
(2978, 31, 'catalog/12.jpg', 0),
(2984, 29, 'catalog/11.jpg', 0),
(2875, 41, 'catalog/01.jpg', 0),
(2874, 41, 'catalog/15.jpg', 0),
(2911, 48, 'catalog/01.jpg', 0),
(2910, 48, 'catalog/02.jpg', 0),
(2886, 40, 'catalog/03.jpg', 0),
(2885, 40, 'catalog/02.jpg', 0),
(2989, 30, 'catalog/07.jpg', 0),
(2868, 47, 'catalog/04.jpg', 0),
(2916, 28, 'catalog/04.jpg', 0),
(2873, 41, 'catalog/14.jpg', 0),
(2884, 40, 'catalog/01.jpg', 0),
(2883, 40, 'catalog/15.jpg', 0),
(2909, 48, 'catalog/03.jpg', 0),
(2972, 36, 'catalog/12.jpg', 0),
(2971, 36, 'catalog/13.jpg', 0),
(2879, 34, 'catalog/15.jpg', 0),
(2878, 34, 'catalog/01.jpg', 0),
(2920, 32, 'catalog/04.jpg', 0),
(2919, 32, 'catalog/03.jpg', 0),
(2918, 32, 'catalog/05.jpg', 0),
(3005, 43, 'catalog/05.jpg', 0),
(3004, 43, 'catalog/06.jpg', 0),
(2867, 47, 'catalog/06.jpg', 0),
(3047, 45, 'catalog/14.jpg', 0),
(2977, 31, 'catalog/11.jpg', 0),
(2976, 31, 'catalog/10.jpg', 0),
(2983, 29, 'catalog/10.jpg', 0),
(2915, 28, 'catalog/03.jpg', 0),
(2866, 47, 'catalog/03.jpg', 0),
(2865, 47, 'catalog/02.jpg', 0),
(2914, 28, 'catalog/02.jpg', 0),
(2913, 28, 'catalog/15.jpg', 0),
(2912, 28, 'catalog/01.jpg', 0),
(2872, 41, 'catalog/13.jpg', 0),
(2871, 41, 'catalog/12.jpg', 0),
(2996, 42, 'catalog/05.jpg', 0),
(2995, 42, 'catalog/06.jpg', 0),
(2994, 42, 'catalog/07.jpg', 0),
(2993, 42, 'catalog/08.jpg', 0),
(2992, 42, 'catalog/09.jpg', 0),
(2991, 42, 'catalog/10.jpg', 0),
(2988, 30, 'catalog/08.jpg', 0),
(2987, 30, 'catalog/09.jpg', 0),
(2986, 30, 'catalog/10.jpg', 0),
(2985, 30, 'catalog/11.jpg', 0),
(3001, 35, 'catalog/08.jpg', 0),
(3000, 35, 'catalog/07.jpg', 0),
(2999, 35, 'catalog/06.jpg', 0),
(2998, 35, 'catalog/05.jpg', 0),
(2997, 35, 'catalog/04.jpg', 0),
(2882, 40, 'catalog/14.jpg', 0),
(2908, 48, 'catalog/04.jpg', 0),
(2907, 48, 'catalog/05.jpg', 0),
(2906, 48, 'catalog/06.jpg', 0),
(2982, 29, 'catalog/09.jpg', 0),
(2981, 29, 'catalog/08.jpg', 0),
(2980, 29, 'catalog/07.jpg', 0),
(2970, 36, 'catalog/14.jpg', 0),
(2969, 36, 'catalog/15.jpg', 0),
(2975, 31, 'catalog/09.jpg', 0),
(3046, 45, 'catalog/13.jpg', 0),
(3045, 45, 'catalog/12.jpg', 0),
(3044, 45, 'catalog/11.jpg', 0),
(2877, 34, 'catalog/02.jpg', 0),
(3003, 43, 'catalog/08.jpg', 0),
(3002, 43, 'catalog/07.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(221, 42, 9, '22:25', 1),
(226, 30, 5, '', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(223, 42, 2, '', 1),
(209, 42, 6, '', 1),
(217, 42, 5, '', 1),
(218, 42, 1, '', 1),
(208, 42, 4, 'test', 1),
(219, 42, 8, '2011-02-20', 1),
(222, 42, 7, '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 28),
(28, 30),
(28, 42),
(28, 43),
(28, 45),
(28, 47),
(29, 32),
(29, 34),
(29, 36),
(29, 42),
(29, 43),
(29, 45),
(29, 47),
(30, 28),
(30, 30),
(30, 31),
(30, 35),
(30, 40),
(30, 41),
(30, 42),
(30, 43),
(30, 45),
(30, 47),
(31, 30),
(31, 34),
(31, 35),
(31, 42),
(31, 45),
(31, 47),
(32, 29),
(32, 34),
(32, 35),
(32, 36),
(32, 42),
(32, 47),
(32, 48),
(34, 29),
(34, 31),
(34, 32),
(34, 34),
(34, 35),
(34, 36),
(34, 48),
(35, 30),
(35, 31),
(35, 32),
(35, 34),
(35, 40),
(35, 42),
(35, 45),
(35, 47),
(35, 48),
(36, 29),
(36, 32),
(36, 34),
(36, 36),
(36, 47),
(36, 48),
(40, 30),
(40, 35),
(40, 40),
(40, 41),
(40, 42),
(40, 45),
(40, 47),
(41, 30),
(41, 40),
(41, 42),
(41, 43),
(41, 47),
(42, 28),
(42, 29),
(42, 30),
(42, 31),
(42, 32),
(42, 35),
(42, 40),
(42, 41),
(42, 43),
(42, 47),
(42, 48),
(43, 28),
(43, 29),
(43, 30),
(43, 41),
(43, 42),
(43, 47),
(43, 48),
(45, 28),
(45, 29),
(45, 30),
(45, 31),
(45, 35),
(45, 40),
(45, 47),
(45, 48),
(47, 28),
(47, 29),
(47, 30),
(47, 31),
(47, 32),
(47, 35),
(47, 36),
(47, 40),
(47, 41),
(47, 42),
(47, 43),
(47, 45),
(47, 47),
(48, 32),
(48, 34),
(48, 35),
(48, 36),
(48, 42),
(48, 43),
(48, 45);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(593, 42, 1, 100),
(585, 47, 1, 300),
(587, 28, 1, 400),
(594, 43, 1, 600),
(592, 30, 1, 200),
(601, 45, 1, 800);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `timer` int(1) NOT NULL DEFAULT '1',
  `product_special_group_id` int(11) NOT NULL,
  `weekdays` set('0','1','2','3','4','5','6') NOT NULL DEFAULT '0,1,2,3,4,5,6' COMMENT '0=Sunday, 1=Monday, 2=Tuesday, 3=Wednesday, 4=Thursday, 5=Friday, 6=Saturday',
  `hours` set('00','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23') DEFAULT '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23' COMMENT '00=00:00-00:59, 01=01:00-01:59, 02=02:00-02:59, 03=03:00-03:59, 04=04:00-04:59, 05=05:00-05:59, 06=06:00-06:59, 07=07:00-07:59, 08=08:00-08:59, 09=09:00-09:59, 10=10:00-10:59, 11=11:00-11:59, 12=12:00-12:59, 13=13:00-13:59, 14=14:00-14:59, 15=15:00-15:59, 16=16:00-16:59, 17=17:00-17:59, 18=18:00-18:59, 19=19:00-19:59, 20=20:00-20:59, 21=21:00-21:59, 22=22:00-22:59, 23=23:00-23:59'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`, `timer`, `product_special_group_id`, `weekdays`, `hours`) VALUES
(494, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00', 1, 0, '0,1,2,3,4,5,6', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(482, 41, 1, 0, '64.0000', '2017-03-09', '2025-03-09', 1, 0, '0,1,2,3,4,5,6', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(493, 30, 1, 1, '85.0000', '2017-03-09', '3017-03-10', 1, 0, '0,1,2,3,4,5,6', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(485, 48, 1, 0, '100.0000', '2017-03-09', '2020-03-16', 1, 0, '0,1,2,3,4,5,6', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(492, 31, 1, 0, '75.0000', '2017-03-09', '2027-03-10', 1, 0, '0,1,2,3,4,5,6', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(486, 32, 1, 0, '90.0000', '2017-03-09', '2026-03-09', 1, 0, '0,1,2,3,4,5,6', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(495, 35, 1, 0, '110.0000', '0000-00-00', '0000-00-00', 1, 0, '0,1,2,3,4,5,6', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(502, 45, 1, 0, '115.0000', '2022-10-31', '2022-11-07', 1, 0, '0,1,2,3,4,5,6', '00,01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special_group`
--

CREATE TABLE `oc_product_special_group` (
  `product_special_group_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`, `main_category`) VALUES
(28, 17, 0),
(28, 18, 0),
(28, 20, 0),
(28, 24, 0),
(28, 25, 0),
(28, 26, 0),
(28, 27, 0),
(28, 28, 0),
(28, 30, 0),
(28, 31, 0),
(28, 32, 0),
(28, 33, 0),
(28, 35, 0),
(28, 37, 0),
(28, 38, 0),
(28, 39, 0),
(28, 40, 0),
(28, 43, 0),
(28, 49, 0),
(28, 50, 0),
(28, 51, 0),
(28, 53, 0),
(28, 56, 0),
(28, 57, 0),
(28, 58, 0),
(29, 17, 0),
(29, 18, 0),
(29, 20, 0),
(29, 24, 0),
(29, 25, 0),
(29, 28, 0),
(29, 30, 0),
(29, 31, 0),
(29, 33, 0),
(29, 35, 0),
(29, 37, 0),
(29, 38, 0),
(29, 40, 0),
(29, 43, 0),
(29, 49, 0),
(29, 50, 0),
(29, 51, 0),
(29, 52, 0),
(29, 53, 0),
(29, 54, 0),
(29, 55, 0),
(29, 57, 0),
(29, 58, 0),
(29, 59, 0),
(30, 17, 0),
(30, 18, 0),
(30, 20, 0),
(30, 24, 0),
(30, 25, 0),
(30, 26, 0),
(30, 27, 0),
(30, 28, 0),
(30, 30, 0),
(30, 31, 0),
(30, 33, 0),
(30, 35, 0),
(30, 37, 0),
(30, 38, 0),
(30, 39, 0),
(30, 40, 0),
(30, 43, 0),
(30, 49, 0),
(30, 50, 0),
(30, 51, 0),
(30, 52, 0),
(30, 57, 0),
(30, 59, 0),
(31, 17, 0),
(31, 18, 0),
(31, 20, 0),
(31, 25, 0),
(31, 26, 0),
(31, 28, 0),
(31, 30, 0),
(31, 31, 0),
(31, 32, 0),
(31, 33, 0),
(31, 35, 0),
(31, 39, 0),
(31, 43, 0),
(31, 49, 0),
(31, 50, 0),
(31, 51, 0),
(31, 53, 0),
(31, 54, 0),
(31, 56, 0),
(31, 57, 0),
(31, 58, 0),
(31, 59, 0),
(32, 17, 0),
(32, 18, 0),
(32, 20, 0),
(32, 24, 0),
(32, 25, 0),
(32, 26, 0),
(32, 27, 0),
(32, 28, 0),
(32, 30, 0),
(32, 31, 0),
(32, 32, 0),
(32, 33, 0),
(32, 35, 0),
(32, 37, 0),
(32, 38, 0),
(32, 39, 0),
(32, 40, 0),
(32, 43, 0),
(32, 49, 0),
(32, 50, 0),
(32, 51, 0),
(32, 52, 0),
(32, 53, 0),
(32, 54, 0),
(32, 55, 0),
(32, 57, 0),
(32, 58, 0),
(34, 57, 0),
(34, 56, 0),
(34, 54, 0),
(34, 53, 0),
(34, 52, 0),
(34, 51, 0),
(34, 50, 0),
(34, 49, 0),
(34, 43, 0),
(34, 39, 0),
(34, 38, 0),
(34, 37, 0),
(34, 33, 0),
(34, 31, 0),
(34, 30, 0),
(34, 27, 0),
(34, 26, 0),
(34, 20, 0),
(34, 18, 0),
(34, 17, 0),
(35, 17, 0),
(35, 20, 0),
(35, 25, 0),
(35, 26, 0),
(35, 27, 0),
(35, 28, 0),
(35, 30, 0),
(35, 31, 0),
(35, 32, 0),
(35, 33, 0),
(35, 35, 0),
(35, 37, 0),
(35, 38, 0),
(35, 43, 0),
(35, 49, 0),
(35, 50, 0),
(35, 51, 0),
(35, 53, 0),
(35, 54, 0),
(35, 57, 0),
(35, 59, 0),
(36, 18, 0),
(36, 20, 0),
(36, 24, 0),
(36, 25, 0),
(36, 26, 0),
(36, 27, 0),
(36, 28, 0),
(36, 30, 0),
(36, 31, 0),
(36, 32, 0),
(36, 33, 0),
(36, 35, 0),
(36, 37, 0),
(36, 38, 0),
(36, 39, 0),
(36, 40, 0),
(36, 43, 0),
(36, 49, 0),
(36, 50, 0),
(36, 51, 0),
(36, 52, 0),
(36, 53, 0),
(36, 54, 0),
(36, 55, 0),
(36, 57, 0),
(36, 59, 0),
(40, 58, 0),
(40, 57, 0),
(40, 56, 0),
(40, 55, 0),
(40, 54, 0),
(40, 53, 0),
(40, 51, 0),
(40, 50, 0),
(40, 49, 0),
(40, 43, 0),
(40, 39, 0),
(40, 38, 0),
(40, 37, 0),
(40, 35, 0),
(40, 33, 0),
(40, 32, 0),
(40, 31, 0),
(40, 30, 0),
(40, 28, 0),
(40, 27, 0),
(40, 26, 0),
(40, 25, 0),
(40, 24, 0),
(40, 20, 0),
(40, 18, 0),
(40, 17, 0),
(41, 58, 0),
(41, 57, 0),
(41, 56, 0),
(41, 54, 0),
(41, 53, 0),
(41, 51, 0),
(41, 50, 0),
(41, 49, 0),
(41, 43, 0),
(41, 40, 0),
(41, 38, 0),
(41, 37, 0),
(41, 35, 0),
(41, 33, 0),
(41, 32, 0),
(41, 31, 0),
(41, 30, 0),
(41, 28, 0),
(41, 27, 0),
(41, 26, 0),
(41, 25, 0),
(41, 24, 0),
(41, 20, 0),
(41, 18, 0),
(41, 17, 0),
(42, 17, 0),
(42, 20, 0),
(42, 24, 0),
(42, 25, 0),
(42, 26, 0),
(42, 27, 0),
(42, 28, 0),
(42, 30, 0),
(42, 31, 0),
(42, 37, 0),
(42, 38, 0),
(42, 39, 0),
(42, 40, 0),
(42, 43, 0),
(42, 50, 0),
(42, 51, 0),
(42, 52, 0),
(42, 53, 0),
(42, 54, 0),
(42, 55, 0),
(42, 56, 0),
(42, 59, 0),
(43, 17, 0),
(43, 18, 0),
(43, 20, 0),
(43, 25, 0),
(43, 26, 0),
(43, 27, 0),
(43, 28, 0),
(43, 30, 0),
(43, 31, 0),
(43, 32, 0),
(43, 33, 0),
(43, 37, 0),
(43, 38, 0),
(43, 43, 0),
(43, 49, 0),
(43, 50, 0),
(43, 51, 0),
(43, 54, 0),
(43, 57, 0),
(43, 59, 0),
(45, 17, 0),
(45, 18, 0),
(45, 24, 0),
(45, 25, 0),
(45, 28, 0),
(45, 30, 0),
(45, 31, 0),
(45, 32, 0),
(45, 33, 0),
(45, 35, 0),
(45, 37, 0),
(45, 38, 0),
(45, 39, 0),
(45, 40, 0),
(45, 43, 0),
(45, 49, 0),
(45, 50, 0),
(45, 51, 0),
(45, 54, 0),
(45, 55, 0),
(45, 56, 0),
(45, 57, 0),
(45, 58, 0),
(47, 17, 0),
(47, 18, 0),
(47, 24, 0),
(47, 25, 0),
(47, 26, 0),
(47, 27, 0),
(47, 28, 0),
(47, 30, 0),
(47, 31, 0),
(47, 32, 0),
(47, 33, 0),
(47, 37, 0),
(47, 38, 0),
(47, 40, 0),
(47, 43, 0),
(47, 49, 0),
(47, 50, 0),
(47, 53, 0),
(47, 54, 0),
(47, 57, 0),
(47, 59, 0),
(48, 17, 0),
(48, 18, 0),
(48, 20, 0),
(48, 24, 0),
(48, 25, 0),
(48, 26, 0),
(48, 27, 0),
(48, 28, 0),
(48, 30, 0),
(48, 31, 0),
(48, 32, 0),
(48, 33, 0),
(48, 35, 0),
(48, 37, 0),
(48, 38, 0),
(48, 39, 0),
(48, 40, 0),
(48, 43, 0),
(48, 49, 0),
(48, 50, 0),
(48, 51, 0),
(48, 52, 0),
(48, 53, 0),
(48, 54, 0),
(48, 56, 0),
(48, 57, 0),
(48, 58, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(30, 0, 0),
(47, 0, 0),
(28, 0, 0),
(41, 0, 0),
(35, 0, 0),
(40, 0, 0),
(48, 0, 0),
(29, 0, 0),
(36, 0, 0),
(32, 0, 0),
(31, 0, 0),
(45, 0, 0),
(34, 0, 0),
(43, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(45, 0),
(47, 0),
(48, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Возмещенный'),
(2, 2, 'Кредит выдан'),
(3, 2, 'Замена отправлена');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Получен неисправным (сломанным)'),
(2, 2, 'Получен не тот (ошибочный) товар'),
(3, 2, 'Заказан по ошибке'),
(4, 2, 'Неисправен, пожалуйста, укажите/приложите подробности'),
(5, 2, 'Другое (другая причина), пожалуйста, укажите/приложите подробности');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Ожидание'),
(3, 2, 'Сделка завершена'),
(2, 2, 'Ожидающие товары');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 47, 0, 'Имя покупателя 9', 'Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9... Отзыв покупателя 9...', 5, 1, '2017-03-09 09:27:55', '2022-11-04 22:18:06'),
(2, 43, 0, 'Имя покупателя 8', 'Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8... Отзыв покупателя 8...', 4, 1, '2017-03-09 09:28:15', '2022-11-04 22:04:18'),
(3, 31, 0, 'Имя покупателя 7', 'Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7... Отзыв покупателя 7...', 5, 1, '2017-03-09 09:28:55', '2022-11-04 22:03:37'),
(4, 29, 0, 'Имя покупателя 6', 'Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6... Отзыв покупателя 6...', 3, 1, '2017-03-09 09:29:56', '2022-11-04 22:02:52'),
(5, 36, 0, 'Имя покупателя 5', 'Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5... Отзыв покупателя 5...', 5, 1, '2017-03-09 09:30:18', '2022-11-04 22:02:08'),
(6, 34, 0, 'Имя покупателя 4', 'Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4... Отзыв покупателя 4...', 4, 1, '2017-03-09 09:30:32', '2022-11-04 22:01:35'),
(7, 32, 0, 'Имя покупателя 3', 'Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3... Отзыв покупателя 3...', 5, 1, '2017-03-09 09:30:49', '2022-11-04 22:01:09'),
(8, 48, 0, 'Имя покупателя 2', 'Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2... Отзыв покупателя 2...', 5, 1, '2017-03-09 09:31:15', '2022-11-04 22:00:31'),
(9, 34, 0, 'Имя покупателя 1', 'Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1... Отзыв покупателя 1...', 3, 1, '2017-03-09 09:31:29', '2022-11-04 22:05:57');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_status`
--

CREATE TABLE `oc_seo_status` (
  `status_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `status_sign` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_seo_status`
--

INSERT INTO `oc_seo_status` (`status_id`, `status`, `status_sign`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `seopath` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`, `seopath`) VALUES
(1272, 0, 2, 'product_id=42', 'demo-tovar-4', '17'),
(1251, 0, 2, 'category_id=40', 'podkategoriya-1-3-6', '20_43_40'),
(1242, 0, 2, 'category_id=37', 'podkategoriya-2-3-6', '20_43_37'),
(1281, 0, 2, 'manufacturer_id=7', 'hewlett-packard', ''),
(1287, 0, 2, 'information_id=3', 'politika-konfidencialnosti', ''),
(789, 0, 1, 'category_id=34', 'mp3-players', ''),
(781, 0, 1, 'category_id=36', 'test2', ''),
(775, 0, 1, 'category_id=46', 'macs', ''),
(776, 0, 1, 'category_id=45', 'windows', ''),
(778, 0, 1, 'category_id=29', 'mouse', ''),
(1246, 0, 2, 'category_id=52', 'podkategoriya-3-1-6', '20_27_52'),
(1231, 0, 2, 'category_id=18', 'kategoriya-8', '18'),
(1232, 0, 2, 'category_id=49', 'podkategoriya-2-1-6', '20_27_49'),
(1233, 0, 2, 'category_id=54', 'podkategoriya-1-2-6', '20_26_54'),
(1234, 0, 2, 'category_id=17', 'kategoriya-4', '17'),
(1235, 0, 2, 'category_id=24', 'kategoriya-10', '24'),
(791, 0, 1, 'category_id=44', 'test12', ''),
(792, 0, 1, 'category_id=47', 'test15', ''),
(793, 0, 1, 'category_id=48', 'test16', ''),
(1250, 0, 2, 'category_id=43', 'podkategoriya-3-6', '20_43'),
(1247, 0, 2, 'category_id=38', 'podkategoriya-4-3-6', '20_43_38'),
(1241, 0, 2, 'category_id=55', 'podkategoriya-3-2-6', '20_26_55'),
(1237, 0, 2, 'category_id=51', 'podkategoriya-4-1-6', '20_27_51'),
(1238, 0, 2, 'category_id=57', 'kategoriya-1', '57'),
(1239, 0, 2, 'category_id=33', 'kategoriya-3', '33'),
(807, 0, 1, 'category_id=41', 'test8', ''),
(808, 0, 1, 'category_id=42', 'test9', ''),
(1263, 0, 2, 'product_id=48', 'demo-tovar-15', '17'),
(1264, 0, 2, 'product_id=34', 'demo-tovar-11', '17'),
(813, 0, 1, 'product_id=44', 'macbook-air', ''),
(1266, 0, 2, 'product_id=40', 'demo-tovar-12', '17'),
(1267, 0, 2, 'product_id=28', 'demo-tovar-14', '17'),
(1268, 0, 2, 'product_id=47', 'demo-tovar-1', '17'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1', ''),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw', ''),
(821, 0, 1, 'product_id=46', 'sony-vaio', ''),
(1261, 0, 2, 'product_id=32', 'demo-tovar-13', '17'),
(1269, 0, 2, 'product_id=36', 'demo-tovar-8', '18'),
(1270, 0, 2, 'product_id=45', 'demo-tovar-9', '17'),
(1280, 0, 2, 'manufacturer_id=6', 'palm', ''),
(1282, 0, 2, 'manufacturer_id=8', 'apple', ''),
(1279, 0, 2, 'manufacturer_id=5', 'htc', ''),
(1285, 0, 2, 'information_id=6', 'dostavka-i-oplata', ''),
(1286, 0, 2, 'information_id=4', 'o-nas', ''),
(1148, 0, 2, 'common/home', '', ''),
(1149, 0, 2, 'account/wishlist', 'wishlist', ''),
(1150, 0, 2, 'account/account', 'account', ''),
(1151, 0, 2, 'checkout/cart', 'cart', ''),
(1152, 0, 2, 'checkout/checkout', 'checkout', ''),
(1153, 0, 2, 'account/login', 'login', ''),
(1154, 0, 2, 'account/logout', 'logout', ''),
(1155, 0, 2, 'account/order', 'order-history', ''),
(1156, 0, 2, 'account/order/info', 'order-information', ''),
(1157, 0, 2, 'account/newsletter', 'newsletter', ''),
(1158, 0, 2, 'product/special', 'specials', ''),
(1159, 0, 2, 'affiliate/account', 'affiliates', ''),
(1160, 0, 2, 'account/voucher', 'gift-vouchers', ''),
(1161, 0, 2, 'account/recurring', 'recurring-payments', ''),
(1162, 0, 2, 'product/manufacturer', 'brands', ''),
(1163, 0, 2, 'information/contact', 'contact-us', ''),
(1164, 0, 2, 'account/return/add', 'request-return', ''),
(1165, 0, 2, 'information/sitemap', 'sitemap', ''),
(1166, 0, 2, 'account/forgotten', 'forgot-password', ''),
(1167, 0, 2, 'account/download', 'downloads', ''),
(1168, 0, 2, 'account/return', 'returns', ''),
(1169, 0, 2, 'account/transaction', 'transactions', ''),
(1170, 0, 2, 'account/register', 'create-account', ''),
(1171, 0, 2, 'product/compare', 'compare-products', ''),
(1172, 0, 2, 'product/search', 'search', ''),
(1173, 0, 2, 'account/edit', 'edit-account', ''),
(1174, 0, 2, 'account/password', 'change-password', ''),
(1175, 0, 2, 'account/address', 'address-book', ''),
(1176, 0, 2, 'account/address/edit', 'edit-address', ''),
(1177, 0, 2, 'account/address/add', 'add-address', ''),
(1178, 0, 2, 'account/address/delete', 'delete-address', ''),
(1179, 0, 2, 'account/reward', 'reward-points', ''),
(1180, 0, 2, 'affiliate/edit', 'edit-affiliate-account', ''),
(1181, 0, 2, 'affiliate/password', 'change-affiliate-password', ''),
(1182, 0, 2, 'affiliate/payment', 'affiliate-payment-options', ''),
(1183, 0, 2, 'affiliate/tracking', 'affiliate-tracking-code', ''),
(1184, 0, 2, 'affiliate/transaction', 'affiliate-transactions', ''),
(1185, 0, 2, 'affiliate/logout', 'affiliate-logout', ''),
(1186, 0, 2, 'affiliate/forgotten', 'affiliate-forgot-password', ''),
(1187, 0, 2, 'affiliate/register', 'create-affiliate-account', ''),
(1188, 0, 2, 'affiliate/login', 'affiliate-login', ''),
(1189, 0, 1, 'common/home', 'en-gb-', ''),
(1190, 0, 1, 'account/wishlist', 'en-gb-wishlist', ''),
(1191, 0, 1, 'account/account', 'en-gb-account', ''),
(1192, 0, 1, 'checkout/cart', 'en-gb-cart', ''),
(1193, 0, 1, 'checkout/checkout', 'en-gb-checkout', ''),
(1194, 0, 1, 'account/login', 'en-gb-login', ''),
(1195, 0, 1, 'account/logout', 'en-gb-logout', ''),
(1196, 0, 1, 'account/order', 'en-gb-order-history', ''),
(1197, 0, 1, 'account/order/info', 'en-gb-order-information', ''),
(1198, 0, 1, 'account/newsletter', 'en-gb-newsletter', ''),
(1199, 0, 1, 'product/special', 'en-gb-specials', ''),
(1200, 0, 1, 'affiliate/account', 'en-gb-affiliates', ''),
(1201, 0, 1, 'account/voucher', 'en-gb-gift-vouchers', ''),
(1202, 0, 1, 'account/recurring', 'en-gb-recurring-payments', ''),
(1203, 0, 1, 'product/manufacturer', 'en-gb-brands', ''),
(1204, 0, 1, 'information/contact', 'en-gb-contact-us', ''),
(1205, 0, 1, 'account/return/add', 'en-gb-request-return', ''),
(1206, 0, 1, 'information/sitemap', 'en-gb-sitemap', ''),
(1207, 0, 1, 'account/forgotten', 'en-gb-forgot-password', ''),
(1208, 0, 1, 'account/download', 'en-gb-downloads', ''),
(1209, 0, 1, 'account/return', 'en-gb-returns', ''),
(1210, 0, 1, 'account/transaction', 'en-gb-transactions', ''),
(1211, 0, 1, 'account/register', 'en-gb-create-account', ''),
(1212, 0, 1, 'product/compare', 'en-gb-compare-products', ''),
(1213, 0, 1, 'product/search', 'en-gb-search', ''),
(1214, 0, 1, 'account/edit', 'en-gb-edit-account', ''),
(1215, 0, 1, 'account/password', 'en-gb-change-password', ''),
(1216, 0, 1, 'account/address', 'en-gb-address-book', ''),
(1217, 0, 1, 'account/address/edit', 'en-gb-edit-address', ''),
(1218, 0, 1, 'account/address/add', 'en-gb-add-address', ''),
(1219, 0, 1, 'account/address/delete', 'en-gb-delete-address', ''),
(1220, 0, 1, 'account/reward', 'en-gb-reward-points', ''),
(1221, 0, 1, 'affiliate/edit', 'en-gb-edit-affiliate-account', ''),
(1222, 0, 1, 'affiliate/password', 'en-gb-change-affiliate-password', ''),
(1223, 0, 1, 'affiliate/payment', 'en-gb-affiliate-payment-options', ''),
(1224, 0, 1, 'affiliate/tracking', 'en-gb-affiliate-tracking-code', ''),
(1225, 0, 1, 'affiliate/transaction', 'en-gb-affiliate-transactions', ''),
(1226, 0, 1, 'affiliate/logout', 'en-gb-affiliate-logout', ''),
(1227, 0, 1, 'affiliate/forgotten', 'en-gb-affiliate-forgot-password', ''),
(1228, 0, 1, 'affiliate/register', 'en-gb-create-affiliate-account', ''),
(1229, 0, 1, 'affiliate/login', 'en-gb-affiliate-login', ''),
(1243, 0, 2, 'category_id=31', 'podkategoriya-5-2', '25_31'),
(1248, 0, 2, 'category_id=32', 'podkategoriya-1-2', '25_32'),
(1265, 0, 2, 'product_id=31', 'demo-tovar-7', '17'),
(1262, 0, 2, 'product_id=35', 'demo-tovar-3', '17'),
(1249, 0, 2, 'category_id=35', 'podkategoriya-4-2', '25_35'),
(1240, 0, 2, 'category_id=28', 'podkategoriya-3-2', '25_28'),
(1236, 0, 2, 'category_id=50', 'podkategoriya-1-1-6', '20_27_50'),
(1244, 0, 2, 'category_id=27', 'podkategoriya-1-6', '20_27'),
(1245, 0, 2, 'category_id=60', 'kategoriya-7', '60'),
(1230, 0, 2, 'category_id=20', 'kategoriya-6', '20'),
(1260, 0, 2, 'product_id=29', 'demo-tovar-6', '17'),
(1271, 0, 2, 'product_id=43', 'demo-tovar-2', '17'),
(1252, 0, 2, 'category_id=39', 'podkategoriya-3-3-6', '20_43_39'),
(1253, 0, 2, 'category_id=58', 'kategoriya-9', '58'),
(1254, 0, 2, 'category_id=26', 'podkategoriya-2-6', '20_26'),
(1255, 0, 2, 'category_id=53', 'podkategoriya-4-2-6', '20_26_53'),
(1256, 0, 2, 'category_id=56', 'podkategoriya-2-2-6', '20_26_56'),
(1257, 0, 2, 'category_id=25', 'kategoriya-2', '25'),
(1258, 0, 2, 'category_id=30', 'podkategoriya-2-2', '25_30'),
(1259, 0, 2, 'category_id=59', 'kategoriya-5', '59'),
(1273, 0, 2, 'product_id=30', 'demo-tovar-5', '17'),
(1274, 0, 2, 'product_id=41', 'demo-tovar-10', '17'),
(1288, 0, 2, 'information_id=5', 'usloviya-soglasheniya', ''),
(1283, 0, 2, 'manufacturer_id=9', 'canon', ''),
(1284, 0, 2, 'manufacturer_id=10', 'sony', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` mediumtext NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('00189ee6711d592bcc7b561aec', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:58'),
('015ae28255f21a25bcb4e0fe7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 09:01:27'),
('015bad722ea0c2636a1c435be6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 10:24:32'),
('01672749aaf36c89879c8f7fa8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:56'),
('0233f40dbd3abae323993a54c7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 12:36:48'),
('02e503a25843c53556941258a7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:31'),
('03eaa68976a1254c5a1d9ab619', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:05'),
('04965535de9d70fd3ff7570844', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"XZUKDc2rzCIcb3rbFrWI4WxqcX2npj7i\"}', '2018-11-20 13:31:52'),
('049ed0a834776498a49ce52f26', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:23'),
('05029718d536b7a5a3c5f226af', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:36:53'),
('0566b60135cb2e2f7f8003dcb9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-06 07:26:50'),
('05a26627944bd31ffe959aa904', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:42:37'),
('0693bdd05f7bb48c9e330bbce5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:59:40'),
('069b09bbbb235320472f73b0d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PbdtgfYxEuLlDnRy16gBBhe7D7EsEKvu\",\"wishlist\":[\"35 \"],\"compare\":[\"35 \"]}', '2018-12-24 13:32:00'),
('06c5b03919d169033b8d3cfc7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-28 11:46:39'),
('0717d918909fdc44102b99753b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Bi9Cebt691W8kWunnB6v9D87PofhJSlD\"}', '2019-01-09 12:37:06'),
('072cf9dca360acb0a0f94d9586', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:07'),
('07f2f9caad7131b2c896a71a11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-17 06:21:27'),
('086fe0fff912a0af8391bd106c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-01 06:59:33'),
('095154d73abf505ff78601ab8a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:50'),
('09714f68934918df4901b0b0a7', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-10-15 08:24:45'),
('0a2d6fe4c517119ebacd64d6a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-17 04:41:16'),
('0a39f385f880ad0a5f6cee2729', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:20'),
('0b570b4486ac2a348a6d564cdd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-06 12:36:02'),
('0e2971c569c3967be9dcdc36a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 09:45:39'),
('0ec5938fa050ec67c4873c003f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:55'),
('0efb1a512f6176b636618462f4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:31'),
('0f8b40db3b275c8bcd0ee7ef20', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ZDAOqwXGoXigIyLPHyfkOR6si0E76U8V\"}', '2019-11-20 07:52:28'),
('0feae2cf573e2591acf3b64f61', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:42:27'),
('102fc726067085d12c6c5dedfe', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:25'),
('11a931e765b1b6672f62926226', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:48'),
('1259d95ce3ebf1ca54579564a6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:30'),
('13ff54d00ab61d45b906a2b418', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-09 08:55:52'),
('1460aa0ad5b1dd830ea76b869e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"00jSSKPy814jUNUOzZVPWxbEh6O15O7g\"}', '2018-03-09 11:24:20'),
('146b0313cb945d0330b6453de7', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"4G54osnTW08p83w3LyU5nODUU8gIb9Zs\",\"customer_id\":\"2\",\"payment_address\":{\"address_id\":\"3\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"\",\"address_1\":\"mumbai\",\"address_2\":\"\",\"postcode\":\"123456\",\"city\":\"mumbai\",\"zone_id\":\"3516\",\"zone\":\"Angus\",\"zone_code\":\"AGS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"2\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"\",\"address_1\":\"mumbai\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"mumbai\",\"zone_id\":\"3397\",\"zone\":\"Balkan Welayaty\",\"zone_code\":\"B\",\"country_id\":\"216\",\"country\":\"Turkmenistan\",\"iso_code_2\":\"TM\",\"iso_code_3\":\"TKM\",\"address_format\":\"\",\"custom_field\":null},\"success\":\"Success: You have modified Cash On Delivery payment module!\"}', '2018-03-15 10:08:06'),
('146e2d3e1388a6e97604ffde83', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:02'),
('14ee48de3353620d940f0c48de', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:34'),
('15a1cd8b91bc56fba6a030ddb2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:56'),
('16d5247971c347bed0705c6087', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-14 07:59:47'),
('16e52a35449ed268874afd52bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-30 10:09:00'),
('17d1df82f2063cf251178e62d7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:41:35'),
('17fcc64e97c0554ae069f80c32', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:32:59'),
('1803132049a8f5945adac5b3d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-29 08:40:11'),
('186b450b2214b96179749ea6b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 08:22:39'),
('1948b81bf7084862d1602cddb4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:27'),
('19d91d601111f18f3b83cb68f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-16 08:24:04'),
('1a5bbf5bb80348bc5fa82cfeeb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:01'),
('1abddab8748f8736979db8ff69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 10:17:27'),
('1b11c5199748bcee3d2a57ede7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2022-11-13 07:41:18'),
('1b46ee48e239a3741c8c08a8d2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:21'),
('1cdf88d5f7614834e614874c51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-03 07:25:03'),
('1d69fc7a16a0a261ff9947aebb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 11:38:43'),
('1e143f0cb01490046411bc4450', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-15 12:19:37'),
('1e87f5af4ca73441ef19617b1f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:38'),
('1f36037cfdbc2b2d1ed5e421bb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:52'),
('1fee85df5de0e2a843df3dbdea', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 21:51:28'),
('2011e118a7aff48a5446b17c4f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:59:20'),
('20a51b85bf4b40a8c89e79b306', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 10:15:00'),
('212413ccbd1fcd33591e73ff4e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:06'),
('219dd6405db0572e75f30dac20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-23 08:33:01'),
('2225671bed25d5dd47017480f8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:37:51'),
('22c0c41443df0aa3f471c8258f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:00'),
('22fa5c68032b3061eec932da8c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:42:35'),
('233aa31bb6c16ec0ff30e2d0f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-02 07:26:22'),
('23636eb9be0c5915fbff7db9c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"4pIt9ax04vfncxIRU5GybwV9UkpGmS3K\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user2\\/opencart\\/OPC010016\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-05-30 06:00:44'),
('23facecbdbec56045d7da87973', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:10'),
('247ee3d8ebb839cfc5b4c0fba1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"C4SYVF2R4qVKu8aspXC2JtrgnBL24ZU4\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user5\\/opencart\\/OPC030075\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-02-04 09:51:17'),
('2488edc9fa96a803e61cf8a725', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 08:51:06'),
('24baa53ffee9961e847a2d149e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-27 08:44:08'),
('24f43222efe3a46065a4996697', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:39'),
('271305bccba1538c8578064d9c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:15'),
('2723c7262ef9cec3e2822ab44b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:39:41'),
('27f72d5b5a67d37edf57646bd1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-29 10:31:29'),
('284aa5719beef5eb74c7007b87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-12 08:54:33'),
('284fe748a7fd2ecd36517d78bc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:27'),
('2886dc3524cd7b9e1f7a94f5ff', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"N9h1spiGMOwtpa1YQaU6aNiw2j5C3VbM\"}', '2018-12-29 06:02:25'),
('28befbcf96771376d1c8ba5e10', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"H1qDVGwyPzlkaG5Dqvq4JzssES0IoHW7\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user2\\/opencart\\/OPC010016\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-05-31 08:29:19'),
('294d7937b8d080378a250085ef', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:32'),
('2963c37bc1c154f5fdcd8d4fcc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-26 11:42:25'),
('29a8c1369aa84a92ccdd7d52d0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 20:57:08'),
('29af50b3343edd0035c4db3f01', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:22'),
('2a87b9daa293b74fb5b8d8dd60', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 21:39:03'),
('2b12d1b0a7675c4feff29a3094', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-28 08:56:10'),
('2b8c8b59a181be09b5be7d7340', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:11'),
('2bd5b8cb0bb3bc9dd6a37d3a9e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:38:33'),
('2bdfac06e237e2ab5fab07fc6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 05:00:34'),
('2bed6e898f838e2d47cc3c614d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-10 04:25:03'),
('2bee14e71d0b34b0288f5a1924', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-06 10:23:49'),
('2c5dc4ba57cdb66d664b20937c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-22 09:32:27'),
('2dd9c8ab41ce12372eb46adea6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"https:\\/\\/demo113.shoporg.ru\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2022-11-04 21:15:30'),
('2e24a8bae87acc6e5d74cdc9c5', '{\"api_id\":\"9\"}', '2022-11-15 08:20:54'),
('2e43547c64994cabb6eaf10063', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-08 12:22:54'),
('2e4f2218d4748bdd3cf211faaf', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:53'),
('2ea55cf111bb71e19f3f540d35', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 07:04:50'),
('2efc866d0f7bb70d9beb3da311', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zjCwDyPZBCr5wA6l7A1TAyAqSeflrTIe\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC030067\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2018-11-22 08:03:21'),
('2f478c67a1ba0869c4f8db4ae7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:19'),
('2f64163071955ff2e4baa81929', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-27 12:08:12'),
('2fbbc2f8b087913799f7a7513d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-12 07:50:15'),
('304056c65b272c7ab62de4c2d3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:19'),
('3048d06483d794cdcf885abee8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:37:57'),
('30ae23cd3396c47dd432aa9dfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-04 10:45:15'),
('30b590d2c1c0253560ac902fec', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"nnSF3dDR315iJwfYDwhxctH96zleRb8f\"}', '2019-01-21 10:38:22'),
('31b660146241b1e080f0f48685', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:03'),
('31ea8da5709f97047ddbb023fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-02 08:04:16'),
('320bbe4488eff91d304cf6eebb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"pxM9JfbgLG0GNreB1hRjevZx5m8gScPo\"}', '2018-12-22 10:03:04'),
('3246545d7963f0bd146896cc1a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:39'),
('331be382dac377892a8286fb3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 10:09:03'),
('3393a141ae39301bf0820b5996', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Bk50KrlDaWKTWX82SPz3n94jVFnGAp7w\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC030070\\/index.php?route=information\\/blogger&amp;blogger_id=5\"}', '2018-12-27 13:28:37'),
('33a75c20e57d1e6419195ecfe9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:25'),
('33af13226a5be57a7faa227deb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:32'),
('3482faed3304ec5571f94ebf7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-10 12:18:18'),
('34cd281fb2ed73c9a838dc7f29', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zMojXmcOMKF4BbBzYWdw8o49qsJjnogL\"}', '2018-11-27 11:35:51'),
('34fccbbc7d509cf968d8956477', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"wishlist\":[],\"compare\":[\"41 \"]}', '2022-11-04 23:26:42'),
('357fee1425c96985a514509871', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:53'),
('37665cf95348b6b6bae6a903c2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:15'),
('37c5189d642ef204e97f98af46', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:28'),
('382f233c4984add3716c9e2527', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:17'),
('3850d248f5605433821b501508', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-11-13 06:18:22'),
('39a9c28490110570850de0fc27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 08:01:03'),
('3a3a2f9f42ba60b5e3850065b1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:00'),
('3aae74d7af805039f992bd4135', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"CNLVj2vRoip9zISHQ3pGSIeVA8fPWUkP\"}', '2019-02-04 10:26:40'),
('3baf2196b60b1726d24fd20368', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:23'),
('3bf8b96675eacd0648bb936598', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dGN7l6ix8nyFckRjggqvY5i9uMMH16Ni\"}', '2019-11-07 07:12:11'),
('3c15cd29a141fcffe8128c233d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 06:08:21'),
('3d3cd684ee8d6c10e37a228d08', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"user_id\":\"1\",\"user_token\":\"5LBqvTbVGgKHVn8oAVpnDenpgq1nX1of\"}', '2018-05-30 11:02:38'),
('3d9ad0c68530c76726c595e631', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:58'),
('3db434226ed9022a667d859b94', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"vouchers\":[]}', '2022-11-10 02:33:17'),
('3e62d48b29b4edcbdd3c9b120d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:05'),
('3e944050e84d2b322a7d196770', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:44'),
('3ee8d3b996ce23af80537cdc42', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-03-14 12:48:49'),
('3f5919506fe7822142451a4caa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-26 09:14:28'),
('3fa608820d0662a407c79dcbb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-23 08:34:16'),
('3feec33da9bf320b87c5ec705f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:46'),
('40b0dca7540885b67c3016a4e3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ltnLdMHqUKK9iGTlJOroXV3aRAmUnIFb\"}', '2018-12-25 13:17:50'),
('4177429e17e9741f549c92f438', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:42:25'),
('418a6a63256509648b9766ec35', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:14'),
('42b4265ab91b4795f4a31a92d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-25 06:30:04'),
('4326b66fa1bfb72b91e5c649f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"wGpKz92XJJ8M71R38ykks6xxfMfHsfD3\"}', '2018-12-04 11:37:06'),
('433a7bcdc53fa2d61d234f8d80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:10:55'),
('43768d3a69cbe2d26e7cc8250f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:36'),
('43cecfb00f5cb8fe6ed9ca9f26', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 07:11:42'),
('440e7cec1bafe2994e06b642fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:07:14'),
('4565b66d9d733330de51dcee01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-19 06:46:41'),
('47a51c0131499d0a683d6e08f7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:48'),
('47b160447fba744bc7e755e7d2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"wishlist\":[],\"compare\":[]}', '2022-11-06 06:09:48'),
('47dc1f76d4b2aa2b9a5f461714', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:33'),
('489fd541afe976520ef69f3c7d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:16'),
('48c1e24d7cdfa7bddf94a2960b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:06'),
('48dc7a20c8ff5b124c7607b67c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-23 09:53:49'),
('48f24f3d58b872a2a22395a5b5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"yH5Ta4rV5AZ07FLQWnLzDAxl0GiOAt8G\",\"redirect\":\"http:\\/\\/192.168.1.150\\/user4\\/opencart\\/OPC040098\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-03-14 13:01:10'),
('495006664a48515c4fc35d8ae8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:42:34'),
('4987b8cf1c22367e1ee5feca49', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:09'),
('49a3d20f1884ebebe7a7f34a67', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"O17rIEXp6ghYx8bF4aESaJHlkKUH9jTF\"}', '2019-11-18 13:05:42'),
('4ae0f0ab1e52490e668f1cb936', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:26'),
('4af69f818b0a2dd3e4a7aaea30', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:58:27'),
('4bb451f135e1ee2dcdb6ca1ee1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:37:36'),
('4c20510c00dbf800f4c1d8fd64', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-09-04 05:32:00'),
('4c7c904f1eb2e76640e431380a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:53'),
('4cc226967ed243beb8f7247e62', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-13 07:39:26'),
('4ee250377c5a7de8691c31b74e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-06 07:06:55'),
('4f0c130fec8cfc552efb91867f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-22 08:51:33'),
('4f45b52e80338b7a67c193efcf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ZzLJbUT0Kg1n2QZVGivRnVWxvw0BFRIT\"}', '2018-05-31 13:32:18'),
('4ff0226b1a712a25c7b8e32889', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7plKMXiCWh2chOsGorEOrXma8JssJsSn\"}', '2019-01-17 08:58:15'),
('50bb7554925078614daa9e7e67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-30 05:44:41'),
('5118cd7f4629ff071ee5b60f27', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:08'),
('5170ca07c47805da37b5574815', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-05-30 08:47:53'),
('52714533ec5b1f8bff73a19982', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:28'),
('533bc31f03dfa9210068fc99d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-29 11:36:28'),
('53a2d0b6e5c7a74c2efdde2127', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-06-29 10:39:59'),
('53d0d513afedcdda409bae912a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:28'),
('55286864260bafd587624cdd89', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:35'),
('5542c2b33cf51843acdacbb207', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:37'),
('5544a754d44d9b4e9554e788ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC030067\\/index.php?route=information\\/blogger&amp;blogger_id=6\",\"wishlist\":[\"41 \"],\"compare\":[\"41 \"]}', '2018-11-21 10:57:18'),
('55e482961b44b769b335a825c3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user5\\/opencart\\/OPC030075\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-02-04 10:06:42'),
('560318c6b09f111f60f25bc9f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-22 05:35:18'),
('57f00c22d6eecea47469cc0025', '{\"language\":\"en-gb\",\"currency\":\"EUR\",\"wishlist\":[\"42 \",\"30\"],\"compare\":[\"30\",\"31 \",\"35 \"]}', '2019-11-21 10:17:06'),
('58d0b5c099e65e34511419d7bc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:51:23'),
('5906fa5547385d7ac397932d15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-07 10:05:31'),
('59178b3d917c77e9699516cfc8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:43'),
('5949ee73d3418904bad394632a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-14 07:58:35'),
('59ccc2157d403295fe77cbecdb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"OnVNnbfIOL10v2lHqHQtRalaLKqnPpUF\"}', '2018-11-16 13:01:18'),
('59d14cf3e071c82e9a8847e207', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 21:40:05'),
('5a253c87666ec955087db0a26b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FdTvI8N3K09Ns6bK0BZ64PdJRGuWibf5\"}', '2019-01-09 08:38:18'),
('5b31affdd3e03462f18eb32be4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:41:53'),
('5ba4b0b5ecb817a532f8deadfe', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:11'),
('5ba966c8120a2c002fc57fa5ee', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2022-11-10 06:11:59'),
('5bfd75a7e096139e4533b9231b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"7XfbmafyHM1xDhYAbyYbI5hu6c73wJW6\"}', '2018-11-26 12:39:55'),
('5d49dc3b066eef8a04daa26523', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-28 09:59:02'),
('5d4eb40c8dad60c378d0e6b983', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:29'),
('5df9c15909305017192226f3a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 05:45:20'),
('5e806bfa8d5f7b09f42e5ea588', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:51:00'),
('60995363cd7039a2c424607abd', '{\"user_id\":\"1\",\"user_token\":\"ONgOjVTHv1YEQVnje52slqNIyLoGrAGb\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-20 08:41:21'),
('609dd7fd12107dfbfbb0b9771b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"w1b8mWeeqVVdSpIq1Bwi1ptKIpGbaYk5\"}', '2019-01-03 12:50:28'),
('60acecc4269722df4e1540d732', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-11 17:38:19'),
('61584b23797b7306d2900632fb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:42'),
('6405ff891ef02ba9a3e3d9cea3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-06 07:12:03'),
('6479920432ec3a62c7dc9ea603', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:12'),
('64992a6a92d52091d8a8e02a78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-27 06:42:19'),
('655b6020e51d854d4fd4a66be5', '{\"api_id\":\"9\"}', '2022-11-09 16:21:39'),
('65d2723e62f4a680e53215e27b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:08'),
('65d43c061c8a892d8661a0ef61', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:50'),
('66076d30a5af9ec79ea96f7d9c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:56'),
('6620fa720bed8dafa252885404', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-22 12:45:06'),
('664638515083e24b58e4f7d8a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:42:29'),
('66d586e5bef29b7b20b326af1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-14 09:44:13'),
('670473a4cc34bffaa4f9d05868', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"3\",\"user_token\":\"OIOXO6UcxXOvk5TQ5KcYB9LsTr7CUGC9\",\"wishlist\":[\"29 \"],\"account\":\"guest\",\"payment_address\":{\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"abc\",\"address_1\":\"surat\",\"address_2\":\"mubai\",\"postcode\":\"12345\",\"city\":\"surat\",\"country_id\":\"223\",\"zone_id\":\"3624\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":[],\"zone\":\"California\",\"zone_code\":\"CA\"},\"shipping_address\":{\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"abc\",\"address_1\":\"surat\",\"address_2\":\"mubai\",\"postcode\":\"12345\",\"city\":\"surat\",\"country_id\":\"223\",\"zone_id\":\"3624\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"zone\":\"California\",\"zone_code\":\"CA\",\"custom_field\":[]},\"customer_id\":\"4\"}', '2019-03-15 11:40:35'),
('685c9f603dc72ed4adddd43f99', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:02'),
('6872b9f726f89c62bd083600ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-16 04:15:05'),
('689fb15f9ddc089fc79c431b6d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:33'),
('68a24a2425b490307ee1d8aee1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-02 09:52:03'),
('69977142bef524ca8ea8544d8d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:18'),
('69bf8f82d5fcd73b46ad00f8da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"gnL8Ch4jV3MICQuHK0c1zvQRVoj7GSxh\"}', '2019-11-06 12:18:21'),
('6a81669422c07d474253ce3eab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-10 10:06:34'),
('6acd28caa8dfdfceb2972fd591', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 05:59:08'),
('6af7bfa3c7b8f27542ec6628a2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:14'),
('6b19ea50f30a9969223061d129', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-22 10:47:11'),
('6b73e89911af48f94bbd0380ea', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"https:\\/\\/demo113.shoporg.ru\\/index.php?route=information\\/blogger&amp;blogger_id=3\"}', '2022-11-09 06:34:36'),
('6bff0a5d02710c840b0f7279af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 10:21:47'),
('6c00c77059b8ae003d3de71dca', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:19'),
('6dcd031ed0c017f9a140a729f5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"get_used\":true,\"simple\":{\"customer\":{\"captcha\":\"\",\"fax\":\"\",\"firstname\":\"\",\"telephone\":\"\",\"lastname\":\"\",\"confirm_password\":\"\",\"password\":\"\",\"email\":\"\",\"newsletter\":\"1\",\"register\":\"1\",\"customer_group_id\":\"1\",\"customer_id\":0},\"payment_address\":{\"country_id\":\"176\",\"address_id\":\"\",\"address_2\":\"\",\"company\":\"\",\"firstname\":\"\",\"default\":false,\"address_1\":\"\",\"lastname\":\"\",\"city\":\"\\u0427\\u0435\\u0431\\u043e\\u043a\\u0441\\u0430\\u0440\\u044b\",\"postcode\":\"428037\",\"zone_id\":\"55\",\"country\":\"\\u0420\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"zone\":\"\\u0427\\u0443\\u0432\\u0430\\u0448\\u0441\\u043a\\u0430\\u044f \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\",\"zone_code\":\"CU\",\"current_address_id\":\"0\"},\"shipping_address\":{\"country_id\":\"176\",\"address_id\":\"\",\"address_2\":\"\",\"company\":\"\",\"firstname\":\"\",\"default\":false,\"address_1\":\"\",\"lastname\":\"\",\"city\":\"\\u0427\\u0435\\u0431\\u043e\\u043a\\u0441\\u0430\\u0440\\u044b\",\"postcode\":\"428037\",\"zone_id\":\"55\",\"country\":\"\\u0420\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"zone\":\"\\u0427\\u0443\\u0432\\u0430\\u0448\\u0441\\u043a\\u0430\\u044f \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\",\"zone_code\":\"CU\",\"current_address_id\":\"0\"},\"shipping\":[],\"payment\":[],\"comment\":\"\"},\"guest\":{\"captcha\":\"\",\"fax\":\"\",\"firstname\":\"\",\"telephone\":\"\",\"lastname\":\"\",\"confirm_password\":\"\",\"password\":\"\",\"email\":\"\",\"newsletter\":\"1\",\"customer_group_id\":\"1\",\"customer_id\":0},\"payment_address\":{\"country_id\":\"176\",\"address_id\":\"\",\"address_2\":\"\",\"company\":\"\",\"firstname\":\"\",\"default\":false,\"address_1\":\"\",\"lastname\":\"\",\"city\":\"\\u0427\\u0435\\u0431\\u043e\\u043a\\u0441\\u0430\\u0440\\u044b\",\"postcode\":\"428037\",\"zone_id\":\"55\",\"country\":\"\\u0420\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"zone\":\"\\u0427\\u0443\\u0432\\u0430\\u0448\\u0441\\u043a\\u0430\\u044f \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\",\"zone_code\":\"CU\",\"current_address_id\":\"0\"},\"shipping_address\":{\"country_id\":\"176\",\"address_id\":\"\",\"address_2\":\"\",\"company\":\"\",\"firstname\":\"\",\"default\":false,\"address_1\":\"\",\"lastname\":\"\",\"city\":\"\\u0427\\u0435\\u0431\\u043e\\u043a\\u0441\\u0430\\u0440\\u044b\",\"postcode\":\"428037\",\"zone_id\":\"55\",\"country\":\"\\u0420\\u043e\\u0441\\u0441\\u0438\\u0439\\u0441\\u043a\\u0430\\u044f \\u0424\\u0435\\u0434\\u0435\\u0440\\u0430\\u0446\\u0438\\u044f\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\",\"zone\":\"\\u0427\\u0443\\u0432\\u0430\\u0448\\u0441\\u043a\\u0430\\u044f \\u0420\\u0435\\u0441\\u043f\\u0443\\u0431\\u043b\\u0438\\u043a\\u0430\",\"zone_code\":\"CU\",\"current_address_id\":\"0\"},\"shipping_methods\":{\"flat\":{\"code\":\"flat\",\"title\":\"\\u0424\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5.00 \\u0440\\u0443\\u0431.\"}},\"sort_order\":\"1\",\"error\":false},\"gixocruspostcalc\":{\"code\":\"gixocruspostcalc\",\"title\":\"<img src=\\\"https:\\/\\/demo113.shoporg.ru\\/image\\/cache\\/catalog\\/gixoc\\/shipping\\/russianpost\\/russianpost_logo-50x24.png\\\" width=\\\"50\\\" height=\\\"24\\\" style=\\\"margin-right: 10px;\\\" \\/ >\\u041f\\u043e\\u0447\\u0442\\u0430 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438\",\"quote\":{\"pkg\":{\"code\":\"gixocruspostcalc.pkg\",\"title\":\"\\u041f\\u043e\\u0441\\u044b\\u043b\\u043a\\u0430 (\\u0412\\u0435\\u0441: 10.00\\u043a\\u0433)\",\"cost\":892.08,\"tax_class_id\":\"0\",\"text\":\"892.08 \\u0440\\u0443\\u0431.\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"gixocruspostcalc.pkg\",\"title\":\"\\u041f\\u043e\\u0441\\u044b\\u043b\\u043a\\u0430 (\\u0412\\u0435\\u0441: 10.00\\u043a\\u0433)\",\"cost\":892.08,\"tax_class_id\":\"0\",\"text\":\"892.08 \\u0440\\u0443\\u0431.\"},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435 (\\u043d\\u0430\\u043b\\u043e\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436)\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435 (\\u043d\\u0430\\u043b\\u043e\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436)\",\"terms\":\"\",\"sort_order\":\"5\"},\"human\":true}', '2022-11-12 18:22:02'),
('6e3e3d573770440d489e9b36ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-29 07:10:15'),
('6f6f40373fb23eb9c864036183', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-01 09:17:14'),
('6f7335e3205447324ccc7f43e7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:51:20'),
('6fa21eed39e54e38f8f948e0bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-22 09:57:24'),
('6fa5e6c30a25d666cfbbb84c66', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[\"41 \"]}', '2022-11-06 05:18:56'),
('70a24a7382863fd98a4dd36dfc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:52:01'),
('714d4f9dfc11c1d4c1581229de', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:16'),
('717288f6bf4ee02fbd09e9744d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:31'),
('71c5ca771efe5ab4e5afe662f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-16 07:21:19'),
('71eebe5a63e060d804eff2752c', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"LIoyfE4y1m9XVXTBObkDsFCumGktBztr\"}', '2018-11-22 13:11:56'),
('72443de75129823a291e06dbc4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:41:36'),
('72966edc8448ba16e14c7fcc40', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"uP7QmZ04MWaCkmYsoYLhnl2Hzw4dnPxi\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC070162\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-11-16 09:05:45'),
('73a03b11b7702da81b592008a8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:38'),
('7443782e8fee64bd5058dd4713', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"A4mSaAAACqZfPTRyQCENZu2PH9PjZtsh\"}', '2019-01-08 13:30:54'),
('74839d1706a53862ec2d5595af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user4\\/opencart\\/OPC010008\\/index.php?route=information\\/blogger&amp;blogger_id=5\",\"user_id\":\"1\",\"user_token\":\"mhpO9vBUAE5jtiTQHihjCGNoJZQG5PSY\"}', '2018-03-15 05:54:21'),
('769b731fbeb19d7cc3b4dd7f2a', '{\"user_id\":\"1\",\"user_token\":\"1QjruC4PAzxRLU7XbJ8GVKlzyLdTtw5U\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-02-20 13:39:42'),
('773fa72842fbb7b465d3c395c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 10:22:12'),
('77b1b3c42e78e1a53def6d25f9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-07 04:15:44'),
('77c3720740a6fd42d81b886c4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-18 12:19:03'),
('78615c8e3f86a5059d19b92999', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:29'),
('78b9faa3cfe98d5d255d38d83c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:42:26'),
('793d8ef8112843aaf0cce538c7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:19'),
('7989d1643c3af1e6b41b32b924', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:26'),
('799db0ac0fb71ff1ad1a9cd85c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:40'),
('79c5def06e4fc25388e8777272', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-30 07:12:09'),
('79eb7eb14ce5257f757781e2fa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:57'),
('7c21a2c4253ba3ff4785dcbe3e', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2019-03-16 05:49:47'),
('7d0fdbc79635adc3f4bb3c6b56', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:45:27'),
('7d4b279dcdedcecfbbacfd0354', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:29:28'),
('7dbb7de04b7b6ce39a10a0d51c', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:53'),
('7ddcf24580d4f878ff0edd835b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:48:39'),
('7de0ee0a9ffc0d0a637cbc97a9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 21:50:12'),
('7de9ce7f36cda42f954bd2fdf0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-15 08:56:02'),
('7ea574b22fedf50143de441611', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:37:44'),
('7f042cd5b5c93f658fdd766dc2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:51:21'),
('7fc7bfff7378b91a32be038e05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 05:02:36'),
('803264f98408a652005d2e2894', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-01 04:23:22'),
('80487233b8d135519c30a905cc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:06'),
('80945df4f7c91ec42e05896e86', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:42:35'),
('81360a6e565055b5519ffa5f5c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"MgVpzsauYj7ezRcPQ9En0H7k4mKHrhEO\",\"vouchers\":[]}', '2018-12-26 13:32:48'),
('834cb6e8790ef77292bb507305', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 07:11:19'),
('843258affba2737cbf85a1e3e9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:48'),
('847a4d2ecd86c75a19f77ffcb4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:30'),
('84a3d3d9e66126b5a7c50ae91f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-21 06:46:32'),
('84d30d3f02a3d18c2fb1456d06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-01 12:00:22'),
('8663305d1969d2d55c29c81a80', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:40'),
('86676bced636fa09799ff3f3c2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:47'),
('86703494353fb537cfb514ff8d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 21:51:27'),
('879abd84f500474f8da0370a84', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:21'),
('87b53efd4511b3a2b6f1f1dbcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-06 07:34:21'),
('8924d14016fcf3732c94784880', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:35'),
('8abb2155b25ca5d5b1ba0f0f26', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2022-11-10 02:33:03'),
('8ba1febb6df7b92ddda7e65b9b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:28'),
('8c29972318167763c11b6be3ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:23:29'),
('8d0b95a3250cc0923ab2570385', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:48'),
('8d9972996e754b5c3c6fb14a8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-09 08:12:15'),
('8e16725631d42b27e92f61cf42', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:58'),
('8e6f1fc07ea1052b7d5c61de5a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:54'),
('9098ec0a922743b422e74df2b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-13 04:09:42'),
('910a3b5e4330b662f07c88d2db', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"C6Rlc5dVtFRHWK0FVBarkrCZIr2Llrqb\",\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-05-30 13:00:14'),
('914f686feb2a1c5b62bf6b8a81', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:39'),
('91bed9543f5843ee3919164d0d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-12 13:58:27'),
('92c1408a5d20ebdc9ec49c3453', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"SPZTfkxLWpmJbxwcQAH1DVebvDhxs4On\"}', '2018-11-21 13:29:41'),
('9366ed9ee25f8150f0f783ac3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-09 08:16:42'),
('93a05c95fe6912b99b84887c45', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2022-11-09 06:23:17'),
('9432928caeb8784adef4727e7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-16 04:43:22'),
('9438cf8b6a229971be39109f8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-31 10:31:25'),
('95cb1e5575918c9f5b330b96c5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:20'),
('95f5f29db5b84ca6db576606e2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"h4nfJ1nhPYyxCkWg8wVLGejZkX19A7yn\"}', '2019-01-03 05:38:50'),
('96d5eb532033d2097df5e40739', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:20'),
('9724bcf64fd72e93eb9b9c4c2e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-20 08:58:15'),
('97f0c80f34e2e14cf405caa0a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-17 06:22:15'),
('9856ac5c6e3cf4f1bc2a2473b4', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-07-31 10:34:02'),
('99575e7476a2530d7df830f8b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-13 05:36:29'),
('9ac9c4cc876b0e94485c75675e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-31 05:10:24'),
('9aed840a2090c6fde084324e35', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-12 09:18:26'),
('9b94dcd4c1f13cd0431cc45714', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:32'),
('9c06242e76c9a64bd55a3bce3c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"0D7WL6xPEC1ejaf4Kg0nZGB3zwd88xNS\"}', '2018-12-20 13:31:33'),
('9c095dfc091a9658bf839a2c83', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:06'),
('9c162e9c5a729cd6260c6c4b17', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-12 13:58:31'),
('9c4348245d69ac7b236f5f6ab1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"https:\\/\\/demo113.shoporg.ru\\/index.php?route=account\\/account\"}', '2022-11-09 06:34:51'),
('9c60b628da1231245ccdcceaad', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:26'),
('9c6843db643b18721ced3823c6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:37:37'),
('9cda44a772d5f7abab00f275d9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:54'),
('9ddf2295b526f46b760161155b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 06:07:33'),
('9fedc5b8751e3e2390470f7de8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-15 12:19:54'),
('a06b06bdc1812370dbd1e24a4f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:38'),
('a0e2c09a8d362477aa1f8cdec7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-18 11:30:33'),
('a11ffbe6edb92e620fecbbda71', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:35'),
('a14f190cb14d414b458e725e6f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:51'),
('a185518a1c799b8f93c09a30aa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[\"40 \"]}', '2022-11-08 12:24:36'),
('a1f1c48452d4caea4d32689955', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:24'),
('a1f66f5012df8886f1c9089497', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:44:47'),
('a3e3dafab410c31d5fc9f16cd7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:35:07'),
('a5f82b610a0d0f9deec38070eb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:34'),
('a603e093d88c0d75eca0541e90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-23 06:42:34'),
('a6610797ffa2588668cbd6eb09', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:03'),
('a6b3cb006e96b682ddcc1a460f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:17'),
('a6c0ba9ef05cc751e4e9dccc14', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:41:34'),
('a759140a86d85a1a9124037881', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"compare\":[]}', '2022-11-09 11:08:17'),
('a7811e38efddc597be80d65be3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"h6xgKZXruURBstXSwxQUnxto6T1EzzdM\",\"wishlist\":[\"47\"],\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC030067\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2018-11-19 13:31:41'),
('a7b27d3fe4730179abc782e7b8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"bGbelgQxSQL1cOcwoJZBTe4xanafuCaB\"}', '2019-04-24 13:03:36'),
('a7f14b46219b2e0e9ca1acf3c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-06-25 11:54:05'),
('a8060d731682be316bec9205b9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-06 12:43:09'),
('a880575f706670a9adec18d219', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-11 07:57:57'),
('a8b959fca24e8f49cc7e86c5b3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"\",\"address_1\":\"mumbai\",\"address_2\":\"\",\"postcode\":\"123456\",\"city\":\"mumbai\",\"zone_id\":\"3516\",\"zone\":\"Angus\",\"zone_code\":\"AGS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"\",\"address_1\":\"mumbai\",\"address_2\":\"\",\"postcode\":\"123456\",\"city\":\"mumbai\",\"zone_id\":\"3516\",\"zone\":\"Angus\",\"zone_code\":\"AGS\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"user_id\":\"1\",\"user_token\":\"Wh3V2BZ9Rw2Bb1KVtXqSxIK4KIJ0iXX9\"}', '2018-03-01 07:10:03'),
('a929881ad79e53cb67fb4bf239', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:09'),
('a9495a16eb8463fbdb1bc60920', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:04'),
('aa672228025dd822577928fd48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-23 06:23:34'),
('ab5b5655721d9c573b659d191a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-15 08:54:21'),
('abb52e122f520c863b7b5fac4d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:55'),
('ac23837cf85497ca5616f9c2a4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"zJGTwfQTieSF7fcEqPdYn2XInOy5rKzy\",\"compare\":[\"30 \"]}', '2019-01-05 08:35:21'),
('acfda3f07d473384458fd36b1b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 21:44:12'),
('adcc2637b10c1faa486b0bb98e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:31'),
('ae5e9da8df26250090e74a5c15', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:27'),
('aec21589ebd1a2eca92c32a424', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ykpfFOUH5eQ9cMRLqMqXQVrHqQtOLpSi\",\"wishlist\":[\"35 \"],\"compare\":[\"35 \"]}', '2018-12-28 13:13:57'),
('aef5407e68009b15fd8c47101e', '{\"language\":\"ar\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Q632Wk0kTOY7Yi9DzWq75tX7pULJavA8\"}', '2019-01-07 11:32:58'),
('b00715e98c69236a8cfae6ae60', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:24'),
('b03011749ef08e0743b4c52a60', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user2\\/opencart\\/OPC010016\\/index.php?route=account\\/account\"}', '2018-09-05 10:30:24'),
('b073474e950b7fc4a0ce762bbf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-20 12:10:05'),
('b0c8eb63cf3f2a35ed0cb9d747', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:51:01'),
('b111125bdd5a069f1a01435edb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:14'),
('b219aa3dc2591de753bdc70522', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-06 19:48:51');
INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('b2741888e0df811a1aaeb55706', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-29 10:59:16'),
('b3f1cd418cc28d5d8059f8ffea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-15 11:27:31'),
('b4bcc709af675b6a40c0a6e5cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-02 08:21:50'),
('b4bdb3c2ed89bb00cb7a06ae40', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:37:27'),
('b57a41128713dc72be58e4e3f2', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:16'),
('b6226c556527040613714170d0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:30'),
('b6371c2de7eef8a1cb4dfb77cb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"43\"],\"compare\":[\"43\",\"31 \",\"41 \"],\"user_id\":\"1\",\"user_token\":\"bul0D72RAGdgZxDXJP5OcB28pqDsxOkp\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC070162\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-11-21 12:26:16'),
('b63fa597082115ec4144f3d3e0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-07 09:15:42'),
('b72eb0c9ccff5718b6160e3dc1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"DAsbCgF98RX9okPAEaHWjMVF83ZqpoTa\"}', '2019-03-12 12:59:26'),
('b73dd3aa8c80307a19c9722756', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:22'),
('b7904cabaa7a927f1367c36a5f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 21:49:00'),
('b7d4465395c0ae2a983965024b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[\"31 \"],\"wishlist\":[\"43\"]}', '2019-04-25 07:52:11'),
('b7fdf5bf52f2377e1f51c08bbc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"redirect\":\"https:\\/\\/demo113.shoporg.ru\\/index.php?route=information\\/blogger&amp;blogger_id=1\",\"compare\":[\"40 \"]}', '2022-11-04 20:20:02'),
('b8f7e24290f005f4943d06fc79', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:55'),
('b91b8c22ba0849979e6e3b728d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:35:07'),
('baf3f57947b25b55caee1de0ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-20 04:25:35'),
('baff22d3abce774f36692834be', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:02'),
('bbe31c5d7ed7910873e8e41d25', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:04'),
('bbe443927983d801df48db67f5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AzPJfBsnky1jxpZKbPiiEhDdBAK4mIr7\",\"success\":\"Success: You have modified HTML Content module!\"}', '2018-11-13 13:22:45'),
('bca68929980c78ad947248d9d0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:52'),
('bd63816839b9078aed8e106ad9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-14 04:05:37'),
('bddfed2d8336079d7d7e2c2d47', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:31'),
('bde8bbc43c9ef3e6eeebcc6001', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:41'),
('be1d732b2c89d3bbaeb13f31ab', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-12 13:58:27'),
('c033d519b3a107ff9adfc44d0a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:33'),
('c0c4fa4b388b055dbd7c5e14e6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 21:51:27'),
('c16205ada32d54e46606c0dbe7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"9p7MaSnXWE3HirR1GoXdRnIPVZ7mcvXY\",\"account\":\"register\",\"customer_id\":\"3\",\"payment_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null}}', '2018-05-29 12:57:02'),
('c23cb3c8475fcfb833537eb80b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:57'),
('c2c1eb0398145ca13770cf208b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:46'),
('c31cb7887f02ad8d781557f6f6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:14'),
('c386241e414fb7767c356a16aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-16 06:50:36'),
('c39712fb6fca42ef0ecd6d204d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-21 11:35:50'),
('c3b341dde9ed03ccf3129bdcf4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"wishlist\":[\"41 \"],\"compare\":[],\"install\":\"G0kg9d5M2f\",\"user_id\":\"1\",\"user_token\":\"fzNXuJnL2zXg6SxV5ZjHePPmcroxVuT8\",\"stoken\":\"bcf4f6ab2dbbdf519d7a14119dfc6cf8\",\"simple_afk\":\"\",\"simple_cfk\":\"\",\"simple_ofk\":\"\"}', '2022-11-15 08:22:02'),
('c3f25568f52f69f09bbca7b0d1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:50'),
('c3f4c901de575de166bc796d38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-20 04:26:12'),
('c4a416f78111cc77f4576c9de3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-20 12:12:16'),
('c4da139abc7ffb9f95a9a32920', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-08 11:27:47'),
('c5cf5c93c64e8aeeed40962850', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"ekYWAi3rQfmguanD97Wo9JWnFPcMpSc3\"}', '2019-03-15 12:35:28'),
('c6881a91a695a416e455240151', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-02 05:17:27'),
('c690635ef856af2f77dd562465', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"hxQtOBovKMLSi4brDy6iGYqoFjzmnwjP\"}', '2018-03-14 13:38:09'),
('c7c149d23a25dc64f13ae8ae2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-08-25 04:21:14'),
('c8f33a07b139d8495119dd3ed3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-24 08:02:03'),
('cac9db2732e75ef62b5d045f89', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:45'),
('cb8effb0ebc333d5106d5b0587', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:04'),
('cc0778b621a61c74558b770df8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:51'),
('cc46de9b3c5b42f7a5af84e1e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 08:43:30'),
('cd3b80a85fbe80b3fadce5c401', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"oA96qRTXZDkPQDytnF5rQqQ3Zu6GmZGT\",\"customer_id\":\"6\",\"payment_address\":{\"address_id\":\"6\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"abc\",\"address_1\":\"surat\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3624\",\"zone\":\"California\",\"zone_code\":\"CA\",\"country_id\":\"223\",\"country\":\"United States\",\"iso_code_2\":\"US\",\"iso_code_3\":\"USA\",\"address_format\":\"{firstname} {lastname}\\r\\n{company}\\r\\n{address_1}\\r\\n{address_2}\\r\\n{city}, {zone} {postcode}\\r\\n{country}\",\"custom_field\":null},\"payment_methods\":[]}', '2019-11-19 13:04:42'),
('cef8843a75b70d904e27b77b73', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:58'),
('cf11f07d6eb9a3dada0fb9c4c9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:56'),
('cfb35540c4e0795f65044cf64f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:30:08'),
('d04e117db4e5f0732792eb5097', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:02'),
('d05ad413d728d86b4ed9799179', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-05-28 13:00:43'),
('d097dedc4810bd9c51f2b7edcc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-27 08:01:36'),
('d1357d3d3432efa9bfb4c8effa', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:47'),
('d22976641c933edf0e9651e2e7', '{\"api_id\":\"9\"}', '2022-11-15 08:20:49'),
('d29f1053101cca877f5cf28936', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-21 06:00:26'),
('d2d400b744c2a81167e44ffed5', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:41:39'),
('d3105e8cf16bb4d21e6df8524e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:41'),
('d36252d18de4bbb61042b08dc3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:47'),
('d3c73247a9d573b7a50693c1fe', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:55'),
('d400efee0033a716edd1ffc1de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-19 05:23:05'),
('d405c4c706293d16604b9bbe30', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"B1RvTHuVEcib3jQFH7PURVXx7sHZbpIN\"}', '2018-02-28 13:35:53'),
('d40b8a5dc332cf5ef0ff6284e3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:51:22'),
('d4bfa43344eedd2f304ed3ca52', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:40'),
('d584af6fc80d9765ed8f6e2b28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-16 07:58:25'),
('d5f3a58a4af7a870c9f0f72582', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:33'),
('d621fff55af6db5cca577c6c92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-26 10:31:20'),
('d7d5ca36c13843f07acdcbff4b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:46:45'),
('d82468d9e99c473b85059850cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-24 10:37:55'),
('d8b5e9ffd6c558430f369f7f90', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-12 13:58:30'),
('d8c038ca4b1f7e656b18dc2a2b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-06 07:07:13'),
('d8c62ae4ae30fe3f7c0a787c22', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FR6Ljx8eag1tHifWSASClvRq37AzcowQ\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC050120\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-04-25 08:38:59'),
('d934ddb3e4300ba42aa21f08ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-08 04:37:33'),
('d93845084bc100c389c20de0f1', '{\"language\":\"ar\",\"currency\":\"USD\"}', '2018-11-20 04:19:10'),
('d9566f1a4942e866308a711f10', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:38:11'),
('d9c2ae89a0ec13950e5dabedec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-12 13:22:00'),
('dac698fdba133b6f630bee0cff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-03 08:13:21'),
('db3b33b94ac4e2a25b553d9058', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"AE8f88KO6XsKVIk21yJ8Y4y9PvlzB0Fh\"}', '2019-03-12 12:07:41'),
('dc2c37921169d74091fe9fb4f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-19 06:30:22'),
('dd1710c7dd86b123f8541c4bb9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-08 16:06:24'),
('dd9a57fbe58e5bba26f19ac507', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-05 04:59:03'),
('ddbeb36dce597a394ce56380c1', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:05'),
('ddd105e58dfa3fe1fd47cff2fd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"O2XHzDVBGqGhxZoNjvGw1hramJg0q6C7\",\"vouchers\":[],\"wishlist\":[\"43\"]}', '2019-03-15 10:53:03'),
('deb092c41d19073de9c8dcc437', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"L98BE1pToB7ACDmOAj5roCSMiIYdrclP\"}', '2019-11-14 11:04:27'),
('df423b99cd6677ca25ac6fe2ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-25 08:35:35'),
('dfb39d1798bed749d8597706db', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:51:20'),
('e015246f5b791571de2b76bb94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-03-12 07:31:38'),
('e064fc2c3d9b49fd2098b4a726', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:38:25'),
('e15f9f2584a72f72c2e356e6d0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:38:13'),
('e169f52830820c3d4515f09ab2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"TRkHfB0mYNkJZikJPXDwOcrViKKLQck8\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user5\\/opencart\\/OPC030075\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-01-04 13:02:41'),
('e1de74ad3c796ae270612c0c2a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:33:34'),
('e2e51bd47a2e2393b9b3a48794', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-03-06 07:34:12'),
('e3041afbcef58a9b6d74d835e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-11 11:47:48'),
('e3eca50c14a53f2a05239e636a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-05 05:43:35'),
('e410d8b432457783db15ea6da7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-03 06:43:50'),
('e4683fd9f1df0bf477dcea9686', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"81MxJ11hnkXvOI3CzBgNMAOXfQDTrg2X\",\"vouchers\":[],\"customer_id\":\"3\",\"shipping_address\":{\"address_id\":\"4\",\"firstname\":\"admin\",\"lastname\":\"admin\",\"company\":\"GHI\",\"address_1\":\"B-12 udhna\",\"address_2\":\"\",\"postcode\":\"12345\",\"city\":\"surat\",\"zone_id\":\"3522\",\"zone\":\"Bristol\",\"zone_code\":\"BSTL\",\"country_id\":\"222\",\"country\":\"United Kingdom\",\"iso_code_2\":\"GB\",\"iso_code_3\":\"GBR\",\"address_format\":\"\",\"custom_field\":null},\"compare\":[\"47 \"]}', '2019-01-08 12:40:23'),
('e520d1e76dcc33db44a0d3dc63', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:42'),
('e54a45c850f68075d2b56d5ed4', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:36:15'),
('e572a7b31b4ba420b9d808cf84', '{\"user_id\":\"1\",\"user_token\":\"ps8IdPKOysIImWguTUKSL8drtnfTDE4J\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 13:03:36'),
('e57b1c8b72a9415b65dcb84c54', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:44'),
('e5e5609397e1d6f72c3b1ff365', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:41:36'),
('e61a64f9057cf444f4d5bbb55f', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:41:38'),
('e6e9ebb7d87a1e6f3aa567740b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:11'),
('e73b9513fcadd6e3060c143346', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 07:04:43'),
('e78d8154f9164f2def1016f9e7', '{\"user_id\":\"1\",\"user_token\":\"bCrWXq3cZCZb5AOA7LXHJSGdWdCjDx5v\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-11-15 13:32:16'),
('e88b9136be182c9f327ee88993', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:15'),
('e9a02405cfd4e1cc7d7b761ef8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:36'),
('ea00fa9ecc745d81c976a9dd40', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:37'),
('ea0706adf4233416d5b517809d', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:30:12'),
('eb03311d7632b35327d4ad5559', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-02-04 09:23:10'),
('eb639b4cee22bef1b6802efe34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-05-09 20:25:44'),
('eb8fd059ce36931e5b4217045b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:50:59'),
('ecd3d9df10aa8bc0a091a8bbea', '{\"api_id\":\"9\"}', '2022-11-09 16:21:44'),
('edb03511c0ab060d07325641e8', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:58'),
('ee874a733b9b55f73b36c5efe7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-09-05 07:19:55'),
('ef3f8b57149acdd32e86858177', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:59'),
('ef7bfbece77c592a8685470317', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-11-18 07:37:16'),
('ef93f06b990ca88a7a032e8294', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"gCeyOvH4nLM04YEsFF90izM11WfTxvJI\"}', '2018-03-06 09:31:59'),
('efb7a9ee9b57d9068081cf86a9', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 07:12:04'),
('f0185e2f60e40f92743de44676', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"36\"],\"compare\":[\"35 \"],\"vouchers\":[]}', '2019-03-15 10:05:38'),
('f051cc09635276c25904147c10', '{\"language\":\"ru-ru\",\"currency\":\"RUB\",\"get_used\":true,\"simple\":{\"customer\":{\"captcha\":\"\",\"fax\":\"\",\"firstname\":\"\",\"telephone\":\"\",\"lastname\":\"\",\"confirm_password\":\"\",\"password\":\"\",\"email\":\"\",\"newsletter\":\"1\",\"register\":\"1\",\"customer_group_id\":\"1\",\"customer_id\":0},\"payment_address\":{\"country_id\":\"\",\"address_id\":\"\",\"address_2\":\"\",\"company\":\"\",\"firstname\":\"\",\"default\":false,\"address_1\":\"\",\"lastname\":\"\",\"city\":\"\",\"postcode\":\"\",\"zone_id\":\"\",\"country\":\"\",\"iso_code_2\":\"\",\"iso_code_3\":\"\",\"address_format\":\"\",\"zone\":\"\",\"zone_code\":\"\"},\"shipping_address\":{\"country_id\":\"\",\"address_id\":\"\",\"address_2\":\"\",\"company\":\"\",\"firstname\":\"\",\"default\":false,\"address_1\":\"\",\"lastname\":\"\",\"city\":\"\",\"postcode\":\"\",\"zone_id\":\"\",\"country\":\"\",\"iso_code_2\":\"\",\"iso_code_3\":\"\",\"address_format\":\"\",\"zone\":\"\",\"zone_code\":\"\"},\"shipping\":[],\"payment\":[],\"comment\":\"\"},\"guest\":{\"captcha\":\"\",\"fax\":\"\",\"firstname\":\"\",\"telephone\":\"\",\"lastname\":\"\",\"confirm_password\":\"\",\"password\":\"\",\"email\":\"\",\"newsletter\":\"1\",\"customer_group_id\":\"1\",\"customer_id\":0},\"payment_address\":{\"country_id\":\"\",\"address_id\":\"\",\"address_2\":\"\",\"company\":\"\",\"firstname\":\"\",\"default\":false,\"address_1\":\"\",\"lastname\":\"\",\"city\":\"\",\"postcode\":\"\",\"zone_id\":\"\",\"country\":\"\",\"iso_code_2\":\"\",\"iso_code_3\":\"\",\"address_format\":\"\",\"zone\":\"\",\"zone_code\":\"\"},\"shipping_address\":{\"country_id\":\"\",\"address_id\":\"\",\"address_2\":\"\",\"company\":\"\",\"firstname\":\"\",\"default\":false,\"address_1\":\"\",\"lastname\":\"\",\"city\":\"\",\"postcode\":\"\",\"zone_id\":\"\",\"country\":\"\",\"iso_code_2\":\"\",\"iso_code_3\":\"\",\"address_format\":\"\",\"zone\":\"\",\"zone_code\":\"\"},\"shipping_methods\":{\"flat\":{\"code\":\"flat\",\"title\":\"\\u0424\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5.00 \\u0440\\u0443\\u0431.\"}},\"sort_order\":\"1\",\"error\":false}},\"shipping_method\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":5,\"tax_class_id\":\"9\",\"text\":\"5.00 \\u0440\\u0443\\u0431.\"},\"payment_methods\":{\"cod\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435 (\\u043d\\u0430\\u043b\\u043e\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436)\",\"terms\":\"\",\"sort_order\":\"5\"}},\"payment_method\":{\"code\":\"cod\",\"title\":\"\\u041e\\u043f\\u043b\\u0430\\u0442\\u0430 \\u043f\\u0440\\u0438 \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0435 (\\u043d\\u0430\\u043b\\u043e\\u0436\\u0435\\u043d\\u043d\\u044b\\u0439 \\u043f\\u043b\\u0430\\u0442\\u0435\\u0436)\",\"terms\":\"\",\"sort_order\":\"5\"},\"human\":true}', '2022-11-15 08:20:18'),
('f10c57af332064d6660d90ec6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-10 07:07:27'),
('f19bae472f26d44a9a3a4a8251', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:38:55'),
('f20cde02b2edee8549a14951e0', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:08'),
('f2cf4389e78388beefefb42a91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-10-30 10:50:06'),
('f3f6dfd6c43d3bad09b9c0ee89', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:13'),
('f47eb2380d8bd225f3f3c31ea5', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"BZk5ImMBhhJXivoCladgbdVdIk5pM68R\"}', '2018-11-14 12:39:02'),
('f50c40bd11887c716e3a758dbb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:51'),
('f624e27d67b3623aa091c64979', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:41:28'),
('f64b7e14f37459b6a8279ce808', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:42:25'),
('f6c943b3349f86a2bfdd6595bc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"M2Pr2FGL5doIDAjza3l7vVchZXWPEJzD\"}', '2019-01-16 12:21:43'),
('f6ccade59108fcca88ed22f9ec', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-14 21:51:28'),
('f6d117d0dfa59d88db766c6efc', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-13 08:17:35'),
('f80abd619ebed3dc5c151e86f6', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:37:25'),
('f81179f5772cd69279057d409e', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:08'),
('f8c8f17e8f3688a04c078526bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-15 11:45:14'),
('f98650224b8a3a0df04002fb23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-01-16 06:29:59'),
('fa26814b5437ac58131cad3dc3', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:53'),
('faa8bfd63813755bb54322cbf7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:55'),
('fbd0451d20d1c70fa36fbe12bb', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:08'),
('fc155831526ca85ca6312528de', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:45'),
('fcf371abaa3b902be326858d0d', '{\"language\":\"en-gb\",\"currency\":\"EUR\"}', '2018-05-31 09:31:09'),
('fcf8d5e38cd5fc141088cf3279', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-12-07 12:56:43'),
('fd4d26a371986c4c3cd2136b38', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 05:49:09'),
('fdcfe126b3740a0371be7802d7', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:34:56'),
('fdffd6e2294028eb461fdac3dc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"Mjids5GneJZsj2mwUou7i19LBTf6hP5k\"}', '2019-03-13 08:03:53'),
('fe2e5e60cbb047fcc736b225be', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"P1Amc0NkXDdbcYbog6wfSztspAFi73Rc\",\"redirect\":\"http:\\/\\/192.168.0.150\\/user7\\/opencart\\/OPC070162\\/index.php?route=information\\/blogger&amp;blogger_id=6\"}', '2019-11-15 13:04:43'),
('fe3e1b1e284a12b13e8f088523', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:32:47'),
('febe2f4df9d841c0965df6041b', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-09 06:33:52'),
('fef75253b8c38a90e12ccac91d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2018-07-09 05:28:31'),
('ff89afec23352b6b5bf5105e9a', '{\"language\":\"ru-ru\",\"currency\":\"RUB\"}', '2022-11-10 02:34:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` mediumtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(3513, 0, 'mmos_ajax_search', 'mmos_ajax_search', '{\"limit\":\"5\",\"image\":\"1\",\"width\":\"75\",\"height\":\"75\",\"maxtext\":\"50\",\"search\":[\"name\"],\"status\":\"1\"}', 1),
(3514, 0, 'oc3x_storage_cleaner', 'oc3x_storage_cleaner_status', '1', 0),
(3515, 0, 'oc3x_storage_cleaner', 'oc3x_storage_cleaner_size', '1', 0),
(3516, 0, 'module_oc3x_storage_cleaner', 'module_oc3x_storage_cleaner_status', '1', 0),
(3916, 0, 'config', 'config_shared', '0', 0),
(3915, 0, 'config', 'config_password', '1', 0),
(3914, 0, 'config', 'config_secure', '1', 0),
(3913, 0, 'config', 'config_compression', '0', 0),
(3897, 0, 'config', 'config_captcha', '', 0),
(3898, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(3899, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(3900, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(3901, 0, 'config', 'config_mail_engine', 'mail', 0),
(3902, 0, 'config', 'config_mail_parameter', '', 0),
(3903, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(3904, 0, 'config', 'config_mail_smtp_username', '', 0),
(3905, 0, 'config', 'config_mail_smtp_password', '', 0),
(3906, 0, 'config', 'config_mail_smtp_port', '25', 0),
(3907, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(3908, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(3909, 0, 'config', 'config_mail_alert_email', '', 0),
(3910, 0, 'config', 'config_maintenance', '0', 0),
(3911, 0, 'config', 'config_seo_url', '1', 0),
(3912, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(3888, 0, 'config', 'config_stock_warning', '0', 0),
(3889, 0, 'config', 'config_stock_checkout', '0', 0),
(3890, 0, 'config', 'config_affiliate_group_id', '1', 0),
(3891, 0, 'config', 'config_affiliate_approval', '0', 0),
(3892, 0, 'config', 'config_affiliate_auto', '0', 0),
(3893, 0, 'config', 'config_affiliate_commission', '5', 0),
(3894, 0, 'config', 'config_affiliate_id', '4', 0),
(3895, 0, 'config', 'config_return_id', '0', 0),
(3896, 0, 'config', 'config_return_status_id', '2', 0),
(3885, 0, 'config', 'config_fraud_status_id', '7', 0),
(3886, 0, 'config', 'config_api_id', '9', 0),
(3887, 0, 'config', 'config_stock_display', '0', 0),
(3884, 0, 'config', 'config_complete_status', '[\"3\",\"5\"]', 1),
(3883, 0, 'config', 'config_processing_status', '[\"2\",\"3\",\"1\",\"12\",\"5\"]', 1),
(3882, 0, 'config', 'config_order_status_id', '1', 0),
(3881, 0, 'config', 'config_checkout_id', '5', 0),
(3880, 0, 'config', 'config_checkout_guest', '1', 0),
(3879, 0, 'config', 'config_cart_weight', '1', 0),
(3878, 0, 'config', 'config_invoice_prefix', 'INV-2022-00', 0),
(3877, 0, 'config', 'config_account_id', '3', 0),
(3876, 0, 'config', 'config_login_attempts', '5', 0),
(3875, 0, 'config', 'config_customer_price', '0', 0),
(3874, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(3873, 0, 'config', 'config_customer_group_id', '1', 0),
(3872, 0, 'config', 'config_customer_search', '0', 0),
(587, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(586, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(592, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(591, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(590, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(3080, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(3079, 0, 'total_tax', 'total_tax_status', '0', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(2111, 0, 'developer', 'developer_sass', '0', 0),
(2110, 0, 'developer', 'developer_theme', '0', 0),
(3798, 0, 'module_filter', 'module_filter_status', '0', 0),
(233, 0, 'module_information', 'module_information_status', '1', 0),
(234, 0, 'module_newsletters', 'module_newsletters_status', '1', 0),
(2989, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(589, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(588, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(2988, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(2987, 0, 'theme_default', 'theme_default_image_cart_height', '85', 0),
(893, 0, 'module_divido_calculator', 'module_divido_calculator_status', '0', 0),
(2985, 0, 'theme_default', 'theme_default_image_wishlist_height', '85', 0),
(2986, 0, 'theme_default', 'theme_default_image_cart_width', '85', 0),
(2984, 0, 'theme_default', 'theme_default_image_wishlist_width', '85', 0),
(2983, 0, 'theme_default', 'theme_default_image_compare_height', '85', 0),
(2982, 0, 'theme_default', 'theme_default_image_compare_width', '85', 0),
(2981, 0, 'theme_default', 'theme_default_image_related_height', '328', 0),
(2980, 0, 'theme_default', 'theme_default_image_related_width', '328', 0),
(2979, 0, 'theme_default', 'theme_default_image_additional_height', '564', 0),
(2978, 0, 'theme_default', 'theme_default_image_additional_width', '564', 0),
(2977, 0, 'theme_default', 'theme_default_image_product_height', '252', 0),
(2976, 0, 'theme_default', 'theme_default_image_product_width', '252', 0),
(2975, 0, 'theme_default', 'theme_default_image_popup_height', '800', 0),
(2974, 0, 'theme_default', 'theme_default_image_popup_width', '800', 0),
(2973, 0, 'theme_default', 'theme_default_image_thumb_height', '564', 0),
(2972, 0, 'theme_default', 'theme_default_image_thumb_width', '564', 0),
(3871, 0, 'config', 'config_customer_activity', '0', 0),
(3870, 0, 'config', 'config_customer_online', '0', 0),
(3869, 0, 'config', 'config_tax_customer', 'shipping', 0),
(3868, 0, 'config', 'config_tax_default', 'shipping', 0),
(3867, 0, 'config', 'config_tax', '0', 0),
(3866, 0, 'config', 'config_voucher_max', '1000', 0),
(3865, 0, 'config', 'config_voucher_min', '1', 0),
(3864, 0, 'config', 'config_review_guest', '1', 0),
(3863, 0, 'config', 'config_review_status', '1', 0),
(3862, 0, 'config', 'config_autocomplete_limit', '30', 0),
(2971, 0, 'theme_default', 'theme_default_image_category_height', '200', 0),
(2970, 0, 'theme_default', 'theme_default_image_category_width', '1098', 0),
(2969, 0, 'theme_default', 'theme_default_product_description_length', '180', 0),
(2968, 0, 'theme_default', 'theme_default_product_limit', '12', 0),
(2967, 0, 'theme_default', 'theme_default_status', '1', 0),
(2966, 0, 'theme_default', 'theme_default_directory', 'Caffeine', 0),
(3861, 0, 'config', 'config_limit_admin', '20', 0),
(3860, 0, 'config', 'config_product_count', '0', 0),
(3845, 0, 'config', 'config_comment', 'Добро пожаловать в наш интернет-магазин - кофейню!', 0),
(3846, 0, 'config', 'config_country_id', '176', 0),
(3847, 0, 'config', 'config_zone_id', '83', 0),
(3848, 0, 'config', 'config_language', 'ru-ru', 0),
(3849, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(3850, 0, 'config', 'config_currency', 'RUB', 0),
(3851, 0, 'config', 'config_currency2', '', 0),
(3852, 0, 'config', 'config_autocalc_option_special', '0', 0),
(3853, 0, 'config', 'config_autocalc_option_discount', '0', 0),
(3854, 0, 'config', 'config_autocalc_not_mul_qty', '0', 0),
(3855, 0, 'config', 'config_autocalc_select_first', '0', 0),
(3856, 0, 'config', 'config_autocalc_hide_option_price', '0', 0),
(3857, 0, 'config', 'config_currency_auto', '1', 0),
(3858, 0, 'config', 'config_length_class_id', '1', 0),
(3859, 0, 'config', 'config_weight_class_id', '1', 0),
(3844, 0, 'config', 'config_open', 'Пн-Пт - c 08:00 до 18:00 по МСК, сб-вс - выходной', 0),
(3843, 0, 'config', 'config_image', 'catalog/logo.png', 0),
(3842, 0, 'config', 'config_fax', '', 0),
(3841, 0, 'config', 'config_telephone', '+7 (900) 123-45-67', 0),
(3840, 0, 'config', 'config_email', 'admin@site.ru', 0),
(3839, 0, 'config', 'config_geocode', '55.88316, 37.57709', 0),
(3838, 0, 'config', 'config_address', '101000, г. Москва, ул. Стандартная, д. 6', 0),
(3837, 0, 'config', 'config_owner', 'Интернет-магазин - Кофейня', 0),
(3836, 0, 'config', 'config_name', 'Интернет-магазин - Кофейня', 0),
(3833, 0, 'config', 'config_meta_keyword', 'кофейня', 0),
(3834, 0, 'config', 'config_theme', 'default', 0),
(3835, 0, 'config', 'config_layout_id', '4', 0),
(3832, 0, 'config', 'config_meta_description', 'Описание интернет-магазина - кофейни... Описание интернет-магазина - кофейни... Описание интернет-магазина - кофейни... Описание интернет-магазина - кофейни... Описание интернет-магазина - кофейни... Описание интернет-магазина - кофейни...', 0),
(3831, 0, 'config', 'config_meta_title', 'Интернет-магазин - Кофейня', 0),
(3527, 0, 'timer', 'timer_additional_admin_settings', '{\"show_column_photo\":1,\"show_column_category\":1,\"show_column_manufacturer\":1,\"show_column_status\":1,\"show_column_quantity\":1,\"show_column_old_price\":1,\"show_filter_category\":1,\"show_filter_manufacturer\":1,\"show_filter_customer_groups\":1,\"show_filter_status\":1,\"show_filter_old_price\":1,\"show_filter_special_price\":1,\"show_filter_special_date\":1,\"show_filter_quantity\":1}', 1),
(3526, 0, 'timer', 'timer_general_settings', '{\"timer_product_page_status\":\"1\"}', 1),
(3525, 0, 'hours_and_days', 'hours_and_days_settings', '{\"module_status\":\"1\",\"monday\":{\"2\":\"\\u041f\\u043e\\u043d\\u0435\\u0434\\u0435\\u043b\\u044c\\u043d\\u0438\\u043a\",\"1\":\"Monday\"},\"tuesday\":{\"2\":\"\\u0412\\u0442\\u043e\\u0440\\u043d\\u0438\\u043a\",\"1\":\"Tuesday\"},\"wednesday\":{\"2\":\"\\u0421\\u0440\\u0435\\u0434\\u0430\",\"1\":\"Wednesday\"},\"thursday\":{\"2\":\"\\u0427\\u0435\\u0442\\u0432\\u0435\\u0440\\u0433\",\"1\":\"Thursday\"},\"friday\":{\"2\":\"\\u041f\\u044f\\u0442\\u043d\\u0438\\u0446\\u0430\",\"1\":\"Friday\"},\"saturday\":{\"2\":\"\\u0421\\u0443\\u0431\\u0431\\u043e\\u0442\\u0430\",\"1\":\"Saturday\"},\"sunday\":{\"2\":\"\\u0412\\u043e\\u0441\\u043a\\u0440\\u0435\\u0441\\u0435\\u043d\\u044c\\u0435\",\"1\":\"Sunday\"}}', 1),
(3528, 0, 'timer', 'timer_additional_catalog_settings', '', 0),
(3600, 0, 'module_art_aqa_product', 'module_art_aqa_product_f_communication', '0', 0),
(3599, 0, 'module_art_aqa_product', 'module_art_aqa_product_text_f_question', '{\"2\":\"\",\"1\":\"\"}', 1),
(3598, 0, 'module_art_aqa_product', 'module_art_aqa_product_f_question', '2', 0),
(3593, 0, 'module_art_aqa_product', 'module_art_aqa_product_text_f_name', '{\"2\":\"\",\"1\":\"\"}', 1),
(3594, 0, 'module_art_aqa_product', 'module_art_aqa_product_f_email', '2', 0),
(3595, 0, 'module_art_aqa_product', 'module_art_aqa_product_text_f_email', '{\"2\":\"\",\"1\":\"\"}', 1),
(3596, 0, 'module_art_aqa_product', 'module_art_aqa_product_f_telephone', '0', 0),
(3597, 0, 'module_art_aqa_product', 'module_art_aqa_product_text_f_telephone', '{\"2\":\"\",\"1\":\"\"}', 1),
(3592, 0, 'module_art_aqa_product', 'module_art_aqa_product_f_name', '1', 0),
(3591, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_accept_language', '0', 0),
(3590, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_user_agent', '0', 0),
(3589, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_forwarded_ip', '0', 0),
(3588, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_ip', '0', 0),
(3587, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_date_added', '1', 0),
(3586, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_status', '1', 0),
(3585, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_answer', '1', 0),
(3584, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_question', '1', 0),
(3583, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_communication', '0', 0),
(3582, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_phone', '0', 0),
(3581, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_email', '1', 0),
(3580, 0, 'module_art_aqa_product', 'module_art_aqa_product_td_name', '1', 0),
(3579, 0, 'module_art_aqa_product', 'module_art_aqa_product_form', '3', 0),
(3578, 0, 'module_art_aqa_product', 'module_art_aqa_product_limit', '5', 0),
(3577, 0, 'module_art_aqa_product', 'module_art_aqa_product_title_tab', 'Задать вопрос о товаре', 0),
(3576, 0, 'module_art_aqa_product', 'module_art_aqa_product_send_success', '{\"2\":\"\\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e! \\u0412\\u0430\\u0448\\u0435 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d.\",\"1\":\"\\u0421\\u043f\\u0430\\u0441\\u0438\\u0431\\u043e! \\u0412\\u0430\\u0448\\u0435 \\u0432\\u043e\\u043f\\u0440\\u043e\\u0441 \\u043e\\u0442\\u043f\\u0440\\u0430\\u0432\\u043b\\u0435\\u043d.\"}', 1),
(3575, 0, 'module_art_aqa_product', 'module_art_aqa_product_default_image', '', 0),
(3574, 0, 'module_art_aqa_product', 'module_art_aqa_product_default_title', 'Админ', 0),
(3573, 0, 'module_art_aqa_product', 'module_art_aqa_product_email', 'admin@site.ru', 0),
(3572, 0, 'module_art_aqa_product', 'module_art_aqa_product_id', '', 0),
(3571, 0, 'module_art_aqa_product', 'module_art_aqa_product_token', '', 0),
(3570, 0, 'module_art_aqa_product', 'module_art_aqa_product_status', '1', 0),
(3601, 0, 'module_art_aqa_product', 'module_art_aqa_product_text_f_communication', '{\"2\":\"\",\"1\":\"\"}', 1),
(3602, 0, 'module_art_aqa_product', 'module_art_aqa_product_f_personal_data', '0', 0),
(3603, 0, 'module_art_aqa_product', 'module_art_aqa_product_text_f_personal_data', '{\"2\":\"\",\"1\":\"\"}', 1),
(3604, 0, 'module_art_aqa_product', 'module_art_aqa_product_f_captcha', '0', 0),
(3605, 0, 'module_art_aqa_product', 'module_art_aqa_product_mail_question_status', '0', 0),
(3606, 0, 'module_art_aqa_product', 'module_art_aqa_product_mail_question_title', '{\"2\":\"\",\"1\":\"\"}', 1),
(3607, 0, 'module_art_aqa_product', 'module_art_aqa_product_mail_question', '{\"2\":\"\",\"1\":\"\"}', 1),
(3608, 0, 'module_art_aqa_product', 'module_art_aqa_product_mail_answer_status', '0', 0),
(3609, 0, 'module_art_aqa_product', 'module_art_aqa_product_mail_answer_title', '{\"2\":\"\",\"1\":\"\"}', 1),
(3610, 0, 'module_art_aqa_product', 'module_art_aqa_product_mail_answer', '{\"2\":\"\",\"1\":\"\"}', 1),
(3830, 0, 'config', 'config_at_custom_head', '', 0),
(3829, 0, 'config', 'config_at_custom_js', '', 0),
(3828, 0, 'config', 'config_at_custom_css', '', 0),
(3744, 0, 'sla_seo_pro', 'sla_seo_pro_utm', 'tracking\nutm_medium\nutm_source\nutm_campaign\nutm_content\nyclid\ngclid\nutm_term', 0),
(3743, 0, 'sla_seo_pro', 'sla_seo_pro_prefix_category', '', 0),
(3742, 0, 'sla_seo_pro', 'sla_seo_pro_prefix_product', '', 0),
(3741, 0, 'sla_seo_pro', 'sla_seo_pro_short_url', '0', 0),
(3740, 0, 'sla_seo_pro', 'sla_seo_pro_postfix_slash_product', '0', 0),
(3739, 0, 'sla_seo_pro', 'sla_seo_pro_postfix_slash', '0', 0),
(3738, 0, 'sla_seo_pro', 'sla_seo_pro_postfix', '', 0),
(3737, 0, 'sla_seo_pro', 'sla_seo_pro_seo_page', '1', 0),
(3736, 0, 'sla_seo_pro', 'sla_seo_pro_include_path', '1', 0),
(3735, 0, 'sla_seo_pro', 'sla_seo_pro_status', '1', 0),
(3733, 0, 'module_agree_cookie', 'module_agree_cookie_text', 'Этот сайт использует файлы Cookies для более комфортной работы пользователя.', 0),
(3734, 0, 'module_agree_cookie', 'module_agree_cookie_status', '1', 0),
(3745, 0, 'simple', 'simple_license', '', 0),
(3746, 0, 'simple', 'simple_domain', 'demo113.shoporg.ru', 0);
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(3747, 0, 'simple', 'simple_settings', '{\"address\":{\"geoIpMode\":1,\"rows\":{\"default\":[{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":1,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"country_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"zone_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"city\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"postcode\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address_1\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":7,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"default\",\"masterField\":\"\",\"requireWhen\":[],\"required\":0,\"sortOrder\":9,\"type\":\"field\"}]},\"scrollToError\":true},\"addressFormat\":\"{firstname} {lastname}, {city}, {address_1}\",\"checkout\":[{\"agreement\":{\"displayHeader\":true},\"agreementId\":0,\"asapForGuests\":true,\"asapForLogged\":true,\"cart\":{\"displayHeader\":false,\"displayModel\":true,\"maxAmount\":[],\"maxQuantity\":[],\"maxWeight\":[],\"minAmount\":[],\"minQuantity\":[],\"minWeight\":[]},\"comment\":{\"displayHeader\":true,\"label\":{\"en_gb\":\"Comment\",\"ru_ru\":\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439\"},\"placeholder\":{\"en_gb\":\"Comment\",\"ru_ru\":\"\\u041a\\u043e\\u043c\\u043c\\u0435\\u043d\\u0442\\u0430\\u0440\\u0438\\u0439\"}},\"customer\":{\"addressSameInit\":true,\"addressSelectionFormat\":\"{firstname} {lastname}, {city}, {address_1}\",\"displayAddressSame\":false,\"displayAddressSelection\":true,\"displayHeader\":true,\"displayLogin\":true,\"displayYouWillRegistered\":true,\"rows\":{\"default\":[{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"register\",\"masterField\":\"\",\"requireWhen\":[],\"required\":0,\"sortOrder\":1,\"type\":\"field\"},{\"displayWhen\":[true,true],\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"email\",\"masterField\":\"register\",\"requireWhen\":{\"1\":true},\"required\":\"2\",\"sortOrder\":2,\"type\":\"field\"},{\"displayWhen\":{\"1\":true},\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"password\",\"masterField\":\"register\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\"},{\"displayWhen\":{\"1\":true},\"hideForGuest\":false,\"hideForLogged\":true,\"id\":\"confirm_password\",\"masterField\":\"register\",\"requireWhen\":{\"1\":false},\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"telephone\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":8,\"type\":\"field\"}]}},\"displayProceedText\":true,\"displayWeight\":false,\"geoIpMode\":1,\"help\":{\"displayHeader\":true},\"helpId\":0,\"leftColumnWidth\":\"\",\"loginType\":\"popup\",\"payment\":{\"displayHeader\":true,\"hideForGuest\":false,\"methods\":[],\"rows\":[],\"selectFirst\":true},\"paymentAddress\":{\"addressSameInit\":true,\"displayAddressSame\":true,\"displayHeader\":true,\"rows\":{\"default\":[{\"displayWhen\":[],\"hideForGuest\":true,\"hideForLogged\":false,\"id\":\"address_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"0\",\"sortOrder\":1,\"type\":\"field\"},{\"displayWhen\":{\"1\":false},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"country_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"zone_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"city\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":7,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"postcode\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":8,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address_1\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":9,\"type\":\"field\"}]}},\"rightColumnWidth\":\"\",\"scrollToError\":true,\"scrollToPaymentForm\":true,\"settingsId\":0,\"shipping\":{\"displayHeader\":true,\"hideForGuest\":false,\"displayTitles\":true,\"methods\":[],\"rows\":[],\"selectFirst\":true},\"shippingAddress\":{\"addressSelectionFormat\":\"{firstname} {lastname}, {city}, {address_1}\",\"displayAddressSelection\":true,\"displayHeader\":true,\"hideForGuest\":false,\"hideForLogged\":false,\"rows\":{\"default\":[{\"displayWhen\":[],\"hideForGuest\":true,\"hideForLogged\":false,\"id\":\"address_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":0,\"sortOrder\":1,\"type\":\"field\"},{\"displayWhen\":{\"1\":false},\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"country_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"zone_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"city\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"postcode\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"0\",\"sortOrder\":7,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address_1\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"0\",\"sortOrder\":8,\"type\":\"field\"}]}},\"steps\":[{\"id\":\"step_0\",\"label\":{\"en_gb\":\"Step 1\"},\"manual\":0,\"template\":\"{cart}{left_column}{customer}{shipping_address}{\\/left_column}{right_column}{shipping}{payment}{comment}{\\/right_column}{payment_form}\"}],\"summary\":{\"displayHeader\":true},\"agreementCheckboxStep\":0}],\"colorbox\":true,\"edit\":{\"rows\":{\"default\":[{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"email\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"telephone\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\"}]},\"scrollToError\":true},\"fields\":[{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"1\",\"source\":\"saved\"},\"description\":[],\"id\":\"register\",\"label\":{\"en_gb\":\"Register account\",\"ru_ru\":\"\\u0417\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u0442\\u044c\\u0441\\u044f\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":false,\"customer\":true,\"order\":false},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"radio\",\"values\":{\"method\":\"getYesNo\",\"saved\":[],\"source\":\"model\"}},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":{\"en_gb\":\"\"},\"id\":\"email\",\"label\":{\"en_gb\":\"Email\",\"ru_ru\":\"Email\"},\"mask\":{\"source\":\"saved\"},\"masterField\":\"register\",\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"E-Mail Address is already registered!\",\"ru_ru\":\"\\u0410\\u0434\\u0440\\u0435\\u0441 \\u0443\\u0436\\u0435 \\u0437\\u0430\\u0440\\u0435\\u0433\\u0438\\u0441\\u0442\\u0440\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d!\"},\"filter\":\"register\",\"method\":\"checkEmailForUniqueness\"},\"byLength\":[],\"equal\":[],\"notEmpty\":[],\"regexp\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"E-Mail Address does not appear to be valid!\",\"ru_ru\":\"\\u041d\\u0435\\u043a\\u043e\\u0440\\u0440\\u0435\\u043a\\u0442\\u043d\\u044b\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441 \\u044d\\u043b\\u0435\\u043a\\u0442\\u0440\\u043e\\u043d\\u043d\\u043e\\u0439 \\u043f\\u043e\\u0447\\u0442\\u044b!\"},\"value\":\"[^@ \\\\t\\\\r\\\\n]+@[^@ \\\\t\\\\r\\\\n]+.[^@ \\\\t\\\\r\\\\n]+\"}},\"saveToComment\":false,\"type\":\"email\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"method\":\"getRandomPassword\",\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"password\",\"label\":{\"en_gb\":\"Password\",\"ru_ru\":\"\\u041f\\u0430\\u0440\\u043e\\u043b\\u044c\"},\"mask\":{\"source\":\"saved\"},\"masterField\":\"register\",\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"Password must be between 4 and 20 characters!\",\"ru_ru\":\"\\u041f\\u0430\\u0440\\u043e\\u043b\\u044c \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0431\\u044b\\u0442\\u044c \\u043e\\u0442 4 \\u0434\\u043e 20 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b\\u043e\\u0432!\"},\"max\":\"20\",\"min\":\"4\"},\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"password\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"method\":\"getRandomPassword\",\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"confirm_password\",\"label\":{\"en_gb\":\"Confirm password\",\"ru_ru\":\"\\u041f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0434\\u0438\\u0442\\u0435 \\u043f\\u0430\\u0440\\u043e\\u043b\\u044c\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":{\"enabled\":false,\"errorText\":[]},\"byLength\":[],\"equal\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"Password confirmation does not match password!\",\"ru_ru\":\"\\u041f\\u043e\\u0434\\u0442\\u0432\\u0435\\u0440\\u0436\\u0434\\u0435\\u043d\\u0438\\u0435 \\u043f\\u0430\\u0440\\u043e\\u043b\\u044f \\u043d\\u0435 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u043f\\u0430\\u0440\\u043e\\u043b\\u044e!\"},\"fieldId\":\"password\"},\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"password\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"1\",\"source\":\"saved\"},\"description\":[],\"id\":\"newsletter\",\"label\":{\"en_gb\":\"Subscribe\",\"ru_ru\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u0442\\u044c\\u0441\\u044f \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"radio\",\"values\":{\"method\":\"getYesNo\",\"saved\":[],\"source\":\"model\"}},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"method\":\"getDefaultGroup\",\"saved\":\"\",\"source\":\"model\"},\"description\":[],\"id\":\"customer_group_id\",\"label\":{\"en_gb\":\"Customer group\",\"ru_ru\":\"\\u0413\\u0440\\u0443\\u043f\\u043f\\u0430 \\u043f\\u043e\\u043a\\u0443\\u043f\\u0430\\u0442\\u0435\\u043b\\u044f\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"radio\",\"values\":{\"method\":\"getCustomerGroups\",\"saved\":[],\"source\":\"model\"}},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"firstname\",\"label\":{\"en_gb\":\"Firstname\",\"ru_ru\":\"\\u0418\\u043c\\u044f\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true,\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"First Name must be between 1 and 32 characters!\",\"ru_ru\":\"\\u0418\\u043c\\u044f \\u0434\\u043e\\u043b\\u0436\\u043d\\u043e \\u0431\\u044b\\u0442\\u044c \\u043e\\u0442 1 \\u0434\\u043e 32 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b\\u043e\\u0432!\"},\"max\":\"32\",\"min\":\"1\"},\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"text\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"lastname\",\"label\":{\"en_gb\":\"Lastname\",\"ru_ru\":\"\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true,\"customer\":true},\"placeholder\":{\"en_gb\":\"\"},\"rules\":{\"api\":[],\"byLength\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"Last Name must be between 1 and 32 characters!\",\"ru_ru\":\"\\u0424\\u0430\\u043c\\u0438\\u043b\\u0438\\u044f \\u0434\\u043e\\u043b\\u0436\\u043d\\u0430 \\u0431\\u044b\\u0442\\u044c \\u043e\\u0442 1 \\u0434\\u043e 32 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b\\u043e\\u0432!\"},\"max\":\"32\",\"min\":\"1\"},\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"text\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"telephone\",\"label\":{\"en_gb\":\"Telephone\",\"ru_ru\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\"},\"mask\":{\"filter\":\"country_id\",\"method\":\"getTelephoneMask\",\"saved\":\"\",\"source\":\"saved\"},\"masterField\":\"\",\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"Telephone must be between 3 and 32 characters!\",\"ru_ru\":\"\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0431\\u044b\\u0442\\u044c \\u043e\\u0442 3 \\u0434\\u043e 32 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b\\u043e\\u0432!\"},\"max\":\"32\",\"min\":\"3\"},\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"tel\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"fax\",\"label\":{\"en_gb\":\"Fax\",\"ru_ru\":\"\\u0424\\u0430\\u043a\\u0441\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"text\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"company\",\"label\":{\"en_gb\":\"Company\",\"ru_ru\":\"\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":{\"enabled\":false,\"errorText\":{\"en_gb\":\"\"}},\"regexp\":[]},\"saveToComment\":false,\"type\":\"text\"},{\"autoreload\":false,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"address_1\",\"label\":{\"en_gb\":\"Address 1\",\"ru_ru\":\"\\u0410\\u0434\\u0440\\u0435\\u0441\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"Address 1 must be between 3 and 128 characters!\",\"ru_ru\":\"\\u0410\\u0434\\u0440\\u0435\\u0441 \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0431\\u044b\\u0442\\u044c \\u043e\\u0442 3 \\u0434\\u043e 128 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b\\u043e\\u0432!\"},\"max\":\"128\",\"min\":\"3\"},\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"text\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"address_2\",\"label\":{\"en_gb\":\"Address 2\",\"ru_ru\":\"\\u041f\\u0440\\u043e\\u0434\\u043e\\u043b\\u0436\\u0435\\u043d\\u0438\\u0435 \\u0430\\u0434\\u0440\\u0435\\u0441\\u0430\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"text\"},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"city\",\"label\":{\"en_gb\":\"City\",\"ru_ru\":\"\\u0413\\u043e\\u0440\\u043e\\u0434\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"City must be between 2 and 128 characters!\",\"ru_ru\":\"\\u0413\\u043e\\u0440\\u043e\\u0434 \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0431\\u044b\\u0442\\u044c \\u043e\\u0442 2 \\u0434\\u043e 128 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b\\u043e\\u0432!\"},\"max\":\"128\",\"min\":\"2\"},\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"text\"},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"postcode\",\"label\":{\"en_gb\":\"Postcode\",\"ru_ru\":\"\\u0418\\u043d\\u0434\\u0435\\u043a\\u0441\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"Postcode must be between 2 and 10 characters!\",\"ru_ru\":\"\\u0418\\u043d\\u0434\\u0435\\u043a\\u0441 \\u0434\\u043e\\u043b\\u0436\\u0435\\u043d \\u0431\\u044b\\u0442\\u044c \\u043e\\u0442 2 \\u0434\\u043e 10 \\u0441\\u0438\\u043c\\u0432\\u043e\\u043b\\u043e\\u0432!\"},\"max\":\"10\",\"min\":\"2\"},\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"text\"},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"country_id\",\"label\":{\"en_gb\":\"Country\",\"ru_ru\":\"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0430\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"Please select a country!\",\"ru_ru\":\"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u0441\\u0442\\u0440\\u0430\\u043d\\u0443!\"}},\"regexp\":[]},\"saveToComment\":false,\"type\":\"select\",\"values\":{\"method\":\"getCountries\",\"saved\":[],\"source\":\"model\"}},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"zone_id\",\"label\":{\"en_gb\":\"Region \\/ state\",\"ru_ru\":\"\\u0420\\u0435\\u0433\\u0438\\u043e\\u043d\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"Please select a zone!\",\"ru_ru\":\"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u0440\\u0435\\u0433\\u0438\\u043e\\u043d!\"}},\"regexp\":[]},\"saveToComment\":false,\"type\":\"select\",\"values\":{\"filter\":\"country_id\",\"method\":\"getZones\",\"saved\":[],\"source\":\"model\"}},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"saved\":\"\",\"source\":\"saved\"},\"description\":[],\"id\":\"captcha\",\"label\":{\"en_gb\":\"Verification code\",\"ru_ru\":\"\\u0417\\u0430\\u0449\\u0438\\u0442\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"customer\":true,\"order\":false},\"placeholder\":[],\"rules\":{\"api\":{\"enabled\":true,\"errorText\":{\"en_gb\":\"Verification code does not match the image!\",\"ru_ru\":\"\\u0417\\u0430\\u0449\\u0438\\u0442\\u043d\\u044b\\u0439 \\u043a\\u043e\\u0434 \\u043d\\u0435 \\u0441\\u043e\\u043e\\u0442\\u0432\\u0435\\u0442\\u0441\\u0442\\u0432\\u0443\\u0435\\u0442 \\u0438\\u0437\\u043e\\u0431\\u0440\\u0430\\u0436\\u0435\\u043d\\u0438\\u044e!\"},\"method\":\"checkCaptcha\"},\"byLength\":[],\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"captcha\"},{\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"filter\":\"address_id\",\"method\":\"isDefaultAddress\",\"saved\":\"\",\"source\":\"model\"},\"description\":[],\"id\":\"default\",\"label\":{\"en_gb\":\"Default address\",\"ru_ru\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u043e\\u0439 \\u0430\\u0434\\u0440\\u0435\\u0441\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"radio\",\"values\":{\"method\":\"getYesNo\",\"saved\":[],\"source\":\"model\"}},{\"autoreload\":true,\"custom\":false,\"dateEndType\":\"calculated\",\"dateSelected\":[],\"dateStartType\":\"calculated\",\"default\":{\"method\":\"getDefaultAddressId\",\"saved\":\"\",\"source\":\"model\"},\"description\":[],\"id\":\"address_id\",\"label\":{\"en_gb\":\"Select address\",\"ru_ru\":\"\\u0412\\u044b\\u0431\\u0435\\u0440\\u0438\\u0442\\u0435 \\u0430\\u0434\\u0440\\u0435\\u0441\"},\"mask\":{\"source\":\"saved\"},\"objects\":{\"address\":true},\"placeholder\":[],\"rules\":{\"api\":[],\"byLength\":[],\"equal\":[],\"notEmpty\":[],\"regexp\":[]},\"saveToComment\":false,\"type\":\"select\",\"values\":{\"method\":\"getAddresses\",\"saved\":[],\"source\":\"model\"}}],\"headers\":[{\"custom\":true,\"id\":\"main\",\"tag\":\"legend\",\"label\":{\"en_gb\":\"Your Personal Details\",\"ru_ru\":\"\\u041e\\u0441\\u043d\\u043e\\u0432\\u043d\\u0430\\u044f \\u0438\\u043d\\u0444\\u043e\\u0440\\u043c\\u0430\\u0446\\u0438\\u044f\"}},{\"custom\":true,\"id\":\"address\",\"tag\":\"legend\",\"label\":{\"en_gb\":\"Your Address\",\"ru_ru\":\"\\u0412\\u0430\\u0448 \\u0430\\u0434\\u0440\\u0435\\u0441\"}}],\"modules\":[],\"register\":{\"agreementCheckboxInit\":false,\"agreementId\":0,\"displayAgreementCheckbox\":false,\"geoIpMode\":1,\"rows\":{\"default\":[{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"main\",\"masterField\":\"\",\"requireWhen\":[],\"required\":0,\"sortOrder\":1,\"type\":\"header\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"email\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":2,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"password\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":3,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"confirm_password\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":4,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"firstname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":5,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"lastname\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":6,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"telephone\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":7,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address\",\"masterField\":\"\",\"requireWhen\":[],\"required\":0,\"sortOrder\":8,\"type\":\"header\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"country_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":9,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"zone_id\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":10,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"city\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":11,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"postcode\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":12,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"address_1\",\"masterField\":\"\",\"requireWhen\":[],\"required\":\"1\",\"sortOrder\":13,\"type\":\"field\"},{\"displayWhen\":[],\"hideForGuest\":false,\"hideForLogged\":false,\"id\":\"newsletter\",\"masterField\":\"\",\"requireWhen\":[],\"required\":0,\"sortOrder\":14,\"type\":\"field\"}]},\"scrollToError\":true,\"useGeoIp\":false},\"replaceAddress\":true,\"replaceCart\":false,\"replaceCheckout\":true,\"replaceEdit\":true,\"replaceRegister\":true,\"javascriptCallback\":\"$(\'#cart > ul\').load(\'index.php?route=common\\/cart\\/info ul li\');\\n\\/*$(\'nav#top\').load(\'index.php?route=common\\/simple_connector\\/header #top > div\');*\\/\"}', 0),
(3748, 0, 'simple', 'simple_address_format', '{firstname} {lastname}, {city}, {address_1}', 0),
(3749, 0, 'simple', 'simple_replace_cart', '', 0),
(3750, 0, 'simple', 'simple_replace_checkout', '1', 0),
(3751, 0, 'simple', 'simple_replace_register', '1', 0),
(3752, 0, 'simple', 'simple_replace_edit', '1', 0),
(3753, 0, 'simple', 'simple_replace_address', '1', 0),
(3754, 0, 'simple', 'simple_default_checkout_group', '0', 0),
(3755, 0, 'simple', 'simple_use_google_captcha', '', 0),
(3756, 0, 'simple', 'simple_captcha_key', '', 0),
(3757, 0, 'simple', 'simple_captcha_secret_key', '', 0),
(3758, 0, 'simple', 'simple_file_uploading_type', '1', 0),
(3759, 0, 'simple', 'simple_file_uploading_dropbox_token', '', 0),
(3760, 0, 'simple', 'simple_module', '[]', 1),
(3761, 0, 'simple', 'simple_geo_links', '[]', 1),
(3762, 0, 'simple', 'simple_disable_method_checking', '', 0),
(3763, 0, 'simple', 'simple_key', '22fea6241bcb14628021f1688c844ddf', 0),
(3764, 0, 'simple', 'simple_abandoned_last_visited', '', 0),
(3765, 0, 'simple', 'simple_cron_time', '', 0),
(3766, 0, 'simple', 'simple_cron_key', '848b708c00f10a64919b61ce0b446956', 0),
(3767, 0, 'simple', 'module_simple_status', '1', 0),
(3792, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_geo_zone_id', '0', 0),
(3793, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_sort_order', '1', 0),
(3791, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_tax_class_id', '0', 0),
(3790, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_currency', 'RUB', 0),
(3789, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_weight_class_id', '2', 0),
(3788, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_display_insurance', '0', 0),
(3787, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_display_weight', '1', 0),
(3786, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_postcode', '101000', 0),
(3785, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_delivery_services', '[\"pkg\",\"pkg_val_1class\"]', 1),
(3784, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_name', '{\"2\":\"\\u041f\\u043e\\u0447\\u0442\\u0430 \\u0420\\u043e\\u0441\\u0441\\u0438\\u0438\"}', 1),
(3783, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_status', '1', 0),
(3794, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_image', 'catalog/gixoc/shipping/russianpost/russianpost_logo.png', 0),
(3795, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_image_width', '50', 0),
(3796, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_image_height', '24', 0),
(3797, 0, 'shipping_gixocruspostcalc', 'shipping_gixocruspostcalc_nds', '0', 0),
(3799, 0, 'module_ocfilter', 'module_ocfilter_status', '1', 0),
(3800, 0, 'module_ocfilter', 'module_ocfilter_sub_category', '0', 0),
(3801, 0, 'module_ocfilter', 'module_ocfilter_sitemap_status', '1', 0),
(3802, 0, 'module_ocfilter', 'module_ocfilter_sitemap_link', 'https://demo113.shoporg.ru/index.php?route=extension/feed/ocfilter_sitemap', 0),
(3803, 0, 'module_ocfilter', 'module_ocfilter_search_button', '1', 0),
(3804, 0, 'module_ocfilter', 'module_ocfilter_show_selected', '1', 0),
(3805, 0, 'module_ocfilter', 'module_ocfilter_show_price', '1', 0),
(3806, 0, 'module_ocfilter', 'module_ocfilter_show_counter', '1', 0),
(3807, 0, 'module_ocfilter', 'module_ocfilter_manufacturer', '1', 0),
(3808, 0, 'module_ocfilter', 'module_ocfilter_manufacturer_type', 'checkbox', 0),
(3809, 0, 'module_ocfilter', 'module_ocfilter_stock_status', '0', 0),
(3810, 0, 'module_ocfilter', 'module_ocfilter_stock_status_method', 'quantity', 0),
(3811, 0, 'module_ocfilter', 'module_ocfilter_stock_status_type', 'checkbox', 0),
(3812, 0, 'module_ocfilter', 'module_ocfilter_stock_out_value', '0', 0),
(3813, 0, 'module_ocfilter', 'module_ocfilter_manual_price', '0', 0),
(3814, 0, 'module_ocfilter', 'module_ocfilter_consider_discount', '0', 0),
(3815, 0, 'module_ocfilter', 'module_ocfilter_consider_special', '0', 0),
(3816, 0, 'module_ocfilter', 'module_ocfilter_consider_option', '0', 0),
(3817, 0, 'module_ocfilter', 'module_ocfilter_show_options_limit', '0', 0),
(3818, 0, 'module_ocfilter', 'module_ocfilter_show_values_limit', '0', 0),
(3819, 0, 'module_ocfilter', 'module_ocfilter_hide_empty_values', '1', 0),
(3820, 0, 'module_ocfilter', 'module_ocfilter_copy_type', 'checkbox', 0),
(3821, 0, 'module_ocfilter', 'module_ocfilter_copy_status', '-1', 0),
(3822, 0, 'module_ocfilter', 'module_ocfilter_copy_attribute', '1', 0),
(3823, 0, 'module_ocfilter', 'module_ocfilter_attribute_separator', '', 0),
(3824, 0, 'module_ocfilter', 'module_ocfilter_copy_filter', '0', 0),
(3825, 0, 'module_ocfilter', 'module_ocfilter_copy_option', '0', 0),
(3826, 0, 'module_ocfilter', 'module_ocfilter_copy_truncate', '0', 0),
(3827, 0, 'module_ocfilter', 'module_ocfilter_copy_category', '1', 0),
(3917, 0, 'config', 'config_encryption', '2fE7V3OxIfXFFhRQDQ6DDXm5FkjiZlXe8GNw7Dt2CF8ZARzDBejyqgFwQZr1YOqTohU855xfUE6Z5hbiHVI858d4sSw1sRdOUQRwrOuy78Jp1nWvLj0lYxS7RRih3Nr9LQqOecM37u4KLDbWtshEADHRqGMiJlLhh2xl4Eqd5k2TsNKm00Qyl1I12brvwSRviQHHmDt5pQVycMLXmDhtSmzmhSOur83VQta5m2qkfBb80fPnOdKXPB29GNJMqZEtylLGRcAgQ85dvNpmWqnSCfOUpdsYTRor5MOK2vjKafp4uUnCmjeggJUDAt7gWG3E9IjBPce44kEoW60z1NUrNfhiGriacNvB3Hz8ET6wDaIe78y7UZ6yJDYa4gTBsD1Y8AK7Qp1k0hVkROg5HuQ4ZcshZLtTdbh8G6Xnys9hXJ5kiyyOI7NIFeMgDg82txa3MUISzJbMGdrfOxDDdZkRP0RQnkjNB7Thqd5tkhgbDBjgw1GMwHy9BCpcuZpTcQrJlfxFQ1dxbHi6ELnsym1TLmnvk7OOnVX2WTR8aoAfWvofztvTmQ5OgL21B2VV5WZApsvLXddVpiLXglhnuiFcQ2gewllCQi0vVLjuRlHNQS9u540LNSGt3eyADgBl4KRgBEvXB2ZO3g07TIVx9zGg7ZumaRJdiIj04BN3kNGsTQ76dDKG94qRjpRFyWJk90Op0wkpSweflYy9Ok5EmkUiRcbE3pGMx7aYN7UF5WVZLr7VJgAoyr1ygNgFAaqoR9np7kdSkOiFGVrWY9lqOEPxzBLuQ85GEJrf3zzFfHMuFhlf00hBPtS1xa9CGIT3vQxJdqPv4iznAqsxXIGvE3c1WVTMRVzbc6CnZ7Bgcmq67Eu6VPMVWekN3cSoolObJCjsdVefh40hWIYpOnuQ2ysNicFZ8dlkGQyLpTdGurwPbpJDUzQ1GHu3cvbq6iPK3eFPdyWR1eCaX7EF12nWo3zfDy0c2wmt6uYT1iMFUpysjAlFaPo0uYOw5psPTerNBFJP', 0),
(3918, 0, 'config', 'config_file_max_size', '300000', 0),
(3919, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(3920, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(3921, 0, 'config', 'config_counters', '', 0),
(3922, 0, 'config', 'config_error_display', '0', 0),
(3923, 0, 'config', 'config_error_log', '1', 0),
(3924, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_simple_cart`
--

CREATE TABLE `oc_simple_cart` (
  `simple_cart_id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `products` text,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '1600.5780'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'В наличии'),
(8, 2, 'Предзаказ'),
(5, 2, 'Нет в наличии'),
(6, 2, '2-3 дня');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Налогооблагаемые товары', 'Товары, облагаемые налогом', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Загружаемые товары', 'Загрузки', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'НДС (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '', '', 'John', 'Doe', 'admin@site.ru', '', '', '', 1, '2022-11-04 18:07:39');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/edit_product\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/product_extended\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/category\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/product\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/feed\\/yandex_market\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/agree_cookie\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/art_aqa_product\",\"extension\\/module\\/autourl\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/blogger\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/cdek_integrator\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/gixocrobots\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/hours_and_days\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/instagram\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/mmos_ajax_search\",\"extension\\/module\\/newsletters\",\"extension\\/module\\/oc3x_storage_cleaner\",\"extension\\/module\\/ocfilter\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/simple\",\"extension\\/module\\/sla_seo_pro\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/timer\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/cod_cdek\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/rbs\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/robokassa\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/payment\\/yakassa_spk\",\"extension\\/payment\\/yakassa_spk1\",\"extension\\/payment\\/yakassa_spk10\",\"extension\\/payment\\/yakassa_spk11\",\"extension\\/payment\\/yakassa_spk12\",\"extension\\/payment\\/yakassa_spk13\",\"extension\\/payment\\/yakassa_spk14\",\"extension\\/payment\\/yakassa_spk15\",\"extension\\/payment\\/yakassa_spk16\",\"extension\\/payment\\/yakassa_spk17\",\"extension\\/payment\\/yakassa_spk18\",\"extension\\/payment\\/yakassa_spk19\",\"extension\\/payment\\/yakassa_spk2\",\"extension\\/payment\\/yakassa_spk3\",\"extension\\/payment\\/yakassa_spk4\",\"extension\\/payment\\/yakassa_spk5\",\"extension\\/payment\\/yakassa_spk6\",\"extension\\/payment\\/yakassa_spk7\",\"extension\\/payment\\/yakassa_spk8\",\"extension\\/payment\\/yakassa_spk9\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/cdek\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/gixocruspostcalc\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/cash_on_delivery\",\"extension\\/total\\/cdek\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"extension\\/total\\/yakassa_spk_total\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/cdektool\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/edit_product\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/product_extended\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/category\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/product\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/feed\\/yandex_market\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/agree_cookie\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/art_aqa_product\",\"extension\\/module\\/autourl\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/blogger\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/category_tab\",\"extension\\/module\\/cdek_integrator\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/gixocrobots\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/hours_and_days\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/instagram\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/mmos_ajax_search\",\"extension\\/module\\/newsletters\",\"extension\\/module\\/oc3x_storage_cleaner\",\"extension\\/module\\/ocfilter\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/simple\",\"extension\\/module\\/sla_seo_pro\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/module\\/timer\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/cod_cdek\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/rbs\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/robokassa\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/payment\\/yakassa_spk\",\"extension\\/payment\\/yakassa_spk1\",\"extension\\/payment\\/yakassa_spk10\",\"extension\\/payment\\/yakassa_spk11\",\"extension\\/payment\\/yakassa_spk12\",\"extension\\/payment\\/yakassa_spk13\",\"extension\\/payment\\/yakassa_spk14\",\"extension\\/payment\\/yakassa_spk15\",\"extension\\/payment\\/yakassa_spk16\",\"extension\\/payment\\/yakassa_spk17\",\"extension\\/payment\\/yakassa_spk18\",\"extension\\/payment\\/yakassa_spk19\",\"extension\\/payment\\/yakassa_spk2\",\"extension\\/payment\\/yakassa_spk3\",\"extension\\/payment\\/yakassa_spk4\",\"extension\\/payment\\/yakassa_spk5\",\"extension\\/payment\\/yakassa_spk6\",\"extension\\/payment\\/yakassa_spk7\",\"extension\\/payment\\/yakassa_spk8\",\"extension\\/payment\\/yakassa_spk9\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/cdek\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/gixocruspostcalc\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/cash_on_delivery\",\"extension\\/total\\/cdek\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"extension\\/total\\/yakassa_spk_total\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/cdektool\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Рождество'),
(7, 2, 'День рождения'),
(8, 2, 'Общее');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Килограмм', 'кг'),
(2, 2, 'Грамм', 'г'),
(5, 2, 'Фунт ', 'lb'),
(6, 2, 'Унция', 'oz');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 20, 'Брест', 'BR', 1),
(2, 20, 'Гомель', 'HO', 1),
(3, 20, 'Минск', 'HM', 1),
(4, 20, 'Гродно', 'HR', 1),
(5, 20, 'Могилев', 'MA', 1),
(6, 20, 'Минская область', 'MI', 1),
(7, 20, 'Витебск', 'VI', 1),
(8, 80, 'Abkhazia', 'AB', 1),
(9, 80, 'Ajaria', 'AJ', 1),
(10, 80, 'Tbilisi', 'TB', 1),
(11, 80, 'Guria', 'GU', 1),
(12, 80, 'Imereti', 'IM', 1),
(13, 80, 'Kakheti', 'KA', 1),
(14, 80, 'Kvemo Kartli', 'KK', 1),
(15, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(16, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(17, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(18, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(19, 80, 'Shida Kartli', 'SK', 1),
(20, 109, 'Алматинская область', 'AL', 1),
(21, 109, 'Алматы - город республ-го значения', 'AC', 1),
(22, 109, 'Акмолинская область', 'AM', 1),
(23, 109, 'Актюбинская область', 'AQ', 1),
(24, 109, 'Астана - город республ-го значения', 'AS', 1),
(25, 109, 'Атырауская область', 'AT', 1),
(26, 109, 'Западно-Казахстанская область', 'BA', 1),
(27, 109, 'Байконур - город республ-го значения', 'BY', 1),
(28, 109, 'Мангистауская область', 'MA', 1),
(29, 109, 'Южно-Казахстанская область', 'ON', 1),
(30, 109, 'Павлодарская область', 'PA', 1),
(31, 109, 'Карагандинская область', 'QA', 1),
(32, 109, 'Костанайская область', 'QO', 1),
(33, 109, 'Кызылординская область', 'QY', 1),
(34, 109, 'Восточно-Казахстанская область', 'SH', 1),
(35, 109, 'Северо-Казахстанская область', 'SO', 1),
(36, 109, 'Жамбылская область', 'ZH', 1),
(37, 115, 'Bishkek', 'GB', 1),
(38, 115, 'Batken', 'B', 1),
(39, 115, 'Chu', 'C', 1),
(40, 115, 'Jalal-Abad', 'J', 1),
(41, 115, 'Naryn', 'N', 1),
(42, 115, 'Osh', 'O', 1),
(43, 115, 'Talas', 'T', 1),
(44, 115, 'Ysyk-Kol', 'Y', 1),
(45, 176, 'Республика Хакасия', 'KK', 1),
(46, 176, 'Московская область', 'MOS', 1),
(47, 176, 'Чукотский АО', 'CHU', 1),
(48, 176, 'Архангельская область', 'ARK', 1),
(49, 176, 'Астраханская область', 'AST', 1),
(50, 176, 'Алтайский край', 'ALT', 1),
(51, 176, 'Белгородская область', 'BEL', 1),
(52, 176, 'Еврейская АО', 'YEV', 1),
(53, 176, 'Амурская область', 'AMU', 1),
(54, 176, 'Брянская область', 'BRY', 1),
(55, 176, 'Чувашская Республика', 'CU', 1),
(56, 176, 'Челябинская область', 'CHE', 1),
(57, 176, 'Карачаево-Черкесия', 'KC', 1),
(58, 176, 'Забайкальский край', 'ZAB', 1),
(59, 176, 'Ленинградская область', 'LEN', 1),
(60, 176, 'Республика Калмыкия', 'KL', 1),
(61, 176, 'Сахалинская область', 'SAK', 1),
(62, 176, 'Республика Алтай', 'AL', 1),
(63, 176, 'Чеченская Республика', 'CE', 1),
(64, 176, 'Иркутская область', 'IRK', 1),
(65, 176, 'Ивановская область', 'IVA', 1),
(66, 176, 'Удмуртская Республика', 'UD', 1),
(67, 176, 'Калининградская область', 'KGD', 1),
(68, 176, 'Калужская область', 'KLU', 1),
(69, 176, 'Республика Татарстан', 'TA', 1),
(70, 176, 'Кемеровская область', 'KEM', 1),
(71, 176, 'Хабаровский край', 'KHA', 1),
(72, 176, 'Ханты-Мансийский АО - Югра', 'KHM', 1),
(73, 176, 'Костромская область', 'KOS', 1),
(74, 176, 'Краснодарский край', 'KDA', 1),
(75, 176, 'Красноярский край', 'KYA', 1),
(76, 176, 'Курганская область', 'KGN', 1),
(77, 176, 'Курская область', 'KRS', 1),
(78, 176, 'Республика Тыва', 'TY', 1),
(79, 176, 'Липецкая область', 'LIP', 1),
(80, 176, 'Магаданская область', 'MAG', 1),
(81, 176, 'Республика Дагестан', 'DA', 1),
(82, 176, 'Республика Адыгея', 'AD', 1),
(83, 176, 'Москва', 'MOW', 1),
(84, 176, 'Мурманская область', 'MUR', 1),
(85, 176, 'Республика Кабардино-Балкария', 'KB', 1),
(86, 176, 'Ненецкий АО', 'NEN', 1),
(87, 176, 'Республика Ингушетия', 'IN', 1),
(88, 176, 'Нижегородская область', 'NIZ', 1),
(89, 176, 'Новгородская область', 'NGR', 1),
(90, 176, 'Новосибирская область', 'NVS', 1),
(91, 176, 'Омская область', 'OMS', 1),
(92, 176, 'Орловская область', 'ORL', 1),
(93, 176, 'Оренбургская область', 'ORE', 1),
(94, 176, 'Пензенская область', 'PNZ', 1),
(95, 176, 'Пермский край', 'PER', 1),
(96, 176, 'Камчатский край', 'KAM', 1),
(97, 176, 'Республика Карелия', 'KR', 1),
(98, 176, 'Псковская область', 'PSK', 1),
(99, 176, 'Ростовская область', 'ROS', 1),
(100, 176, 'Рязанская область', 'RYA', 1),
(101, 176, 'Ямало-Ненецкий АО', 'YAN', 1),
(102, 176, 'Самарская область', 'SAM', 1),
(103, 176, 'Республика Мордовия', 'MO', 1),
(104, 176, 'Саратовская область', 'SAR', 1),
(105, 176, 'Смоленская область', 'SMO', 1),
(106, 176, 'Санкт-Петербург', 'SPE', 1),
(107, 176, 'Ставропольский край', 'STA', 1),
(108, 176, 'Республика Коми', 'KO', 1),
(109, 176, 'Тамбовская область', 'TAM', 1),
(110, 176, 'Томская область', 'TOM', 1),
(111, 176, 'Тульская область', 'TUL', 1),
(112, 176, 'Тверская область', 'TVE', 1),
(113, 176, 'Тюменская область', 'TYU', 1),
(114, 176, 'Республика Башкортостан', 'BA', 1),
(115, 176, 'Ульяновская область', 'ULY', 1),
(116, 176, 'Республика Бурятия', 'BU', 1),
(117, 176, 'Республика Северная Осетия', 'SE', 1),
(118, 176, 'Владимирская область', 'VLA', 1),
(119, 176, 'Приморский край', 'PRI', 1),
(120, 176, 'Волгоградская область', 'VGG', 1),
(121, 176, 'Вологодская область', 'VLG', 1),
(122, 176, 'Воронежская область', 'VOR', 1),
(123, 176, 'Кировская область', 'KIR', 1),
(124, 176, 'Республика Саха', 'SA', 1),
(125, 176, 'Ярославская область', 'YAR', 1),
(126, 176, 'Свердловская область', 'SVE', 1),
(127, 176, 'Республика Марий Эл', 'ME', 1),
(128, 176, 'Республика Крым', 'CR', 1),
(129, 220, 'Черкассы', 'CK', 1),
(130, 220, 'Чернигов', 'CH', 1),
(131, 220, 'Черновцы', 'CV', 1),
(132, 220, 'Днепропетровск', 'DN', 1),
(133, 220, 'Донецк', 'DO', 1),
(134, 220, 'Ивано-Франковск', 'IV', 1),
(135, 220, 'Харьков', 'KH', 1),
(136, 220, 'Хмельницкий', 'KM', 1),
(137, 220, 'Кировоград', 'KR', 1),
(138, 220, 'Киевская область', 'KV', 1),
(139, 220, 'Киев', 'KY', 1),
(140, 220, 'Луганск', 'LU', 1),
(141, 220, 'Львов', 'LV', 1),
(142, 220, 'Николаев', 'MY', 1),
(143, 220, 'Одесса', 'OD', 1),
(144, 220, 'Полтава', 'PO', 1),
(145, 220, 'Ровно', 'RI', 1),
(146, 176, 'Севастополь', 'SEV', 1),
(147, 220, 'Сумы', 'SU', 1),
(148, 220, 'Тернополь', 'TE', 1),
(149, 220, 'Винница', 'VI', 1),
(150, 220, 'Луцк', 'VO', 1),
(151, 220, 'Ужгород', 'ZK', 1),
(152, 220, 'Запорожье', 'ZA', 1),
(153, 220, 'Житомир', 'ZH', 1),
(154, 220, 'Херсон', 'KE', 1),
(155, 226, 'Andijon', 'AN', 1),
(156, 226, 'Buxoro', 'BU', 1),
(157, 226, 'Farg\'ona', 'FA', 1),
(158, 226, 'Jizzax', 'JI', 1),
(159, 226, 'Namangan', 'NG', 1),
(160, 226, 'Navoiy', 'NW', 1),
(161, 226, 'Qashqadaryo', 'QA', 1),
(162, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(163, 226, 'Samarqand', 'SA', 1),
(164, 226, 'Sirdaryo', 'SI', 1),
(165, 226, 'Surxondaryo', 'SU', 1),
(166, 226, 'Toshkent City', 'TK', 1),
(167, 226, 'Toshkent Region', 'TO', 1),
(168, 226, 'Xorazm', 'XO', 1),
(169, 176, 'Байконур - город республ-го значения', 'BY', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 176, 0, 3, '2020-09-09 11:48:13', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oc_address_simple_fields`
--
ALTER TABLE `oc_address_simple_fields`
  ADD PRIMARY KEY (`address_id`);

--
-- Индексы таблицы `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oc_art_aqa_product`
--
ALTER TABLE `oc_art_aqa_product`
  ADD PRIMARY KEY (`aqa_product_id`);

--
-- Индексы таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oc_blogger`
--
ALTER TABLE `oc_blogger`
  ADD PRIMARY KEY (`blogger_id`);

--
-- Индексы таблицы `oc_blogger_comment`
--
ALTER TABLE `oc_blogger_comment`
  ADD PRIMARY KEY (`blogger_comment_id`,`blogger_id`);

--
-- Индексы таблицы `oc_blogger_comment_description`
--
ALTER TABLE `oc_blogger_comment_description`
  ADD PRIMARY KEY (`blogger_comment_id`,`language_id`);

--
-- Индексы таблицы `oc_blogger_description`
--
ALTER TABLE `oc_blogger_description`
  ADD PRIMARY KEY (`blogger_id`,`language_id`);

--
-- Индексы таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oc_customer_simple_fields`
--
ALTER TABLE `oc_customer_simple_fields`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  ADD PRIMARY KEY (`news_id`);

--
-- Индексы таблицы `oc_ocfilter_option`
--
ALTER TABLE `oc_ocfilter_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `keyword` (`keyword`),
  ADD KEY `sort_order` (`sort_order`);

--
-- Индексы таблицы `oc_ocfilter_option_description`
--
ALTER TABLE `oc_ocfilter_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_ocfilter_option_to_category`
--
ALTER TABLE `oc_ocfilter_option_to_category`
  ADD PRIMARY KEY (`category_id`,`option_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_ocfilter_option_to_store`
--
ALTER TABLE `oc_ocfilter_option_to_store`
  ADD PRIMARY KEY (`store_id`,`option_id`);

--
-- Индексы таблицы `oc_ocfilter_option_value`
--
ALTER TABLE `oc_ocfilter_option_value`
  ADD PRIMARY KEY (`value_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_ocfilter_option_value_description`
--
ALTER TABLE `oc_ocfilter_option_value_description`
  ADD PRIMARY KEY (`value_id`,`language_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_ocfilter_option_value_to_product`
--
ALTER TABLE `oc_ocfilter_option_value_to_product`
  ADD PRIMARY KEY (`ocfilter_option_value_to_product_id`),
  ADD UNIQUE KEY `option_id_value_id_product_id` (`option_id`,`value_id`,`product_id`),
  ADD KEY `slide_value_min_slide_value_max` (`slide_value_min`,`slide_value_max`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_ocfilter_option_value_to_product_description`
--
ALTER TABLE `oc_ocfilter_option_value_to_product_description`
  ADD PRIMARY KEY (`product_id`,`value_id`,`option_id`,`language_id`);

--
-- Индексы таблицы `oc_ocfilter_page`
--
ALTER TABLE `oc_ocfilter_page`
  ADD PRIMARY KEY (`ocfilter_page_id`),
  ADD KEY `keyword` (`keyword`),
  ADD KEY `category_id_params` (`category_id`,`params`);

--
-- Индексы таблицы `oc_ocfilter_page_description`
--
ALTER TABLE `oc_ocfilter_page_description`
  ADD PRIMARY KEY (`ocfilter_page_id`,`language_id`);

--
-- Индексы таблицы `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oc_order_simple_fields`
--
ALTER TABLE `oc_order_simple_fields`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_product_special_group`
--
ALTER TABLE `oc_product_special_group`
  ADD PRIMARY KEY (`product_special_group_id`);

--
-- Индексы таблицы `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oc_seo_status`
--
ALTER TABLE `oc_seo_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Индексы таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oc_simple_cart`
--
ALTER TABLE `oc_simple_cart`
  ADD PRIMARY KEY (`simple_cart_id`);

--
-- Индексы таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_art_aqa_product`
--
ALTER TABLE `oc_art_aqa_product`
  MODIFY `aqa_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT для таблицы `oc_blogger`
--
ALTER TABLE `oc_blogger`
  MODIFY `blogger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_blogger_comment`
--
ALTER TABLE `oc_blogger_comment`
  MODIFY `blogger_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT для таблицы `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT для таблицы `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT для таблицы `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2629;

--
-- AUTO_INCREMENT для таблицы `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT для таблицы `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_ocfilter_option`
--
ALTER TABLE `oc_ocfilter_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10012;

--
-- AUTO_INCREMENT для таблицы `oc_ocfilter_option_value`
--
ALTER TABLE `oc_ocfilter_option_value`
  MODIFY `value_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4062032310;

--
-- AUTO_INCREMENT для таблицы `oc_ocfilter_option_value_to_product`
--
ALTER TABLE `oc_ocfilter_option_value_to_product`
  MODIFY `ocfilter_option_value_to_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_ocfilter_page`
--
ALTER TABLE `oc_ocfilter_page`
  MODIFY `ocfilter_page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT для таблицы `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3050;

--
-- AUTO_INCREMENT для таблицы `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=602;

--
-- AUTO_INCREMENT для таблицы `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;

--
-- AUTO_INCREMENT для таблицы `oc_product_special_group`
--
ALTER TABLE `oc_product_special_group`
  MODIFY `product_special_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1289;

--
-- AUTO_INCREMENT для таблицы `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3925;

--
-- AUTO_INCREMENT для таблицы `oc_simple_cart`
--
ALTER TABLE `oc_simple_cart`
  MODIFY `simple_cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT для таблицы `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
