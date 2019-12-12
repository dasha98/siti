-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 23 2019 г., 20:17
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `bb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `avtor`
--

CREATE TABLE `avtor` (
  `id` int(11) NOT NULL,
  `fio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `avtor`
--

INSERT INTO `avtor` (`id`, `fio`) VALUES
(1, 'А. Пушкин'),
(2, 'М. Булгаков'),
(3, 'Л. Толстой');

-- --------------------------------------------------------

--
-- Структура таблицы `tb_kniga`
--

CREATE TABLE `tb_kniga` (
  `id` int(11) NOT NULL,
  `id_fio` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `stranic` bigint(30) NOT NULL,
  `izdatelstvo` varchar(32) NOT NULL,
  `god` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tb_kniga`
--

INSERT INTO `tb_kniga` (`id`, `id_fio`, `name`, `stranic`, `izdatelstvo`, `god`) VALUES
(1, 1, 'Капитансая дочка', 200, 'Феникс', 0000),
(2, 2, 'Темные аллеи', 250, 'Современник', 1955);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `avtor`
--
ALTER TABLE `avtor`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tb_kniga`
--
ALTER TABLE `tb_kniga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tb_kniga`
--
ALTER TABLE `tb_kniga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
