-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 25 2018 г., 00:20
-- Версия сервера: 5.7.23
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `academy_2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `content`) VALUES
(1, 'Я Василий, WEB - разработчик из Челябинской области, у меня есть чудный сыночек и любимая жена. В Челябинскую область переехал в 2016 году, до этого 11 лет проработал в Beeline на позиции старшего инженера по планированию и оптимизации сети, параллельно разрабатывал сайты, занимался ремонтом ноутбуков и компьютеров. После переезда устроился на работу системным андминистратором. В организации встал вопрос о разработке сайта, я без раздумий согласился, поскольку планировал раскрыть себя в данной обласи. На данный момент занимаю должность Начальника IT отдела, параллельно занимаюсь WEB-разработкой. Не перестаю развиваться и самореализовываться.');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `name` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `comment`, `name`, `date`) VALUES
(2, 'Хороший студент', 'Вася', '24.12.2018 23:03:52'),
(15, 'Выполняет все ДЗ', 'Иван', '24.12.2018 23:06:52'),
(16, 'Не редиска', 'Егор', '24.12.2018 23:15:11'),
(18, 'Тестирует код', 'Евгений', '24.12.2018 23:19:43');

-- --------------------------------------------------------

--
-- Структура таблицы `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `speciality` varchar(100) NOT NULL,
  `yearStart` varchar(45) NOT NULL,
  `yearEnd` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `education`
--

INSERT INTO `education` (`id`, `title`, `speciality`, `yearStart`, `yearEnd`) VALUES
(1, 'Средняя школа', 'Ученик', '1990', '2000'),
(2, 'Современная гуманитарная академия', 'Информатика и ВТ', '2001', '2006'),
(7, 'Академия верстки Артема Исламова', 'WEB-разработчик 13.0', '2018.04', '2018.05'),
(8, 'Академия верстки Артема Исламова', 'JavaScript 4.0', '2018.10', '2018.11'),
(9, 'Академия верстки Артема Исламова', 'PHP 1.0', '2018.12', '');

-- --------------------------------------------------------

--
-- Структура таблицы `experiences`
--

CREATE TABLE `experiences` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `about` varchar(3000) NOT NULL,
  `yearStart` varchar(45) NOT NULL,
  `yearEnd` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `post`, `city`, `company`, `about`, `yearStart`, `yearEnd`) VALUES
(3, 'Beeline', 'ИТ-специалист', 'Тараз', 'Beeline, ТМ', 'Содержание парка ИТ техники и орг. техники в рабочем состоянии, инвентаризация ИТ и орг. техники, помощь сотрудникам компании, заказ нового оборудования, содержание склада техники, ремонтно-восстановительные работы СКС (структурированная-кабельная-система), содержание серверного оборудования, проведение тендеров на закуп ИТ и орг. техники, поиск подрядчиков, установка и наладка различного софта и ОС.', '2005', '2014'),
(4, 'Beeline', 'Старший инженер по планированию и оптимизации сети', 'Тараз', 'Beeline, ТМ', 'Организация работ по развитию и эксплуатации сети филиала в соответствии с принципами оптимального распределения работ и специализации сотрудников, в целях обеспечения оптимального выполнения задач, возложенных на Техническую службу. Осуществление руководства техническими специалистами службы, направленное на развитие сетей и эксплуатацию телекоммуникационного оборудования. Устранение в согласованные сроки причины вызвавшие аварийные ситуации повлекших за собой влияние на бизнес компании, в том числе по показателям качества сети, эксплуатации и правовые - нормативные. Участие в составлении перспективных планов развития сетей регионов и осуществление контроля над проектом разворачивания сетей филиала (выполнением Плана создания сетей Роллаут) в части строительства базовых станций, контроллеров, коммутаторов. Взаимодействие с организациями или государственными органами в сроки 5 рабочих дней по запросу по вопросу о покрытии и качеству сети. Организация работ по получению из территориального Управления по информатизации и связи разрешительных документов на радиоэлектронные средства и обеспечение своевременного направления их в Департамент по работе с государственными органами.', '2014', '2017'),
(5, 'Бектыш', 'Системный администратор', 'Бектыш', 'ООО \"Бектыш\"', 'Поддержка сайта компании, содержание парка ИТ техники и орг. техники в рабочем состоянии, внедрение бизнес-процессов, доработка 1С решений, помощь сотрудникам компании, содержание серверного оборудования.', '2017', '2018'),
(6, 'Гранд-Строй', 'Начальник IT-отдела', 'Челябинск', 'ООО \"Гранд-Строй\"', 'Автоматизация производства, автоматизация торговых точек, руководство отелом из 4 человек, планирование IT-архитектуры организации, внедрение 1С-решений, разработка WEB-решений. Разработка и поддержка (включая доработку) 3-х сайтов для дочерних организаций.', '2018', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `interests`
--

CREATE TABLE `interests` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `interests`
--

INSERT INTO `interests` (`id`, `title`) VALUES
(1, 'Машины'),
(2, 'Электроника'),
(3, 'Программирование');

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `level` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `title`, `level`) VALUES
(1, 'English', 'Pre-Intermediate'),
(2, 'Русский', 'Уровень носителя языка');

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `post` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `site` varchar(45) NOT NULL,
  `photo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`id`, `name`, `email`, `post`, `phone`, `site`, `photo`) VALUES
(1, 'Василий Круговых', 'vasickru@mail.ru', 'Full Stack разработчик', '+7 951 819 08 25', 'http://vkdev.ru/', 'my-photo.png');

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `about` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `title`, `link`, `about`) VALUES
(1, 'Медицинский центр \"Брак и семья\" доктора Тарарака', 'http://tararaka.com/', 'Сайт визитка для медицинского центра, построет на CMS Joomla'),
(2, 'Государственный архив Жамбылской области', 'http://zhambylarchive.kz/', 'Разработка и поддержка сайта государственного архива Жамбылской области'),
(3, 'Курочка Губернская', 'http://kurochka74.ru/', 'Разработка действующего интернет магазина. WordPress + WooCommerce, с кастомными доработками'),
(4, 'Рынок \"Станционный\"', 'http://stanc.ru/', 'Разработка интернет маркета с разными продавцами и их товарами. Joomla + Joomshopping, немного переделан под нужды компании. В данный момент идет разработка функционала без готовых CMS, с последующей миграцией'),
(5, 'Торговый комплекс \"Орбита\"', 'http://orbita74.ru/', 'Разработка интернет маркета с разными продавцами и их товарами. Joomla + Joomshopping, немного переделан под нужды компании. В данный момент идет разработка функционала без готовых CMS, с последующей миграцией');

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `title`, `level`) VALUES
(1, 'PHP', 20),
(2, 'JavaScript', 75),
(3, 'CSS3', 85),
(4, 'HTML', 90);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `interests`
--
ALTER TABLE `interests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
