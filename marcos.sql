-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 12 2020 г., 09:22
-- Версия сервера: 5.6.38
-- Версия PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `marcos`
--

-- --------------------------------------------------------

--
-- Структура таблицы `guruhlar`
--

CREATE TABLE `guruhlar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dars_vaqti` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kurs_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `guruhlar`
--

INSERT INTO `guruhlar` (`id`, `title`, `dars_vaqti`, `kurs_id`) VALUES
(1, 'alfa', '16:00 dan 18:00 gacha', 1),
(2, 'Betta', '11:00 dan 13:00 gacha', 1),
(3, 'Tarmoqchilar', '11:00 dan 13:00 gacha', 3),
(4, 'Python masters', '17:00 dan 19:00 gacha', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `guruh_student`
--

CREATE TABLE `guruh_student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dars_vaqti` date DEFAULT NULL,
  `telefon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guruh_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `guruh_student`
--

INSERT INTO `guruh_student` (`id`, `name`, `dars_vaqti`, `telefon`, `guruh_id`) VALUES
(1, 'Jasur Isaqjonov', NULL, '+998903165252', 1),
(2, 'utkir', NULL, '+998903151515', 1),
(3, 'Jasur Isaqjonov', NULL, '+998903165252', 1),
(4, 'Jasur Isaqjonov', NULL, '+998903165252', 1),
(5, 'Jasur Isaqjonov', NULL, '+998903165252', 1),
(6, 'Jasur Isaqjonov', NULL, '+998903165252', 1),
(7, 'utkir', NULL, '+998903151515', 1),
(8, 'Eldor', NULL, '99895 5056515', 4),
(9, 'Eldor ashurov', NULL, '99890 9154659', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `kurslar`
--

CREATE TABLE `kurslar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `davomiylik` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dars_vaqti` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oylik_tolov` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batafsil` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kurslar`
--

INSERT INTO `kurslar` (`id`, `title`, `davomiylik`, `dars_vaqti`, `oylik_tolov`, `batafsil`) VALUES
(1, 'Php Backend Development', '2 ', '2 ', '300 000', 'Back end kurslarida siz malumotlar bazasi bilan ishlashni ular bilan bajariladigan amallarni o\'rganasiz. MYSQL PHP YII 2 lar shular jumlasidan.'),
(2, 'Kompyuter Savodxonligi', '4 ', '2 ', '300 000', ''),
(3, 'Tarmoq Adminstratorligi', '3', '3', '320 000', 'Bu kursda sizlar tarmoq haqida bilimlarga ega bo\'lasiz'),
(4, 'Frontend Development', '4', '2', '350 000', 'Bu kursda sizlar Web dasturlashning Frontend qismi haqida bilimlarga ega bo\'lasiz'),
(5, 'Java Backend Development', '6', '2', '350 000', 'Bu kursda sizlar  Java Backend yani Java dasturlash tilini ma\'lumotlar bilan ishlash  qismi haqida bilimlarga ega bo\'lasiz'),
(6, 'C++ Development', '6', '2', '350 000', 'Bu kursda sizlar  C++ dasturlash tilini ma\'lumotlar bilan ishlash  qismi haqida bilimlarga ega bo\'lasiz'),
(7, 'Python Development', '5', '2', '390 000', 'Ushbu Python dasturlash kursida siz ba\'zi bir asosiy dasturiy tushunchalarni o\'rganasiz.\r\nAmaliy dastursiz qanday qilib dastur qilishni o\'rganish deyarli mumkin emas, shuning uchun sizga uy vazifasi kabi bir nechta vazifalar taklif etiladi, ularda siz o\'zingizning dasturlash mahoratingizni mashq qilishingiz mumkin.\r\nSizning qarorlaringiz shu sababli tezkor mulohazalarni olasiz. Muammolaringiz bo\'lsa, ularni har doim o\'qituvchi bilan muhokama qilishingiz mumkin.\r\nShuningdek kursda murakkablik darajasi oshgan bir qator vazifalar mavjud bo\'lib, ular kurs uchun ixtiyoriydir, ammo xohlovchilar algoritmlarni ixtiro qilish va ushbu vazifalarni bajarish uchun dasturlarni amalga oshirishda o\'zlarining miyalarini sindirishlari mumkin.'),
(8, 'Android Development', '6', '2', '350 000', 'Bu kursda siz Android dasturlari hamda ularni qanday qilib yaratishni o\'rganasiz');

-- --------------------------------------------------------

--
-- Структура таблицы `kurs_rejasi`
--

CREATE TABLE `kurs_rejasi` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kurs_id` int(11) DEFAULT NULL,
  `batafsil` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `kurs_rejasi`
--

INSERT INTO `kurs_rejasi` (`id`, `title`, `kurs_id`, `batafsil`) VALUES
(2, 'MYSQL xaqida', 1, 'Bu bosqichda siz MSQL haqida malumotga ega bo\'lasiz'),
(3, 'Dasturlash va Python asoslari  (Основы программирования и Python)', 7, '1.1 Operatorlar, O\'zgaruvchilar, Ma\'lumot turlari, Shartlar (Операторы. Переменные. Типы данных. Условия)  ...  \r\n1.2 Sikllar, Qatorlar, Ro\'hatlar  (Циклы. Строки. Списки) ...  \r\n1.3 Funksiyalar, Interpretatorlar, Modullar  (Функции. Словари. Интерпретатор. Файлы. Модули.)...  \r\n'),
(4, ' Python ilovasi (Применение Python)', 7, '4.Python asoslari  (Базовые принципы языка Python)..... 5. Pythonda standart qo\'llanmalar (Cтандартные средства языка Python)... 6. Python-dan foydalanish: Matn tahlili va Internet (Применение Python: анализ текста и работа с интернетом)..\r\n'),
(5, 'Django web framework (Django веб фреймворк)', 7, 'Основы django..');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1574957238),
('m130524_201442_init', 1574957578),
('m190124_110200_add_verification_token_column_to_user_table', 1574957579),
('m191201_102711_create_student_table', 1575201334),
('m191202_183417_create_kurslar_table', 1575312277),
('m191202_183910_create_kurs_rejasi_table', 1575312278),
('m191204_172338_create_xizmatlar_table', 1576499097),
('m191205_183910_create_kurs_rejasi_table', 1576499098),
('m191220_055820_create_email_confirm_token_table', 1576821593),
('m191422_132214_create_messages_table', 1577082379),
('m191423_074822_create_user_profile_table', 1577087866),
('m200114_152023_create_guruhlar_table', 1579017892),
('m200114_152023_create_table_guruhlar', 1579017061),
('m200114_153036_create_guruh_student_table', 1579017623),
('m200114_154242_create_ozlash_fanlar_guruhlar', 1579017623),
('m200115_152023_create_guruhlar_table', 1579018118),
('m200115_153036_create_guruh_student_table', 1579018118),
('m200115_154242_create_ozlash_fanlar_table', 1579018267);

-- --------------------------------------------------------

--
-- Структура таблицы `ozlash_fanlar`
--

CREATE TABLE `ozlash_fanlar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `davomiyligi` int(11) NOT NULL,
  `guruh_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `kurs_id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dars_vaqti` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`id`, `kurs_id`, `fullname`, `phone`, `dars_vaqti`, `created_at`) VALUES
(1, 1, 'Jasur Isaqjonov', '+998903165252', '18:00 - 20:00', '2019-12-08'),
(2, 3, 'Akmalxon Xamidullayevich Ikramov', '+998903165252', '18:00 - 20:00', '2020-01-07'),
(3, 1, 'utkir', '+998903151515', '11:00 - 13:00', '2020-01-16'),
(4, 7, 'tolib', '99890 9154659', '17:00 dan 19:00 gacha', '0000-00-00'),
(8, 7, 'Eldor ashurov', '99890 9154659', '17:00 dan 19:00 gacha', '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_confirm_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `role` int(11) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `email_confirm_token`, `phone`, `status`, `role`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'cE5-KCyEC62rNx3bPqsO_NkhorI7fg9V', '$2y$13$vTKNewBwHdXe9grOtCZVAOgDhq73cxKmKgZvTdp.2D9cK3vMrlWTC', NULL, 'kamol_ikramov@mail.ru', NULL, '', 10, 20, 1575225397, 1575225397, 'aQ02aM8twgVbsM7o0ZwuvHzy6PpP7HwX_1575225397'),
(5, 'asd', 'QT5DpplBN2d3qBcsQdDZ1-KLu8ecvINJ', '$2y$13$F4Y3gnXqRbvwVYnaAqnpp.LFI8mexh1C7BqXB6PsUQe6S57TX/wUy', NULL, 'jaxon@mail.ru', NULL, '', 10, 10, 1579690562, 1579690562, 'Wqs_1l3xpu5R_pMBwyw9C2LzFNHyCl7S_1579690562');

-- --------------------------------------------------------

--
-- Структура таблицы `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `xizmatlar`
--

CREATE TABLE `xizmatlar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batafsil` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `xizmatlar`
--

INSERT INTO `xizmatlar` (`id`, `title`, `batafsil`) VALUES
(1, 'WEB SAYT', 'Biz sizga professional web saytlar yaratib beramiz');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `guruhlar`
--
ALTER TABLE `guruhlar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `guruh_student`
--
ALTER TABLE `guruh_student`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kurslar`
--
ALTER TABLE `kurslar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kurs_rejasi`
--
ALTER TABLE `kurs_rejasi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `ozlash_fanlar`
--
ALTER TABLE `ozlash_fanlar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`),
  ADD UNIQUE KEY `email_confirm_token` (`email_confirm_token`);

--
-- Индексы таблицы `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `xizmatlar`
--
ALTER TABLE `xizmatlar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `guruhlar`
--
ALTER TABLE `guruhlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `guruh_student`
--
ALTER TABLE `guruh_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `kurslar`
--
ALTER TABLE `kurslar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `kurs_rejasi`
--
ALTER TABLE `kurs_rejasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ozlash_fanlar`
--
ALTER TABLE `ozlash_fanlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `xizmatlar`
--
ALTER TABLE `xizmatlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
