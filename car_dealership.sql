-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 14 2023 г., 01:17
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `car_dealership`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cars`
--

CREATE TABLE `cars` (
  `id` bigint NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(256) NOT NULL,
  `price` varchar(256) NOT NULL,
  `condition` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `speed` varchar(256) NOT NULL,
  `mileage` varchar(256) NOT NULL,
  `battery` tinytext NOT NULL,
  `fuel` varchar(256) NOT NULL,
  `total_run` varchar(256) NOT NULL,
  `gear` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `car_type` varchar(256) NOT NULL,
  `stock` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `cars`
--

INSERT INTO `cars` (`id`, `manufacturer`, `model`, `price`, `condition`, `phone`, `email`, `speed`, `mileage`, `battery`, `fuel`, `total_run`, `gear`, `image`, `car_type`, `stock`) VALUES
(25, 'Mazda', '370z', '555000', ' ПТС готов, утиль сбор уплачен\r\nЗаводской матовый цвет\r\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '250', '55', 'OK', 'Бензин', '20000', 'Auto', 'Carnissan_370z.jpg', 'Sports', 0),
(26, 'Macedes', 'A-class 2020', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'toma@gmail.com', '170', '60', 'OK', 'Бензин', '12000', 'Auto', 'CarAclass.jpg', 'Regular', 0),
(27, 'BMW', '2-series 2018', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'molly@gmail.com', '220', '50', 'OK', 'Бензин', '14500', 'Mex', 'Carbmw2series.jpg', 'Sports', 0),
(28, 'BMW', 'M2 sedan', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'dolly@gmail.com', '250', '54', 'OK', 'Бензин', '12000', 'Auto', 'Carbmwsedan.jpg', 'Regular', 0),
(29, 'Chevrolet', 'Camaro 2019', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'molly@gmail.com', '250', '55', 'OK', 'Бензин', '12000', 'Mex', 'Carcamaro.jpg', 'Sports', 0),
(30, 'Macedes', 'G-class 2016', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'molly@gmail.com', '170', '50', 'OK', 'Бензин', '14500', 'Auto', 'CarGclass.jpg', 'Off road', 0),
(31, 'Nissan', 'GTR r35 2018', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'dolly@gmail.com', '220', '50', 'Требуется смена аккумулятора', 'Бензин', '20300', 'Mex', 'Cargtr35.jpg', 'Sports', 0),
(32, 'General Motors', 'Hummer H3', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'srity@gmail.com', '123', '40', 'OK', 'Дизель', '20000', 'Mex', 'Carh3.jpg', 'Off road', 0),
(33, 'Mazda', 'MX-5 Miara', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '170', '55', 'Требуется смена аккумулятора', 'Дизель', '14500', 'Mex', 'Carmiata.jpg', 'Sports', 0),
(34, 'Ford', 'Mustang Eco-boost 2016', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '220', '50', 'OK', 'Дизель', '12000', 'Auto', 'Carmustang.jpg', 'Sports', 0),
(35, 'Toyota', 'Prias 2019', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'dolly@gmail.com', '140', '60', 'OK', 'Бензин', '14500', 'Auto', 'Carprias.jpeg', 'Regular', 0),
(36, 'Audi', 'R8 sports 2020', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '250', '50', 'OK', 'Бензин', '20000', 'Auto', 'CarR8.jpg', 'Sports', 0),
(38, 'Ford', 'Runner Raptor 2016', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '170', '55', 'OK', 'Дизель', '20000', 'Mex', 'Carraptor.jpg', 'Off road', 0),
(39, 'Toyota', 'Runner 2020', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '200', '50', 'OK', 'Бензин', '20000', 'Mex', 'Carrunner.jpg', 'Off road', 0),
(40, 'Mazda', 'RX-7 2002', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '220', '55', 'Требуется смена аккумулятора', 'Дизель', '12000', 'Auto', 'Carrx7.jpg', 'Sports', 0),
(41, 'Toyota', 'Supra 2020', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '220', '40', 'OK', 'Бензин', 'New', 'Auto', 'Carsupra.jpg', 'Sports', 0),
(42, 'Toyota', 'Camry TRD 2019 ', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'molly@gmail.com', '180', '46', 'OK', 'Octen  ', '20000', 'Mex', 'Cartoyota_camry.jpg', 'Regular', 0),
(43, 'Range rover', 'Valar V6 2017', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '200', '50', 'OK', 'Dessel ', '12000', 'Auto', 'Carvalar.jpg', 'Off road', 0),
(44, 'Volks Wagon', 'Beetle 2006', '555000', 'ard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It wa', '8 977 125 35 53', 'tarunno@gmail.com', '123', '55', 'Требуется смена аккумулятора', 'Бензин', '28000', 'Auto', 'Carvolkswagen_beetle.jpg', 'Regular', 0),
(45, 'Volks Wagon', 'Passat 2020', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'dolly@gmail.com', '130', '56', 'OK', 'Бензин', 'New', 'Auto', 'Carvolkswagen_passat.jpg', 'Regular', 0),
(46, 'Jeep', 'Wrangler Rubicon 2017', '555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '170', '50', 'OK', 'Бензин', '14500', 'Mex', 'Carwrangler.jpg', 'Off road', 0),
(47, 'General Motors', 'Ram V6 2017', '4555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'tarunno@gmail.com', '140', '55', 'OK', 'Бензин', '20000', 'Mex', 'Carram.jpg', 'Off road', 0),
(48, 'Lambougini', 'Huracan 2017', '3555000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'toma@gmail.com', '220', '37', 'OK', 'Бензин', '12000', 'Auto', 'Carhuracan.jpg', 'Sports', 0),
(49, 'Laxus', 'LC V4 turbo 2014', '5255000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'molly@gmail.com', '200', '50', 'Требуется смена аккумулятора', 'Бензин', '20000', 'Auto', 'CarLexus_LC.jpg', 'Sports', 0),
(50, 'Tesla', 'Model S 2015', '15550000', ' ПТС готов, утиль сбор уплачен\nЗаводской матовый цвет\nМаксимальная комплектация', '8 977 125 35 53', 'toma@gmail.com', '250', '50', 'OK', 'Электро', '20000', 'Auto', 'CarteslaModelS.jpg', 'Regular', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` bigint NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `product_price` bigint NOT NULL,
  `user_name` varchar(256) NOT NULL,
  `product_model` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `product_image` varchar(256) NOT NULL,
  `product_id_2` int NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `product_name`, `user_id`, `product_id`, `product_price`, `user_name`, `product_model`, `user_email`, `product_image`, `product_id_2`) VALUES
(54, 'Tesla', 11, 50, 20000, 'adm', 'Model S 2015', 'adm@mail.ru', 'CarteslaModelS.jpg', -1),
(57, 'BMW', 12, 28, 20000, 'tronin753@gmail.com', 'M2 sedan', 'tronin753@gmail.com', 'Carbmwsedan.jpg', -1),
(58, 'Macedes', 12, 26, 5, 'tronin753@gmail.com', 'A-class 2020', 'tronin753@gmail.com', 'CarAclass.jpg', -1),
(64, 'Macedes', 13, 26, 555000, 'tronin753@gmail.com', 'A-class 2020', 'dragonborncs@mail.ru', 'CarAclass.jpg', -1);

-- --------------------------------------------------------

--
-- Структура таблицы `gallary`
--

CREATE TABLE `gallary` (
  `image1` varchar(256) NOT NULL,
  `image2` varchar(256) NOT NULL,
  `image3` varchar(256) NOT NULL,
  `image4` varchar(256) NOT NULL,
  `image5` varchar(256) NOT NULL,
  `image6` varchar(256) NOT NULL,
  `image7` varchar(256) NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `gallary`
--

INSERT INTO `gallary` (`image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `image7`, `id`) VALUES
('Gallaryb6252dbd054d2f02b45a857741e58cf7.jpg', 'GallaryBronco-Two-Door.jpg', 'Gallaryphoto_2023-11-28_23-12-55.jpg', 'GallaryThoughtxc7ygvpaltbng0ix3bxp.jpg', 'GallaryThoughtrocket-bunny-gtr-1.jpg', 'gallary9.jpg', 'gallary10.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `my_thoughts`
--

CREATE TABLE `my_thoughts` (
  `id` int NOT NULL,
  `title` varchar(256) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(256) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `my_thoughts`
--

INSERT INTO `my_thoughts` (`id`, `title`, `body`, `image`, `create_time`, `tag`) VALUES
(4, 'PRF & F Toyota Supra mk4', 'Крутое описание машины', 'Thoughtb6252dbd054d2f02b45a857741e58cf7.jpg', '2023-12-02 12:27:25', 'Supra'),
(5, 'Почему все любят HONDA s2000', 'Крутое описание машины', 'ThoughtaXvQZwP_460s.jpg', '2023-12-02 12:27:25', 'S2000'),
(6, 'Land Rover Defender V8 (2018) ', 'Крутое описание машины', 'Thoughtmaxresdefault.jpg', '2023-12-02 12:27:25', 'Defender'),
(7, '2021 Ford Bronco', 'Крутое описание машины', 'ThoughtBronco-Two-Door.jpg', '2023-12-02 12:27:25', 'Bronco'),
(8, 'GM Hummer ', 'Крутое описание машины', 'Thoughtxc7ygvpaltbng0ix3bxp.jpg', '2023-12-02 12:27:25', 'Hummer'),
(9, 'Rocket Bunny Nissan GT-R 35 V2', 'Крутое описание машины', 'Thoughtrocket-bunny-gtr-1.jpg', '2023-12-02 12:27:25', 'Rocket bunny'),
(10, ' 2018 Dodge Demon vs Hellcat Challenger', 'Крутое описание машины', 'ThoughtDodge-Demon-vs-Hellcat-Challenger.jpg', '2023-12-02 12:27:25', 'Dodge'),
(11, 'Сравнительные тесты автомобилей – как сравнивать автомобили', 'Крутое описание машины', 'Thoughtdw-burnett-supras-finals-6-1595000408.jpg', '2023-12-02 12:27:25', 'Comparison');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `user_id` bigint NOT NULL,
  `address` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `postal_code` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `address`, `city`, `phone`, `postal_code`) VALUES
(7, 11, '', '', '', ''),
(8, 11, '', '', '', ''),
(9, 12, '', '', '', ''),
(10, 13, '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` bigint NOT NULL DEFAULT '-1',
  `product_id2` int NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_id2`) VALUES
(17, 7, 50, -1),
(18, 7, 42, -1),
(19, 7, 40, -1),
(20, 7, 43, -1),
(21, 7, -1, 3),
(22, 8, 28, -1),
(23, 9, 35, -1),
(24, 9, 26, -1);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `manufacturer` varchar(256) NOT NULL,
  `model` varchar(256) NOT NULL,
  `price` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `condition` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `manufacturer`, `model`, `price`, `type`, `image`, `condition`, `email`, `phone`) VALUES
(3, 'Toyota', 'Turbo Charger', '100.5', 'Turbo', 'ProductTarboCharger2.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'dolly@gmail.com', '01863987793'),
(4, 'General Motors', 'Spare parts', '123', 'Parts', 'ProductspareParts\'.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'mahadi@gmail.com', '01863987793'),
(6, 'GDMs', 'Hilux Crank shaft', '300', 'Crank Shaft', 'ProductHilux_crankshaft.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(9, 'Nissan', 'Turbo Charger', '45.8', 'Turbo', 'ProductTurboCharger.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(10, 'General Motors', 'Still Bushes', '256', 'Bushes', 'ProductstillBushes.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'toma@gmail.com', '01863987793'),
(11, 'GDMs', 'Cumming Engine Parts', '1000', 'Parts', 'ProductcummingEngineParts.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'dolly@gmail.com', '01863987793'),
(12, 'Toyota', 'Crank shaft', '100.5', 'Crank Shaft', 'Productcrankshaft.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793'),
(13, 'General Motors', 'OME', '45.8', 'OME', 'ProductOME.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'toma@gmail.com', '01863987793'),
(14, 'Rubicon Motors', 'Water pump', '2000.5', 'Pump', 'ProductwaterPump.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'tarunno@gmail.com', '01863987793'),
(15, 'General Motors', 'Tharmo State', '100.5', 'Tharmo State', 'ProductTharmoState.jpg', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not o', 'molly@gmail.com', '01863987793');

-- --------------------------------------------------------

--
-- Структура таблицы `stories`
--

CREATE TABLE `stories` (
  `id` int NOT NULL,
  `title` varchar(256) NOT NULL,
  `body` varchar(256) NOT NULL,
  `showing` tinyint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `stories`
--

INSERT INTO `stories` (`id`, `title`, `body`, `showing`) VALUES
(36, 'Supra Rocket bunny kit', 'Крутое описание про рс7', 1),
(37, 'RX-7 tuned upto 1000hp', '1.FRP автомобильный комплект кузова для Mazda RX-7\n2.100% новый автомобильный комплект кузова\n3. Это высокое качество FRP материала.\n4. Простая установка, отличная посадка и превосходный материал\n \n \nФитинг\nПодходит для Mazda RX-7', 1),
(39, 'Mclran F1 the ultimate beast', 'Мотор работает в паре с механической коробкой передач, как на оригинальном McLaren F1. Компоновка сидений здесь такая же, как и в F1', 1),
(41, 'RX-7 Red beauty', '1', 1),
(42, 'Очень крутая машина ', 'Это авто может вздёрнуть ламбаргину уракан', 1),
(43, 'Audi q5', 'Audi Максона Крупнина (крутая тачка, рвёт хорошо)', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `username` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `admin` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `admin`) VALUES
(4, 'Tarunno', 'tarunno@gmail.com', '$2y$10$RF4gmqgXlU9ZQ9EbFNiWHOP.CiIvcPs16OxjKTEvD.mGfDs2ah/d2', 1),
(5, 'Molly', 'molly@gmail.com', '$2y$10$mL/wW1MRtcB7XPkuHo1JZu/tBP/SkzuHDxAYswg9flgMviEU/fBhu', 0),
(8, 'Dolly', 'dolly@gmail.com', '$2y$10$lzFbsUpQjlJmaboCTnFyDeMZCV9tU0zY8o4sg3CPRJNW3b24peSxq', 0),
(9, 'admin11', 'eqwe@mail.ru', '$2y$10$O.IJBTqFL38zCRqqvmgPZ.SO67PKtAB.N7bFyVuqZadWn1GH8Lyem', 1),
(11, 'adm', 'adm@mail.ru', '$2y$10$MYi9MvvDsFWOe18hSyjcCOCQF8zF5C2j06ohO0RkRUpS6.Xq451Am', 1),
(12, 'tronin753@gmail.com', 'tronin753@gmail.com', '$2y$10$ClWLJDcgTauSYFnDwIljTuwvBMLzn/0bxaEu48Gq624t54qXc9w9y', 0),
(13, 'tronin753@gmail.com', 'dragonborncs@mail.ru', '$2y$10$tq.Xu6vWBrjxCyVs.bTUEuri3U3Nx0gkRUSXnN64CrU1UalpjDYZm', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_ibfk_1` (`user_id`);

--
-- Индексы таблицы `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `my_thoughts`
--
ALTER TABLE `my_thoughts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1` (`user_id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_ibfk_2` (`order_id`),
  ADD KEY `order_items_ibfk_3` (`product_id`),
  ADD KEY `product_id2` (`product_id2`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT для таблицы `gallary`
--
ALTER TABLE `gallary`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `my_thoughts`
--
ALTER TABLE `my_thoughts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `stories`
--
ALTER TABLE `stories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
