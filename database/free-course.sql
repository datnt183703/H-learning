-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 14, 2024 lúc 09:52 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `free-course`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lập trình', 0, 'lap-trinh', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(2, 'JavaScript', 1, 'javascript', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(3, 'PHP', 1, 'php', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(4, 'Python', 1, 'python', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(5, 'Tin học văn phòng', 0, 'tin-hoc-van-phong', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(6, 'Microsoft Word', 5, 'microsoft-word', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(7, 'Microsoft PowerPoint', 5, 'microsoft-powerpoint', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(8, 'Microsoft Excel', 5, 'microsoft-excel', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(9, 'SQL', 0, 'lap-trinh', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(10, 'Microsoft SQL Server', 9, 'microsoft-sql-server', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL),
(11, 'Bigdata', 10, 'bigdata', '2023-10-25 06:48:29', '2023-10-26 07:35:07', '2023-10-26 07:35:07'),
(12, 'Bigdata', 0, 'lap-trinh', '2023-10-25 13:52:01', '2023-10-26 07:35:03', '2023-10-26 07:35:03'),
(13, 'Angular', 1, 'angular', '2023-10-26 07:29:45', '2023-10-26 07:29:45', NULL),
(14, 'Bootstrap', 1, 'bootstrap', '2023-10-26 07:32:37', '2023-10-26 07:32:37', NULL),
(15, 'Cobol', 1, 'cobol', '2023-10-26 07:44:27', '2023-10-26 07:44:27', NULL),
(16, 'AI', 0, 'ai', '2023-10-26 18:48:46', '2023-10-26 18:48:46', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image_path` varchar(191) NOT NULL,
  `content` text NOT NULL,
  `subscriptions` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `courses`
--

INSERT INTO `courses` (`id`, `name`, `image_path`, `content`, `subscriptions`, `category_id`, `created_at`, `updated_at`, `image_name`, `deleted_at`) VALUES
(99551966, 'Khóa học lập trình Python cơ bản', '/storage/course/6/95SFS435m2tgDO3ve4s4.jpg', '<p>Kh&oacute;a học Python - Cơ hội học lập tr&igrave;nh dễ d&agrave;ng!</p>\r\n\r\n<p>Bạn muốn học lập tr&igrave;nh một c&aacute;ch dễ d&agrave;ng v&agrave; hiệu quả? Kh&oacute;a học Python l&agrave; lựa chọn tốt nhất! Python l&agrave; ng&ocirc;n ngữ lập tr&igrave;nh phổ biến, dễ học, v&agrave; c&oacute; nhiều ứng dụng mạnh mẽ. Với kh&oacute;a học n&agrave;y, bạn sẽ được giới thiệu v&agrave;o thế giới lập tr&igrave;nh Python từ cơ bản đến n&acirc;ng cao.</p>\r\n\r\n<p>Kh&oacute;a học bao gồm c&aacute;c chủ đề quan trọng như c&uacute; ph&aacute;p Python, kiểu dữ liệu, điều kiện, v&ograve;ng lặp, h&agrave;m, xử l&yacute; lỗi, v&agrave; thư viện Python phổ biến. Ch&uacute;ng t&ocirc;i sử dụng phương ph&aacute;p học tương t&aacute;c, b&agrave;i tập thực h&agrave;nh, v&agrave; dự &aacute;n thực tế để gi&uacute;p bạn nắm vững kiến thức.</p>\r\n\r\n<p>Kh&ocirc;ng cần kinh nghiệm trước đ&acirc;y, chỉ cần sự t&ograve; m&ograve; v&agrave; sẵn s&agrave;ng học hỏi. Sau khi ho&agrave;n th&agrave;nh kh&oacute;a học, bạn sẽ c&oacute; khả năng ph&aacute;t triển ứng dụng, xử l&yacute; dữ liệu, v&agrave; l&agrave;m việc trong lĩnh vực khoa học dữ liệu v&agrave; tr&iacute; tuệ nh&acirc;n tạo. Đừng bỏ lỡ cơ hội đầu tư v&agrave;o tương lai với Python!</p>', 121, 4, '2023-10-26 07:17:00', '2023-10-26 07:17:06', 'course-python.jpg', NULL),
(99551967, 'Tổng quan về khóa học HTML CSS', '/storage/course/6/pwfFZS9TWzSTmMn7sKZn.jpg', '<p>Kh&oacute;a học HTML v&agrave; CSS - Học c&aacute;ch x&acirc;y dựng trang web chuy&ecirc;n nghiệp!</p>\r\n\r\n<p>Kh&oacute;a học HTML v&agrave; CSS l&agrave; bước đầu ti&ecirc;n tuyệt vời cho bất kỳ ai muốn hiểu c&aacute;ch tạo v&agrave; thiết kế trang web. HTML (Hypertext Markup Language) l&agrave; ng&ocirc;n ngữ cơ bản để tạo nội dung trang web, trong khi CSS (Cascading Style Sheets) l&agrave; c&ocirc;ng cụ để định dạng v&agrave; trang tr&iacute; n&oacute;.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y sẽ dẫn bạn qua c&aacute;ch sử dụng HTML để tạo cấu tr&uacute;c trang, th&ecirc;m văn bản, h&igrave;nh ảnh, v&agrave; li&ecirc;n kết. Sau đ&oacute;, bạn sẽ t&igrave;m hiểu c&aacute;ch sử dụng CSS để thay đổi m&agrave;u sắc, k&iacute;ch thước, v&agrave; bố cục của c&aacute;c phần tử trang web. Bạn sẽ cũng học c&aacute;ch l&agrave;m cho trang web của m&igrave;nh đẹp v&agrave; th&iacute;ch hợp cho cả m&aacute;y t&iacute;nh lẫn điện thoại di động.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y d&agrave;nh cho tất cả mọi người, kh&ocirc;ng cần kinh nghiệm trước đ&acirc;y. Sau khi ho&agrave;n th&agrave;nh, bạn sẽ c&oacute; kiến thức cơ bản để bắt đầu x&acirc;y dựng trang web của ri&ecirc;ng m&igrave;nh hoặc l&agrave;m việc trong lĩnh vực thiết kế web. H&atilde;y tham gia ngay để bắt đầu h&agrave;nh tr&igrave;nh s&aacute;ng tạo của bạn tr&ecirc;n Internet!</p>', 32, 2, '2023-10-26 07:21:27', '2023-10-26 20:11:59', 'course-html.jpg', NULL),
(99551968, 'Khoá học Laravel', '/storage/course/6/Om25iIor6xavKgIQjXdq.jpg', '<p>Kh&oacute;a học PHP Laravel - Tr&igrave;nh độ cao cấp trong ph&aacute;t triển web!</p>\r\n\r\n<p>Kh&aacute;m ph&aacute; sức mạnh của ph&aacute;t triển web bằng Laravel, một trong những framework PHP phổ biến nhất. Kh&oacute;a học PHP Laravel của ch&uacute;ng t&ocirc;i mang đến kiến thức v&agrave; kỹ năng để x&acirc;y dựng c&aacute;c ứng dụng web mạnh mẽ, đẹp v&agrave; bảo mật.</p>\r\n\r\n<p>Trong kh&oacute;a học, bạn sẽ học c&aacute;ch sử dụng Laravel để quản l&yacute; cơ sở dữ liệu, x&acirc;y dựng giao diện người d&ugrave;ng tương t&aacute;c, xử l&yacute; đăng nhập v&agrave; x&aacute;c thực, v&agrave; ph&aacute;t triển ứng dụng thời gian thực với WebSocket. Ch&uacute;ng t&ocirc;i cung cấp c&aacute;c dự &aacute;n thực tế, hướng dẫn từng bước v&agrave; hỗ trợ trực tuyến để gi&uacute;p bạn nắm vững Laravel.</p>\r\n\r\n<p>Kh&oacute;a học l&agrave; lựa chọn l&yacute; tưởng cho những người muốn ph&aacute;t triển sự nghiệp trong lĩnh vực ph&aacute;t triển web hoặc tạo c&aacute;c ứng dụng web c&aacute; nh&acirc;n. Kh&ocirc;ng cần kinh nghiệm trước, ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn trở th&agrave;nh một chuy&ecirc;n gia ph&aacute;t triển web Laravel. H&atilde;y tham gia để bắt đầu h&agrave;nh tr&igrave;nh của bạn!</p>', 88, 3, '2023-10-26 07:25:10', '2023-11-09 08:08:24', 'course-laravel.jpg', NULL),
(99551969, 'Angular', '/storage/course/6/I0wYmSOtivyalpExPsaL.jpg', '<p>Kh&oacute;a học Angular - Kh&aacute;m ph&aacute; sức mạnh ph&aacute;t triển ứng dụng web hiện đại!</p>\r\n\r\n<p>Kh&oacute;a học Angular của ch&uacute;ng t&ocirc;i sẽ dẫn bạn v&agrave;o thế giới ph&aacute;t triển ứng dụng web mạnh mẽ v&agrave; đẹp mắt. Angular l&agrave; một framework JavaScript phổ biến được ph&aacute;t triển bởi Google, được sử dụng rộng r&atilde;i để x&acirc;y dựng c&aacute;c ứng dụng web đa chức năng v&agrave; th&acirc;n thiện với người d&ugrave;ng.</p>\r\n\r\n<p>Trong kh&oacute;a học, bạn sẽ học c&aacute;ch sử dụng Angular để x&acirc;y dựng c&aacute;c ứng dụng web tương t&aacute;c, quản l&yacute; trạng th&aacute;i ứng dụng, tương t&aacute;c với API v&agrave; nhiều t&iacute;nh năng hấp dẫn kh&aacute;c. Ch&uacute;ng t&ocirc;i cung cấp hướng dẫn chi tiết, v&iacute; dụ thực tế v&agrave; dự &aacute;n để bạn c&oacute; thể &aacute;p dụng kiến thức ngay lập tức.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y ph&ugrave; hợp cho cả người mới bắt đầu v&agrave; những người đ&atilde; c&oacute; kinh nghiệm trong lập tr&igrave;nh web. Với Angular, bạn c&oacute; thể tạo ra c&aacute;c ứng dụng web chất lượng cao v&agrave; l&agrave;m việc trong lĩnh vực ph&aacute;t triển web hiện đại. H&atilde;y tham gia để bắt đầu h&agrave;nh tr&igrave;nh ph&aacute;t triển web của bạn!</p>', 62, 13, '2023-10-26 07:31:18', '2023-10-26 07:31:18', 'course-angular.jpg', NULL),
(99551970, 'Khóa học Bootstrap', '/storage/course/6/WH7IkI9Hfomr0CbUBHDK.jpg', '<p>Kh&oacute;a học Bootstrap - Điểm đầu ho&agrave;n hảo cho ph&aacute;t triển web nhanh ch&oacute;ng!</p>\r\n\r\n<p>Kh&oacute;a học Bootstrap của ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn l&agrave;m quen v&agrave; thống trị một trong những framework ph&aacute;t triển web phổ biến nhất. Bootstrap l&agrave; một tập hợp c&aacute;c c&ocirc;ng cụ v&agrave; giao diện người d&ugrave;ng được thiết kế sẵn để gi&uacute;p bạn x&acirc;y dựng trang web nhanh ch&oacute;ng v&agrave; hiệu quả.</p>\r\n\r\n<p>Trong kh&oacute;a học, bạn sẽ học c&aacute;ch sử dụng Bootstrap để tạo giao diện trực quan, đ&aacute;p ứng tr&ecirc;n nhiều thiết bị, v&agrave; tối ưu h&oacute;a trải nghiệm người d&ugrave;ng. Ch&uacute;ng t&ocirc;i cung cấp hướng dẫn thực h&agrave;nh, v&iacute; dụ minh họa v&agrave; dự &aacute;n thực tế để bạn c&oacute; thể &aacute;p dụng ngay lập tức.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y ph&ugrave; hợp cho tất cả mọi người, từ người mới bắt đầu tới những người đ&atilde; c&oacute; kinh nghiệm trong ph&aacute;t triển web. Với Bootstrap, bạn c&oacute; thể tạo ra c&aacute;c trang web đẹp v&agrave; chuy&ecirc;n nghiệp m&agrave; kh&ocirc;ng cần phải viết m&atilde; từ đầu. H&atilde;y tham gia để bắt đầu h&agrave;nh tr&igrave;nh ph&aacute;t triển web của bạn một c&aacute;ch nhanh ch&oacute;ng v&agrave; dễ d&agrave;ng!</p>', 200, 14, '2023-10-26 07:34:49', '2023-10-26 07:34:49', 'course-bootstrap.jpg', NULL),
(99551971, 'JavaScript Cơ Bản Từ A đến Z', '/storage/course/6/oPbJMKHGbtxJguxvHtMW.jpg', '<p>Kh&oacute;a học JavaScript - Kh&aacute;m ph&aacute; ng&ocirc;n ngữ lập tr&igrave;nh mạnh mẽ cho web!</p>\r\n\r\n<p>Kh&aacute;m ph&aacute; sức mạnh của JavaScript với kh&oacute;a học của ch&uacute;ng t&ocirc;i. JavaScript l&agrave; một ng&ocirc;n ngữ lập tr&igrave;nh ph&iacute;a client được sử dụng rộng r&atilde;i để tạo ra trải nghiệm tương t&aacute;c tr&ecirc;n web. Kh&oacute;a học n&agrave;y sẽ gi&uacute;p bạn hiểu r&otilde; c&uacute; ph&aacute;p, c&aacute;c cấu tr&uacute;c điều khiển, v&agrave; c&aacute;ch tương t&aacute;c với HTML v&agrave; CSS để tạo ra c&aacute;c ứng dụng web đa dạng v&agrave; th&uacute; vị.</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i cung cấp hướng dẫn từng bước, b&agrave;i tập thực h&agrave;nh, v&agrave; dự &aacute;n thực tế để gi&uacute;p bạn nắm vững kiến thức v&agrave; kỹ năng cần thiết để ph&aacute;t triển ứng dụng JavaScript chất lượng cao. Kh&oacute;a học n&agrave;y d&agrave;nh cho mọi người, bất kể tr&igrave;nh độ kinh nghiệm.</p>\r\n\r\n<p>Học JavaScript c&oacute; thể mở ra nhiều cơ hội trong lĩnh vực ph&aacute;t triển web v&agrave; ứng dụng di động. H&atilde;y tham gia v&agrave;o kh&oacute;a học để bắt đầu h&agrave;nh tr&igrave;nh của bạn trong việc tạo ra c&aacute;c ứng dụng web độc đ&aacute;o v&agrave; th&uacute; vị!</p>', 18, 2, '2023-10-26 07:40:06', '2023-10-26 07:40:06', 'course-javascript.jpg', NULL),
(99551972, 'Backend RESTFul Server với Node.JS (SQL/MongoDB)', '/storage/course/6/xk6eayD7a5RfZu1Mj6JH.jpg', '<p>Kh&oacute;a học Node.js - Kh&aacute;m ph&aacute; thế giới ph&aacute;t triển ứng dụng server mạnh mẽ!</p>\r\n\r\n<p>Kh&oacute;a học Node.js của ch&uacute;ng t&ocirc;i l&agrave; cơ hội tuyệt vời để t&igrave;m hiểu về m&ocirc;i trường ph&aacute;t triển server hiện đại. Node.js l&agrave; một m&ocirc;i trường chạy m&atilde; JavaScript ở ph&iacute;a m&aacute;y chủ, mạnh mẽ v&agrave; đ&aacute;p ứng, được sử dụng rộng r&atilde;i để x&acirc;y dựng c&aacute;c ứng dụng mạng nhanh ch&oacute;ng.</p>\r\n\r\n<p>Trong kh&oacute;a học, bạn sẽ học c&aacute;ch sử dụng Node.js để x&acirc;y dựng c&aacute;c ứng dụng m&aacute;y chủ, xử l&yacute; y&ecirc;u cầu mạng, tạo API, v&agrave; nhiều t&iacute;nh năng mạnh mẽ kh&aacute;c. Ch&uacute;ng t&ocirc;i cung cấp hướng dẫn từng bước, dự &aacute;n thực tế v&agrave; b&agrave;i tập để bạn c&oacute; thể &aacute;p dụng kiến thức v&agrave;o thực tế.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y ph&ugrave; hợp cho những người muốn trở th&agrave;nh nh&agrave; ph&aacute;t triển Node.js hoặc l&agrave;m việc trong lĩnh vực ph&aacute;t triển server-side. Kh&ocirc;ng cần kinh nghiệm trước, h&atilde;y tham gia để bắt đầu h&agrave;nh tr&igrave;nh ph&aacute;t triển ứng dụng server mạnh mẽ của bạn!</p>', 53, 2, '2023-10-26 07:43:31', '2023-10-26 20:15:20', 'course-node.jpg', NULL),
(99551973, 'COBOL Programming', '/storage/course/6/92iTw0bXblzysoQQqDcb.jpg', '<p>Kh&oacute;a học COBOL - Kh&aacute;m ph&aacute; cơ hội trong lập tr&igrave;nh m&aacute;y t&iacute;nh kinh điển!</p>\r\n\r\n<p>Kh&oacute;a học COBOL của ch&uacute;ng t&ocirc;i l&agrave; cơ hội để bạn kh&aacute;m ph&aacute; một ng&ocirc;n ngữ lập tr&igrave;nh vĩ đại v&agrave; lịch sử, được sử dụng trong hệ thống kinh doanh v&agrave; t&agrave;i ch&iacute;nh tr&ecirc;n to&agrave;n thế giới. COBOL (Common Business-Oriented Language) l&agrave; một ng&ocirc;n ngữ chuy&ecirc;n biệt trong việc x&acirc;y dựng ứng dụng doanh nghiệp v&agrave; quản l&yacute; dữ liệu.</p>\r\n\r\n<p>Trong kh&oacute;a học, bạn sẽ học c&aacute;ch viết m&atilde; COBOL, tạo c&aacute;c ứng dụng doanh nghiệp, v&agrave; xử l&yacute; dữ liệu lớn. Ch&uacute;ng t&ocirc;i cung cấp hướng dẫn từng bước, v&iacute; dụ thực tế v&agrave; dự &aacute;n để bạn c&oacute; thể &aacute;p dụng kiến thức v&agrave;o thực tế.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y đặc biệt th&iacute;ch hợp cho những người muốn l&agrave;m việc trong lĩnh vực c&ocirc;ng nghiệp t&agrave;i ch&iacute;nh, quản l&yacute; dữ liệu, v&agrave; ph&aacute;t triển ứng dụng doanh nghiệp. D&ugrave; bạn l&agrave; người mới bắt đầu hay đ&atilde; c&oacute; kinh nghiệm, h&atilde;y tham gia để t&igrave;m hiểu về COBOL v&agrave; kh&aacute;m ph&aacute; cơ hội trong lĩnh vực n&agrave;y!</p>\r\n\r\n<p>Link t&agrave;i liệu:&nbsp;<a href=\"https://drive.google.com/file/d/1phg5dKPjzU3wroIXSk9HL1qIXIzXxcHO/view?usp=sharing\">T&agrave;i liệu kiểm tra</a></p>', 1219, 15, '2023-10-26 07:48:44', '2024-01-13 21:03:32', 'ngon-ngu-lap-trinh-cobol.jpeg.jpg', NULL),
(99551974, 'Word: Getting Started', '/storage/course/6/fQ59UVKmvhlBMkTmS35K.jpg', '<p>Kh&oacute;a học Microsoft Word - N&acirc;ng cao kỹ năng xử l&yacute; văn bản!</p>\r\n\r\n<p>Kh&oacute;a học Microsoft Word của ch&uacute;ng t&ocirc;i l&agrave; cơ hội để bạn trang bị những kỹ năng cần thiết để sử dụng một trong những ứng dụng xử l&yacute; văn bản phổ biến nhất tr&ecirc;n thế giới. Microsoft Word l&agrave; một c&ocirc;ng cụ mạnh mẽ cho việc soạn thảo, bi&ecirc;n tập văn bản, v&agrave; tạo t&agrave;i liệu chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>Trong kh&oacute;a học, bạn sẽ học c&aacute;ch sử dụng Microsoft Word để tạo v&agrave; định dạng văn bản, tạo bảng biểu, ch&egrave;n h&igrave;nh ảnh, v&agrave; tận dụng t&iacute;nh năng tự động h&oacute;a. Ch&uacute;ng t&ocirc;i cung cấp hướng dẫn chi tiết, b&agrave;i tập thực h&agrave;nh v&agrave; mẫu t&agrave;i liệu để bạn c&oacute; thể thực h&agrave;nh ngay lập tức.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y ph&ugrave; hợp cho tất cả mọi người, từ sinh vi&ecirc;n đến nh&acirc;n vi&ecirc;n văn ph&ograve;ng v&agrave; doanh nh&acirc;n. Microsoft Word l&agrave; một c&ocirc;ng cụ quan trọng trong cuộc sống h&agrave;ng ng&agrave;y v&agrave; sự nghiệp của bạn. H&atilde;y tham gia để n&acirc;ng cao kỹ năng xử l&yacute; văn bản của bạn!</p>', 11, 6, '2023-10-26 07:51:59', '2023-10-26 18:48:19', '1512_word-la-gi-1.jpg', NULL),
(99551975, 'Microsoft Powerpoint', '/storage/course/6/JBpqAKb7orhhmUgXgJ1w.jpg', '<p>Kh&oacute;a học Microsoft PowerPoint - Học c&aacute;ch tạo b&agrave;i thuyết tr&igrave;nh chuy&ecirc;n nghiệp!</p>\r\n\r\n<p>Kh&oacute;a học Microsoft PowerPoint của ch&uacute;ng t&ocirc;i l&agrave; hướng dẫn ho&agrave;n hảo để bạn nắm vững c&ocirc;ng cụ tạo b&agrave;i thuyết tr&igrave;nh mạnh mẽ. PowerPoint l&agrave; một ứng dụng phổ biến của Microsoft Office, được sử dụng rộng r&atilde;i để tạo v&agrave; tr&igrave;nh b&agrave;y th&ocirc;ng tin một c&aacute;ch hấp dẫn.</p>\r\n\r\n<p>Trong kh&oacute;a học, bạn sẽ học c&aacute;ch tạo slide, th&ecirc;m văn bản, h&igrave;nh ảnh, &acirc;m thanh v&agrave; video, cũng như tạo hiệu ứng v&agrave; chuyển động. Ch&uacute;ng t&ocirc;i cung cấp c&aacute;c chi tiết về c&aacute;ch tạo b&agrave;i thuyết tr&igrave;nh đẹp v&agrave; ấn tượng, v&agrave; c&aacute;ch sử dụng t&iacute;nh năng PowerPoint cho c&aacute;c mục ti&ecirc;u c&aacute; nh&acirc;n hoặc cơ quan.</p>\r\n\r\n<p>Kh&oacute;a học ph&ugrave; hợp cho mọi người, từ người mới bắt đầu đến những người muốn n&acirc;ng cao kỹ năng tạo b&agrave;i thuyết tr&igrave;nh. H&atilde;y tham gia để trở th&agrave;nh một chuy&ecirc;n gia về PowerPoint v&agrave; tạo ra c&aacute;c b&agrave;i thuyết tr&igrave;nh độc đ&aacute;o v&agrave; chuy&ecirc;n nghiệp.</p>', 1, 7, '2023-10-26 07:55:50', '2023-10-26 07:56:00', 'powerpoint-la-gi-nhung-thong-tin-ma-ban-nen-biet-.jpg', NULL),
(99551976, 'SQL căn bản và nâng cao', '/storage/course/6/joXUhofjzAWNmOxgRG35.png', '<p>Kh&oacute;a học SQL - Kh&aacute;m ph&aacute; nền tảng quản l&yacute; dữ liệu quan trọng!</p>\r\n\r\n<p>Kh&oacute;a học SQL của ch&uacute;ng t&ocirc;i l&agrave; cơ hội tuyệt vời để bạn t&igrave;m hiểu về ng&ocirc;n ngữ truy vấn cơ sở dữ liệu quan trọng nhất, SQL (Structured Query Language). SQL l&agrave; c&ocirc;ng cụ mạnh mẽ cho việc lưu trữ, truy xuất v&agrave; quản l&yacute; dữ liệu trong hệ thống th&ocirc;ng tin.</p>\r\n\r\n<p>Trong kh&oacute;a học, bạn sẽ học c&aacute;ch sử dụng SQL để tạo v&agrave; quản l&yacute; cơ sở dữ liệu, truy xuất th&ocirc;ng tin theo y&ecirc;u cầu, thực hiện c&aacute;c ph&eacute;p to&aacute;n dữ liệu, v&agrave; l&agrave;m việc với dữ liệu lớn. Ch&uacute;ng t&ocirc;i cung cấp hướng dẫn từng bước, v&iacute; dụ thực tế v&agrave; b&agrave;i tập để bạn c&oacute; thể &aacute;p dụng kiến thức v&agrave;o thực tế.</p>\r\n\r\n<p>Kh&oacute;a học n&agrave;y ph&ugrave; hợp cho những người muốn l&agrave;m việc trong lĩnh vực quản l&yacute; dữ liệu, ph&aacute;t triển ứng dụng, v&agrave; ph&acirc;n t&iacute;ch dữ liệu. Kh&ocirc;ng cần kinh nghiệm trước, h&atilde;y tham gia để bắt đầu h&agrave;nh tr&igrave;nh của bạn trong thế giới quản l&yacute; dữ liệu với SQL!</p>', 29, 10, '2023-10-26 08:00:07', '2023-10-26 08:00:18', 'images.png', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `course_lectures`
--

CREATE TABLE `course_lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `lecture_link` varchar(191) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `course_lectures`
--

INSERT INTO `course_lectures` (`id`, `name`, `lecture_link`, `course_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'bài 1', 'olU5wIrtPB0', 84772091, '2023-10-22 08:38:17', '2023-10-22 08:39:16', '2023-10-22 08:39:16'),
(2, 'bài 1', '30KI5SuECuc', 84772091, '2023-10-22 08:39:16', '2023-10-22 08:42:31', '2023-10-22 08:42:31'),
(3, 'bài 1', 'rHKCWKZA6RI', 84772091, '2023-10-22 08:42:31', '2023-10-22 08:43:18', '2023-10-22 08:43:18'),
(4, 'bài 1', 'rHKCWKZA6RI', 84772091, '2023-10-22 08:43:18', '2023-10-22 08:43:18', NULL),
(5, 'bài 2', 'LznjGfQD57U', 84772091, '2023-10-22 08:43:18', '2023-10-22 08:43:18', NULL),
(6, 'bài 1', 'OwwjM8FMPj0', 99551965, '2023-10-26 06:47:07', '2023-10-26 06:47:25', '2023-10-26 06:47:25'),
(7, 'bài 1', 'OwwjM8FMPj0', 99551965, '2023-10-26 06:47:25', '2023-10-26 06:47:25', NULL),
(8, 'bài 1', 'rHKCWKZA6RI', 1126891, '2023-10-26 06:55:51', '2023-10-26 06:55:51', NULL),
(9, 'Bài 1: Giới thiệu ngôn ngữ lập trình Python', 'NZj6LI5a9vc', 99551966, '2023-10-26 07:17:00', '2023-10-26 07:18:13', '2023-10-26 07:18:13'),
(10, 'Bài 2: Cài đặt môi trường Python', 'jf-q_dG8WzI', 99551966, '2023-10-26 07:17:00', '2023-10-26 07:18:13', '2023-10-26 07:18:13'),
(11, 'Bài 1: Giới thiệu ngôn ngữ lập trình Python', 'NZj6LI5a9vc', 99551966, '2023-10-26 07:18:13', '2023-10-26 07:18:13', NULL),
(12, 'Bài 2: Cài đặt môi trường Python', 'jf-q_dG8WzI', 99551966, '2023-10-26 07:18:13', '2023-10-26 07:18:13', NULL),
(13, 'Bài 3: Chạy file Python', 'QFxqY8qv42E', 99551966, '2023-10-26 07:18:13', '2023-10-26 07:18:13', NULL),
(14, 'Ví dụ trực quan về HTML & CSS', 'zwsPND378OQ', 99551967, '2023-10-26 07:21:27', '2023-10-26 07:21:27', NULL),
(15, 'Giới thiệu bộ công cụ Dev tools trên trình duyệt', '7BJiPyN4zZ0', 99551967, '2023-10-26 07:21:27', '2023-10-26 07:21:27', NULL),
(16, 'Cài đặt môi trường, công cụ cần thiết để bắt đầ học HTML CSS', 'ZotVkQDC6mU', 99551967, '2023-10-26 07:21:27', '2023-10-26 07:21:27', NULL),
(17, 'Cú pháp mở và đóng Comments', 'JG0pdfdKjgQ', 99551967, '2023-10-26 07:21:27', '2023-10-26 07:21:27', NULL),
(18, 'Tổng quan về tạo web bán hàng Laravel', 'O4Z_tlcKRvs', 99551968, '2023-10-26 07:25:10', '2023-10-26 07:25:10', NULL),
(19, 'Cài đặt web bán hàng Laravel', 'dehLgFuc7ms', 99551968, '2023-10-26 07:25:10', '2023-10-26 07:25:10', NULL),
(20, 'Thiết kế cơ sở dữ liệu web bán hàng Laravel', 'D1ip4GItTMY', 99551968, '2023-10-26 07:25:10', '2023-10-26 07:25:10', NULL),
(21, 'Tạo danh mục cho web bán hàng Laravel', 'VatEQXKo_Z', 99551968, '2023-10-26 07:25:10', '2023-10-26 07:25:10', NULL),
(22, 'Bài 1 - Intro', 'UOR6i0FV8dc', 99551969, '2023-10-26 07:31:18', '2023-10-26 07:31:18', NULL),
(23, 'Bài 2 - TypeScript Fundamentals', 'Jlo7IgWUdNs', 99551969, '2023-10-26 07:31:18', '2023-10-26 07:31:18', NULL),
(24, 'Bài 3 - Setup and Installation', '3_FBgsZFvo4', 99551969, '2023-10-26 07:31:18', '2023-10-26 07:31:18', NULL),
(25, 'Bài 4 - How It Works', 'AXRR4ofdN6Y', 99551969, '2023-10-26 07:31:18', '2023-10-26 07:31:18', NULL),
(26, 'Bài 1 - Giới thiệu khóa học', 'R2MYm4ByQ', 99551970, '2023-10-26 07:34:49', '2023-10-26 07:34:49', NULL),
(27, 'Bài 2 - Giới thiệu về Bootstrap', 'qK0y1OZC8JE', 99551970, '2023-10-26 07:34:49', '2023-10-26 07:34:49', NULL),
(28, 'Bài 3 - Cài đặt Sublime Text', '2Di-TyKyQLU', 99551970, '2023-10-26 07:34:49', '2023-10-26 07:34:49', NULL),
(29, 'Setup Environment', 'tRPsnPC1lqQ&list', 99551971, '2023-10-26 07:40:06', '2023-10-26 07:40:06', NULL),
(30, 'Course Files', '0euD0KGryIU', 99551971, '2023-10-26 07:40:06', '2023-10-26 07:40:06', NULL),
(31, 'Console', 'CrqGVoc8t_8', 99551971, '2023-10-26 07:40:06', '2023-10-26 07:40:06', NULL),
(32, 'Tất Tần Tật Các Kiểu Dữ Liệu Cần Biết của JS', '6o_6yqbzU8U', 99551971, '2023-10-26 07:40:06', '2023-10-26 07:40:06', NULL),
(33, 'Kiểu Dữ Liệu Strings (Chuỗi) Trong Thế Giới Xi-Đa', 'PZ8sOHP13lU', 99551971, '2023-10-26 07:40:06', '2023-10-26 07:40:06', NULL),
(34, '#1. Feeling', 'gjP_82lofBY', 99551972, '2023-10-26 07:43:31', '2023-10-26 07:43:31', NULL),
(35, '#2. Xây dựng Chức năng Của Một Website', 'WdqMSB2nttk', 99551972, '2023-10-26 07:43:31', '2023-10-26 07:43:31', NULL),
(36, '#3. Mô Hình Hoạt Động Client Server', 'GXjt7PcYd6M', 99551972, '2023-10-26 07:43:31', '2023-10-26 07:43:31', NULL),
(37, 'COBOL Program Structure Overview', 'yZePB3jA9Dc', 99551973, '2023-10-26 07:48:44', '2024-01-13 21:03:03', '2024-01-13 21:03:03'),
(38, 'Data Types in COBOL', '5vHC0W0bL8g&list', 99551973, '2023-10-26 07:48:44', '2024-01-13 21:03:03', '2024-01-13 21:03:03'),
(39, 'COBOL STRING Statement', 'jwoUBEPy8pQ', 99551973, '2023-10-26 07:48:44', '2024-01-13 21:03:03', '2024-01-13 21:03:03'),
(40, 'Word: Getting Started', 'j-ZAVHk5SaU', 99551974, '2023-10-26 07:51:59', '2023-10-26 07:53:01', '2023-10-26 07:53:01'),
(41, 'Word: Getting Started', 'j-ZAVHk5SaU', 99551974, '2023-10-26 07:53:01', '2023-10-26 07:53:01', NULL),
(42, 'Word: Creating and Opening Documents', 'PafCMUVH_OA', 99551974, '2023-10-26 07:53:01', '2023-10-26 07:53:01', NULL),
(43, 'Word: Saving and Sharing Documents', 'iHuFzz7Wvt4', 99551974, '2023-10-26 07:53:01', '2023-10-26 07:53:01', NULL),
(44, 'Word: Text Basics', 'vmEzxQfVj5c', 99551974, '2023-10-26 07:53:01', '2023-10-26 07:53:01', NULL),
(45, 'PowerPoint: Getting Started', 'k6pg4nZS6fA', 99551975, '2023-10-26 07:55:50', '2023-10-26 07:57:01', '2023-10-26 07:57:01'),
(46, 'PowerPoint: Creating and Opening Presentations', 'OX3vRazm4fw', 99551975, '2023-10-26 07:55:50', '2023-10-26 07:57:01', '2023-10-26 07:57:01'),
(47, 'PowerPoint: Saving and Sharing', 'wecUGKmiyw', 99551975, '2023-10-26 07:55:50', '2023-10-26 07:57:01', '2023-10-26 07:57:01'),
(48, 'PowerPoint: Slide Basics', 'TZfcVbKJs1E', 99551975, '2023-10-26 07:55:50', '2023-10-26 07:57:01', '2023-10-26 07:57:01'),
(49, 'PowerPoint: Getting Started', 'k6pg4nZS6fA', 99551975, '2023-10-26 07:57:01', '2023-10-26 07:57:01', NULL),
(50, 'PowerPoint: Creating and Opening Presentations', 'OX3vRazm4fw', 99551975, '2023-10-26 07:57:01', '2023-10-26 07:57:01', NULL),
(51, 'PowerPoint: Saving and Sharing', 'iwecUGKmiyw', 99551975, '2023-10-26 07:57:01', '2023-10-26 07:57:01', NULL),
(52, 'PowerPoint: Slide Basics', 'TZfcVbKJs1E', 99551975, '2023-10-26 07:57:01', '2023-10-26 07:57:01', NULL),
(53, 'Cài đặt MySQL Server & MySQL Workbench', 'BYwb50Xbf8s', 99551976, '2023-10-26 08:00:07', '2023-10-26 08:00:07', NULL),
(54, 'Cài đặt Microsoft SQL Server 2019', 'WZZkDdklVlk', 99551976, '2023-10-26 08:00:07', '2023-10-26 08:00:07', NULL),
(55, 'CSDL quan hệ và Hệ quản trị CSDL.', 'InUDwfsGG4A', 99551976, '2023-10-26 08:00:07', '2023-10-26 08:00:07', NULL),
(56, 'COBOL Program Structure Overview', 'yZePB3jA9Dc', 99551973, '2024-01-13 21:03:03', '2024-01-13 21:03:03', NULL),
(57, 'Data Types in COBOL', '5vHC0W0bL8g&list', 99551973, '2024-01-13 21:03:03', '2024-01-13 21:03:03', NULL),
(58, 'COBOL STRING Statement', 'jwoUBEPy8pQ', 99551973, '2024-01-13 21:03:03', '2024-01-13 21:03:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_02_153528_create_categories_table', 1),
(5, '2021_02_03_144829_add_column_deleted_at_table_categories', 1),
(6, '2021_02_09_045354_create_courses_table', 1),
(7, '2021_02_09_045823_create_course_lectures_table', 1),
(8, '2021_02_21_132353_add_colunm_image_name', 1),
(9, '2021_02_23_154707_add_column_deleted_at_table_courses', 1),
(10, '2021_02_23_154839_add_column_deleted_at_table_course_lectures', 1),
(11, '2021_02_28_123701_create_roles_table', 1),
(12, '2021_02_28_123801_create_permissions_table', 1),
(13, '2021_02_28_123920_create_table_user_role', 1),
(14, '2021_02_28_123959_create_table_permission_role', 1),
(15, '2021_03_01_135053_add_colunm_deleted_at_table_user', 1),
(16, '2021_03_01_163726_add_colunm_parent_id_table_permissions', 1),
(17, '2021_03_02_135709_add_colunm_key_table_permissions', 1),
(18, '2021_03_02_143641_add_colunm_deleted_at_table_roles', 1),
(19, '2021_03_04_163404_add_colunm_level_table_users', 1),
(20, '2021_03_05_154649_add_colunm_avatar_table_users', 1),
(21, '2021_03_07_140725_create_subscriptions_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL, NULL),
(2, 'guest', 'Người dùng', NULL, NULL, NULL),
(3, 'developer', 'Phát triển hệ thống', NULL, NULL, NULL),
(4, 'content', 'Chỉnh sửa nội dung', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 7, 3, NULL, NULL),
(2, 9, 1, NULL, NULL),
(3, 9, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(4, 6, 99551966, '2023-10-26 07:17:06', '2023-10-26 07:17:06'),
(6, 6, 99551975, '2023-10-26 07:56:00', '2023-10-26 07:56:00'),
(7, 6, 99551976, '2023-10-26 08:00:18', '2023-10-26 08:00:18'),
(8, 6, 99551974, '2023-10-26 18:48:19', '2023-10-26 18:48:19'),
(9, 8, 99551967, '2023-10-26 19:43:18', '2023-10-26 19:43:18'),
(10, 6, 99551967, '2023-10-26 20:11:59', '2023-10-26 20:11:59'),
(11, 9, 99551972, '2023-10-26 20:15:20', '2023-10-26 20:15:20'),
(12, 6, 99551968, '2023-11-09 08:08:24', '2023-11-09 08:08:24'),
(13, 6, 99551973, '2024-01-13 21:03:32', '2024-01-13 21:03:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 1,
  `avatar` varchar(191) NOT NULL DEFAULT '/img/non_user_default.svg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `level`, `avatar`) VALUES
(1, 'Kailee Balistreri', 'friedrich.streich@example.net', '2023-10-22 08:20:34', '$2a$12$5MaeYkyR0Ugcazwna7pX9eLqfGJGbOSsnbe1QkjsBMGoCu6ElQ0Pm', 'JM4cIUDZw7', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL, 1, '/img/non_user_default.svg'),
(2, 'Vladimir Kunze', 'akoepp@example.net', '2023-10-22 08:20:34', '$2a$12$5MaeYkyR0Ugcazwna7pX9eLqfGJGbOSsnbe1QkjsBMGoCu6ElQ0Pm', 'bAlgyNaGS0', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL, 1, '/img/non_user_default.svg'),
(3, 'Judson Legros', 'zcrona@example.org', '2023-10-22 08:20:34', '$2a$12$5MaeYkyR0Ugcazwna7pX9eLqfGJGbOSsnbe1QkjsBMGoCu6ElQ0Pm', 'gnva8v0mNR', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL, 1, '/img/non_user_default.svg'),
(4, 'Ambrose Lang', 'arvid93@example.net', '2023-10-22 08:20:34', '$2a$12$5MaeYkyR0Ugcazwna7pX9eLqfGJGbOSsnbe1QkjsBMGoCu6ElQ0Pm', 'H9xoTcil9n', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL, 1, '/img/non_user_default.svg'),
(5, 'Sibyl Stoltenberg IV', 'hschowalter@example.com', '2023-10-22 08:20:34', '$2a$12$5MaeYkyR0Ugcazwna7pX9eLqfGJGbOSsnbe1QkjsBMGoCu6ElQ0Pm', 'Pf5sjtNTMj', '2023-10-22 08:20:34', '2023-10-22 08:20:34', NULL, 1, '/img/non_user_default.svg'),
(6, 'admin', 'admin@admin', '2023-10-22 08:20:34', '$2a$12$5MaeYkyR0Ugcazwna7pX9eLqfGJGbOSsnbe1QkjsBMGoCu6ElQ0Pm', NULL, '2023-10-22 08:20:34', '2023-10-26 07:10:01', NULL, 0, '/storage/user/6/FWpzPs8dhMAdWHydldJJ.png'),
(7, 'Nguyễn Tiến Đạt', 'dat.nt183703@gmail.com', NULL, '$2y$10$3Ah1ecggDBGSRzhOz1YU/O8K8LiQIps3mlTc2AdoeHwxt3RKSboDa', NULL, '2023-10-22 08:32:28', '2023-10-26 19:41:27', NULL, 1, '/storage/user/7/sBgjRlsEATfpNjwvtpxL.jpg'),
(8, 'Nguyễn Tiến Đạt', 'abc@gmail.com', NULL, '$2y$10$euWUDkgU.2ZdpaN0kQGaXutfvGmFtknmSo0u2W7Roakw1mvrHiMM6', NULL, '2023-10-26 19:43:10', '2023-10-26 20:13:29', NULL, 0, '/storage/user/8/9XnET2trzeXE6WeuprmF.jpg'),
(9, 'Nguyễn Tiến Đạt', 'fpt1@gmail.com', NULL, '$2y$10$O7x3KT.X8.kx0xytNWBFuud.WxW.SH1J0Aso5Dt6bjPcfqu4Ogowm', NULL, '2023-10-26 20:15:04', '2023-10-26 20:22:55', NULL, 0, '/img/non_user_default.svg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `course_lectures`
--
ALTER TABLE `course_lectures`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99551977;

--
-- AUTO_INCREMENT cho bảng `course_lectures`
--
ALTER TABLE `course_lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
