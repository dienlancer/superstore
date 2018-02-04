-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 04, 2018 lúc 05:46 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `superstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ilPOiDhmKqsxtUpi7ZgWe5vDYjt2ICJK', 1, '2017-11-12 06:15:56', '2017-11-12 06:15:55', '2017-11-12 06:15:56'),
(2, 1, 'rcp04qHne8oATtrTCwKl9FuckJEarSCb', 1, '2017-11-12 06:20:02', '2017-11-12 06:20:02', '2017-11-12 06:20:02'),
(3, 1, 'AHbwHv4BMq4Z5b7nkdvOlvcOvXnPqMk0', 1, '2017-11-12 06:24:14', '2017-11-12 06:24:14', '2017-11-12 06:24:14'),
(4, 1, 'JqmoT6nwuNXt0D5jape2qCQsEVQgWEqA', 1, '2017-11-12 06:26:26', '2017-11-12 06:26:26', '2017-11-12 06:26:26'),
(5, 1, '1TnyfEnFLs7gdNZXKP2r35tc1hBvcnPg', 1, '2017-11-12 07:22:52', '2017-11-12 07:22:52', '2017-11-12 07:22:52'),
(6, 1, 'QlzbRQWzVJgg01NkGUVewoQhT4qPKTMZ', 1, '2017-11-12 07:23:56', '2017-11-12 07:23:56', '2017-11-12 07:23:56'),
(11, 6, 'Smmf8BjLrwkNo9SOvbnEcqCWyFovmfUe', 1, '2018-01-26 01:57:35', '2018-01-26 01:57:35', '2018-01-26 01:57:35'),
(12, 7, '6XNPqDd8ofeyZ93BU209SFT8smJHyvkc', 1, '2018-01-28 09:36:54', '2018-01-28 09:36:54', '2018-01-28 09:36:54'),
(13, 8, 'l16IOygny5ihmPBxkIZIVkZjCQmH1wfA', 1, '2018-01-28 10:04:24', '2018-01-28 10:04:24', '2018-01-28 10:04:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`id`, `fullname`, `alias`, `meta_keyword`, `meta_description`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cơn mơ chiều', 'con-mo-chieu', 'metakeyword Cơn mơ chiều', 'metadescription Cơn mơ chiều', 'thuvienhinh-1.png', 1, 1, '2018-01-08 16:17:33', '2018-01-09 03:00:06'),
(8, 'Thiên chức', 'thien-chuc', 'metakeyword Thiên chức', 'metadescription Thiên chức', 'thuvienhinh-5.png', 5, 1, '2018-01-09 03:05:49', '2018-01-09 03:05:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Nguyên liệu gỗ nhập khẩu giá sỉ', 'nguyen-lieu-go-nhap-khau-gia-si', 'conmochieu-8.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">CUNG CẤP NGUY&Ecirc;N LIỆU GỖ NHẬP KHẨU GI&Aacute; SỈ</p>\n\n<p style=\"text-align:justify\">GreenEcoLife Việt Nam, nh&agrave; cung cấp nguy&ecirc;n liệu gỗ nhập khẩu chất lượng gi&aacute; sỉ: gỗ sồi, gỗ &oacute;c ch&oacute;, gỗ tần b&igrave;, v&aacute;n s&agrave;n gỗ th&ocirc;ng đỏ, v&aacute;n ốp tường gỗ tuyết t&ugrave;ng, &hellip; Từ c&aacute;c nh&agrave; cung cấp gỗ nguy&ecirc;n liệu uy t&iacute;n h&agrave;ng đầu của nước Mỹ v&agrave; Ch&acirc;u &Acirc;u.</p>\n\n<p style=\"text-align:justify\">Sản phẩm nguy&ecirc;n liệu gỗ nhập khẩu của c&ocirc;ng ty tnhh GreenEcoLife nhập khẩu về Việt Nam, chủ yếu cung cấp lại cho c&aacute;c đối t&aacute;c: c&ocirc;ng ty thương mại, xưởng sản xuất nội thất, c&ocirc;ng ty thiết kế nội thất, &hellip;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/nguyen-lieu-go-nhap-khau-gia-si-1.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: kho sản phẩm gỗ nguy&ecirc;n liệu của GreenEcoLife Việt Nam.</em></p>\n\n<p style=\"text-align:justify\">C&aacute;c sản phẩm nguy&ecirc;n liệu gỗ nhập khẩu của GreenEcoLife cung cấp:</p>\n\n<p style=\"text-align:justify\">Nguy&ecirc;n liệu gỗ sồi: M&agrave;u sắc v&agrave; h&igrave;nh dạng của gỗ sồi trắng Mỹ tương tự như gỗ sồi trắng Ch&acirc;u &Acirc;u. D&aacute;t gỗ m&agrave;u nhạt, t&acirc;m gỗ từ n&acirc;u nhạt cho đến n&acirc;u sậm. Đa số gỗ sồi trắng c&oacute; v&acirc;n gỗ thẳng, mặt gỗ từ trung b&igrave;nh đến th&ocirc; với c&aacute;c tia gỗ d&agrave;i hơn sồi đỏ. V&igrave; vậy, sồi trắng c&oacute; nhiều đốm h&igrave;nh hơn.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/nguyen-lieu-go-nhap-khau-gia-si-7.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: sản phẩm nguy&ecirc;n liệu gỗ sồi trắng GreenEcoLife Việt Nam</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:justify\">Nguy&ecirc;n liệu gỗ &oacute;c ch&oacute;: D&aacute;t gỗ m&agrave;u trắng kem, t&acirc;m gỗ m&agrave;u từ n&acirc;u nhạt đến n&acirc;u socola, thường &aacute;nh t&iacute;m đỏ v&agrave; c&oacute; sọc đỏ hơn. &Oacute;c ch&oacute; c&oacute; thể được sấy hơi nước để l&agrave;m sậm m&agrave;u d&aacute;t gỗ hoặc kh&ocirc;ng sấy hơi nước. Nh&igrave;n chung, v&acirc;n gỗ thẳng nhưng đ&ocirc;i khi uốn s&oacute;ng hoặc cuộn xo&aacute;y tạo th&agrave;nh những đốm h&igrave;nh hấp dẫn v&agrave; đẹp nhất.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/nguyen-lieu-go-nhap-khau-gia-si-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: sản phẩm nguy&ecirc;n liệu gỗ &oacute;c ch&oacute; GreenEcoLife Việt Nam.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:justify\">Nguy&ecirc;n liệu gỗ tần b&igrave;: Gỗ tần b&igrave; Mỹ c&oacute; h&igrave;nh dạng tương tự như gỗ tần b&igrave; Ch&acirc;u &Acirc;u. D&aacute;t gỗ m&agrave;u từ nhạt đến gần như trắng, t&acirc;m gỗ c&oacute; m&agrave;u sắc đa dạng, từ n&acirc;u x&aacute;m đến n&acirc;u nhạt, hoặc v&agrave;ng nhạc sọc n&acirc;u. Nh&igrave;n chung, v&acirc;n gỗ thẳng, mặt gỗ th&ocirc; đều. Thứ hạng v&agrave; trữ lượng tần b&igrave; c&oacute; d&aacute;t gỗ m&agrave;u nhạt v&agrave; c&oacute; th&ecirc;m một số đặc t&iacute;nh kh&aacute;c thay đổi t&ugrave;y v&ugrave;ng trồng gỗ.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/nguyen-lieu-go-nhap-khau-gia-si-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: sản phẩm nguy&ecirc;n liệu gỗ tần b&igrave; GreenEcoLife Việt Nam.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:justify\">Ng&agrave;y n&agrave;y, nhu cầu nguy&ecirc;n liệu gỗ: nguy&ecirc;n liệu gỗ sồi, nguy&ecirc;n liệu gỗ &oacute;c ch&oacute;, nguy&ecirc;n liệu gỗ tần b&igrave;. D&ugrave;ng cho sản xuất nội thất gỗ cao cấp rất được nhiều người ti&ecirc;u d&ugrave;ng ưu chuộng chọn lựa để l&agrave;m: nội thất tủ bếp cao cấp, nội thất ph&ograve;ng ngủ cao cấp, nội thất ph&ograve;ng kh&aacute;ch cao cấp, nội thất ph&ograve;ng họp cao cấp, b&agrave;n ghế, tủ quần &aacute;o, kệ tivi, gi&aacute; s&aacute;ch&hellip; V&igrave; c&aacute;c sản phẩm gỗ nguy&ecirc;n liệu của c&ocirc;ng ty tnhh GreenEcoLife thuộc nh&oacute;m gỗ cứng, chịu lực n&eacute;n cao, c&oacute; những v&acirc;n gỗ h&igrave;nh ảnh tự nhi&ecirc;n rất đẹp, chống mối mọt rất tốt.</p>\n\n<p style=\"text-align:justify\">H&igrave;nh ảnh một số sản phẩm nội thất d&ugrave;ng nguy&ecirc;n liệu gỗ nhập khẩu GreecEcoLife Việt Nam.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/nguyen-lieu-go-nhap-khau-gia-si-5.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: nội thất ph&ograve;ng ngủ d&ugrave;ng nguy&ecirc;n liệu gỗ sồi trắng.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/nguyen-lieu-go-nhap-khau-gia-si-6.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: nội thất ph&ograve;ng kh&aacute;ch d&ugrave;ng nguy&ecirc;n liệu gỗ &oacute;c ch&oacute;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/nguyen-lieu-go-nhap-khau-gia-si-4.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: nội thất ph&ograve;ng bếp d&ugrave;ng nguy&ecirc;n liệu gỗ tần b&igrave;.</em></p>\n\n<p style=\"text-align:justify\">Gỗ l&agrave; một nguy&ecirc;n liệu tự nhi&ecirc;n v&agrave; do ch&iacute;nh bản chất của n&oacute; n&ecirc;n c&oacute; c&aacute;c đặc điểm v&agrave; khuyết điểm ta cần nắm r&otilde;. V&igrave; vậy, người ti&ecirc;u d&ugrave;ng cũng như c&aacute;c nh&agrave; chế biến gỗ chuy&ecirc;n nghiệp n&ecirc;n l&agrave;m việc chặc chẽ với c&aacute;c đầu mối cung cấp gỗ để đảm bảo rằng loại gỗ được đặt h&agrave;ng th&iacute;ch hợp cho những nhu cầu cụ thể của họ.</p>\n\n<p style=\"text-align:justify\">Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; nguy&ecirc;n liệu gỗ nhập khẩu ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng tại khu vực miền Nam.</p>', 'chú thích Thái Lan tổn thất nghiêm trọng trước thềm vòng chung kết U23 châu Á', 'metakeyword Thái Lan tổn thất nghiêm trọng trước thềm vòng chung kết U23 châu Á', 'metadescription Thái Lan tổn thất nghiêm trọng trước thềm vòng chung kết U23 châu Á', 30, 8, 1, '2018-01-03 07:29:00', '2018-01-20 04:05:36'),
(11, 'Ưu nhược điểm của nội thất gỗ sồi', 'uu-nhuoc-diem-cua-noi-that-go-soi', 'conmochieu-9.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">Nội thất gỗ sồi nhập khẩu cao cấp</p>\n\n<p style=\"text-align:justify\">Gỗ sồi t&ecirc;n tiếng anh gọi l&agrave; Oak l&agrave; loại gỗ nhập khẩu từ Mỹ v&agrave; c&aacute;c nước ch&acirc;u &Acirc;u. Gỗ sồi nhập khẩu chiếm phần lớn diện t&iacute;ch ở c&aacute;c khu rừng phương T&acirc;y v&agrave; c&aacute;c sản phẩm nội thất được gia c&ocirc;ng từ gỗ sồi cũng được đ&aacute;nh gi&aacute; cao. Gỗ sồi l&agrave; một loại gỗ cứng, ch&uacute;ng ph&aacute;t triển ở nhiều nước tr&ecirc;n thế giới c&oacute; kh&iacute; hậu &ocirc;n đới, tập trung nhiều ở một số v&ugrave;ng đất ở Mỹ, n&ecirc;n thường được gọi l&agrave; gỗ sồi Mỹ. Về chủng loại th&igrave; gỗ sồi c&oacute; hai loại đ&oacute; l&agrave; gỗ sồi đỏ (Red Oak) v&agrave; gỗ sồi trắng (White Oak).</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/greenecolife/uu-nhuoc-diem-1.jpg\" /><img alt=\"\" src=\"/bdstheanh/upload/uu-nhuoc-diem-1.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: nội thất gỗ sồi nhập khẩu</em></p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng (White Oak) d&aacute;t gỗ m&agrave;u nhạt, t&acirc;m gỗ từ n&acirc;u nhạt đến n&acirc;u sậm. T&acirc;m gỗ sồi trắng c&oacute; khả năng kh&aacute;ng s&acirc;u mọt tấn c&ocirc;ng do c&oacute; h&agrave;m lượng tannin cao. Đa số sồi trắng c&oacute; v&acirc;n gỗ thẳng, mặt gỗ từ trung b&igrave;nh đến th&ocirc; với c&aacute;c tia gỗ d&agrave;i hơn sồi đỏ.</p>\n\n<p style=\"text-align:justify\">Gỗ sồi đỏ (Red Oak) d&aacute;t gỗ m&agrave;u trắng đến n&acirc;u nhạt, t&acirc;m gỗ m&agrave;u n&acirc;u đỏ hồng. Về đặc t&iacute;nh vật l&yacute;, gỗ sồi đỏ cứng v&agrave; nặng, khả năng chịu lực xoắn v&agrave; độ chắc trung b&igrave;nh, độ chịu lực n&eacute;n cao, dễ uốn cong bằng hơi nước.. Sồi trắng miền nam lớn nhanh hơn với c&aacute;c v&ograve;ng tuổi gỗ rộng, c&oacute; khuynh hướng cứng v&agrave; nặng hơn.</p>\n\n<p style=\"text-align:justify\">Đa số c&aacute;c loại gỗ nhập khẩu: gỗ sồi nhập khẩu, gỗ &oacute;c ch&oacute; nhập khẩu, gỗ tần b&igrave; nhập khẩu, &hellip; &nbsp;Hầu hết điều được trồng ở Mỹ v&agrave; c&aacute;c nước phương T&acirc;y.</p>\n\n<p style=\"text-align:justify\">Ứng dụng nội thất gỗ sồi nhập khẩu:</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/uu-nhuoc-diem-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Bộ b&agrave;n ghế nội thất gỗ sồi nhập khẩu</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/uu-nhuoc-diem-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: tủ bếp nội thất gỗ sồi nhập khẩu</em></p>\n\n<p style=\"text-align:justify\">Gỗ sồi nhập khẩu thường được sử dụng để l&agrave;m: đồ nội thất gỗ cao cấp, v&aacute;n s&agrave;n, gỗ chạm kiến tr&uacute;c, gỗ chạm ngoại thất, gờ trang tr&iacute; nội thất gỗ sồi cao cấp, cửa c&aacute;i, tủ bếp nội thất gỗ sồi cao cấp, v&aacute;n l&oacute;t, t&agrave; vẹt đường sắt, cầu gỗ, v&aacute;n đ&oacute;ng th&ugrave;ng, v&agrave; hộp đựng nữ trang, &hellip;</p>\n\n<p style=\"text-align:justify\">Ưu nhược điểm của nội thất gỗ sồi nhập khẩu</p>\n\n<p style=\"text-align:justify\">Ưu điểm gỗ sồi nhập khẩu: chịu m&aacute;y tốt, độ b&aacute;m đinh v&agrave; ốc v&iacute;t tốt d&ugrave; phải khoan gỗ trước khi đ&oacute;ng đinh v&agrave; ốc. T&acirc;m gỗ c&oacute; khả năng kh&aacute;ng s&acirc;u, cực kỳ kh&ocirc;ng thấm chất bảo quản, d&aacute;t gỗ tương đối kh&ocirc;ng thấm chất n&agrave;y. D&aacute;t gỗ m&agrave;u nhạt, t&acirc;m gỗ từ n&acirc;u nhạt cho đến n&acirc;u sậm. Đa số gỗ sồi trắng c&oacute; v&acirc;n gỗ thẳng, mặt gỗ từ trung b&igrave;nh đến th&ocirc; với c&aacute;c tia gỗ d&agrave;i hơn sồi đỏ. V&igrave; vậy, sồi trắng c&oacute; nhiều đốm h&igrave;nh hơn.</p>\n\n<p style=\"text-align:justify\">Nhược điểm gỗ sồi nhập khẩu: chịu lực uốn xoắn v&agrave; lực n&eacute;n trung b&igrave;nh, độ chắc thấp nhưng rất dễ uốn c&ocirc;ng bằng hơi nước. V&igrave; gỗ phản ứng với sắt, người thao t&aacute;c n&ecirc;n d&ugrave;ng đinh mạ kẽm. Độ b&aacute;m d&iacute;nh của gỗ thay đổi nhưng gỗ c&oacute; thể được nhuộm m&agrave;u v&agrave; đ&aacute;nh b&oacute;ng để th&agrave;nh th&agrave;nh phẩm tốt. Gỗ kh&ocirc; chậm n&ecirc;n người thao t&aacute;c cẩn thận để tr&aacute;nh nguy cơ rạn gỗ. V&igrave; độ co r&uacute;t lớn n&ecirc;n dễ biến dạng khi gỗ kh&ocirc;.</p>\n\n<p style=\"text-align:justify\">Hiện nay, với nguồn gỗ sồi tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ sồi nhập khẩu nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; GreenEcoLife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nhập khẩu nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất nội thất gỗ sồi cao cấp, qu&yacute; c&ocirc;ng ty thiết kế nội thất gỗ sồi với chất lượng gỗ nhập khẩu nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', 'chú thích Wenger gặp vạ vì bình luận về trọng tài', 'metakeyword Wenger gặp vạ vì bình luận về trọng tài', 'metadescription Wenger gặp vạ vì bình luận về trọng tài', 1, 9, 1, '2018-01-03 07:45:23', '2018-01-20 04:05:43'),
(14, 'Gỗ nhập khẩu nguyên liệu giá tốt tại Hồ Chí Minh', 'go-nhap-khau-nguyen-lieu-gia-tot-tai-ho-chi-minh', 'conmochieu-13.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">Cung cấp gỗ nhập khẩu nguy&ecirc;n liệu gi&aacute; tốt nhất tại khu vực Quận Thủ Đức</p>\n\n<p style=\"text-align:justify\">Greenecolife Việt Nam &ndash; l&agrave; nh&agrave; nhập khẩu v&agrave; ph&acirc;n phối gỗ nhập khẩu nguy&ecirc;n liệu: gỗ sồi, gỗ &oacute;c ch&oacute;, gỗ tần bị, &hellip; Từ c&aacute;c nh&agrave; cung cấp nguy&ecirc;n liệu uy t&iacute;n h&agrave;ng đầu của Mỹ.</p>\n\n<p style=\"text-align:justify\">Gỗ nhập khẩu nguy&ecirc;n liệu Mỹ với quy c&aacute;ch 4/4&rdquo; (25.4 mm), 5/4&Prime; (31.8 mm), 6/4&Prime; (38.1 mm), 8/4&Prime; (50.8 mm), l&agrave; những quy c&aacute;ch phổ biến được c&ocirc;ng ty tnhh Greenecolife nhập khẩu v&agrave; ph&acirc;n phối nhiều nhất hiện nay tại thị trường Việt Nam.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u r&ocirc;̣ng thanh gỗ: từ 3&Prime;= 75 mm đ&ecirc;́n 12&Prime;= 300 mm.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u dài thanh gỗ: từ 4&prime; = 1,2 m đ&ecirc;́n 16&rsquo;= 4,8 m.</p>\n\n<p style=\"text-align:justify\">&ndash; Độ ẩm của gỗ đạt từ 8 đến 12%.</p>\n\n<p style=\"text-align:justify\">Gỗ nhập khẩu nguy&ecirc;n liệu từ Mỹ c&oacute; c&aacute;c ph&acirc;n loại:</p>\n\n<p style=\"text-align:justify\">+ Loại FAS</p>\n\n<p style=\"text-align:justify\">+ Loại 1C</p>\n\n<p style=\"text-align:justify\">+ Loại 2C</p>\n\n<p style=\"text-align:justify\">+ Loại 3C</p>\n\n<p style=\"text-align:justify\">&ndash; Quy c&aacute;ch đ&oacute;ng g&oacute;i gỗ nhập khẩu nguy&ecirc;n liệu từ Mỹ:</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n ngắn: 4 &rarr; 6 feet.</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n dài: 10 &rarr; 16 feet.</p>\n\n<p style=\"text-align:justify\">Gỗ Sồi: M&agrave;u sắc v&agrave; h&igrave;nh dạng của gỗ sồi Mỹ tương tự như gỗ sồi Ch&acirc;u &Acirc;u. D&aacute;t gỗ m&agrave;u nhạt, t&acirc;m gỗ từ n&acirc;u nhạt cho đến n&acirc;u sậm. Đa số gỗ sồi trắng c&oacute; v&acirc;n gỗ thẳng, mặt gỗ từ trung b&igrave;nh đến th&ocirc; với c&aacute;c tia gỗ d&agrave;i hơn sồi đỏ.</p>\n\n<p style=\"text-align:justify\">V&igrave; vậy, sồi trắng c&oacute; nhiều đốm h&igrave;nh hơn.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-nhap-khau-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Quy c&aacute;ch đ&oacute;ng g&oacute;i nguy&ecirc;n liệu gỗ sồi trắng 4/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:justify\">Gỗ &Oacute;c Ch&oacute;: D&aacute;t gỗ m&agrave;u trắng kem, t&acirc;m gỗ m&agrave;u từ n&acirc;u nhạt đến n&acirc;u socola, thường &aacute;nh t&iacute;m đỏ v&agrave; c&oacute; sọc đỏ hơn. &Oacute;c ch&oacute; c&oacute; thể được sấy hơi nước để l&agrave;m sậm m&agrave;u d&aacute;t gỗ hoặc kh&ocirc;ng sấy hơi nước. Nh&igrave;n chung, v&acirc;n gỗ thẳng nhưng đ&ocirc;i khi uốn s&oacute;ng hoặc cuộn xo&aacute;y tạo th&agrave;nh những đốm h&igrave;nh hấp dẫn v&agrave; đẹp nhất.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-nhap-khau-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Quy c&aacute;ch đ&oacute;ng g&oacute;i nguy&ecirc;n liệu gỗ &oacute;c ch&oacute; 4/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:justify\">Gỗ Tần B&igrave;: Tần b&igrave; Mỹ c&oacute; h&igrave;nh dạng tương tự như tần b&igrave; Ch&acirc;u &Acirc;u. D&aacute;t gỗ m&agrave;u từ nhạt đến gần như trắng, t&acirc;m gỗ c&oacute; m&agrave;u sắc đa dạng, từ n&acirc;u x&aacute;m đến n&acirc;u nhạt, hoặc v&agrave;ng nhạc sọc n&acirc;u. Nh&igrave;n chung, v&acirc;n gỗ thẳng, mặt gỗ th&ocirc; đều. Thứ hạng v&agrave; trữ lượng tần b&igrave; c&oacute; d&aacute;t gỗ m&agrave;u nhạt v&agrave; c&oacute; th&ecirc;m một số đặc t&iacute;nh kh&aacute;c thay đổi t&ugrave;y v&ugrave;ng trồng gỗ.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-nhap-khau-4.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Quy c&aacute;ch đ&oacute;ng g&oacute;i nguy&ecirc;n liệu gỗ tần b&igrave; 4/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:justify\">Ứng dụng của gỗ nhập khẩu nguy&ecirc;n liệu Mỹ:</p>\n\n<p style=\"text-align:justify\">Gỗ nhập khẩu nguy&ecirc;n liệu: gỗ Sồi, gỗ &Oacute;c Ch&oacute;, gỗ Tần B&igrave;. Được nhập về Việt Nam, chủ yếu d&ugrave;ng l&agrave;m nội thất, đồ gỗ, v&aacute;n s&agrave;n, gỗ chạm kiến tr&uacute;c, gờ trang tr&iacute;, cửa c&aacute;i, tủ, &hellip;</p>\n\n<p style=\"text-align:justify\">Gỗ l&agrave; một nguy&ecirc;n liệu tự nhi&ecirc;n v&agrave; do ch&iacute;nh bản chất của n&oacute; n&ecirc;n c&oacute; c&aacute;c đặc điểm v&agrave; khuyết điểm ta cần nắm r&otilde;. V&igrave; vậy, người ti&ecirc;u d&ugrave;ng cũng như c&aacute;c nh&agrave; chế biến gỗ chuy&ecirc;n nghiệp n&ecirc;n l&agrave;m việc chặc chẽ với c&aacute;c đầu mối cung cấp gỗ để đảm bảo rằng loại gỗ được đặt h&agrave;ng th&iacute;ch hợp cho những nhu cầu cụ thể của họ.</p>\n\n<p style=\"text-align:justify\">Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', 'chú thích Man City dẫn đầu về số cầu thủ kiến tạo tại Ngoại hạng Anh', 'metakeyword Man City dẫn đầu về số cầu thủ kiến tạo tại Ngoại hạng Anh', 'metadescription Man City dẫn đầu về số cầu thủ kiến tạo tại Ngoại hạng Anh', 30, 12, 1, '2018-01-03 07:52:45', '2018-01-20 04:06:05'),
(15, 'Gỗ sồi trắng Greenecolife phân phối nhập khẩu', 'go-soi-trang-greenecolife-phan-phoi-nhap-khau', 'conmochieu-1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">GỖ SỒI TRẮNG GREENECOLIFE NHẬP KHẨU PH&Acirc;N PHỐI</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng Mỹ (American White oak)</p>\n\n<p style=\"text-align:justify\">C&aacute;c t&ecirc;n kh&aacute;c: Northern White Oak, Southern White Oak.</p>\n\n<p style=\"text-align:justify\">C&ocirc;ng ty tnhh Greenecolife l&agrave; một trong những nh&agrave; nhập khẩu v&agrave; ph&acirc;n phối gỗ nguy&ecirc;n liệu nhiều nhất hiện nay tại thị trường Việt Nam.</p>\n\n<p style=\"text-align:justify\">M&agrave;u sắc v&agrave; h&igrave;nh dạng của gỗ sồi trắng Mỹ tương tự như gỗ sồi trắng Ch&acirc;u &Acirc;u. D&aacute;t gỗ m&agrave;u nhạt, t&acirc;m gỗ từ n&acirc;u nhạt cho đến n&acirc;u sậm. Đa số gỗ sồi trắng c&oacute; v&acirc;n gỗ thẳng, mặt gỗ từ trung b&igrave;nh đến th&ocirc; với c&aacute;c tia gỗ d&agrave;i hơn sồi đỏ. V&igrave; vậy, sồi trắng c&oacute; nhiều đốm h&igrave;nh hơn.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-phan-phoi-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: V&acirc;n gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng greenecolife, nguy&ecirc;n liệu gỗ nhập khẩu từ Mỹ c&oacute; c&aacute;c ph&acirc;n loại:</p>\n\n<p style=\"text-align:justify\">+ Loại 1C</p>\n\n<p style=\"text-align:justify\">+ Loại 2C</p>\n\n<p style=\"text-align:justify\">&ndash; Quy c&aacute;ch đ&oacute;ng g&oacute;i nguy&ecirc;n liệu gỗ nhập khẩu từ Mỹ:</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n ngắn: 4 &rarr; 6 feet.</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n dài: 10 &rarr; 16 feet.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u r&ocirc;̣ng thanh gỗ: từ 3&Prime;= 75 mm đ&ecirc;́n 12&Prime;= 300 mm.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u dài thanh gỗ: từ 4&prime; = 1,2 m đ&ecirc;́n 16&rsquo;= 4,8 m.</p>\n\n<p style=\"text-align:justify\">&ndash; Độ ẩm của gỗ đạt từ 8 đến 12%.</p>\n\n<p style=\"text-align:justify\">Hiện tr&ecirc;n thị trường Mỹ c&oacute; rất nhiều nh&agrave; cung cấp gỗ. V&igrave; vậy m&agrave; cũng sẽ c&oacute; nhiều quy c&aacute;ch đ&oacute;ng g&oacute;i kh&aacute;c nhau, đa dạng t&ugrave;y thuộc v&agrave;o mỗi nh&agrave; cung cấp.</p>\n\n<p style=\"text-align:justify\">Tham khảo th&ecirc;m c&aacute;c sản phẩm gỗ sồi trắng Greenecolife nhập khẩu</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-phan-phoi-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: &nbsp;Gỗ sồi trắng 4/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-phan-phoi-1.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Gỗ sồi trắng 5/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-phan-phoi-5.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Gỗ sồi trắng 6/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-phan-phoi-4.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Gỗ sồi trắng 8/4&Prime;.</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:justify\">Đặc t&iacute;nh ứng dụng: Gỗ chịu m&aacute;y tốt, độ b&aacute;m đinh v&agrave; ốc v&iacute;t tốt d&ugrave; phải khoan gỗ trước khi đ&oacute;ng đinh v&agrave; ốc. V&igrave; gỗ phản ứng với sắt, người thao t&aacute;c n&ecirc;n d&ugrave;ng đinh mạ kẽm. Độ b&aacute;m d&iacute;nh của gỗ thay đổi nhưng gỗ c&oacute; thể được nhuộm m&agrave;u v&agrave; đ&aacute;nh b&oacute;ng để th&agrave;nh th&agrave;nh phẩm tốt. Gỗ kh&ocirc; chậm n&ecirc;n người thao t&aacute;c cẩn thận để tr&aacute;nh nguy cơ rạn gỗ. V&igrave; độ co r&uacute;t lớn n&ecirc;n dễ biến dạng khi gỗ kh&ocirc;.</p>\n\n<p style=\"text-align:justify\">Đặc t&iacute;nh vật l&yacute;: Gỗ cứng v&agrave; nặng, độ chịu lực uốn xoắn v&agrave; lực n&eacute;n trung b&igrave;nh, độ chắc thấp nhưng rất dễ uốn c&ocirc;ng bằng hơi nước. Gỗ miền Nam lớn hơn với c&aacute;c v&ograve;ng tuổi gỗ rộng, c&oacute; khuynh hướng cứng hơn v&agrave; nặng hơn.</p>\n\n<p style=\"text-align:justify\">T&acirc;m gỗ c&oacute; khả năng kh&aacute;ng s&acirc;u, cực kỳ kh&ocirc;ng thấm chất bảo quản, d&aacute;t gỗ tương đối kh&ocirc;ng thấm chất n&agrave;y.</p>\n\n<p style=\"text-align:justify\">C&ocirc;ng dụng ch&iacute;nh của nguy&ecirc;n liệu gỗ sồi Mỹ nhập khẩu thường được sử dụng để l&agrave;m: đồ gỗ, v&aacute;n s&agrave;n, gỗ chạm kiến tr&uacute;c, gỗ chạm ngoại thất, gờ trang tr&iacute;, cửa c&aacute;i, tủ bếp, v&aacute;n l&oacute;t, t&agrave; vẹt đường sắt, cầu gỗ, v&aacute;n đ&oacute;ng th&ugrave;ng, v&agrave; hộp đựng nữ trang, &hellip;</p>\n\n<p style=\"text-align:justify\">M&agrave;u sắc, mặt gỗ, đặc t&iacute;nh v&agrave; đặc điểm của gỗ sồi trắng c&oacute; thể thay đổi t&ugrave;y v&ugrave;ng trồng gỗ. V&igrave; vậy, người ti&ecirc;u d&ugrave;ng cũng như c&aacute;c nh&agrave; chế biến gỗ chuy&ecirc;n nghiệp n&ecirc;n l&agrave;m việc chặc chẽ với đầu mối cung cấp gỗ để đảm bảo rằng loại gỗ được đặt h&agrave;ng th&iacute;ch hợp cho những nhu cầu cụ thể của họ.</p>\n\n<p style=\"text-align:justify\">Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', '', '', '', 6, 1, 1, '2018-01-12 10:01:42', '2018-01-22 10:16:55'),
(17, 'Gỗ óc chó 8/4″ 2c (Walnut 8/4″ 2c)', 'go-oc-cho-84-2c-walnut-84-2c', 'conmochieu-6.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">GỖ &Oacute;C CH&Oacute; 8/4&rdquo; 2C (WALNUT 8/4&rdquo; 2C)</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 8/4&Prime; 2c Mỹ (American Walnut)</p>\n\n<p style=\"text-align:justify\">C&aacute;c t&ecirc;n kh&aacute;c: Black Walnut, Americam Walnut.</p>\n\n<p style=\"text-align:justify\">Nguy&ecirc;n cont gỗ vừa về kho Greenecolife Việt Nam s&aacute;ng nay, nhưng chưa kịp v&ocirc; kho th&igrave; đ&atilde; được xuất đi hết</p>\n\n<p style=\"text-align:justify\">Gỗ nhập khẩu nguy&ecirc;n liệu Mỹ với quy c&aacute;ch 8/4&rdquo; (50.8 mm) loại 2, l&agrave; những quy c&aacute;ch phổ biến được c&ocirc;ng ty tnhh Greenecolife nhập khẩu v&agrave; ph&acirc;n phối nhiều nhất hiện nay tại thị trường Việt Nam.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u r&ocirc;̣ng thanh gỗ: từ 3&Prime;= 75 mm đ&ecirc;́n 12&Prime;= 300 mm.</p>\n\n<p style=\"text-align:justify\">&ndash; Chi&ecirc;̀u dài thanh gỗ: từ 4&prime; = 1,2 m đ&ecirc;́n 16&rsquo;= 4,8 m.</p>\n\n<p style=\"text-align:justify\">&ndash; Độ ẩm của gỗ đạt từ 8 đến 12%.</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 8/4&Prime;, gỗ nhập khẩu nguy&ecirc;n liệu từ Mỹ c&oacute; c&aacute;c ph&acirc;n loại:</p>\n\n<p style=\"text-align:justify\">+ Loại FAS</p>\n\n<p style=\"text-align:justify\">+ Loại 1C</p>\n\n<p style=\"text-align:justify\">+ Loại 2C</p>\n\n<p style=\"text-align:justify\">+ Loại 3C</p>\n\n<p style=\"text-align:justify\">&ndash; Quy c&aacute;ch đ&oacute;ng g&oacute;i nguy&ecirc;n liệu gỗ nhập khẩu từ Mỹ:</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n ngắn: 4 &rarr; 6 feet.</p>\n\n<p style=\"text-align:justify\">+ Ki&ecirc;̣n dài: 10 &rarr; 16 feet.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-oc-cho-walnut-1.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Quy c&aacute;ch đ&oacute;ng g&oacute;i nguy&ecirc;n liệu gỗ &oacute;c ch&oacute; 8/4&Prime;.</em></p>\n\n<p style=\"text-align:justify\">Hiện tr&ecirc;n thị trường Mỹ c&oacute; rất nhiều nh&agrave; cung cấp gỗ nguy&ecirc;n liệu. V&igrave; vậy m&agrave; cũng sẽ c&oacute; nhiều quy c&aacute;ch đ&oacute;ng g&oacute;i kh&aacute;c nhau, đa dạng t&ugrave;y thuộc v&agrave;o mỗi nh&agrave; cung cấp gỗ.</p>\n\n<p style=\"text-align:justify\">Tham khảo th&ecirc;m c&aacute;c sản phẩm Greenecolife Việt Nam nhập khẩu: nguy&ecirc;n liệu gỗ &oacute;c ch&oacute; kh&aacute;c</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 4/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 5/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ &oacute;c ch&oacute; 6/4&Prime;.</p>\n\n<p style=\"text-align:justify\">D&aacute;t gỗ m&agrave;u trắng kem, t&acirc;m gỗ m&agrave;u từ n&acirc;u nhạt đến n&acirc;u socola, thường &aacute;nh t&iacute;m đỏ v&agrave; c&oacute; sọc đỏ hơn. &Oacute;c ch&oacute; c&oacute; thể được sấy hơi nước để l&agrave;m sậm m&agrave;u d&aacute;t gỗ hoặc kh&ocirc;ng sấy hơi nước. Nh&igrave;n chung, v&acirc;n gỗ thẳng nhưng đ&ocirc;i khi uốn s&oacute;ng hoặc cuộn xo&aacute;y tạo th&agrave;nh những đốm h&igrave;nh hấp dẫn v&agrave; đẹp nhất.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-oc-cho-walnut-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: V&acirc;n &amp; m&agrave;u sắc gỗ &oacute;c ch&oacute; Mỹ.</em></p>\n\n<p style=\"text-align:justify\">Đặc t&iacute;nh ứng dụng: &Oacute;c ch&oacute; dễ xử l&yacute; cả bằng dụng cụ cầm tay lẫn m&aacute;y m&oacute;c. Gỗ b&aacute;m đinh, &oacute;c v&iacute;t v&agrave; d&iacute;nh keo tốt, giữ sơn, m&agrave;u nhuộm rất tốt v&agrave; c&oacute; thể được đ&aacute;nh b&oacute;ng để th&agrave;nh th&agrave;nh phẩm tuyệt vời. Gỗ kh&ocirc; chậm v&agrave; người thao t&aacute;c cẩn thận trọng trong qu&aacute; tr&igrave;nh sấy kh&ocirc; để tr&aacute;ch việc gỗ bị xuống cấp. Gỗ ổn định tốt về k&iacute;ch thước.<br />\nĐặc t&iacute;nh vật l&yacute;: &Oacute;c cho l&agrave; loại gỗ rất cứng, mật độ hạt gỗ trung b&igrave;nh, sức chịu lực uốn xoắn v&agrave; lực n&eacute;n trung b&igrave;nh, độ chắc thấp, khả năng uốn cong bằng hơi nước tốt.</p>\n\n<p style=\"text-align:justify\">Độ kh&aacute;ng s&acirc;u ở t&acirc;m gỗ rất tốt, l&agrave; một trong những loại gỗ c&oacute; độ bền cao nhất ngay cả l&uacute;c ở trong những điều kiện dễ hư mục. D&aacute;t gỗ dễ bị c&aacute;c loại mọt tấn c&ocirc;ng.<br />\nC&ocirc;ng dụng ch&iacute;nh của nguy&ecirc;n liệu gỗ &oacute;c ch&oacute; Mỹ nhập khẩu thường được sử dụng để l&agrave;m: đồ gỗ, tủ, vật kiến tr&uacute;c nội thất, gỗ chạm cao cấp,cửa c&aacute;i, v&aacute;n s&agrave;n v&agrave; v&aacute;n l&oacute;t. Th&iacute;ch hợp để tạo sự tương phản với những loại gỗ c&oacute; m&agrave;u nhạt hơn.</p>\n\n<p style=\"text-align:justify\">Một số h&igrave;nh ảnh Cont gỗ &oacute;c ch&oacute; 8/4&Prime; 2C vừa về :</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-oc-cho-walnut-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh 1: Gỗ &oacute;c ch&oacute; Mỹ 8/4&Prime; 2C.</em></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-oc-cho-walnut-5.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh 2: Gỗ &oacute;c ch&oacute; Mỹ 8/4&Prime; loại 2C.</em></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-oc-cho-walnut-4.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh 3: Gỗ &oacute;c ch&oacute; Mỹ 8/4&Prime; loại 2C tr&ecirc;n cont.</em></p>\n\n<p style=\"text-align:justify\">Gỗ l&agrave; một nguy&ecirc;n liệu tự nhi&ecirc;n v&agrave; do ch&iacute;nh bản chất của n&oacute; n&ecirc;n c&oacute; c&aacute;c đặc điểm v&agrave; khuyết điểm ta cần nắm r&otilde;. V&igrave; vậy, người ti&ecirc;u d&ugrave;ng cũng như c&aacute;c nh&agrave; chế biến gỗ chuy&ecirc;n nghiệp n&ecirc;n l&agrave;m việc chặc chẽ với đầu mối cung cấp gỗ để đảm bảo rằng loại gỗ được đặt h&agrave;ng th&iacute;ch hợp cho những nhu cầu cụ thể của họ.</p>\n\n<p style=\"text-align:justify\">Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', '', '', '', NULL, 3, 1, '2018-01-12 10:11:22', '2018-01-20 18:58:27'),
(18, 'Gỗ sồi trắng Mỹ', 'go-soi-trang-my', 'conmochieu-1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">Gỗ Sồi Trắng Mỹ (American White Oak) Nguy&ecirc;n Liệu Nhập Khẩu Mỹ</p>\n\n<p style=\"text-align:justify\">Gỗ Sồi trắng Mỹ (American White Oak, Northern White Oak, Southern White Oak) c&oacute; mặt ở khắp miền Đ&ocirc;ng nước Mỹ. Sồi trắng gồm nhiều loại nhưng chỉ c&oacute; t&aacute;m loại đựơc thương mại h&oacute;a.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-my-1.jpeg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: C&acirc;y gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:justify\">M&agrave;u sắc v&agrave; h&igrave;nh d&aacute;ng của sồi Mỹ tương tự như sồi Ch&acirc;u &Acirc;u. D&aacute;t gỗ m&agrave;u nhạt, t&acirc;m gỗ từ n&acirc;u nhạt đến n&acirc;u sậm. Đa số sồi trắng c&oacute; v&acirc;n gỗ thẳng, mặt gỗ từ trung b&igrave;nh đến th&ocirc; với c&aacute;c tia gỗ d&agrave;i hơn sồi đỏ. V&igrave; vậy, sồi trắng c&oacute; nhiều đốm h&igrave;nh hơn.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-my-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: C&aacute;c kiện nguy&ecirc;n liệu gỗ sồi trắng 4/4&Prime;.&nbsp;</em></p>\n\n<p style=\"text-align:justify\">Tham khảo th&ecirc;m quy c&aacute;c gỗ sồi trắng Mỹ, Greenecolife Việt Nam nhập khẩu:</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng 4/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng 5/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng 6/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Gỗ sồi trắng 8/4&Prime;.</p>\n\n<p style=\"text-align:justify\">Đặc t&iacute;nh ứng dụng &amp; vật l&yacute;: Gỗ chịu m&aacute;y tốt, độ b&aacute;m đinh v&agrave; ốc v&iacute;t tốt, d&ugrave; phải khoan gỗ trước khi đ&oacute;ng đinh v&agrave; ốc. Gỗ phản ứng với sắt do đ&oacute; người thao t&aacute;c n&ecirc;n d&ugrave;ng đinh mạ kẽm. Độ b&aacute;m d&iacute;nh của gỗ thay đổi nhưng gỗ c&oacute; thể được nhuộm m&agrave;u v&agrave; đ&aacute;nh b&oacute;ng để trở th&agrave;nh th&agrave;nh phẩm tốt. Gỗ kh&ocirc; chậm n&ecirc;n người thao t&aacute;c cẩn thận để tr&aacute;nh nguy cơ rạn gỗ. V&igrave; độ co r&uacute;t lớn n&ecirc;n gỗ dễ biến dạng khi kh&ocirc;.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-my-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: C&aacute;c th&ocirc;ng số, chỉ số của gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:justify\">Gỗ cứng v&agrave; nặng, độ chịu lực uốn xoắn v&agrave; lực n&eacute;n trung b&igrave;nh, độ chắc thấp nhưng rất dễ uốn cong bằng hơi nước. Sồi trắng miền nam lớn nhanh hơn với c&aacute;c v&ograve;ng tuổi gỗ rộng, c&oacute; khuynh hướng cứng v&agrave; nặng hơn.</p>\n\n<p style=\"text-align:justify\">Độ bền: T&acirc;m gỗ c&oacute; khả năng kh&aacute;ng s&acirc;u, cực kỳ kh&ocirc;ng thấm chất bảo quản, d&aacute;t gỗ tương đối kh&ocirc;ng thấm chất n&agrave;y.</p>\n\n<p style=\"text-align:justify\">C&ocirc;ng dụng ch&iacute;nh: Đồ gỗ, v&aacute;n s&agrave;n, gỗ chạm kiến tr&uacute;c, gỗ chạm ngoại thất, gờ trang tr&iacute;, cửa c&aacute;i, tủ bếp, v&aacute;n l&oacute;t, t&agrave; vẹt đường sắt, cầu gỗ, v&aacute;n đ&oacute;ng th&ugrave;ng, quan t&agrave;i v&agrave; hộp đựng nữ trang.</p>\n\n<p style=\"text-align:justify\">M&agrave;u sắc, mặt gỗ, đặc t&iacute;nh v&agrave; đặc điểm của Sồi trắng c&oacute; thể thay đổi t&ugrave;y thuộc v&ugrave;ng trồng gỗ. V&igrave; vậy người ti&ecirc;u d&ugrave;ng cũng như c&aacute;c nh&agrave; chế biến gỗ chuy&ecirc;n nghiệp n&ecirc;n l&agrave;m việc chặt chẽ với đầu mối cung cấp gỗ để đảm bảo l&agrave; loại gỗ được đặt h&agrave;ng th&iacute;ch hợp cho những nhu cầu cụ thể của họ. Sồi trắng miền Bắc v&agrave; Sồi trắng miền Nam c&oacute; thể được b&agrave;y b&aacute;n ri&ecirc;ng biệt.</p>\n\n<p style=\"text-align:justify\">Một số h&igrave;nh ảnh sản phẩm nội thất bằng gỗ sồi trắng Mỹ:Những th&ocirc;ng tin kh&aacute;c</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-my-4.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: bộ b&agrave;n ghế gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-trang-my-5.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Nội thất ph&ograve;ng kh&aacute;ch gỗ sồi trắng Mỹ.</em></p>\n\n<p style=\"text-align:justify\">M&agrave;u sồi trắng thường rất đồng đều giữa c&aacute;c loại miền Bắc Mỹ đến miền Nam Mỹ. Một số khu vực v&ugrave;ng n&uacute;i Appalachian sản xuất c&aacute;c biến thể c&oacute; đốm s&acirc;u cao v&agrave; được b&aacute;n theo loại c&oacute; đốm s&acirc;u tố (Sound Wormy). C&aacute;c nguy&ecirc;n tắc của NHLA chấp nhận kh&ocirc;ng giới hạn d&aacute;t gỗ, nhưng thường được ph&acirc;n loại với tối thiểu một mặt t&acirc;m gỗ để xuất khẩu. N&ecirc;n tham khảo nh&agrave; cung cấp vể quy chuẩn xếp hạng của họ cho d&aacute;t gỗ.</p>\n\n<p style=\"text-align:justify\">Sồi trắng Mỹ được sử dụng rộng r&atilde;i tr&ecirc;n thế giới v&agrave; bổ sung cho gỗ sồi ch&acirc;u &Acirc;u, m&agrave;u sắc nhất qu&aacute;n v&agrave; khối lượng sản xuất ph&aacute;ch gỗ vạt g&oacute;c vu&ocirc;ng lớn gi&uacute;p sồi trắng Mỹ l&agrave; chọn lựa h&agrave;ng đầu cho nhiều nh&agrave; sản xuất đồ nội thất, v&aacute;n s&agrave;n v&agrave; đồ gỗ trang tr&iacute;.</p>\n\n<p style=\"text-align:justify\">Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', '', '', '', 2, 4, 1, '2018-01-12 10:15:38', '2018-01-20 04:04:56'),
(19, 'Gỗ sồi chất lượng cao được sử dụng', 'go-soi-chat-luong-cao-duoc-su-dung', 'conmochieu-2.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>Với xu hướng hiện nay th&igrave; nguy&ecirc;n liệu gỗ Sồi , gỗ &oacute;c ch&oacute; nhập khẩu để thiết kế đồ nội thất đang được thịnh h&agrave;nh, v&igrave; đơn giản gỗ Sồi đ&atilde; c&oacute; vẻ đẹp ri&ecirc;ng của n&oacute;, n&ecirc;n chỉ cần biết c&aacute;ch phối v&agrave; chọn lựa mẫu m&atilde; đảm bảo sẽ mang tới kh&ocirc;ng gian ho&agrave;n hảo. Gỗ sồi chất lượng cao c&oacute; xuất xứ từ Bắc Mỹ, mang m&agrave;u sắc v&agrave;ng lợt thuộc t&ocirc;ng m&agrave;u s&aacute;ng nhẹ rất dễ phối với mọi đồ nội thất trong nh&agrave;. C&aacute;c sản phẩm được sản xuất từ Gỗ sồi chất lượng cao lu&ocirc;n tạo cảm gi&aacute;c cho ng&ocirc;i nh&agrave; h&agrave;i h&ograve;a với &aacute;nh s&aacute;ng tự nhi&ecirc;n, trẻ trung, ấm c&uacute;ng v&agrave; hiện đại.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-chat-luong-cao-1.jpg\" /></p>\n\n<p>C&aacute;c sản phẩm nội thất được l&agrave;m bằng Gỗ sồi chất lượng cao lu&ocirc;n tạo cho căn ph&ograve;ng h&agrave;i h&ograve;a với &aacute;nh s&aacute;ng tự nhi&ecirc;n, trẻ trung, ấm c&uacute;ng v&agrave; hiện đại&hellip; Đặc biệt hơn nữa l&agrave; loại gỗ n&agrave;y c&oacute; thể tr&aacute;nh được muỗi v&agrave; c&ocirc;n tr&ugrave;ng, kh&ocirc;ng bị mối mọt ph&aacute; hoại. gỗ sồi c&oacute; độ chống thấm rất tốt, đường v&acirc;n gỗ đa dạng v&agrave; đẹp hơn, v&igrave; vậy gỗ sồi rất th&iacute;ch hợp cho việc sản xuất đồ gỗ với những v&acirc;n hoa đẹp. Gỗ sồi cứng v&agrave; nặng, chịu lực n&eacute;n tốt, t&acirc;m gỗ c&oacute; khả năng kh&aacute;ng s&acirc;u, cực kỳ kh&ocirc;ng thấm chất bảo quản.</p>\n\n<p>Gỗ sồi c&oacute; xu hướng phản ứng với sắt v&agrave; điều n&agrave;y c&oacute; thể nhanh ch&oacute;ng l&agrave;m hư hỏng một phần của đồ nội thất, mặc d&ugrave; điều n&agrave;y c&oacute; thể tr&aacute;nh được bằng c&aacute;ch sử dụng đinh v&iacute;t mạ kẽm. Hầu hết những đồ nội thất gỗ &oacute;c ch&oacute; b&aacute;n sẵn ng&agrave;y nay đều sử dụng đinh ghim, ốc v&iacute;t, một số nơi c&ograve;n sử dụng ch&uacute;ng ngay cả ở những phần quan trọng. Những h&atilde;ng nội thất uy t&iacute;n kh&ocirc;ng sử dụng đinh ghim hay ốc v&iacute;t ở tất cả mọi chỗ, họ sử dụng c&aacute;c mộng gỗ một c&aacute;ch ch&iacute;nh x&aacute;c để r&aacute;p c&aacute;c bộ phận của đồ nội thất lại với nhau, đinh ghim v&agrave; ốc v&iacute;t chỉ để gia cố th&ecirc;m.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-chat-luong-cao-2.jpg\" /></p>\n\n<p>Nội thất gỗ sồi chất lượng cao c&oacute; thể sử dụng từ 15 năm đến 20 năm t&ugrave;y theo qu&aacute; tr&igrave;nh sử dụng v&agrave; c&aacute;ch bảo quản của người d&ugrave;ng. &Ocirc;ng cha ta c&oacute; c&acirc;u &ldquo;của bền tại người&rdquo; n&ecirc;n nếu muốn sử dụng đồ nội thất gỗ sồi nhập khẩu cao cấp hay bất cứ loại gỗ n&agrave;o kh&aacute;c d&agrave;i l&acirc;u đ&ograve;i hỏi gia chủ cần phải sử dụng hợp l&yacute;, biết c&aacute;ch bảo quản v&agrave; vệ sinh thường xuy&ecirc;n.</p>\n\n<p>Thuộc v&agrave;o d&ograve;ng gỗ tự nhi&ecirc;n n&ecirc;n nội thất Gỗ sồi chất lượng cao, nội thất gỗ &oacute;c ch&oacute; chất lượng kh&ocirc;ng thể tr&aacute;nh khỏi được việc thấm nước, nấm mốc, hay mối tấn c&ocirc;ng&hellip; khi ở trong điều kiện m&ocirc;i trường kh&ocirc;ng l&yacute; tưởng l&acirc;u ng&agrave;y.</p>\n\n<p>Ch&iacute;nh v&igrave; thế, khi lựa chọn nội thất Gỗ sồi chất lượng cao th&igrave; bạn n&ecirc;n ch&uacute; &yacute; vệ sinh thường xuy&ecirc;n v&agrave; phun thuốc chống mối để c&oacute; thể sử dụng sản phẩm l&acirc;u d&agrave;i.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/go-soi-chat-luong-cao-3.jpg\" /></p>\n\n<p>L&agrave; một đơn vị c&oacute; bề d&agrave;y uy t&iacute;n, c&oacute; nhiều kinh nghiệm hoạt động trong lĩnh vực tư vấn thiết kế v&agrave; thi c&ocirc;ng kiến tr&uacute;c nội ngoại thất c&ocirc;ng tr&igrave;nh từ nhiều năm nay với thế mạnh chủ lực l&agrave; Tư vấn thiết kế v&agrave; Thi c&ocirc;ng c&aacute;c sản phẩm nội thất gỗ &oacute;c ch&oacute; cao cấp nhập khẩu, nội thất gỗ tần b&igrave; chất lượng. Ngo&agrave;i ra ch&uacute;ng t&ocirc;i c&ograve;n &ldquo;Cung cấp mua b&aacute;n gỗ Sồi nhập khẩu, gỗ nguy&ecirc;n liệu, bao gồm gỗ Tần B&igrave;, gỗ &Oacute;c Ch&oacute;, gỗ Sồi, c&aacute;c gỗ loại nh&oacute;m 4, gỗ được nhập từ Mỹ v&agrave; Ch&acirc;u &Acirc;u ( Li&ecirc;n hệ để c&oacute; gi&aacute; tốt nhất ) 0902 90 74 75&rdquo;.</p>', '', '', '', 6, 5, 1, '2018-01-12 10:17:58', '2018-01-20 04:05:07');
INSERT INTO `article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(20, 'Bộ sưu tập nội thất gỗ sồi của UMA', 'bo-suu-tap-noi-that-go-soi-cua-uma', 'conmochieu-3.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">Nh&agrave; thiết kế Joachim v&agrave; Erik theo đuổi dự &aacute;n thiết kế b&agrave;n ghế ph&ograve;ng ăn, kệ tủ gỗ sồi tại Việt Nam trong suốt nhiều năm.</p>\n\n<p style=\"text-align:justify\">Gỗ sồi vốn được ưa chuộng trong ng&agrave;nh c&ocirc;ng nghiệp nội thất nhờ độ bền vững, vẻ đẹp l&acirc;u d&agrave;i với thời gian. C&aacute;c bộ phận l&agrave;m bằng gỗ sồi l&agrave; phần cứng c&aacute;p nhất, c&oacute; thể chịu đựng mối mọt v&agrave; nấm mốc qua h&agrave;ng ngh&igrave;n năm. Nhờ lợi thế n&agrave;y m&agrave; sồi được ứng dụng rộng r&atilde;i trong nhiều phong c&aacute;ch nội thất kh&aacute;c nhau. Đ&acirc;y cũng l&agrave; l&yacute; do để nh&agrave; thiết kế người Ph&aacute;p Joachim Poirier chọn sồi l&agrave;m nguy&ecirc;n liệu bắt đầu dự &aacute;n s&aacute;ng tạo của m&igrave;nh tại si&ecirc;u thị nội thất v&agrave; trang tr&iacute; UMA (Việt Nam).</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/bo-suu-tap-1.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Erik (tr&aacute;i) v&agrave; Joachim (phải) l&agrave; 2 nh&agrave; thiết kế nội thất trẻ tuổi v&agrave; t&agrave;i năng.</em></p>\n\n<p style=\"text-align:justify\">Điểm nhấn của dự &aacute;n Cobra ch&iacute;nh l&agrave; bộ b&agrave;n ghế ph&ograve;ng ăn v&agrave; kệ tủ l&agrave;m từ gỗ sồi chắc chắn, thiết kế kh&aacute;c biệt.</p>\n\n<p style=\"text-align:justify\">Joachim tận dụng tối đa đường n&eacute;t tự nhi&ecirc;n của từng thớ gỗ khi thiết kế, nhằm tăng cường vẻ đẹp tự nhi&ecirc;n cho bộ sưu tập Cobra. Lấy cảm hứng từ phong c&aacute;ch v&ugrave;ng Scandinavian, Joachim thổi th&ecirc;m hơi thở thanh lịch, hiện đại v&agrave;o từng m&oacute;n đồ, t&iacute;nh to&aacute;n hợp l&yacute; mọi yếu tố nhỏ, tạo n&ecirc;n thế c&acirc;n bằng giữa c&aacute;c đường n&eacute;t.Th&aacute;ng 9/2013, dự &aacute;n mang t&ecirc;n Cobra ch&iacute;nh thức khởi động. Joachim mất nhiều đ&ecirc;m trăn trở c&aacute;ch l&agrave;m sao khiến cho phong c&aacute;ch nội thất v&ugrave;ng Scandinavian (Bắc &Acirc;u) trở n&ecirc;n ph&ugrave; hợp với văn h&oacute;a Việt Nam. D&ugrave; gặp kh&oacute; khăn, nhưng dự &aacute;n vẫn ho&agrave;n th&agrave;nh tốt đẹp sau một năm r&ograve;ng r&atilde; nhờ t&acirc;m huyết của cả đội ngũ.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/bo-suu-tap-2.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Nội thất &nbsp;bộ ghế Cobra qu&acirc;y quanh chiếc b&agrave;n elip bằng gỗ sồi.</em></p>\n\n<p style=\"text-align:justify\">Tuy nhi&ecirc;n chất liệu sồi chuy&ecirc;n d&ugrave;ng cho nội thất cao cấp, sẽ khiến gi&aacute; th&agrave;nh cuối c&ugrave;ng của sản phẩm sẽ đắt đỏ. &ldquo;Phải l&agrave;m sao để gi&aacute; th&agrave;nh nằm trong ngưỡng chấp nhận được, thật nhiều người c&oacute; thể trải nghiệm được vẻ đẹp v&agrave; độ bền của sồi&rdquo; l&agrave; c&acirc;u hỏi m&agrave; Jan-Erik Svensson &ndash; Gi&aacute;m đốc ph&aacute;t triển ng&agrave;nh h&agrave;ng đỗ nội thất gỗ UMA, cũng l&agrave; th&agrave;nh vi&ecirc;n trong nh&oacute;m dự &aacute;n Cobra trăn trở. Nh&agrave; thiết kế cắt giảm c&aacute;c yếu tố phụ th&ecirc;m, chỉ tập trung v&agrave;o chức năng. V&iacute; dụ như chiếc ghế ăn Cobra với phần lưng v&agrave; ch&acirc;n sau gắn liền th&agrave;nh một khối. Joachim muốn thiết kế một chiếc ghế mộc mạc v&agrave; đơn giản, l&agrave; nơi để gia đ&igrave;nh v&agrave; bạn b&egrave; d&agrave;nh thời gian cho nhau. S&aacute;nh đ&ocirc;i b&ecirc;n những chiếc ghế sồi chắc chắn l&agrave; b&agrave;n ăn h&igrave;nh elip, tạo th&ecirc;m kh&ocirc;ng kh&iacute; gần gũi khi mọi người qu&acirc;y quần trong bữa cơm.</p>\n\n<p style=\"text-align:justify\">Sau một năm thiết kế, t&igrave;m kiếm v&agrave; thỏa thuận th&agrave;nh c&ocirc;ng với nh&agrave; sản xuất, từng m&oacute;n đồ nội thất Cobra được ho&agrave;n thiện v&agrave; ph&acirc;n phối tr&ecirc;n to&agrave;n quốc với gi&aacute; th&agrave;nh ph&ugrave; hợp t&uacute;i tiền nhiều gia đ&igrave;nh Việt Nam. Erik chia sẻ: &ldquo;T&ocirc;i nhớ lại cảm x&uacute;c l&uacute;c ấy, vừa h&agrave;o hứng vừa hồi hộp, v&igrave; e rằng kết quả kh&ocirc;ng như mong đợi. Thực tế, Cobra l&agrave; bộ sưu tập sản phẩm chất lượng cao với gi&aacute; cả phải chăng&rdquo;.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/bo-suu-tap-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh: Bộ sưu tập nội thất ph&ograve;ng ăn Attila với khoảng 10 sản phẩm.</em></p>\n\n<p style=\"text-align:justify\">Trước đ&oacute;, cả hai cũng thử th&aacute;ch m&igrave;nh trong một dự &aacute;n kh&aacute;c về gỗ sồi, mang t&ecirc;n Attila với khoảng 10 sản phẩm.<br />\nBộ sưu tập n&agrave;y khởi động sớm hơn cả Cobra, song đến năm 2015 mới ra mắt do y&ecirc;u cầu x&acirc;y dựng bộ nội thất ph&ograve;ng ăn phức tạp. Cả 2 dự &aacute;n đều th&agrave;nh c&ocirc;ng ngo&agrave;i mong đợi, được mệnh danh l&agrave; những m&oacute;n đồ nội thất c&oacute; gi&aacute; trị ngh&igrave;n đời của UMA. Joachim v&agrave; Erik đ&atilde; bắt tay thực hiện c&aacute;c &yacute; tưởng thiết kế bộ sưu tập nội thất gỗ sồi Cobra. Họ kết hợp phong c&aacute;ch Bắc &Acirc;u với văn h&oacute;a Việt Nam, s&aacute;ng tạo v&agrave; đảm bảo chất lượng sản phẩm vượt tr&ecirc;n cả kỳ vọng.</p>', '', '', '', 13, 6, 1, '2018-01-12 10:20:06', '2018-01-22 08:43:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article_category`
--

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id` bigint(20) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`, `created_at`, `updated_at`) VALUES
(19, 11, 5, '2018-01-03 07:45:23', '2018-01-03 07:45:23'),
(22, 14, 5, '2018-01-03 07:52:45', '2018-01-03 07:52:45'),
(25, 7, 5, '2018-01-12 09:24:57', '2018-01-12 09:24:57'),
(26, 15, 5, '2018-01-12 10:01:42', '2018-01-12 10:01:42'),
(28, 17, 5, '2018-01-12 10:11:22', '2018-01-12 10:11:22'),
(29, 18, 5, '2018-01-12 10:15:38', '2018-01-12 10:15:38'),
(30, 19, 5, '2018-01-12 10:17:58', '2018-01-12 10:17:58'),
(31, 20, 5, '2018-01-12 10:20:06', '2018-01-12 10:20:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `alt` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `category_id`, `caption`, `alt`, `image`, `page_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bé đón giáng sinh', 'bé đón giáng sinh 1', 's1.jpg', 'https://www.hdwallpapers.in', 1, 1, '2017-12-16 05:03:34', '2018-01-18 07:22:24'),
(2, 1, 'Khi trẻ cười', 'khi trẻ cười 2', 's2.jpg', 'cloudbeauty.vn', 2, 1, '2017-12-16 05:04:04', '2018-01-18 07:22:30'),
(3, 2, '', '', 'member-1.png', '', 1, 1, '2017-12-28 02:38:24', '2017-12-28 02:40:03'),
(4, 2, '', '', 'member-2.png', '', 2, 1, '2017-12-28 02:38:40', '2017-12-28 02:40:03'),
(5, 2, '', '', 'member-3.png', '', 3, 1, '2017-12-28 02:38:51', '2017-12-28 02:40:07'),
(6, 2, '', '', 'member-4.png', '', 4, 1, '2017-12-28 02:38:59', '2017-12-28 02:40:03'),
(7, 2, '', '', 'member-5.png', '', 5, 1, '2017-12-28 02:39:08', '2017-12-28 02:40:03'),
(8, 2, '', '', 'member-6.png', '', 6, 1, '2017-12-28 02:39:19', '2017-12-28 02:40:03'),
(9, 2, '', '', 'member-7.png', '', 7, 1, '2017-12-28 02:39:28', '2017-12-28 02:40:03'),
(10, 3, 'caption 1', 'alt 1', 'advertising-article-1.png', 'http://greenecolife.vn/', 1, 1, '2018-01-15 04:22:46', '2018-01-15 05:10:19'),
(11, 3, 'caption 2', 'alt 2', 'advertising-article-2.png', 'http://greenecolife.vn/', 2, 1, '2018-01-15 04:58:40', '2018-01-15 05:10:28'),
(13, 4, 'caption 5', 'alt 5', 'advertising-product-2.png', 'http://greenecolife.vn/', 1, 1, '2018-01-15 05:22:17', '2018-01-15 05:22:26'),
(14, 1, 'test 1', 'test 1', 's3.jpg', 'http://magiwan.vn/', 3, 1, '2018-01-18 07:23:11', '2018-01-18 07:23:11'),
(15, 2, '', '', 'partner-1.png', '', 8, 1, '2018-01-20 04:26:00', '2018-01-20 04:26:00'),
(16, 2, '', '', 'partner-2.png', '', 9, 1, '2018-01-20 04:26:06', '2018-01-20 04:26:06'),
(17, 2, '', '', 'partner-3.png', '', 10, 1, '2018-01-20 04:26:14', '2018-01-20 04:26:14'),
(18, 2, '', '', 'partner-4.png', '', 11, 1, '2018-01-20 04:26:23', '2018-01-20 04:26:23'),
(19, 2, '', '', 'partner-5.png', '', 12, 1, '2018-01-20 04:26:32', '2018-01-20 04:26:32'),
(20, 2, '', '', 'partner-6.png', '', 13, 1, '2018-01-20 04:26:43', '2018-01-20 04:26:43'),
(21, 2, '', '', 'partner-7.png', '', 14, 1, '2018-01-20 04:26:54', '2018-01-20 04:27:02'),
(22, 2, '', '', 'partner-8.png', '', 15, 1, '2018-01-20 04:27:12', '2018-01-20 04:27:12'),
(23, 2, '', '', 'partner-9.png', '', 16, 1, '2018-01-20 04:27:20', '2018-01-20 04:27:20'),
(24, 2, '', '', 'partner-10.png', '', 17, 1, '2018-01-20 04:27:28', '2018-01-20 04:27:28'),
(25, 2, '', '', 'partner-11.png', '', 19, 1, '2018-01-20 04:27:38', '2018-01-20 04:27:38'),
(26, 2, '', '', 'partner-12.png', '', 20, 1, '2018-01-20 04:27:50', '2018-01-20 04:27:50'),
(27, 2, '', '', 'partner-13.png', '', 21, 1, '2018-01-20 04:28:00', '2018-01-20 04:28:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_article`
--

DROP TABLE IF EXISTS `category_article`;
CREATE TABLE `category_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_article`
--

INSERT INTO `category_article` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Tin dự án', 'metakeyword Tin dự án', 'metadescription Tin dự án', 'tin-du-an', 0, 'conmochieu-5.png', 1, 1, '2017-12-18 02:17:10', '2018-01-21 04:17:11'),
(5, 'Tin bất động sản', 'metakeword Ngành gỗ', 'metadescription Ngành gỗ', 'tin-bat-dong-san', 0, 'conmochieu-6.png', 2, 1, '2017-12-18 02:17:19', '2018-01-21 04:17:40'),
(6, 'Thị trường', 'metakeyword Thị trường', 'metadescription Thị trường', 'thi-truong', 0, 'conmochieu-7.png', 3, 1, '2018-01-21 04:18:17', '2018-01-21 04:18:17'),
(7, 'Tư vấn', 'metakeyword Tư vấn', 'metadescription Tư vấn', 'tu-van', 0, 'conmochieu-8.png', 4, 1, '2018-01-21 04:18:43', '2018-01-21 04:18:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_banner`
--

DROP TABLE IF EXISTS `category_banner`;
CREATE TABLE `category_banner` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_banner`
--

INSERT INTO `category_banner` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Slideshow', 'slideshow', 1, 1, '2017-12-16 05:02:58', '2017-12-28 08:45:44'),
(2, 'Đối tác', 'doi-tac', 1, 2, '2017-12-26 04:32:09', '2017-12-26 04:38:35'),
(3, 'Quảng cáo bài viết', 'advertising-article-widget', 1, 3, '2018-01-15 04:22:00', '2018-01-15 04:22:05'),
(4, 'Quảng cáo sản phẩm', 'advertising-product-widget', 1, 4, '2018-01-15 05:18:53', '2018-01-15 05:18:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_param`
--

DROP TABLE IF EXISTS `category_param`;
CREATE TABLE `category_param` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `param_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_param`
--

INSERT INTO `category_param` (`id`, `fullname`, `alias`, `parent_id`, `param_value`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Xuất xứ', 'xuat-xu', 0, '', 1, 1, '2018-02-01 20:40:54', '2018-02-02 01:34:27'),
(5, 'Nhật', 'nhat', 1, '', 1, 1, '2018-02-01 20:46:48', '2018-02-02 01:40:43'),
(9, 'Thương hiệu', 'thuong-hieu', 0, '', 2, 1, '2018-02-02 01:38:44', '2018-02-02 01:38:48'),
(10, 'Mỹ', 'my', 1, '', 2, 1, '2018-02-02 01:39:59', '2018-02-02 01:39:59'),
(11, 'Hàn Quốc', 'han-quoc', 1, '', 3, 1, '2018-02-02 01:40:14', '2018-02-02 01:40:14'),
(12, 'Trung Quốc', 'trung-quoc', 1, '', 4, 1, '2018-02-02 01:40:27', '2018-02-02 01:40:30'),
(13, 'Nike', 'nike', 9, '', 9, 1, '2018-02-02 01:41:04', '2018-02-02 01:44:02'),
(14, 'Adidas', 'adidas', 9, '', 2, 1, '2018-02-02 01:41:32', '2018-02-02 01:44:02'),
(15, 'Jordan', 'jordan', 9, '', 4, 1, '2018-02-02 01:41:45', '2018-02-02 01:44:02'),
(16, 'Converse', 'converse', 9, '', 5, 1, '2018-02-02 01:42:53', '2018-02-02 01:44:02'),
(17, 'Reebok', 'reebok', 9, '', 6, 1, '2018-02-02 01:43:05', '2018-02-02 01:44:02'),
(18, 'Vans', 'vans', 9, '', 7, 1, '2018-02-02 01:43:17', '2018-02-02 01:44:02'),
(19, 'Under Armour', 'under-armour', 9, '', 8, 1, '2018-02-02 01:43:26', '2018-02-02 01:44:02'),
(20, 'Puma', 'puma', 9, '', 1, 1, '2018-02-02 01:43:34', '2018-02-02 01:43:34'),
(21, 'New Balance', 'new-balance', 9, '', 3, 1, '2018-02-02 01:43:49', '2018-02-02 01:44:02'),
(22, 'Đơn vị', 'don-vi', 0, '', 3, 1, '2018-02-02 01:44:45', '2018-02-02 01:45:02'),
(23, 'Chiếc', 'chiec', 22, '', 1, 1, '2018-02-02 01:45:15', '2018-02-02 01:45:15'),
(24, 'Bịch', 'bich', 22, '', 1, 1, '2018-02-02 01:45:25', '2018-02-02 01:45:25'),
(25, 'Lọ', 'lo', 22, '', 1, 1, '2018-02-02 01:45:34', '2018-02-02 01:45:34'),
(26, 'Lô hàng', 'lo-hang', 22, '', 1, 1, '2018-02-02 01:46:20', '2018-02-02 01:46:20'),
(27, 'Màu', 'mau', 0, '', 4, 1, '2018-02-02 01:47:29', '2018-02-02 01:47:29'),
(28, 'Xanh lá cây', 'xanh-la-cay', 27, '#00c60e', 5, 1, '2018-02-02 01:48:01', '2018-02-02 01:51:22'),
(29, 'Đỏ', 'do', 27, '#c60000', 4, 1, '2018-02-02 01:48:22', '2018-02-02 01:51:22'),
(30, 'Tím', 'tim', 27, '#8c00c6', 3, 1, '2018-02-02 01:48:45', '2018-02-02 01:51:22'),
(31, 'Vàng', 'vang', 27, '#e6e900', 2, 1, '2018-02-02 01:49:17', '2018-02-02 01:51:22'),
(32, 'Hồng', 'hong', 27, '#ff00e4', 1, 1, '2018-02-02 01:49:49', '2018-02-02 01:51:22'),
(33, 'Bạc', 'bac', 27, '#e8d65d', 6, 1, '2018-02-02 01:51:00', '2018-02-02 01:51:22'),
(34, 'Kích thước', 'kich-thuoc', 0, '1', 5, 1, '2018-02-02 04:24:15', '2018-02-02 04:24:23'),
(35, 'S', 's', 34, '', 1, 1, '2018-02-02 04:24:40', '2018-02-02 04:24:40'),
(36, 'M', 'm', 34, '', 2, 1, '2018-02-02 04:24:54', '2018-02-02 04:25:48'),
(37, 'L', 'l', 34, '', 3, 1, '2018-02-02 04:25:02', '2018-02-02 04:25:48'),
(38, 'XL', 'xl', 34, '', 4, 1, '2018-02-02 04:25:11', '2018-02-02 04:25:48'),
(39, 'XS', 'xs', 34, '', 5, 1, '2018-02-02 04:25:21', '2018-02-02 04:25:48'),
(40, 'REN', 'ren', 9, '', 1, 1, '2018-02-03 04:15:08', '2018-02-03 04:15:08'),
(41, 'NOSBYN', 'nosbyn', 9, '', 1, 1, '2018-02-03 04:15:24', '2018-02-03 04:15:24'),
(42, 'THE BLUE T-SHIRT', 'the-blue-t-shirt', 9, '', 1, 1, '2018-02-03 04:15:38', '2018-02-03 04:15:38'),
(43, 'COCOSIN', 'cocosin', 9, '', 1, 1, '2018-02-03 04:15:53', '2018-02-03 04:15:53'),
(44, 'WEPHOBIA', 'wephobia', 9, '', 1, 1, '2018-02-03 04:16:05', '2018-02-03 04:16:05'),
(45, 'MAGONN', 'magonn', 9, '', 1, 1, '2018-02-03 04:16:21', '2018-02-03 04:16:21'),
(46, 'LIBE', 'libe', 9, '', 1, 1, '2018-02-03 04:16:33', '2018-02-03 04:16:33'),
(47, 'Chất liệu', 'chat-lieu', 0, '', 6, 1, '2018-02-03 11:34:21', '2018-02-03 11:34:29'),
(48, 'Thun', 'thun', 47, '', 2, 1, '2018-02-03 11:34:43', '2018-02-03 11:35:29'),
(49, 'Vải', 'vai', 47, '', 1, 1, '2018-02-03 11:34:53', '2018-02-03 11:35:29'),
(50, 'Nhà thiết kế', 'nha-thiet-ke', 0, '', 7, 1, '2018-02-03 11:36:34', '2018-02-03 11:36:34'),
(51, 'Clara Fashion', 'clara-fashion', 50, '', 1, 1, '2018-02-03 11:36:54', '2018-02-03 11:36:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại - Máy tính', 'metakeyword Gỗ óc chó', 'metadescription Gỗ óc chó', 'dien-thoai-may-tinh', NULL, 1, 0, 1, '2018-01-02 05:00:16', '2018-01-26 01:46:59'),
(2, 'Thời trang nữ', 'metakeyword Gỗ sồi', 'metadescription Gỗ sồi', 'thoi-trang-nu', NULL, 1, 0, 2, '2018-01-02 05:00:28', '2018-01-26 01:46:48'),
(3, 'Thời trang nam', 'metakeyword Gỗ tần bì', 'metadescription Gỗ tần bì', 'thoi-trang-nam', NULL, 1, 0, 3, '2018-01-02 05:00:37', '2018-01-26 01:47:11'),
(4, 'Giày dép - Túi xách', 'metakeyword Sàn gỗ', 'metadescription Sàn gỗ', 'giay-dep-tui-xach', NULL, 1, 0, 4, '2018-01-10 10:03:19', '2018-01-26 01:47:52'),
(5, 'Phụ kiện số - Camera', '', '', 'phu-kien-so-camera', NULL, 1, 0, 5, '2018-01-26 01:49:02', '2018-01-26 01:49:02'),
(6, 'Mẹ bé - Đồ chơi', '', '', 'me-be-do-choi', NULL, 1, 0, 6, '2018-01-26 01:49:20', '2018-01-26 01:52:47'),
(7, 'Đồng hồ - Phụ kiện', '', '', 'dong-ho-phu-kien', NULL, 1, 0, 7, '2018-01-26 01:49:42', '2018-01-26 01:55:02'),
(8, 'Nhà cửa - Tân trang nhà', '', '', 'nha-cua-tan-trang-nha', NULL, 1, 0, 8, '2018-01-26 01:55:28', '2018-01-26 01:55:28'),
(9, 'Sức khoẻ - Sắc đẹp', '', '', 'suc-khoe-sac-dep', NULL, 1, 0, 9, '2018-01-26 01:55:51', '2018-01-26 01:55:51'),
(10, 'Tivi - Thiết bị âm thanh', '', '', 'tivi-thiet-bi-am-thanh', NULL, 1, 0, 10, '2018-01-26 01:56:07', '2018-01-26 01:56:12'),
(11, 'Ô tô - Xe máy - Thể thao', '', '', 'o-to-xe-may-the-thao', NULL, 1, 0, 11, '2018-01-26 01:56:44', '2018-01-26 01:56:44'),
(12, 'Điện thoại mới', 'metakeyword Điện thoại mới', 'metadescription Điện thoại mới', 'dien-thoai-moi', NULL, 1, 1, 1, '2018-02-01 03:00:35', '2018-02-01 03:05:54'),
(13, 'Điện thoại cũ', 'metakeyword Điện thoại cũ', 'metadescription Điện thoại cũ', 'dien-thoai-cu', NULL, 1, 1, 2, '2018-02-01 03:04:34', '2018-02-01 03:04:34'),
(14, 'Laptop', 'metakeyword laptop', 'metadescription laptop', 'laptop', NULL, 1, 1, 3, '2018-02-01 03:05:37', '2018-02-01 03:05:54'),
(15, 'Máy tính bảng', 'metakeyword Máy tính bảng', 'metadescription Máy tính bảng', 'may-tinh-bang', NULL, 1, 1, 4, '2018-02-01 03:06:32', '2018-02-01 03:06:32'),
(16, 'Máy tính để bàn', 'metakeyword Máy tính để bàn', 'metadescription Máy tính để bàn', 'may-tinh-de-ban', NULL, 1, 1, 5, '2018-02-01 03:07:07', '2018-02-01 03:07:56'),
(17, 'Máy in và phụ kiện', 'metakeyword Máy in và phụ kiện', 'metadescription Máy in và phụ kiện', 'may-in-va-phu-kien', NULL, 1, 1, 6, '2018-02-01 03:07:37', '2018-02-01 03:07:56'),
(18, 'Chuột bàn phím', 'metakeyword Chuột bàn phím', 'metadescription Chuột bàn phím', 'chuot-ban-phim', NULL, 1, 1, 7, '2018-02-01 03:08:45', '2018-02-01 03:08:45'),
(19, 'Linh kiện máy tính - Laptop', 'metakeyword Linh kiện máy tính - Laptop', 'metadescription Linh kiện máy tính - Laptop', 'linh-kien-may-tinh-laptop', NULL, 1, 1, 8, '2018-02-01 03:09:25', '2018-02-01 03:09:25'),
(20, 'Card màn hình', 'metakeyword Card màn hình', 'metadescription Card màn hình', 'card-man-hinh', NULL, 1, 19, 1, '2018-02-01 03:10:17', '2018-02-01 03:10:17'),
(21, 'Ổ cứng gắn trong', 'metakeyword Ổ cứng gắn trong', 'metadescription Ổ cứng gắn trong', 'o-cung-gan-trong', NULL, 1, 19, 2, '2018-02-01 03:10:44', '2018-02-01 03:10:44'),
(22, 'Ram máy tính', 'metakeyword Ram máy tính', 'metadescription Ram máy tính', 'ram-may-tinh', NULL, 1, 19, 3, '2018-02-01 03:11:14', '2018-02-01 03:11:14'),
(23, 'Phụ kiện máy tính laptop', 'metakeyword Phụ kiện máy tính laptop', 'metadescription Phụ kiện máy tính laptop', 'phu-kien-may-tinh-laptop', NULL, 1, 1, 9, '2018-02-01 03:11:59', '2018-02-01 03:11:59'),
(24, 'Đế tản nhiệt laptop', 'metakeyword Đế tản nhiệt laptop', 'metadescription Đế tản nhiệt laptop', 'de-tan-nhiet-laptop', NULL, 1, 23, 1, '2018-02-01 03:12:37', '2018-02-01 03:12:37'),
(25, 'Sạc laptop', 'metakeyword Sạc laptop', 'metadescription Sạc laptop', 'sac-laptop', NULL, 1, 23, 2, '2018-02-01 03:13:05', '2018-02-01 03:13:05'),
(26, 'Pin laptop', 'metakeyword Pin laptop', 'metadescription Pin laptop', 'pin-laptop', NULL, 1, 23, 3, '2018-02-01 03:13:36', '2018-02-01 03:13:43'),
(27, 'Máy chiếu và phụ kiện', 'metakeyword Máy chiếu và phụ kiện', 'metadescription Máy chiếu và phụ kiện', 'may-chieu-va-phu-kien', NULL, 1, 1, 10, '2018-02-01 03:14:30', '2018-02-01 03:14:38'),
(28, 'Phần mềm máy tính', 'metakeyword Phần mềm máy tính', 'metadescription Phần mềm máy tính', 'phan-mem-may-tinh', NULL, 1, 1, 11, '2018-02-01 03:15:15', '2018-02-01 03:15:15'),
(29, 'Thời trang thiết kế', 'metakeyword Thời trang thiết kế', 'metadescription Thời trang thiết kế', 'thoi-trang-thiet-ke', NULL, 1, 2, 1, '2018-02-01 03:19:13', '2018-02-01 03:19:13'),
(30, 'Set trang phục - Jumbsuit', 'metakeyword Set trang phục - Jumbsuit', 'metadescription Set trang phục - Jumbsuit', 'set-trang-phuc-jumbsuit', NULL, 1, 2, 2, '2018-02-01 03:20:04', '2018-02-01 03:20:04'),
(31, 'Đồ mặc nhà - Đồ ngủ', 'metakeyword Đồ mặc nhà - Đồ ngủ', 'metadescription Đồ mặc nhà - Đồ ngủ', 'do-mac-nha-do-ngu', NULL, 1, 2, 3, '2018-02-01 03:20:50', '2018-02-01 03:20:50'),
(32, 'Đồ bơi - Đồ đi biển', 'metakeyword Đồ bơi - Đồ đi biển', 'metadescription Đồ bơi - Đồ đi biển', 'do-boi-do-di-bien', NULL, 1, 2, 4, '2018-02-01 03:21:44', '2018-02-01 03:21:44'),
(33, 'Thời trang big size', 'metakeyword Thời trang big size', 'metadescription Thời trang big size', 'thoi-trang-big-size', NULL, 1, 2, 5, '2018-02-01 03:22:22', '2018-02-01 03:22:29'),
(34, 'Đầm váy', 'metakeyword Đầm váy', 'metadescription Đầm váy', 'dam-vay', NULL, 1, 2, 7, '2018-02-01 03:23:04', '2018-02-01 03:23:04'),
(35, 'Áo khoác', '', '', 'ao-khoac', NULL, 1, 2, 8, '2018-02-01 03:23:35', '2018-02-01 03:23:35'),
(36, 'Thời trang trung niên', '', '', 'thoi-trang-trung-nien', NULL, 1, 2, 9, '2018-02-01 03:24:01', '2018-02-01 03:24:01'),
(37, 'Áo nữ', '', '', 'ao-nu', NULL, 1, 2, 10, '2018-02-01 03:24:36', '2018-02-01 03:24:45'),
(38, 'Quần nữ', '', '', 'quan-nu', NULL, 1, 2, 11, '2018-02-01 03:25:05', '2018-02-01 03:25:05'),
(39, 'Đồ lót', '', '', 'do-lot', NULL, 1, 2, 12, '2018-02-01 03:25:28', '2018-02-01 03:25:34'),
(40, 'Chân váy', '', '', 'chan-vay', NULL, 1, 2, 12, '2018-02-01 03:25:53', '2018-02-01 03:25:53'),
(41, 'Quần áo thể thao nữ', '', '', 'quan-ao-the-thao-nu', NULL, 1, 2, 13, '2018-02-01 03:26:11', '2018-02-01 03:26:11'),
(42, 'Đầm váy - Thiết kế', '', '', 'dam-vay-thiet-ke', NULL, 1, 29, 1, '2018-02-01 03:27:04', '2018-02-01 03:27:04'),
(43, 'Áo nữ thiết kế', '', '', 'ao-nu-thiet-ke', NULL, 1, 29, 1, '2018-02-01 03:27:21', '2018-02-01 03:27:21'),
(44, 'Chân váy thiết kế', '', '', 'chan-vay-thiet-ke', NULL, 1, 29, 1, '2018-02-01 03:27:40', '2018-02-01 03:27:40'),
(45, 'Quần nữ thiết kế', '', '', 'quan-nu-thiet-ke', NULL, 1, 29, 1, '2018-02-01 03:28:24', '2018-02-01 03:28:24'),
(46, 'Áo và quần dài', '', '', 'ao-va-quan-dai', NULL, 1, 30, 1, '2018-02-01 03:29:02', '2018-02-01 03:29:02'),
(47, 'Áo và chân váy', '', '', 'ao-va-chan-vay', NULL, 1, 30, 1, '2018-02-01 03:29:24', '2018-02-01 03:29:24'),
(48, 'Jumpsuit', '', '', 'jumpsuit', NULL, 1, 30, 1, '2018-02-01 03:29:46', '2018-02-01 03:30:06'),
(49, 'Bộ mặc nhà nữ', '', '', 'bo-mac-nha-nu', NULL, 1, 31, 1, '2018-02-01 03:30:38', '2018-02-01 03:31:17'),
(50, 'Váy ngủ', '', '', 'vay-ngu', NULL, 1, 31, 1, '2018-02-01 03:31:39', '2018-02-01 03:31:39'),
(51, 'Bikini', '', '', 'bikini', NULL, 1, 32, 1, '2018-02-01 03:32:07', '2018-02-01 03:32:19'),
(52, 'Quần áo - Váy đi biển', '', '', 'quan-ao-vay-di-bien', NULL, 1, 32, 1, '2018-02-01 03:32:38', '2018-02-01 03:32:38'),
(53, 'Đầm xòe', '', '', 'dam-xoe', NULL, 1, 34, 1, '2018-02-01 03:34:06', '2018-02-01 03:34:06'),
(54, 'Đầm suông', '', '', 'dam-suong', NULL, 1, 34, 1, '2018-02-01 03:34:27', '2018-02-01 03:34:27'),
(55, 'Đầm ôm', '', '', 'dam-om', NULL, 1, 34, 1, '2018-02-01 03:34:43', '2018-02-01 03:34:43'),
(56, 'Đầm maxi', '', '', 'dam-maxi', NULL, 1, 34, 1, '2018-02-01 03:35:07', '2018-02-01 03:35:07'),
(57, 'Đầm dạ hội', '', '', 'dam-da-hoi', NULL, 1, 34, 1, '2018-02-01 03:35:22', '2018-02-01 03:35:22'),
(58, 'Áo khoác vest - Blazer', '', '', 'ao-khoac-vest-blazer', NULL, 1, 35, 1, '2018-02-01 03:36:07', '2018-02-01 03:36:07'),
(59, 'Áo khoác dạ - Măng tô - Áo choàng', '', '', 'ao-khoac-da-mang-to-ao-choang', NULL, 1, 35, 1, '2018-02-01 03:36:36', '2018-02-01 03:36:36'),
(60, 'Áo khoác chống nắng', '', '', 'ao-khoac-chong-nang', NULL, 1, 35, 1, '2018-02-01 03:36:55', '2018-02-01 03:36:55'),
(61, 'Áo khoác len - Cardigan', '', '', 'ao-khoac-len-cardigan', NULL, 1, 35, 1, '2018-02-01 03:37:23', '2018-02-01 03:37:23'),
(62, 'Áo khoác cách điệu', '', '', 'ao-khoac-cach-dieu', NULL, 1, 35, 1, '2018-02-01 03:38:18', '2018-02-01 03:38:18'),
(63, 'Đầm trung niên', '', '', 'dam-trung-nien', NULL, 1, 36, 1, '2018-02-01 03:38:46', '2018-02-01 03:38:46'),
(64, 'Áo trung niên', '', '', 'ao-trung-nien', NULL, 1, 36, 1, '2018-02-01 03:39:07', '2018-02-01 03:39:07'),
(65, 'Đồ mặc nhà - Đồ ngủ trung niên', '', '', 'do-mac-nha-do-ngu-trung-nien', NULL, 1, 36, 1, '2018-02-01 03:39:38', '2018-02-01 03:39:38'),
(66, 'Áo sơ mi nữ', '', '', 'ao-so-mi-nu', NULL, 1, 37, 1, '2018-02-01 03:40:10', '2018-02-01 03:40:10'),
(67, 'Áo kiểu', '', '', 'ao-kieu', NULL, 1, 37, 1, '2018-02-01 03:40:27', '2018-02-01 03:40:27'),
(68, 'Áo đôi', '', '', 'ao-doi', NULL, 1, 37, 1, '2018-02-01 03:40:47', '2018-02-01 03:40:47'),
(69, 'Áo dài', '', '', 'ao-dai', NULL, 1, 37, 1, '2018-02-01 03:41:09', '2018-02-01 03:41:09'),
(70, 'Áo thun có tay', '', '', 'ao-thun-co-tay', NULL, 1, 37, 1, '2018-02-01 03:41:37', '2018-02-01 03:41:37'),
(71, 'Quần jean', '', '', 'quan-jean', NULL, 1, 38, 1, '2018-02-01 03:42:25', '2018-02-01 03:42:25'),
(72, 'Quần tây', '', '', 'quan-tay', NULL, 1, 38, 1, '2018-02-01 03:42:45', '2018-02-01 03:42:45'),
(73, 'Quần short nữ', '', '', 'quan-short-nu', NULL, 1, 38, 1, '2018-02-01 03:43:09', '2018-02-01 03:43:09'),
(74, 'Quần legging', '', '', 'quan-legging', NULL, 1, 38, 1, '2018-02-01 03:43:25', '2018-02-01 03:43:25'),
(75, 'Áo ngực', '', '', 'ao-nguc', NULL, 1, 39, 1, '2018-02-01 03:44:08', '2018-02-01 03:44:08'),
(76, 'Quần lót nữ', '', '', 'quan-lot-nu', NULL, 1, 39, 1, '2018-02-01 03:44:52', '2018-02-01 03:44:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_video`
--

DROP TABLE IF EXISTS `category_video`;
CREATE TABLE `category_video` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_video`
--

INSERT INTO `category_video` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video', 'metakeyword video', 'metadescription video', 'video', NULL, 'thuvienhinh-1.png', 1, 1, '2018-01-09 10:03:48', '2018-01-09 11:08:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mobilephone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `email`, `fullname`, `address`, `phone`, `mobilephone`, `fax`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'diemnguyen', '4d6b91520256cc8b073806b667fca04c', 'diemnguyen@dienkim.com', 'Nguyễn Thị Hồng Diễm', '14 Trần Huy Liệu', '0988152334', '9932283992', '5437739787', 1, 1, '2018-01-05 15:31:29', '2018-01-09 04:42:14'),
(2, 'khoatran', 'e10adc3949ba59abbe56e057f20f883e', 'khoatran@dienkim.com', 'Trần Đăng Khoa', '14 Huỳnh Văn Bánh', '0988152335', '9932283997', '5437739782', 1, 1, '2018-01-05 15:36:39', '2018-01-05 15:36:39'),
(3, 'vunh', 'e10adc3949ba59abbe56e057f20f883e', 'vunguyenhoang@dienkim.com', 'Nguyễn Hoàng Vũ', '16 Trường Sơn', '0988152331', '0874783779', '7675787833', 1, 1, '2018-01-05 15:44:56', '2018-01-05 15:44:56'),
(4, 'hanhlt', 'e10adc3949ba59abbe56e057f20f883e', 'hanhlt@dienkim.com', 'Lê Thị Hạnh', '18 Nguyễn Diệu', '0988123458', '7928492298', '7773573334', 1, 1, '2018-01-06 10:26:55', '2018-01-06 10:26:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `fullname`, `alias`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Quận 1', 'quan-1', 1, 1, '2018-01-22 02:05:14', '2018-01-22 07:18:21'),
(5, 'Quận 2', 'quan-2', 2, 1, '2018-01-22 02:19:30', '2018-01-22 07:18:30'),
(6, 'Quận 3', 'quan-3', 3, 1, '2018-01-22 02:19:36', '2018-01-22 07:18:48'),
(7, 'Quận 4', 'quan-4', 4, 1, '2018-01-22 02:19:43', '2018-01-22 07:18:53'),
(8, 'Quận 5', 'quan-5', 5, 1, '2018-01-22 02:19:49', '2018-01-22 07:18:57'),
(9, 'Quận 6', 'quan-6', 6, 1, '2018-01-22 02:19:55', '2018-01-22 07:19:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_member`
--

DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_member`
--

INSERT INTO `group_member` (`id`, `fullname`, `alias`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', 1, '2016-12-17 05:05:18', '2018-02-01 20:44:57'),
(2, 'Bài viết', 'bai-viet', 2, '2016-12-17 05:05:41', '2018-01-26 04:49:29'),
(3, 'Thành viên vip', 'thanh-vien-vip', 3, '2018-01-26 04:06:49', '2018-01-26 04:49:35'),
(4, 'Thành viên thường', 'thanh-vien-thuong', 4, '2018-01-26 04:08:16', '2018-01-26 04:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_privilege`
--

DROP TABLE IF EXISTS `group_privilege`;
CREATE TABLE `group_privilege` (
  `id` int(11) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_privilege`
--

INSERT INTO `group_privilege` (`id`, `group_member_id`, `privilege_id`, `created_at`, `updated_at`) VALUES
(3040, 2, 1, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3041, 2, 2, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3042, 2, 3, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3043, 2, 4, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3044, 2, 5, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3045, 2, 16, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3046, 2, 17, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3047, 2, 33, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3048, 2, 49, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3049, 2, 50, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3050, 2, 55, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3051, 2, 56, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3052, 2, 57, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3053, 2, 58, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3054, 2, 59, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3055, 2, 60, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3056, 2, 61, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3057, 2, 62, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3058, 2, 63, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3059, 2, 67, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3060, 2, 68, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3061, 2, 79, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3062, 2, 80, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3063, 2, 85, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3064, 2, 86, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3065, 2, 103, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3066, 2, 104, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3067, 2, 105, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3068, 2, 106, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3069, 2, 107, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3070, 2, 108, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3071, 2, 109, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3072, 2, 110, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3073, 2, 111, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3074, 2, 112, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3075, 2, 113, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3076, 2, 114, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3077, 2, 115, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3078, 2, 116, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3079, 2, 117, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3080, 2, 118, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3081, 2, 119, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3082, 2, 120, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3083, 2, 121, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3084, 2, 122, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3085, 2, 123, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3086, 2, 124, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3087, 2, 125, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3088, 2, 126, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3089, 2, 127, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3090, 2, 128, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3091, 2, 129, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3092, 2, 130, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3093, 2, 131, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3094, 2, 132, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3095, 2, 133, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3096, 2, 134, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3097, 2, 135, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3098, 2, 136, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3099, 2, 137, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3100, 2, 138, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3101, 2, 139, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3102, 2, 140, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3103, 2, 141, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3104, 2, 142, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3105, 2, 143, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3106, 2, 144, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3180, 3, 0, '2018-01-26 04:06:59', '2018-01-26 04:06:59'),
(3641, 1, 1, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3642, 1, 2, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3643, 1, 3, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3644, 1, 4, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3645, 1, 5, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3646, 1, 16, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3647, 1, 17, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3648, 1, 18, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3649, 1, 19, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3650, 1, 24, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3651, 1, 25, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3652, 1, 33, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3653, 1, 43, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3654, 1, 44, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3655, 1, 49, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3656, 1, 50, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3657, 1, 55, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3658, 1, 56, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3659, 1, 57, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3660, 1, 58, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3661, 1, 59, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3662, 1, 60, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3663, 1, 61, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3664, 1, 62, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3665, 1, 63, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3666, 1, 67, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3667, 1, 68, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3668, 1, 79, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3669, 1, 80, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3670, 1, 85, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3671, 1, 86, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3672, 1, 103, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3673, 1, 104, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3674, 1, 105, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3675, 1, 106, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3676, 1, 107, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3677, 1, 108, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3678, 1, 109, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3679, 1, 110, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3680, 1, 111, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3681, 1, 112, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3682, 1, 113, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3683, 1, 114, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3684, 1, 115, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3685, 1, 116, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3686, 1, 117, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3687, 1, 118, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3688, 1, 119, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3689, 1, 120, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3690, 1, 121, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3691, 1, 122, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3692, 1, 123, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3693, 1, 124, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3694, 1, 125, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3695, 1, 126, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3696, 1, 127, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3697, 1, 128, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3698, 1, 129, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3699, 1, 130, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3700, 1, 131, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3701, 1, 132, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3702, 1, 133, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3703, 1, 134, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3704, 1, 135, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3705, 1, 136, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3706, 1, 137, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3707, 1, 138, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3708, 1, 139, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3709, 1, 140, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3710, 1, 141, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3711, 1, 142, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3712, 1, 143, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3713, 1, 144, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3714, 1, 145, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3715, 1, 146, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3716, 1, 147, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3717, 1, 148, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3718, 1, 149, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3719, 1, 150, '2018-02-01 20:44:57', '2018-02-01 20:44:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mobilephone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `payment_method_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_detail`
--

DROP TABLE IF EXISTS `invoice_detail`;
CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_total_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `fullname`, `alias`, `parent_id`, `menu_type_id`, `level`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', 'trang-chu', 0, 1, 0, 1, 1, '2017-12-15 03:38:30', '2018-01-10 03:36:35'),
(4, 'Tin tức', 'tin-tuc', 0, 1, 0, 5, 1, '2017-12-15 03:39:22', '2018-01-18 04:53:34'),
(6, 'Giới thiệu', 'gioi-thieu', 0, 1, 0, 2, 1, '2017-12-15 03:39:53', '2018-01-22 08:55:44'),
(9, 'Liên hệ', 'lien-he', 0, 1, 0, 6, 1, '2017-12-15 03:40:34', '2018-01-18 04:53:34'),
(20, 'Tin dự án', 'tin-du-an', 0, 3, 0, 1, 1, '2018-01-03 04:28:30', '2018-01-21 04:25:32'),
(21, 'Tin bất động sản', 'tin-bat-dong-san', 0, 3, 0, 2, 1, '2018-01-03 04:28:42', '2018-01-21 04:25:42'),
(57, 'Trang chủ', 'trang-chu', 0, 5, 0, 1, 1, '2018-01-10 07:14:21', '2018-01-10 07:14:21'),
(58, 'Giới thiệu', 'gioi-thieu', 0, 5, 0, 2, 1, '2018-01-10 07:14:39', '2018-01-23 02:05:46'),
(59, 'Tin tức', 'tin-tuc', 0, 5, 0, 5, 1, '2018-01-10 07:14:57', '2018-01-23 02:10:38'),
(61, 'Liên hệ', 'lien-he', 0, 5, 0, 6, 1, '2018-01-10 07:15:34', '2018-01-23 02:11:11'),
(88, 'Tin dự án', 'tin-du-an', 59, 5, 1, 1, 1, '2018-01-10 17:26:01', '2018-01-21 04:24:20'),
(89, 'Tin bất động sản', 'tin-bat-dong-san', 59, 5, 1, 2, 1, '2018-01-10 17:26:18', '2018-01-21 04:24:38'),
(123, 'Sản phẩm', 'san-pham', 0, 1, 0, 4, 1, '2018-01-18 04:53:11', '2018-02-02 04:04:45'),
(132, 'Thị trường', 'thi-truong', 0, 3, 0, 3, 1, '2018-01-21 04:26:09', '2018-01-21 04:26:09'),
(133, 'Tư vấn', 'tu-van', 0, 3, 0, 4, 1, '2018-01-21 04:26:17', '2018-01-21 04:26:17'),
(137, 'Tầm nhìn', 'tam-nhin', 58, 5, 1, 1, 1, '2018-01-23 02:06:04', '2018-01-23 02:06:04'),
(138, 'Sứ mệnh', 'su-menh', 58, 5, 1, 2, 1, '2018-01-23 02:06:17', '2018-01-23 02:06:17'),
(139, 'Giá trị cốt lõi', 'gia-tri-cot-loi', 58, 5, 1, 3, 1, '2018-01-23 02:06:30', '2018-01-23 02:06:30'),
(140, 'Triết lý kinh doanh', 'triet-ly-kinh-doanh', 58, 5, 1, 4, 1, '2018-01-23 02:06:44', '2018-01-23 02:06:44'),
(141, 'Dự án', 'du-an', 0, 5, 0, 3, 1, '2018-01-23 02:07:24', '2018-01-23 02:07:24'),
(142, 'Dịch vụ', 'dich-vu', 0, 5, 0, 4, 1, '2018-01-23 02:07:51', '2018-01-23 02:10:38'),
(143, 'Quản lý bất động sản', 'quan-ly-bat-dong-san', 142, 5, 1, 1, 1, '2018-01-23 02:08:11', '2018-01-23 02:08:11'),
(144, 'Cho thuê căn hộ', 'cho-thue-can-ho', 142, 5, 1, 2, 1, '2018-01-23 02:08:26', '2018-01-23 02:08:26'),
(145, 'Bán bất động sản', 'ban-bat-dong-san', 142, 5, 1, 3, 1, '2018-01-23 02:08:40', '2018-01-23 02:08:40'),
(146, 'Thị trường', 'thi-truong', 59, 5, 1, 3, 1, '2018-01-23 02:09:43', '2018-01-23 02:09:43'),
(147, 'Tư vấn', 'tu-van', 59, 5, 1, 4, 1, '2018-01-23 02:09:56', '2018-01-23 02:09:56'),
(148, 'Về chúng tôi', 've-chung-toi', 0, 7, 0, 1, 1, '2018-01-25 02:33:56', '2018-01-25 06:56:44'),
(149, 'Feedback', 'feedback', 0, 7, 0, 2, 1, '2018-01-25 02:34:17', '2018-01-25 06:56:49'),
(150, 'Cách đặt hàng', 'cach-dat-hang', 0, 7, 0, 3, 1, '2018-01-25 02:34:33', '2018-01-25 06:57:01'),
(151, 'Liên hệ', 'lien-he', 0, 7, 0, 4, 1, '2018-01-25 02:34:46', '2018-01-25 06:57:10'),
(152, 'Free catalogue', 'free-catalogue', 0, 7, 0, 5, 1, '2018-01-25 02:35:09', '2018-01-25 02:35:09'),
(153, 'Hình thức thanh toán và vận chuyển', 'hinh-thuc-thanh-toan-va-van-chuyen', 0, 7, 0, 6, 1, '2018-01-25 02:35:41', '2018-01-25 06:57:38'),
(154, 'User guides', 'user-guides', 0, 7, 0, 7, 1, '2018-01-25 02:36:14', '2018-01-25 02:36:14'),
(155, 'NHS Trade', 'nhs-trade', 0, 7, 0, 8, 1, '2018-01-25 02:36:37', '2018-01-25 02:36:37'),
(163, 'Điện thoại - Máy tính', 'dien-thoai-may-tinh', 123, 1, 1, 1, 1, '2018-02-02 07:25:21', '2018-02-02 07:25:21'),
(164, 'Thời trang nữ', 'thoi-trang-nu', 123, 1, 1, 2, 1, '2018-02-02 07:25:35', '2018-02-02 07:25:35'),
(165, 'Thời trang nam', 'thoi-trang-nam', 123, 1, 1, 3, 1, '2018-02-02 07:25:53', '2018-02-02 07:25:53'),
(166, 'Giày dép - Túi xách', 'giay-dep-tui-xach', 123, 1, 1, 4, 1, '2018-02-02 07:26:07', '2018-02-02 07:26:07'),
(168, 'Phụ kiện số - Camera', 'phu-kien-so-camera', 123, 1, 1, 5, 1, '2018-02-02 07:26:57', '2018-02-02 07:26:57'),
(169, 'Mẹ bé - Đồ chơi', 'me-be-do-choi', 123, 1, 1, 6, 1, '2018-02-02 07:27:11', '2018-02-02 07:27:11'),
(170, 'Đồng hồ - Phụ kiện', 'dong-ho-phu-kien', 123, 1, 1, 7, 1, '2018-02-02 07:27:40', '2018-02-02 07:27:40'),
(171, 'Nhà cửa - Tân trang nhà', 'nha-cua-tan-trang-nha', 123, 1, 1, 8, 1, '2018-02-02 07:27:53', '2018-02-02 07:27:53'),
(172, 'Sức khoẻ - Sắc đẹp', 'suc-khoe-sac-dep', 123, 1, 1, 9, 1, '2018-02-02 07:28:07', '2018-02-02 07:28:07'),
(173, 'Tivi - Thiết bị âm thanh', 'tivi-thiet-bi-am-thanh', 123, 1, 1, 10, 1, '2018-02-02 07:28:21', '2018-02-02 07:28:21'),
(175, 'Ô tô - Xe máy - Thể thao', 'o-to-xe-may-the-thao', 123, 1, 1, 11, 1, '2018-02-02 07:29:06', '2018-02-02 07:29:06'),
(176, 'Điện thoại mới', 'dien-thoai-moi', 163, 1, 2, 1, 1, '2018-02-02 07:34:20', '2018-02-02 07:34:20'),
(177, 'Điện thoại cũ', 'dien-thoai-cu', 163, 1, 2, 2, 1, '2018-02-02 07:34:33', '2018-02-02 07:34:33'),
(178, 'Laptop', 'laptop', 163, 1, 2, 3, 1, '2018-02-02 07:34:43', '2018-02-02 07:34:43'),
(179, 'Máy tính bảng', 'may-tinh-bang', 163, 1, 2, 4, 1, '2018-02-02 07:34:54', '2018-02-02 07:34:54'),
(180, 'Máy tính để bàn', 'may-tinh-de-ban', 163, 1, 2, 6, 1, '2018-02-02 07:35:19', '2018-02-02 07:37:16'),
(181, 'Máy in và phụ kiện', 'may-in-va-phu-kien', 163, 1, 2, 5, 1, '2018-02-02 07:35:45', '2018-02-02 07:36:43'),
(182, 'Chuột bàn phím', 'chuot-ban-phim', 163, 1, 2, 7, 1, '2018-02-02 07:36:04', '2018-02-02 07:36:10'),
(183, 'Linh kiện máy tính - Laptop', 'linh-kien-may-tinh-laptop', 163, 1, 2, 8, 1, '2018-02-02 07:36:32', '2018-02-02 07:37:16'),
(184, 'Phụ kiện máy tính laptop', 'phu-kien-may-tinh-laptop', 163, 1, 2, 9, 1, '2018-02-02 07:37:33', '2018-02-02 07:37:33'),
(185, 'Máy chiếu và phụ kiện', 'may-chieu-va-phu-kien', 163, 1, 2, 10, 1, '2018-02-02 07:37:48', '2018-02-02 07:37:48'),
(186, 'Phần mềm máy tính', 'phan-mem-may-tinh', 163, 1, 2, 11, 1, '2018-02-02 07:38:04', '2018-02-02 07:38:04'),
(187, 'Card màn hình', 'card-man-hinh', 183, 1, 3, 1, 1, '2018-02-02 07:39:04', '2018-02-02 07:39:04'),
(188, 'Ổ cứng gắn trong', 'o-cung-gan-trong', 183, 1, 3, 2, 1, '2018-02-02 07:39:17', '2018-02-02 07:39:17'),
(189, 'Ram máy tính', 'ram-may-tinh', 183, 1, 3, 3, 1, '2018-02-02 07:39:27', '2018-02-02 07:39:27'),
(190, 'Đế tản nhiệt laptop', 'de-tan-nhiet-laptop', 184, 1, 3, 1, 1, '2018-02-02 07:39:57', '2018-02-02 07:39:57'),
(191, 'Sạc laptop', 'sac-laptop', 184, 1, 3, 2, 1, '2018-02-02 07:40:10', '2018-02-02 07:40:10'),
(192, 'Pin laptop', 'pin-laptop', 184, 1, 3, 3, 1, '2018-02-02 07:40:24', '2018-02-02 07:40:24'),
(193, 'Thời trang thiết kế', 'thoi-trang-thiet-ke', 164, 1, 2, 1, 1, '2018-02-02 07:42:42', '2018-02-02 07:42:42'),
(194, 'Set trang phục - Jumbsuit', 'set-trang-phuc-jumbsuit', 164, 1, 2, 2, 1, '2018-02-02 07:43:04', '2018-02-02 07:43:04'),
(195, 'Đồ mặc nhà - Đồ ngủ', 'do-mac-nha-do-ngu', 164, 1, 2, 3, 1, '2018-02-02 07:43:22', '2018-02-02 07:43:22'),
(196, 'Đồ mặc nhà - Đồ ngủ', 'do-mac-nha-do-ngu', 164, 1, 2, 4, 1, '2018-02-02 07:43:42', '2018-02-02 07:43:42'),
(197, 'Đồ bơi - Đồ đi biển', 'do-boi-do-di-bien', 164, 1, 2, 5, 1, '2018-02-02 07:43:57', '2018-02-02 07:43:57'),
(198, 'Thời trang big size', 'thoi-trang-big-size', 164, 1, 2, 6, 1, '2018-02-02 07:44:27', '2018-02-02 07:44:27'),
(199, 'Đầm váy', 'dam-vay', 164, 1, 2, 7, 1, '2018-02-02 07:44:46', '2018-02-02 07:44:46'),
(200, 'Áo khoác', 'ao-khoac', 164, 1, 2, 8, 1, '2018-02-02 07:45:20', '2018-02-02 07:45:20'),
(201, 'Thời trang trung niên', 'thoi-trang-trung-nien', 164, 1, 2, 9, 1, '2018-02-02 07:45:36', '2018-02-02 07:45:36'),
(202, 'Áo nữ', 'ao-nu', 164, 1, 2, 10, 1, '2018-02-02 07:46:02', '2018-02-02 07:46:02'),
(203, 'Quần nữ', 'quan-nu', 164, 1, 2, 11, 1, '2018-02-02 07:46:25', '2018-02-02 07:46:25'),
(204, 'Đồ lót', 'do-lot', 164, 1, 2, 12, 1, '2018-02-02 07:47:05', '2018-02-02 07:47:05'),
(205, 'Chân váy', 'chan-vay', 164, 1, 2, 13, 1, '2018-02-02 07:47:26', '2018-02-02 07:47:26'),
(206, 'Quần áo thể thao nữ', 'quan-ao-the-thao-nu', 164, 1, 2, 14, 1, '2018-02-02 07:47:47', '2018-02-02 07:47:47'),
(207, 'Chân váy thiết kế', 'chan-vay-thiet-ke', 193, 1, 3, 4, 1, '2018-02-02 07:48:24', '2018-02-02 07:49:44'),
(208, 'Quần nữ thiết kế', 'quan-nu-thiet-ke', 193, 1, 3, 1, 1, '2018-02-02 07:48:51', '2018-02-02 07:48:51'),
(209, 'Đầm váy - Thiết kế', 'dam-vay-thiet-ke', 193, 1, 3, 2, 1, '2018-02-02 07:49:08', '2018-02-02 07:49:44'),
(210, 'Áo nữ thiết kế', 'ao-nu-thiet-ke', 193, 1, 3, 3, 1, '2018-02-02 07:49:26', '2018-02-02 07:49:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

DROP TABLE IF EXISTS `menu_type`;
CREATE TABLE `menu_type` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'MainMenu', 'main-menu', 1, 1, '2017-12-15 03:37:06', '2017-12-15 03:37:06'),
(3, 'Tin tức sự kiện', 'tin-tuc-su-kien-menu', 1, 3, '2018-01-03 04:22:54', '2018-01-11 07:18:51'),
(5, 'MobileMenu', 'mobile-menu', 1, 5, '2018-01-09 19:31:48', '2018-01-09 19:31:48'),
(7, 'TopMenu', 'top-menu', 1, 6, '2018-01-25 02:33:29', '2018-01-25 02:33:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module_item`
--

DROP TABLE IF EXISTS `module_item`;
CREATE TABLE `module_item` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` text COLLATE utf8_unicode_ci,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `module_item`
--

INSERT INTO `module_item` (`id`, `fullname`, `item_id`, `position`, `component`, `setting`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(9, 'Sản phẩm mới', '[{\"id\":1,\"sort_order\":\"1\"},{\"id\":2,\"sort_order\":\"2\"},{\"id\":3,\"sort_order\":\"3\"},{\"id\":4,\"sort_order\":\"4\"},{\"id\":5,\"sort_order\":\"5\"},{\"id\":6,\"sort_order\":\"6\"},{\"id\":7,\"sort_order\":\"7\"},{\"id\":8,\"sort_order\":\"8\"},{\"id\":9,\"sort_order\":\"9\"},{\"id\":10,\"sort_order\":\"10\"},{\"id\":11,\"sort_order\":\"11\"},{\"id\":12,\"sort_order\":\"12\"},{\"id\":13,\"sort_order\":\"13\"},{\"id\":14,\"sort_order\":\"14\"},{\"id\":15,\"sort_order\":\"15\"},{\"id\":16,\"sort_order\":\"16\"},{\"id\":17,\"sort_order\":\"17\"},{\"id\":18,\"sort_order\":\"18\"},{\"id\":19,\"sort_order\":\"19\"},{\"id\":20,\"sort_order\":\"20\"}]', 'san-pham-moi', 'product', NULL, 1, 4, '2018-01-10 15:43:11', '2018-01-14 05:38:37'),
(10, 'Tư vấn giải pháp', '[{\"id\":20,\"sort_order\":\"1\"},{\"id\":19,\"sort_order\":\"2\"},{\"id\":18,\"sort_order\":\"3\"},{\"id\":17,\"sort_order\":\"4\"},{\"id\":16,\"sort_order\":\"5\"},{\"id\":15,\"sort_order\":\"6\"}]', 'tu-van-giai-phap-widget', 'article', NULL, 1, 5, '2018-01-10 17:40:07', '2018-01-14 06:13:38'),
(12, 'Tin tức', '[{\"id\":7,\"sort_order\":\"1\"},{\"id\":11,\"sort_order\":\"2\"},{\"id\":12,\"sort_order\":\"3\"},{\"id\":13,\"sort_order\":\"4\"},{\"id\":14,\"sort_order\":\"5\"},{\"id\":15,\"sort_order\":\"6\"},{\"id\":16,\"sort_order\":\"7\"},{\"id\":17,\"sort_order\":\"8\"},{\"id\":18,\"sort_order\":\"9\"},{\"id\":19,\"sort_order\":\"10\"},{\"id\":20,\"sort_order\":\"11\"},{\"id\":21,\"sort_order\":\"12\"}]', 'news-between', 'article', NULL, 1, 1, '2018-01-10 19:16:28', '2018-01-19 18:21:17'),
(13, 'Các tin khác', '[{\"id\":7,\"sort_order\":\"1\"},{\"id\":11,\"sort_order\":\"2\"},{\"id\":12,\"sort_order\":\"3\"},{\"id\":13,\"sort_order\":\"4\"},{\"id\":14,\"sort_order\":\"5\"},{\"id\":19,\"sort_order\":\"6\"},{\"id\":20,\"sort_order\":\"7\"},{\"id\":21,\"sort_order\":\"8\"},{\"id\":15,\"sort_order\":\"9\"},{\"id\":16,\"sort_order\":\"10\"},{\"id\":17,\"sort_order\":\"11\"},{\"id\":18,\"sort_order\":\"12\"}]', 'other-news', 'article', NULL, 1, 2, '2018-01-10 19:30:14', '2018-01-14 06:10:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`id`, `fullname`, `alias`, `theme_location`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty TNHH GreeneCoLife', 'cong-ty-tnhh-greenecolife', 'intro-footer', NULL, '', '<p>Vp Giao dịch : 27/13/8 Đường số 27, P.Hiệp B&igrave;nh Ch&aacute;nh, Q.Thủ Đức</p>\n\n<p>Điện thoại: 0902.90.74.75<br />\nEmail: gellumber@gmail.com<br />\nWebsite:http://greenecolife.vn</p>', '', '', '', NULL, 6, 1, '2017-12-28 04:10:41', '2018-01-17 01:33:54'),
(2, 'Về chúng tôi', 've-chung-toi', 'about-us-footer', NULL, '', '<p>&quot;GreenEcoLife cam kết tất cả quyền lợi d&agrave;nh cho kh&aacute;ch h&agrave;ng&quot;</p>', '', '', '', NULL, 2, 1, '2017-12-28 04:54:45', '2018-01-14 06:43:47'),
(4, 'Về Công Ty TNHH GreeneCoLife', 've-cong-ty-tnhh-greenecolife', 'introduce', 'conmochieu-10.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"text-align:justify\"><span style=\"font-size:24px\"><strong>GỖ NHẬP KHẨU: GỖ SỒI, GỖ &Oacute;C CH&Oacute;, GỖ TẦN B&Igrave;</strong></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><em>Giới thiệu chung:</em></span></p>\n\n<p style=\"text-align:justify\">C&ocirc;ng ty tnhh GreenEcoLife (GEL), l&agrave; nh&agrave; nhập khẩu v&agrave; ph&acirc;n phối gỗ nguy&ecirc;n liệu Mỹ: gỗ &oacute;c ch&oacute;, gỗ sồi, gỗ tần b&igrave;, v&aacute;n s&agrave;n, &hellip;</p>\n\n<p style=\"text-align:justify\">Năm 2012, với nhu cầu cần rất nhiều về nguồn gỗ nguy&ecirc;n liệu chất lượng cho lĩnh vực sản xuất nội thất gỗ cao cấp của Việt Nam. GreenEcoLife Việt Nam ra đời từ đ&oacute;.</p>\n\n<p style=\"text-align:justify\">Hiện n&agrave;y, C&ocirc;ng ty tnhh GreenEcoLife (GEL) l&agrave; một trong c&aacute;c nh&agrave; nhập khẩu v&agrave; cung cấp gỗ nguy&ecirc;n liệu h&agrave;ng đầu tại khu vực miền Nam về: gỗ sồi, gỗ &oacute;c ch&oacute;, gỗ tần b&igrave;, &hellip;</p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><em>C&aacute;c sản phẩm gỗ nhập khẩu GreenEcoLife Việt Nam:</em></span></p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/gioi-thieu-go-soi-trang-.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh : Gỗ sồi trắng</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/gioi-thieu-go-oc-cho.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh : Gỗ &oacute;c ch&oacute;</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/bdstheanh/upload/gioi-thieu-go-tan-bi.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>H&igrave;nh ảnh : Gỗ tần b&igrave;</em></p>\n\n<p style=\"text-align:center\">&nbsp;</p>\n\n<p>C&aacute;c đối t&aacute;c v&agrave; kh&aacute;ch h&agrave;ng của C&ocirc;ng ty tnhh GreenEcoLife (GEL) chủ yếu l&agrave;: c&ocirc;ng ty thương mại, xưởng sản xuất, nội thất, c&ocirc;ng ty thiết kế x&acirc;y dựng, &hellip;.</p>\n\n<p>Hiện nay, với nguồn gỗ tự nhi&ecirc;n ng&agrave;y c&agrave;ng khan hiếm, gi&aacute; gỗ nguy&ecirc;n liệu tự nhi&ecirc;n ng&agrave;y c&agrave;ng bị đẩy l&ecirc;n cao, c&ugrave;ng với rất nhiều c&aacute;c c&ocirc;ng ty nhập khẩu gỗ h&igrave;nh th&agrave;nh tr&ecirc;n thị trường, chất lượng gỗ cũng kh&aacute;c nhau, &nbsp;th&igrave; Greenecolife Việt Nam sẽ l&agrave; sự lựa chọn ho&agrave;n hảo về cung cấp gỗ nguy&ecirc;n liệu d&agrave;nh cho qu&yacute; xưởng sản xuất gỗ, qu&yacute; c&ocirc;ng ty thiết kế nội thất với chất lượng gỗ nguy&ecirc;n liệu tốt v&agrave; gi&aacute; cả phải chăng.</p>', '', 'metakeyword giới thiệu', 'metadescription giới thiệu', 234, 5, 1, '2018-01-03 10:35:10', '2018-01-22 08:55:33'),
(5, 'Thông tin liên hệ', 'thong-tin-lien-he', 'thong-tin-lien-he-widget', NULL, '', '<h2><span style=\"color:#2980b9\"><strong>C&Ocirc;NG TY TNHH GREENECOLIFE</strong></span></h2>\n\n<p><em><strong>Vp Giao dịch:</strong></em> 27/13/8 Đường số 27, P.Hiệp B&igrave;nh Ch&aacute;nh, Q.Thủ Đức</p>\n\n<p><em><strong>Điện thoại:</strong></em> 0902.90.74.75</p>\n\n<p><em><strong>Email:</strong></em> gellumber@gmail.com</p>\n\n<p><em><strong>Website:</strong></em> http://greenecolife.vn</p>', '', '', '', NULL, 1, 1, '2018-01-14 16:13:12', '2018-01-16 20:00:40'),
(6, 'Fanpage', 'fanpage', 'fanpage-footer', NULL, '<div class=\"fb-page\" data-href=\"https://www.facebook.com/gonguyenlieumy/\" data-tabs=\"timeline\" data-width=\"250\" data-height=\"200\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/gonguyenlieumy/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/gonguyenlieumy/\">Công ty tnhh Greenecolife</a></blockquote></div>', '', '', '', '', NULL, 7, 1, '2018-01-19 02:31:15', '2018-01-19 02:31:18'),
(7, 'Tầm nhìn', 'tam-nhin', 'tam-nhin-home-content', 'conmochieu-1.png', 'Trở thành công ty đứng đầu về hệ thống phân phối rộng khắp Việt Nam trong những năm đầu tiên.\nTầm nhìn đến 2030: \"Trở thành 1 trong 10 công ty phát triển Bất động sản tốt nhất Đông Nam Á”', '<p style=\"text-align:justify\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '', '', '', 31, 1, 1, '2018-01-19 09:04:27', '2018-01-22 10:25:53'),
(8, 'Sứ mệnh', 'su-menh', 'su-menh-hand-content', 'conmochieu-2.png', 'Cung cấp sản phẩm và dịch vụ ưu việt, nâng cao giá trị , chất lượng cuộc sống', '<p style=\"text-align:justify\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '', '', '', 10, 1, 1, '2018-01-19 09:04:52', '2018-01-22 08:56:14'),
(9, 'Giá trị cốt lõi', 'gia-tri-cot-loi', 'gia-tri-cot-loi-hand-content', 'conmochieu-3.png', 'Khát vọng - Chính trực - Chuyên nghiệp - Nhân văn\nVới nhiều năm kinh nghiệm hoạt động trong lĩnh vực bất động sản và đội ngũ nhân viên chuyên nghiệp, nhiệt tình, có trình độ cao, luôn lấy chữ tín làm trọng.', '<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '', '', '', 6, 1, 1, '2018-01-19 09:05:26', '2018-01-22 08:56:16'),
(10, 'Triết lý kinh doanh', 'triet-ly-kinh-doanh', 'triet-ly-kinh-doanh-hand-content', 'conmochieu-4.png', 'Đối tác, khách hàng là giá trị cơ bản của bất kỳ doanh nghiệp nào, là lý do duy nhất để doanh nghiệp tồn tại và phát triển. Chính sách “khách hàng là trung tâm” chỉ lối cho mọi hoạt động của công ty.', '<p style=\"text-align:justify\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '', '', '', 5, 1, 1, '2018-01-19 09:05:56', '2018-01-22 08:56:18'),
(11, 'Quản lý bất động sản', 'quan-ly-bat-dong-san', 'service-left', 'conmochieu-6.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>', '', '', '', 25, 1, 1, '2018-01-19 16:08:40', '2018-01-23 02:08:00'),
(12, 'Cho thuê căn hộ', 'cho-thue-can-ho', 'service-center', 'conmochieu-5.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p style=\"text-align:justify\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '', '', '', 9, 1, 1, '2018-01-19 16:09:30', '2018-01-22 08:56:23'),
(13, 'Bán bất động sản', 'ban-bat-dong-san', 'service-right', 'conmochieu-4.png', 'Cras et fringilla neque. Donec vulputate ornare placerat. Proin elit eros, egestas vitae mauris in, mattis tincidunt ipsum. Phasellus sodales, erat sit amet porta pretium, ligula dui convallis leo, semper varius est ipsum semper turpis. Sed id velit tellus. Sed eu metus interdum, fringilla lacus ac, finibus dolor. Maecenas tempus dolor vel tortor accumsan feugiat. Proin in tellus tristique, dignissim nunc vel, gravida mauris. In sed augue viverra, aliquet quam sit amet, fringilla risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla lobortis, ex nec pulvinar cursus, risus turpis ornare tellus, a facilisis augue enim sed tellus. Quisque lacinia vel dolor ac porta. Praesent hendrerit dictum velit, sodales sagittis leo interdum quis.', '<p style=\"text-align:justify\">Aliquam cursus elit ut commodo tristique. Curabitur at elit scelerisque, consequat dolor vel, egestas ipsum. Sed auctor venenatis quam a ultricies. Quisque vehicula gravida tristique. Maecenas interdum, mi vel pellentesque laoreet, nisl diam sollicitudin urna, ac dictum erat purus sit amet purus. In facilisis consectetur rutrum. Curabitur vitae est a libero volutpat tristique eget a erat. Vivamus in eros dignissim erat congue maximus. Etiam euismod nec metus nec volutpat. Morbi et scelerisque orci. Donec nisl justo, varius sit amet pharetra quis, lacinia in lacus. Nulla cursus vulputate urna vitae mattis. Proin ultrices dignissim felis, eu viverra massa viverra ut. Praesent eu euismod mauris. Pellentesque in lobortis felis, vel egestas erat. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\n\n<p style=\"text-align:justify\">Integer elementum, tortor quis egestas rutrum, libero arcu egestas orci, dapibus ornare enim risus sed ex. Aliquam congue laoreet nunc eu varius. Duis ullamcorper urna ac nunc sagittis mattis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris in nibh non ligula rutrum ultrices at in velit. Nullam tempus dui et eros vestibulum, vitae rhoncus risus facilisis. In eu iaculis mi, id convallis enim. Etiam dignissim lacus elit, eget efficitur dolor auctor ac. Aenean condimentum congue iaculis. Curabitur eget ex tincidunt, scelerisque diam sed, fermentum ligula. Nullam imperdiet, risus elementum malesuada sagittis, massa odio congue eros, vitae interdum nisi dolor ut orci.</p>', '', '', '', 9, 1, 1, '2018-01-19 16:10:20', '2018-01-22 08:56:24'),
(14, 'Call us free', 'call-us-free', 'top-info', NULL, '', '<p style=\"text-align:center\">Call us free on 0800 255 0498</p>\n\n<p style=\"text-align:center\">or 0161 85 00 88 4</p>\n\n<p style=\"text-align:center\">Monday to Friday 8.30am to 5.30pm</p>', '', '', '', NULL, 1, 1, '2018-01-25 03:04:04', '2018-01-25 03:04:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `content` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payment_method`
--

INSERT INTO `payment_method` (`id`, `fullname`, `alias`, `content`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chuyển khoản', 'chuyen-khoan', '', 1, 1, '2018-01-07 17:25:13', '2018-01-07 17:25:13'),
(2, 'Trực tiếp', 'truc-tiep', '', 2, 1, '2018-01-07 17:25:25', '2018-01-07 17:25:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `persistences`
--

DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(6, 1, 'WphP2gHqBbRpGKp2WcZb6APTYCNo1onf', '2017-11-12 08:12:08', '2017-11-12 08:12:08'),
(12, 1, 'HMMWMPpBDgdUbv54tKOldPvWyvcaeDCp', '2017-11-12 08:20:55', '2017-11-12 08:20:55'),
(20, 1, 'F4bWDfEvllT0fTv4EzWDp3NWpLxGo4n5', '2017-11-12 08:44:06', '2017-11-12 08:44:06'),
(27, 1, 'f7VCzyYASPW5vTVgTfv3Ji50sxy2ckIt', '2017-11-12 10:14:09', '2017-11-12 10:14:09'),
(35, 1, 'Zlbi5ja6c9Z7no06i5MvPsa8kZI3oLEZ', '2017-11-12 10:41:59', '2017-11-12 10:41:59'),
(43, 3, 'ZsvbfzLh4A4k34VMpmZCqIO2KIDk9pzP', '2017-11-12 10:51:37', '2017-11-12 10:51:37'),
(45, 3, '61CQHzrI8v42ppzJ35HclGUgzulYNwKD', '2017-11-12 10:51:57', '2017-11-12 10:51:57'),
(48, 4, 'M1VbjAgWRrVuXhVCqqvWAQHP287e5fuk', '2017-11-12 11:00:38', '2017-11-12 11:00:38'),
(52, 4, 'zWj9obfujhk7L1DEKOcSOMTi49HvkeVo', '2017-11-12 11:04:17', '2017-11-12 11:04:17'),
(64, 4, 'sGcmm3lmMPLTUyFeagebRe9YiPjWxHn0', '2017-11-12 11:20:36', '2017-11-12 11:20:36'),
(68, 4, 'DsgzaC5yhMG3miJpNrQFeWCpBwqfsMuO', '2017-11-12 11:21:48', '2017-11-12 11:21:48'),
(71, 4, 'aFa63uj6gzLcV0mZtU0nYvVinHZnvyAi', '2017-11-12 11:22:33', '2017-11-12 11:22:33'),
(73, 4, 'P672dGDcBqxGazfRAzJtUxPwSjTq9N4K', '2017-11-12 11:22:59', '2017-11-12 11:22:59'),
(74, 4, 'm0D8Z9mVczUYgqkSJXAwGQi8S9EaqrSg', '2017-11-12 11:23:03', '2017-11-12 11:23:03'),
(94, 1, 'W1uglu6PzKaOfwxa766IOJ33NDdulIri', '2017-11-12 13:01:17', '2017-11-12 13:01:17'),
(105, 4, 'lpP9axx2fJB8SUi7t2NlNMHasH10fl9N', '2017-11-12 19:31:42', '2017-11-12 19:31:42'),
(106, 4, '1PNxpqM3E2RYNr5CT1NzPzCOlNu4xILB', '2017-11-12 19:31:45', '2017-11-12 19:31:45'),
(107, 4, 'IJleJPrQEduTCpRbolCVqNbD3vzzhqXH', '2017-11-12 19:31:51', '2017-11-12 19:31:51'),
(110, 4, 'RyU6rnrEVVwusqJpB1boWgpODKNKthib', '2017-11-12 19:32:50', '2017-11-12 19:32:50'),
(113, 4, '2iWGSejY4rkJdkY2iK65Na0UV05uJEZ3', '2017-11-12 19:34:34', '2017-11-12 19:34:34'),
(115, 1, 'WQkHX9pd7HnW6Fwd58b6FNwURcoRYyK6', '2017-11-12 19:36:57', '2017-11-12 19:36:57'),
(119, 4, 'FGLu6nkqZkVigimI5Chx4mNmXgdi22qe', '2017-11-12 19:44:50', '2017-11-12 19:44:50'),
(124, 1, '1kZXCQqSfCEwmILvBACrUaHl5MpzQWXX', '2017-11-12 20:47:34', '2017-11-12 20:47:34'),
(125, 1, 'XJfqJ7pZakt8xtLNkULZUElD7jHOCtKt', '2017-11-13 17:44:28', '2017-11-13 17:44:28'),
(129, 1, 'JtMzzU4e61U2GRbOedwzutyNWAHHRHKp', '2017-11-13 23:43:59', '2017-11-13 23:43:59'),
(134, 1, 'zTVEKL7zcc4kvYk80AuKHQkn17d1TX0d', '2017-11-14 07:10:53', '2017-11-14 07:10:53'),
(135, 1, 'ZxzpfDpxrMTx7dRhvd1IQs0KoAyp8beZ', '2017-11-14 10:00:40', '2017-11-14 10:00:40'),
(138, 1, 'M9zXqXyMOTprNqZQI4LEpKqNogmDZiCE', '2017-11-14 20:35:29', '2017-11-14 20:35:29'),
(139, 1, 'CDF73h1lqr864dh5T5BQdTRf0hcrS45y', '2017-11-15 01:20:36', '2017-11-15 01:20:36'),
(143, 1, '50Hrxr02Q6CqKUF4p0G0bpP6PhcrLaNG', '2017-11-15 10:34:05', '2017-11-15 10:34:05'),
(145, 1, 'LRlBDrPFH3sF0WLHAUBGdJuLn5beDkqb', '2017-11-15 10:45:25', '2017-11-15 10:45:25'),
(149, 1, 'zV2fdfnD6X5jTDrXbKtgm2BQ4I4CN0vP', '2017-11-15 21:20:42', '2017-11-15 21:20:42'),
(154, 1, 'VbajMvJtRtkXTmUREmO1x8SnojOzoNy4', '2017-11-16 12:09:09', '2017-11-16 12:09:09'),
(155, 1, 'EN255XIbrvzjbXm2TdeuHOJnjAHBKhm0', '2017-11-16 19:00:45', '2017-11-16 19:00:45'),
(156, 1, 'a2STqoxCKAdKjJBxt5RxyBo23j196SqS', '2017-11-17 01:55:13', '2017-11-17 01:55:13'),
(157, 1, 'bWYcBrGX0pTubrxZ2Gz8mOrpfZh4d3R5', '2017-11-17 03:54:15', '2017-11-17 03:54:15'),
(158, 1, 'rOqRgZyRXdpE2wPQxm60VZEi4MVsaHwd', '2017-11-17 09:26:45', '2017-11-17 09:26:45'),
(159, 1, 'MUi9tluQQy8AhsadOL4sMuRSRaMPY2Vi', '2017-11-17 21:05:41', '2017-11-17 21:05:41'),
(162, 1, '0fsBWGHy3uFkICDp4rgusPKisYenbUr5', '2017-11-18 08:03:50', '2017-11-18 08:03:50'),
(163, 1, 'z2MidVz3A5SfcQtc9CjF83lbB9Ncxw4c', '2017-11-19 05:53:59', '2017-11-19 05:53:59'),
(164, 1, 'C3NrRRgDRZQLTrZraBO9IGEl2wXobUup', '2017-11-20 05:47:41', '2017-11-20 05:47:41'),
(165, 1, 'wgjWLdlRLP6Cireh1mZswQnOOTXG8z8O', '2017-11-21 03:33:18', '2017-11-21 03:33:18'),
(166, 1, 'OHI8P6DtqZVW9K4VlZ1mw5gI0IuJYPH1', '2017-11-21 04:17:05', '2017-11-21 04:17:05'),
(167, 1, 'qNdOfppeTTO8yQemqSZtz0s9qjIu8bSY', '2017-11-21 17:39:32', '2017-11-21 17:39:32'),
(168, 1, 'UJbhn9QwAcZUUXnVDtSStqNCq5akR4Lw', '2017-11-21 23:49:19', '2017-11-21 23:49:19'),
(169, 1, 'eo5eQNRwtkvZlv0DmXfze6JymlS0wylC', '2017-11-22 18:21:12', '2017-11-22 18:21:12'),
(173, 1, 'IulV4jEfAVovdnn5YGOTprw3kkvFe8NP', '2017-11-23 05:15:58', '2017-11-23 05:15:58'),
(174, 1, 'Awg5gkMADLkjPbiVitjCzS9ad5sCN9eF', '2017-11-23 18:51:55', '2017-11-23 18:51:55'),
(175, 1, 'STmoiFXISPPMkYZ46mHVd1FgZleRFPma', '2017-11-24 01:23:33', '2017-11-24 01:23:33'),
(176, 1, 'DS9Yw83Zm2blL1F2azbyCcQ4v2ktYX5H', '2017-11-24 02:11:20', '2017-11-24 02:11:20'),
(177, 1, 'e1ZyuWKHR7HQaQSkQEv4J6YMwpFFLXeC', '2017-11-24 06:39:38', '2017-11-24 06:39:38'),
(178, 1, '6KeLIVlJyL7P6FMEGpgxpNljzsQxI20T', '2017-11-25 05:02:32', '2017-11-25 05:02:32'),
(179, 1, 'tKhufJfgecAKrGEAT2EBaEPLaf517QVS', '2017-11-25 09:08:54', '2017-11-25 09:08:54'),
(180, 1, 't3XDlldaLWhVaxrPuwM6dT02mMflr87j', '2017-11-25 19:53:59', '2017-11-25 19:53:59'),
(182, 1, 'fM0W9o41fDgCiycVxhvQeJ02Opj3tULU', '2017-11-25 21:10:55', '2017-11-25 21:10:55'),
(184, 1, 'EMmXbaWTDFtG4QX9UfVNcK7eUBsy7nmJ', '2017-11-25 21:32:34', '2017-11-25 21:32:34'),
(185, 1, 'r6cxynGaM90IU8uZA7aJFjox941jTivP', '2017-11-26 05:12:26', '2017-11-26 05:12:26'),
(198, 1, 'qNJI9OXlvBnQT9IZvLyhcvnjFBHI3dZz', '2017-11-26 10:37:48', '2017-11-26 10:37:48'),
(199, 1, 'C9FPmC5NtedAPoygDQN2oqpB4EZN8azX', '2017-11-26 11:20:11', '2017-11-26 11:20:11'),
(202, 1, 'qCWvTU0oJSjAyobzeHt21656Rl1eWuvq', '2017-11-26 20:07:36', '2017-11-26 20:07:36'),
(203, 1, 'I0m5QArlodAFsFQj0cfoSiIaJ2ZGgbyg', '2017-11-26 23:06:11', '2017-11-26 23:06:11'),
(204, 1, '6tDVgt6sfCGnbfPYISYbMzCQKpXm8QKc', '2017-11-27 00:00:05', '2017-11-27 00:00:05'),
(205, 1, 'R0MhkpKtLCI5fIe1wwCeicZa0ftDQPwx', '2017-11-27 02:16:57', '2017-11-27 02:16:57'),
(206, 1, 'E69AlB0p8xLhxxNVrs46xwrP0a5wm3KX', '2017-11-27 07:58:05', '2017-11-27 07:58:05'),
(207, 1, 'qFJkZtCoPK72qECK96tX226VuMubIMBv', '2017-11-27 19:23:06', '2017-11-27 19:23:06'),
(208, 1, 'yTiyEBo8xE3PfzxTL1GFRVnqqi4ChmIZ', '2017-11-27 20:15:53', '2017-11-27 20:15:53'),
(209, 1, 'YN8x4updqv0OrIsWStBz2c7ZxI7VO5ug', '2017-11-27 20:17:20', '2017-11-27 20:17:20'),
(210, 1, 'UpPwfQYjNbyRmztTDCfl16md4weLyjG3', '2017-11-30 08:03:21', '2017-11-30 08:03:21'),
(211, 1, 'ArOxlkVdyW3lu3SJqot209bFrPZUAPgD', '2017-12-01 10:48:28', '2017-12-01 10:48:28'),
(212, 1, 'xoOGCB3x8fVFoBznts5EU1k13GmZiO11', '2017-12-02 19:53:50', '2017-12-02 19:53:50'),
(214, 1, 'Jqk5DXGugxgRtsZy4pBEFn7brMvOjghm', '2017-12-03 11:57:16', '2017-12-03 11:57:16'),
(216, 1, 'nYe5QuFSOr8eu7GG8atx6EbvbM1XUMlY', '2017-12-03 17:58:34', '2017-12-03 17:58:34'),
(217, 1, 'P5Q1q3gYWSt4k7c0BLPth6QEpGmYVG5T', '2017-12-04 11:12:33', '2017-12-04 11:12:33'),
(218, 1, '0aNMDBXR8Xzt5DTF9HcK4OBSaZyohSzF', '2017-12-05 09:04:17', '2017-12-05 09:04:17'),
(219, 1, '8J8vasVhkLwqagOIRNKwiIU94QoexH4O', '2017-12-05 18:41:41', '2017-12-05 18:41:41'),
(220, 1, 'JChXlObze9eklsMJrTNLH6ekOw47H5mz', '2017-12-06 00:14:21', '2017-12-06 00:14:21'),
(221, 1, 'z18eXjqdkmbBbwJcvBAIt2o5DxA51xjw', '2017-12-06 08:20:51', '2017-12-06 08:20:51'),
(222, 1, 'F40EmMwa02fVssVHs66z0XASzB3S5sqM', '2017-12-08 11:51:41', '2017-12-08 11:51:41'),
(223, 1, 'Ee5i5S8MD2HQVPa7TKeEK3HekFbSCLcO', '2017-12-10 19:42:21', '2017-12-10 19:42:21'),
(224, 1, 'JebpNZTP11ct8IzcxmbYePuG978Jpumq', '2017-12-10 20:05:44', '2017-12-10 20:05:44'),
(226, 1, 'qPVObxjq9k29qoRVkiAV89K6Ds8MnpRz', '2017-12-10 21:48:03', '2017-12-10 21:48:03'),
(227, 1, 'Q0mGHYM1KOmlyLqq9Kw2lH5F1e2t8nIE', '2017-12-11 09:24:23', '2017-12-11 09:24:23'),
(228, 1, 'PKvAShIoy3rHzKX98qFrlcxx9q0weXbE', '2017-12-11 20:07:50', '2017-12-11 20:07:50'),
(229, 1, 'D3EIc9je8gVdFHzEluwGYSxLvcYWfISa', '2017-12-12 10:23:23', '2017-12-12 10:23:23'),
(230, 1, 'LlCfFTdhZIG7Fqb0249N2hlssIbwgswv', '2017-12-12 19:38:58', '2017-12-12 19:38:58'),
(231, 1, '5P3ys652WPCFCcMEtYp9K6YFz8KClLdt', '2017-12-12 20:37:12', '2017-12-12 20:37:12'),
(232, 1, 'AuLUtUUmPWZaLWJxm2RtyHkflWsMlIvb', '2017-12-12 20:48:06', '2017-12-12 20:48:06'),
(233, 1, 'OoMvRAracnoqhoXECrlxDTA8S4M7pGEC', '2017-12-12 21:39:03', '2017-12-12 21:39:03'),
(234, 1, 'LspxbedO8o6CbiofYR0uqLfOwunUpfCT', '2017-12-12 22:11:41', '2017-12-12 22:11:41'),
(235, 1, 'TaJdE7jjBDOwYE4eqf955JoMQh2MGnga', '2017-12-12 23:42:01', '2017-12-12 23:42:01'),
(236, 1, '9ldSOnqDOOdFI4SuMFTE5sOXeKeDaFMK', '2017-12-13 01:24:31', '2017-12-13 01:24:31'),
(237, 1, 'Omqc5SMLNnckeyPe5h70EHA0yUqZ1yAr', '2017-12-13 01:26:17', '2017-12-13 01:26:17'),
(238, 1, 'N57JQIUmXSgVZUN25mI9zA6QB3krnDJa', '2017-12-13 01:27:02', '2017-12-13 01:27:02'),
(239, 1, 'tKi6yXfXoogbGH6Ui12Pps4xBnKQQ1Y6', '2017-12-13 02:42:24', '2017-12-13 02:42:24'),
(241, 1, 'fdAX0oX5HE6HEOuPnpQOCPJPQHOTJazL', '2017-12-13 11:11:26', '2017-12-13 11:11:26'),
(243, 1, '5F15aKMYAKbpu8xARjjk4Z3b4ZLLaiHN', '2017-12-13 19:46:28', '2017-12-13 19:46:28'),
(244, 1, 'bmx6cC4QULNMW3CCh933DzA3kvhDM0ai', '2017-12-13 20:18:26', '2017-12-13 20:18:26'),
(245, 1, 'p89msT6X0idRVFgnJegC63D5VXzGzQZs', '2017-12-13 20:46:43', '2017-12-13 20:46:43'),
(247, 1, 'pS5xSImoYKACiZzQYCbCN9WYfAyE17BJ', '2017-12-13 23:44:24', '2017-12-13 23:44:24'),
(248, 1, 'Ei3UzlkB8E8L2EwvJ6uf7RqWbSiEXWqw', '2017-12-14 02:24:40', '2017-12-14 02:24:40'),
(249, 1, 'XDhhxpNpsyR8JqU9QF9ciEtMAUxzQb70', '2017-12-14 05:39:40', '2017-12-14 05:39:40'),
(251, 1, 'gYei12wI1Xx9L458waGZcXrpzfJSLrEw', '2017-12-14 05:40:20', '2017-12-14 05:40:20'),
(253, 1, 'o0i98RskGVcDO68h58WHtVILX3X7GyZZ', '2017-12-14 08:30:08', '2017-12-14 08:30:08'),
(254, 1, 'rYXzVG9bTG0q8AAikn8E1gKFDUln4zZT', '2017-12-14 17:36:03', '2017-12-14 17:36:03'),
(255, 1, 'yaZ3Gkr2fhEHy46HJzcTlIMgLZjtVE0P', '2017-12-14 18:39:23', '2017-12-14 18:39:23'),
(256, 1, 'YmZvD9xhUam8WQjZebIu5UA5fa79Vmpw', '2017-12-14 19:13:37', '2017-12-14 19:13:37'),
(257, 1, 'GHd02IbsGjboWps4UOuoRMKEHhdAeM4Q', '2017-12-14 19:20:29', '2017-12-14 19:20:29'),
(258, 1, 'bEwsrdAAVsEols37gzepZRofpjQ5CpkS', '2017-12-14 19:46:00', '2017-12-14 19:46:00'),
(259, 1, 'Op5b8y1v9a1Z1AasgU1buuI9PXTpXq14', '2017-12-14 20:36:43', '2017-12-14 20:36:43'),
(260, 1, 'H491pNtELCOBnhzmGJJG5pVQqCQqQ6y9', '2017-12-15 07:13:52', '2017-12-15 07:13:52'),
(265, 1, 'x7SZJyE8pqvN1UmSOiLMvTIDgPU8Op1v', '2017-12-15 23:56:34', '2017-12-15 23:56:34'),
(269, 1, 'bCLJ9ILMZeWaTyO9PK1h4WZ3yG712Q3h', '2017-12-16 00:27:26', '2017-12-16 00:27:26'),
(270, 1, 'VTVKHrHmyn9Ree3oENKNiqLQ8PEllFBP', '2017-12-16 00:40:12', '2017-12-16 00:40:12'),
(271, 1, 'tE71PsmEixwJk0QCDYeIEPpZ6XfzfmQL', '2017-12-16 02:57:23', '2017-12-16 02:57:23'),
(272, 1, '5aHeCSmiZ5bKLIYyaV3gGw8msN1aA63K', '2017-12-16 08:08:53', '2017-12-16 08:08:53'),
(282, 1, 'EUtWgeynbqabsviLDajTiXg6az4xEx4S', '2017-12-16 11:25:51', '2017-12-16 11:25:51'),
(283, 1, 'xKZoSmxNW0WGyljs2cdzeQI7OoHOEYbj', '2017-12-16 20:33:48', '2017-12-16 20:33:48'),
(284, 1, '958RICNQ5SWqdtnNopOEAQEGjy71OLrP', '2017-12-17 07:52:39', '2017-12-17 07:52:39'),
(286, 1, '5wQF5syYD14KXWyo2G0TdOpFgPvDwWML', '2017-12-17 19:52:04', '2017-12-17 19:52:04'),
(287, 1, '57cBU7Ds9QMsjwn0klqjotmHkWuIFlp7', '2017-12-25 19:27:36', '2017-12-25 19:27:36'),
(288, 1, 'pSNdXiePmuervyNG25HffYLqSY4CqCNV', '2017-12-25 21:29:41', '2017-12-25 21:29:41'),
(289, 1, 'HrHLtRQPfVz6XIzSP9YMkHOswmru4q9A', '2017-12-25 21:47:02', '2017-12-25 21:47:02'),
(290, 1, 'loABizfP1dl9zchCj2681qVIsF3OKrJ3', '2017-12-27 10:38:20', '2017-12-27 10:38:20'),
(291, 1, '6oNxIkIquNcQIOEPZnb9gd69OiMONpDD', '2017-12-27 10:45:14', '2017-12-27 10:45:14'),
(292, 1, '1tEcrFgJDbeU1aUB6H5mnmO7zua63PuQ', '2017-12-27 19:13:01', '2017-12-27 19:13:01'),
(293, 1, 'MUkVIspzdlXbtHyCGhcCsnvK7SeCkOVu', '2017-12-27 19:25:12', '2017-12-27 19:25:12'),
(294, 1, 'PSyuKpYZcZ9Ji2eZ5j5rfSh0u6yWDxDS', '2017-12-27 22:32:12', '2017-12-27 22:32:12'),
(295, 1, '5QXQdR5dMiMQF4MSYyuVsYzj5N51Tzux', '2017-12-28 01:38:51', '2017-12-28 01:38:51'),
(296, 1, '6oyeQrWmS58vLjNBe4iMxPX7mUl4gJ8g', '2017-12-29 02:09:33', '2017-12-29 02:09:33'),
(297, 1, 'myq1k4YmAJV6HmELv3CY4Fme7QllpMyV', '2017-12-29 05:40:48', '2017-12-29 05:40:48'),
(298, 1, 'KqG7rQKRTxtJ5owuAVvKCpgDd9ylxyuB', '2018-01-01 19:20:46', '2018-01-01 19:20:46'),
(299, 1, 'gGIbwURi3h2p30EwdzpVSN7s89oJbs1o', '2018-01-01 19:42:39', '2018-01-01 19:42:39'),
(300, 1, 'TMAKb6m8MTahrN1lFJTIoni9vymizoPX', '2018-01-01 22:34:23', '2018-01-01 22:34:23'),
(301, 1, 'fZ3RQ9jvj6UvF2UOcrWIC5tnFpmqrmJr', '2018-01-02 00:59:34', '2018-01-02 00:59:34'),
(302, 1, 'mP3Z9KVER7893IYjcGERZFXKDhm7biAm', '2018-01-02 18:30:12', '2018-01-02 18:30:12'),
(303, 1, 'tsyksujmywH7Hoz3hxqML9Th24Zcv3Dy', '2018-01-03 00:41:50', '2018-01-03 00:41:50'),
(304, 1, 'dMRpWGk7Uvdn3lza8LXBsbteeUnWMOSW', '2018-01-03 05:04:01', '2018-01-03 05:04:01'),
(305, 1, 'F8pNbJFdCdNEIwRCgulVQ1rb5oYmT267', '2018-01-03 09:50:30', '2018-01-03 09:50:30'),
(308, 1, 'mmgyGjX6FKaZrTA1Sy46Xk5afFSPTiLz', '2018-01-03 10:32:13', '2018-01-03 10:32:13'),
(309, 1, 'WkZAETYgs1qll9a5SzLJ5emRNEM2jQcC', '2018-01-03 19:35:54', '2018-01-03 19:35:54'),
(310, 1, 'i3u3Fev9GhSTSKw8zqKOtDxyBukTswNF', '2018-01-04 00:00:04', '2018-01-04 00:00:04'),
(311, 1, 'wIgyuIWSRPW3SoRC3SCDlIdvMSN1ntwp', '2018-01-04 07:50:26', '2018-01-04 07:50:26'),
(312, 1, 'lhTwGs8hINh78Dsjm9VZpOqyGh4ubnFD', '2018-01-04 18:27:00', '2018-01-04 18:27:00'),
(313, 1, 'XZqSKTU7fCn9dhY7pDGf6ny090eeqe8H', '2018-01-05 05:03:20', '2018-01-05 05:03:20'),
(314, 1, 'xPlA9MCUQ1DqNmZwgnVqmexRptuA4bju', '2018-01-05 07:13:15', '2018-01-05 07:13:15'),
(315, 1, 'tIKVZUBkeaj76cE4QGvO5rqFgawgYMNP', '2018-01-06 03:08:10', '2018-01-06 03:08:10'),
(316, 1, 'ntMLkIGaGhDneocoWJFOZTyl6MhuzZan', '2018-01-06 12:28:22', '2018-01-06 12:28:22'),
(317, 1, 'QU8qluCPQ7F4XdP5njtjcRWqzlXX9S8h', '2018-01-06 22:56:38', '2018-01-06 22:56:38'),
(318, 1, 'Us4ZHvY5DHcwpQVf9XysqakskdvsAzFV', '2018-01-07 04:20:27', '2018-01-07 04:20:27'),
(319, 1, 'AsTUE50pKXOtm27NbymiqbnpVrlhzWQ4', '2018-01-07 07:12:26', '2018-01-07 07:12:26'),
(320, 1, 'TSocJysjRMp42L96vEg02rwZBiEUKyyN', '2018-01-07 09:18:55', '2018-01-07 09:18:55'),
(321, 1, 'KQ0cszOBSWH87hnzA7wcYJLSbNcVQgpg', '2018-01-07 19:37:24', '2018-01-07 19:37:24'),
(322, 1, 'H8BxgWKyBTe4U5lwpdbYG43owssAnk1y', '2018-01-08 02:28:24', '2018-01-08 02:28:24'),
(323, 1, '8CEZcoGrealxWIzhXRxoDIGmPieyZkGP', '2018-01-08 04:07:45', '2018-01-08 04:07:45'),
(324, 1, '9wJ8Z8j1bqUBFAPGBkUytzbUmZqKV3HL', '2018-01-08 08:56:34', '2018-01-08 08:56:34'),
(325, 1, 'XKZh1syWLfcamMSbLhsL9SJVPf2Mfv67', '2018-01-08 10:14:35', '2018-01-08 10:14:35'),
(327, 1, 'loNG0asl3Sj6zCitYw1n692cZ5AWL72j', '2018-01-08 23:13:14', '2018-01-08 23:13:14'),
(328, 1, 'kFqFfFmhk2m2hy3Bj3Kuhn8YkI6WyGP1', '2018-01-08 23:20:42', '2018-01-08 23:20:42'),
(329, 1, 'U7t1BBwwPaAhglF8LUPBuWCzHANUDsKh', '2018-01-09 01:22:36', '2018-01-09 01:22:36'),
(330, 1, 'kryBmI5jqwrndEJvS7r4QFl5aKOUn4Rl', '2018-01-09 11:51:15', '2018-01-09 11:51:15'),
(331, 1, 'Yll3QjOrDTaxUkqpcbg62fOqmFlHLhgp', '2018-01-09 20:29:19', '2018-01-09 20:29:19'),
(332, 1, 'AYnzFsKBk3DG8o1HFCkbUaRcTs92YbM3', '2018-01-09 21:30:21', '2018-01-09 21:30:21'),
(333, 1, 'rNBV0y0Wan6Qpj65pQmiJOQ52qtkQ0sL', '2018-01-10 00:31:26', '2018-01-10 00:31:26'),
(334, 1, 'jKTPdBjo4Ev0seh3qIoU8CMVvIE0TTkE', '2018-01-10 02:52:39', '2018-01-10 02:52:39'),
(335, 1, 'E8NFXc9C2nsm8W6FWfgrrGsobWiPRnCT', '2018-01-10 08:34:20', '2018-01-10 08:34:20'),
(336, 1, 'vQMwlhh0SMMXZiQ7fQX1UweaJtNwM2Bv', '2018-01-10 19:06:53', '2018-01-10 19:06:53'),
(337, 1, 'ws5Lv88o5eWYYKzeiqwIHXmhwb5ItcOf', '2018-01-11 07:38:41', '2018-01-11 07:38:41'),
(338, 1, 'ouWCgfhI5q9H3k4h6w2tttsiJV8y3Qzp', '2018-01-11 10:31:12', '2018-01-11 10:31:12'),
(339, 1, 'elx9rwAfOXrPGOmTcsxZ9gsI5i9B9FAJ', '2018-01-11 10:32:25', '2018-01-11 10:32:25'),
(340, 1, 'utdXQIFty8RcOHFm8tpglAx8ANG7irml', '2018-01-11 18:57:38', '2018-01-11 18:57:38'),
(341, 1, 'XigZe34t3cWVnSlrmtPwHHvUHXNHmyPT', '2018-01-11 19:10:44', '2018-01-11 19:10:44'),
(342, 1, 'wwJoo2CBoB1bdZp6C56TPlo1lQ7mLSUa', '2018-01-11 23:57:32', '2018-01-11 23:57:32'),
(343, 1, 'D4OaTt5Z6zu1q6cPPJdne029l1QSAIJz', '2018-01-12 00:55:46', '2018-01-12 00:55:46'),
(344, 1, 'pvdA7qp7hS1G0FazeLwNIJkHXK7hQXzs', '2018-01-12 01:56:45', '2018-01-12 01:56:45'),
(345, 1, 'TcFmUyoJEeyOuCos5ePBdYugNanUjxVd', '2018-01-12 02:06:12', '2018-01-12 02:06:12'),
(346, 1, 'gKRIy92eSDkDLPtDEzZxHPvTO7vmNoaA', '2018-01-13 12:11:00', '2018-01-13 12:11:00'),
(347, 1, 'RHDxUSWbh2csZRCETQ3hXJuTLr4FyzzU', '2018-01-13 13:09:15', '2018-01-13 13:09:15'),
(348, 1, 'pTRVtKlFP6VnVnh61v9ZDhDBtutgZcta', '2018-01-13 13:12:05', '2018-01-13 13:12:05'),
(349, 1, '6k8RmyBaDmXZTwXKws2BaqjnebRDA46s', '2018-01-13 22:32:59', '2018-01-13 22:32:59'),
(350, 1, '29aWBcPaThOZhTUJ3TCMTr06inrXXpPc', '2018-01-14 05:18:27', '2018-01-14 05:18:27'),
(351, 1, 'l1FodYbVYnF5qllJXQn47jURkjbYQIah', '2018-01-14 09:12:20', '2018-01-14 09:12:20'),
(352, 1, 'C7CLHzromxCwETZPNWuFB5KQ1lLgJktO', '2018-01-14 09:39:44', '2018-01-14 09:39:44'),
(353, 1, 'Y7i1AwV61KINlely1225s2t3KYEoTeCl', '2018-01-14 09:54:05', '2018-01-14 09:54:05'),
(354, 1, 'yEepEQljz0lQ9veGResUYlNzZmZVSzYY', '2018-01-14 21:21:16', '2018-01-14 21:21:16'),
(355, 1, 'MoHMY2GAVZ06IfQ8lOrjvKHgSpRlt3sf', '2018-01-14 21:43:17', '2018-01-14 21:43:17'),
(356, 1, 'gJFjqXGL718vBEDWtiWFqrXd7wzQ3PJu', '2018-01-15 11:12:16', '2018-01-15 11:12:16'),
(357, 1, 'lAT4nQL5p2NV6Av36QLpsaS9oTck2miN', '2018-01-15 18:30:37', '2018-01-15 18:30:37'),
(358, 1, '7YzpEdozcjd8zxPMQBoLKz4wKQNvPvmk', '2018-01-15 18:55:34', '2018-01-15 18:55:34'),
(359, 1, 'CDE7azpfNeLEJOz3qA6iixYxURaNY7eL', '2018-01-16 02:56:25', '2018-01-16 02:56:25'),
(360, 1, 'MeVL2sSlFRzhrG0xaJ6ZqRoDCyyrfqpw', '2018-01-16 10:27:54', '2018-01-16 10:27:54'),
(362, 1, '7YWkgnr0fcthbBrZtZxI5VYfq9GkeIrH', '2018-01-16 20:15:12', '2018-01-16 20:15:12'),
(363, 1, 'C7HQZp1uoHWuUddbCURbC67F8WRFPbhz', '2018-01-16 20:57:30', '2018-01-16 20:57:30'),
(364, 1, 'An1hk9DM1kFNeHQDbXs26BUas2QhrMQM', '2018-01-17 00:28:12', '2018-01-17 00:28:12'),
(366, 1, '1wUTqWD2BFEEIS98lz1DmfP6K2QhdeMT', '2018-01-17 00:47:17', '2018-01-17 00:47:17'),
(368, 1, 'qsZQcTzpevnkZoiyIpQbaR4qu3r4g3GV', '2018-01-17 04:18:35', '2018-01-17 04:18:35'),
(372, 1, 'WjL3wP64VMbVgVUFVl99MdM5kcIdpQCy', '2018-01-17 08:29:47', '2018-01-17 08:29:47'),
(373, 1, 'ttUIgNCKBMBEkjLsKH9WuRDAEG4TPjzU', '2018-01-17 20:14:51', '2018-01-17 20:14:51'),
(374, 1, 'noRUog2Feq5ZNAGHfze9DBaubeDzabca', '2018-01-17 20:57:02', '2018-01-17 20:57:02'),
(375, 1, 'zkZ51ymxpywKCyuXmR3HqwHymINrQMfz', '2018-01-18 00:10:25', '2018-01-18 00:10:25'),
(376, 1, 'lzNZOymz8HgNudpRO5sMyTKipm0tpDGF', '2018-01-18 00:16:14', '2018-01-18 00:16:14'),
(377, 1, '2yCG7tSmilLxN8pzJjS2eMkCbplTTJ0h', '2018-01-18 03:52:31', '2018-01-18 03:52:31'),
(378, 1, 'RMWiH4kf71KduXOMGFtgTa3VDI7RA25R', '2018-01-18 09:25:22', '2018-01-18 09:25:22'),
(379, 1, 'jXAi4A9SVVlzEzUs51gWW6AFaJRNKgkG', '2018-01-18 11:20:09', '2018-01-18 11:20:09'),
(380, 1, 'WxxLLaypmZiGOfHWBQbzPUjt0bams3gx', '2018-01-18 11:57:31', '2018-01-18 11:57:31'),
(381, 1, 'KkJ6EvsSh1GkOXBYtfLzTeTE4H2mLzTT', '2018-01-18 19:23:30', '2018-01-18 19:23:30'),
(382, 1, 'xF88UwOSd9p1tmkrmBOEgAjIomkJB0Hx', '2018-01-19 00:25:51', '2018-01-19 00:25:51'),
(383, 1, 'A32q6kvPJplJ4WAIYSrx60zCSSnxpaDG', '2018-01-19 01:20:22', '2018-01-19 01:20:22'),
(384, 1, 'lPLxh0KbKNSsXA2BILeBXobgaGj68OKR', '2018-01-19 02:03:13', '2018-01-19 02:03:13'),
(385, 1, '5HCVqG0BkfTwNNXMnON1OkvmplY5VtPh', '2018-01-19 09:04:44', '2018-01-19 09:04:44'),
(386, 1, 'taFneiiXaSPaXyiEJwFR60oA690Cb2X8', '2018-01-19 20:43:49', '2018-01-19 20:43:49'),
(387, 1, 't23Yq0Wf57G9dDYIZ2lHzkBEnq6ICQAK', '2018-01-20 11:58:10', '2018-01-20 11:58:10'),
(388, 1, 'XmFShMJFqbARwYvuwfNLSOdWLrZmr32z', '2018-01-20 21:08:01', '2018-01-20 21:08:01'),
(389, 1, 'MBWjdSM0CwnQcdFbo5ea8EyDH1YC5ST0', '2018-01-21 05:40:50', '2018-01-21 05:40:50'),
(390, 1, 'evDd4G82kjgac50TOKv1DZrobHzWEZr8', '2018-01-21 08:05:52', '2018-01-21 08:05:52'),
(391, 1, '4dPKUN7BFQPOuGvA8Xt8Oh8azZQQ9pkx', '2018-01-21 10:51:12', '2018-01-21 10:51:12'),
(392, 1, 'iOi6rBobAw6B2Khg9CLDbPizVJYKGW94', '2018-01-21 18:51:39', '2018-01-21 18:51:39'),
(393, 1, 'CY5tmN8UCUMqmSVoRFOipfHKUpoT0j4f', '2018-01-22 00:07:03', '2018-01-22 00:07:03'),
(394, 1, 'aGzNsWOhDrVlT9HIVVFwCpsue1r7D5YA', '2018-01-22 00:44:48', '2018-01-22 00:44:48'),
(395, 1, 'VS5iiETNULvHItpuUmHQUH81sChbbY1l', '2018-01-22 19:02:07', '2018-01-22 19:02:07'),
(399, 1, 'NWnj4UvnZqwWOTX3CeusZ6v8Fhf2c6ub', '2018-01-24 19:02:36', '2018-01-24 19:02:36'),
(400, 1, 'VLSxXPLlSKCtughyjzMut9ug3flrhyi1', '2018-01-24 19:27:36', '2018-01-24 19:27:36'),
(401, 1, 'SnMonFyxu1katYF7DoIioInfgbQIbY6Z', '2018-01-24 23:56:14', '2018-01-24 23:56:14'),
(402, 1, 'u8RnIhbv4c9eCZZaMSjHrsM9hfTRb3r5', '2018-01-25 00:09:18', '2018-01-25 00:09:18'),
(403, 1, 'kb7yBdeIHuIl4kIa9Jt7nDFpllfRVRhx', '2018-01-25 02:08:12', '2018-01-25 02:08:12'),
(404, 1, 'gVw8xTL0zeKZYrqEGP4CcC85esbG8ypE', '2018-01-25 18:18:17', '2018-01-25 18:18:17'),
(406, 4, 'A4FLGiVU9LvfsVEp5mrRl5TZl6nb3ksW', '2018-01-26 01:05:01', '2018-01-26 01:05:01'),
(408, 4, 'aiVheclIV8RMZL6ZMbi0Dg04vjfucSZP', '2018-01-26 01:05:31', '2018-01-26 01:05:31'),
(409, 1, 'gUdW9qbl64egCPRWtavTK9wnexEo3keM', '2018-01-26 01:08:27', '2018-01-26 01:08:27'),
(410, 4, '3HSzUQI78C96yV5DRt6jGX33bdYCK9fb', '2018-01-26 01:43:11', '2018-01-26 01:43:11'),
(411, 4, 'tOlFF3JRWPtyXMuVCeaaMiHjBd2elRJF', '2018-01-26 01:44:07', '2018-01-26 01:44:07'),
(412, 4, 'NscMqRLmkV3IOWMf6RhfVuJbkL8xgsDC', '2018-01-26 01:46:45', '2018-01-26 01:46:45'),
(414, 6, 'wgJCXkC4Mn1V5f0YC9lp8bPKDt85kGtq', '2018-01-26 02:25:04', '2018-01-26 02:25:04'),
(416, 6, 'zSKba5kTj8Qr4ojFsxLqGI7xLuD4q0WR', '2018-01-26 02:30:32', '2018-01-26 02:30:32'),
(417, 6, 'rzG8JBGeT8fiapZ9DtD2uip0lQJwh5q2', '2018-01-26 02:37:18', '2018-01-26 02:37:18'),
(419, 1, 'Sw9M1Lswoukl6vcgMxoFzXvaAtMQCxAA', '2018-01-26 02:57:09', '2018-01-26 02:57:09'),
(420, 1, 'uUOUyXWyeFziFHkxz8h4bDzxhywQ37Si', '2018-01-26 02:57:48', '2018-01-26 02:57:48'),
(421, 1, 'MbKhVbGfhtxwZPPVgtHxdstVXuLeAaiU', '2018-01-26 02:58:29', '2018-01-26 02:58:29'),
(422, 1, 'wJ73tjH6p3w5MYYe7n21fOiCeA3QZfKb', '2018-01-26 02:58:29', '2018-01-26 02:58:29'),
(423, 1, 'VnxOGigvNVkdiHwI3uvstUftvZRW8oBI', '2018-01-26 02:58:36', '2018-01-26 02:58:36'),
(425, 6, 'J0ifpUcLW0NOdbzz7ewLRHG9BpBcOrRA', '2018-01-26 03:17:02', '2018-01-26 03:17:02'),
(427, 6, 'balWgkJAiveVZzQfMycjeIUYgqNmLW3y', '2018-01-26 03:35:38', '2018-01-26 03:35:38'),
(429, 6, 'UyB9F0vWGHpwS1r9avhYxJizwU4HVIwM', '2018-01-26 03:39:37', '2018-01-26 03:39:37'),
(431, 6, 'qfkVlp3dp4QXymKAkS2PfMQCdIeFHQOx', '2018-01-26 04:32:49', '2018-01-26 04:32:49'),
(433, 1, 'A3z4mzsQPa7TSS1rthS9qcXBXGZRHvME', '2018-01-28 09:36:02', '2018-01-28 09:36:02'),
(434, 1, 'fAPFbxNuoTiKlDhdRh4hZPCArPfnVG4h', '2018-01-28 09:36:02', '2018-01-28 09:36:02'),
(439, 1, '0KG2CDdHiNeVtq5WaMwsrvsHxWeLiY9E', '2018-01-28 09:59:33', '2018-01-28 09:59:33'),
(441, 1, 'coUpXV4oip1EFQd6L1wHB22aEgmD85MB', '2018-01-28 10:02:44', '2018-01-28 10:02:44'),
(442, 1, 'qxtyJQgQjE7IdV5pnazmZdm0VB1dGvJn', '2018-01-28 10:02:44', '2018-01-28 10:02:44'),
(443, 1, 'eBajDKsoIEBHqQFXz0BKLjJ9nJHtELsK', '2018-01-28 18:19:52', '2018-01-28 18:19:52'),
(444, 1, 'l9baDmYe0AnLN5Gle9ep2sE7cHEVOnr5', '2018-01-28 18:19:52', '2018-01-28 18:19:52'),
(447, 8, 'GmZMlufC8X5lo3RzA5gsyz2kXYwWvwQF', '2018-01-28 20:45:36', '2018-01-28 20:45:36'),
(448, 8, 'PPGJaXq6NaHLG1dnSP9FOkjzFSdKqvvI', '2018-01-28 21:38:01', '2018-01-28 21:38:01'),
(449, 1, 'vBzzq1RtNsCmGiczUJLFsHSyNzTTubXg', '2018-01-28 21:38:13', '2018-01-28 21:38:13'),
(451, 1, 'B3WzQ8UpMARDoY28vEkB7erfEEpHmLT1', '2018-01-28 21:38:37', '2018-01-28 21:38:37'),
(454, 8, 'tn7HvCBoyGphTHqjxPl0d3fJ3TWVRmTi', '2018-01-29 00:39:35', '2018-01-29 00:39:35'),
(457, 1, 'oo71n7ghA1RolYX2RzzeXwiTJ4KcV6zr', '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(458, 8, 'jfRtZvsf76QuiNUNY0sgWSA0SbX0YmBR', '2018-01-30 01:41:20', '2018-01-30 01:41:20'),
(460, 1, 'V2vGTjxoDwMXXVvXTCCsodx2oqNRBswK', '2018-01-31 00:07:51', '2018-01-31 00:07:51'),
(461, 1, 'WXfdX3IbIO2N4pHvxeElybt2HWjDzpsZ', '2018-01-31 00:07:51', '2018-01-31 00:07:51'),
(462, 1, 'zWSf8uHGNVGZn8HsVpCc4iowpPHSBqvU', '2018-01-31 09:19:53', '2018-01-31 09:19:53'),
(464, 8, 'ajfSvynTDfObqdqWFVTaN52EkMP1AUNJ', '2018-01-31 10:29:33', '2018-01-31 10:29:33'),
(465, 8, 'ag2Euhwpe5LXZvoQ1FsRXSH2yo0EHwsm', '2018-01-31 10:35:49', '2018-01-31 10:35:49'),
(467, 8, 'yR8tHjT4HKlrVJLADJ5LykJbP27czCKC', '2018-01-31 10:38:45', '2018-01-31 10:38:45'),
(468, 1, 'gJnB66CrVq6a8Mo6GhtYiOtLZhZ1LTMd', '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(475, 1, 'L7DcvNPiOQIUjCUATn61Y2sh3g3R2k49', '2018-01-31 19:35:25', '2018-01-31 19:35:25'),
(476, 1, 'QK86h3fyZTBFMRUhuP0ZKm1Wq4kzxPbS', '2018-01-31 19:35:25', '2018-01-31 19:35:25'),
(478, 1, 'VqoYkwd6LBv1rVWPEtIMR05InmYOuszG', '2018-01-31 19:55:02', '2018-01-31 19:55:02'),
(479, 1, 'JztvQ0vdnItZtqSiZD0Fi6NEK6c5PjZc', '2018-01-31 19:55:02', '2018-01-31 19:55:02'),
(481, 8, 'zX2GBFJB6Jpcz8jaXScc8XmWSgARW6y1', '2018-02-01 01:42:35', '2018-02-01 01:42:35'),
(482, 8, 'JWqpm7p61IXddy2YyuMkzHTdg7OWwVdL', '2018-02-01 01:50:31', '2018-02-01 01:50:31'),
(483, 1, 'Ck89j1QoAOeoNZvhYi5wPRW4nTm0C1dq', '2018-02-01 02:29:04', '2018-02-01 02:29:04'),
(486, 1, 'AKrOzoCvVttxLIVRMnTD6GPbj2iWGwvK', '2018-02-01 02:56:37', '2018-02-01 02:56:37'),
(487, 1, 'BaciCQSFrRR68rCmWlXSBTzmdHd27uiN', '2018-02-01 02:56:37', '2018-02-01 02:56:37'),
(488, 1, 'KGY6WVGRXBb3UJWz8YnDSw8hXGgzgkA6', '2018-02-01 11:35:24', '2018-02-01 11:35:24'),
(489, 1, '6WdgCEIxtViQrSWjU3UK9HL7wyZ34TUX', '2018-02-01 11:35:24', '2018-02-01 11:35:24'),
(490, 1, 'SfQrjxzVWC8XrSnz8yWht0t3Q8UQdOQr', '2018-02-01 18:27:36', '2018-02-01 18:27:36'),
(494, 1, 'RjNhUlg5noCoWG1eUNo1StHO874EkDvu', '2018-02-01 19:03:40', '2018-02-01 19:03:40'),
(497, 1, 'cESLyplJNgtAmPpMwURnw68ZWEV39PK2', '2018-02-01 19:42:32', '2018-02-01 19:42:32'),
(499, 8, 'NtMOofbv1v5rH5JB3OUHnsrFrF271Tzi', '2018-02-01 20:49:06', '2018-02-01 20:49:06'),
(500, 1, 'wcFo02JafGaHPsM64DKM6t3jA5wTrYjF', '2018-02-01 20:56:50', '2018-02-01 20:56:50'),
(502, 1, 'fGUtMqDBI2ZARFPFBhlaxnCkzrm7UodL', '2018-02-01 20:57:08', '2018-02-01 20:57:08'),
(504, 8, 'KfXSL3FN1hK8b6QT9LdmouyS37T0qqHB', '2018-02-01 20:57:36', '2018-02-01 20:57:36'),
(505, 1, '8Iv9LY8GOJZd1WTl1I5Wz01lx1KzdZWT', '2018-02-01 20:58:09', '2018-02-01 20:58:09'),
(507, 1, 'w9M0kSWQtdQD7zD6stbK63JUbTj1u058', '2018-02-01 20:58:17', '2018-02-01 20:58:17'),
(510, 8, 'NJ76oLl9RoWbXTJShfkd00cpuQZK5zr5', '2018-02-01 21:37:57', '2018-02-01 21:37:57'),
(511, 1, 'jgz8uBUFbY3MSxPOXp7bqA0knGoU5zi7', '2018-02-01 21:37:59', '2018-02-01 21:37:59'),
(514, 8, 'JsQzqbxIGhNuS6SeJ4y8eCnhSDJaeL3s', '2018-02-01 23:56:53', '2018-02-01 23:56:53'),
(515, 1, 'r3gBMpKSI53eQpXqydREPc6oSjC06OUB', '2018-02-01 23:56:56', '2018-02-01 23:56:56'),
(518, 1, 'QoyBvVRHUwmgnGPnOcyUXU4YqPRqMZVe', '2018-02-02 00:01:51', '2018-02-02 00:01:51'),
(521, 1, '0SWAzz5NkBMas3g7T6GC34L38vm83epY', '2018-02-02 00:19:04', '2018-02-02 00:19:04'),
(524, 1, 'MQuKcCFJhtuKynkQkFHxyZBLIy8Ivd3r', '2018-02-02 00:24:05', '2018-02-02 00:24:05'),
(526, 1, '3DniRRSZFO1aYX6cCNqgyiL0OJqpfEVf', '2018-02-02 01:06:18', '2018-02-02 01:06:18'),
(528, 1, 'OfRdoNYhFL3afKEYmg9oWZjtuhANsBfv', '2018-02-02 01:44:35', '2018-02-02 01:44:35'),
(529, 1, 'MlR5175cwkutGCxMpXuVrhgCzUgFIt9A', '2018-02-02 01:44:35', '2018-02-02 01:44:35'),
(530, 8, 'ipiaaYYS8qIo8iSdqnZ6VdkRKq1iyooC', '2018-02-02 09:02:53', '2018-02-02 09:02:53'),
(531, 1, 'wSD7DupM92LgniN8nQQvue0JvXYrEUwC', '2018-02-02 10:18:45', '2018-02-02 10:18:45'),
(532, 1, 'X2NpDhYEcKGWnyoBxRkMG0nasltzUZq4', '2018-02-02 10:18:45', '2018-02-02 10:18:45'),
(533, 1, 'HdLRvWB8aWY9gaFouz9JVIZii2eGcpPp', '2018-02-02 19:05:37', '2018-02-02 19:05:37'),
(535, 1, 'ot4ul9MDUpNjh3avRZwfDQhckk7zNpNC', '2018-02-02 19:07:26', '2018-02-02 19:07:26'),
(536, 1, 'QMzisn3xBXMMAegjFxwbyYlkU2opUFRz', '2018-02-02 19:07:26', '2018-02-02 19:07:26'),
(538, 8, 'ubMneyA1o1wIPK0UHx6I8WuhTRJlYHkP', '2018-02-02 21:16:54', '2018-02-02 21:16:54'),
(539, 8, 'qGTddyiGKSzM0wHVkenVijba0gtvLqOt', '2018-02-03 04:53:58', '2018-02-03 04:53:58'),
(541, 8, 'Nwn0yVO5SlhBd9eY4Z46SbZ1gEPi5IEr', '2018-02-03 09:41:10', '2018-02-03 09:41:10'),
(543, 8, '1aF9GIC1ZWN63Q3hyjgcI91MVJfM5syC', '2018-02-03 13:40:10', '2018-02-03 13:40:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `photo`
--

INSERT INTO `photo` (`id`, `album_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 'conmochieu-1.png', 6, 1, '2018-01-09 07:07:39', '2018-01-09 07:08:16'),
(5, 1, 'conmochieu-2.png', 8, 1, '2018-01-09 07:07:40', '2018-01-09 07:08:16'),
(6, 1, 'conmochieu-3.png', 10, 1, '2018-01-09 07:07:40', '2018-01-09 07:08:16'),
(7, 1, 'conmochieu-4.png', 12, 1, '2018-01-09 07:07:41', '2018-01-09 07:08:16'),
(8, 1, 'conmochieu-5.png', 14, 1, '2018-01-09 07:07:41', '2018-01-09 07:08:16'),
(9, 1, 'conmochieu-6.png', 16, 1, '2018-01-09 07:07:42', '2018-01-09 07:08:16'),
(10, 1, 'conmochieu-7.png', 2, 1, '2018-01-09 07:07:42', '2018-01-09 07:08:16'),
(11, 1, 'conmochieu-8.png', 3, 1, '2018-01-09 07:07:43', '2018-01-09 07:08:16'),
(12, 1, 'conmochieu-9.png', 4, 1, '2018-01-09 07:07:43', '2018-01-09 07:08:16'),
(13, 1, 'conmochieu-10.png', 5, 1, '2018-01-09 07:07:44', '2018-01-09 07:08:16'),
(14, 1, 'conmochieu-11.png', 7, 1, '2018-01-09 07:07:44', '2018-01-09 07:08:16'),
(15, 1, 'conmochieu-12.png', 9, 1, '2018-01-09 07:07:45', '2018-01-09 07:08:16'),
(16, 1, 'conmochieu-13.png', 11, 1, '2018-01-09 07:07:45', '2018-01-09 07:08:16'),
(17, 1, 'conmochieu-14.png', 13, 1, '2018-01-09 07:07:45', '2018-01-09 07:08:16'),
(18, 1, 'conmochieu-15.png', 15, 1, '2018-01-09 07:07:46', '2018-01-09 07:08:16'),
(19, 1, 'conmochieu-16.png', 1, 1, '2018-01-09 07:07:46', '2018-01-09 07:07:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege`
--

DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `privilege`
--

INSERT INTO `privilege` (`id`, `fullname`, `controller`, `action`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'category-article-list', 'category-article', 'list', 1, '2017-05-18 06:49:30', '2017-05-19 17:26:33'),
(2, 'category-article-form', 'category-article', 'form', 2, '2017-05-18 06:50:32', '2017-11-26 16:43:37'),
(3, 'category-article-trash', 'category-article', 'trash', 3, '2017-05-18 06:51:27', '2017-11-26 16:43:37'),
(4, 'article-list', 'article', 'list', 1, '2017-05-18 08:34:41', '2017-05-19 18:11:35'),
(5, 'article-form', 'article', 'form', 2, '2017-05-18 08:35:17', '2017-05-19 17:24:54'),
(16, 'category-article-status', 'category-article', 'status', 4, '2017-05-19 08:23:46', '2017-11-26 16:43:37'),
(17, 'category-article-delete', 'category-article', 'delete', 5, '2017-05-19 08:25:14', '2017-11-26 16:43:37'),
(18, 'privilege-list', 'privilege', 'list', 1, NULL, '2017-11-26 16:43:37'),
(19, 'privilege-form', 'privilege', 'form', 2, NULL, '2017-11-26 16:43:37'),
(24, 'group-member-list', 'group-member', 'list', 1, '2017-05-19 11:59:40', '2017-11-26 16:43:37'),
(25, 'group-member-form', 'group-member', 'form', 2, '2017-05-19 12:00:09', '2017-11-26 16:43:37'),
(33, 'category-article-ordering', 'category-article', 'ordering', 6, '2017-05-19 17:29:14', '2017-11-26 16:43:37'),
(43, 'user-list', 'user', 'list', 1, '2017-05-19 17:45:27', '2017-11-26 16:43:37'),
(44, 'user-form', 'user', 'form', 2, '2017-05-19 17:45:57', '2017-11-26 16:43:37'),
(49, 'menu-type-list', 'menu-type', 'list', 1, '2017-05-19 17:49:35', '2017-11-26 16:43:37'),
(50, 'menu-type-form', 'menu-type', 'form', 2, '2017-05-19 17:49:53', '2017-11-26 16:43:37'),
(55, 'menu-list', 'menu', 'list', 1, '2017-05-19 18:01:20', '2017-11-26 16:43:37'),
(56, 'menu-form', 'menu', 'form', 2, '2017-05-19 18:01:38', '2017-11-26 16:43:37'),
(57, 'menu-trash', 'menu', 'trash', 3, '2017-05-19 18:01:52', '2017-11-26 16:43:37'),
(58, 'menu-delete', 'menu', 'delete', 4, '2017-05-19 18:02:17', '2017-11-26 16:43:37'),
(59, 'menu-status', 'menu', 'status', 5, '2017-05-19 18:02:31', '2017-11-26 16:43:37'),
(60, 'menu-ordering', 'menu', 'ordering', 6, '2017-05-19 18:02:50', '2017-11-26 16:43:37'),
(61, 'media-list', 'media', 'list', 1, '2017-05-19 18:05:47', '2017-11-26 16:43:37'),
(62, 'media-form', 'media', 'form', 2, '2017-05-19 18:06:05', '2017-11-26 16:43:37'),
(63, 'media-trash', 'media', 'trash', 3, '2017-05-19 18:06:22', '2017-11-26 16:43:37'),
(67, 'product-list', 'product', 'list', 1, '2017-05-19 18:09:08', '2017-11-26 16:43:37'),
(68, 'product-form', 'product', 'form', 2, '2017-05-19 18:09:20', '2017-11-26 16:43:37'),
(79, 'invoice-list', 'invoice', 'list', 1, '2017-05-19 18:14:02', '2017-11-26 16:43:37'),
(80, 'invoice-form', 'invoice', 'form', 2, '2017-05-19 18:14:30', '2017-11-26 16:43:37'),
(85, 'customer-list', 'customer', 'list', 1, '2017-05-19 18:16:10', '2017-11-26 16:43:37'),
(86, 'customer-form', 'customer', 'form', 2, '2017-05-19 18:16:33', '2017-11-26 16:43:37'),
(103, 'category-product-list', 'category-product', 'list', 1, '2017-11-26 14:50:53', '2017-11-26 14:50:53'),
(104, 'category-product-form', 'category-product', 'form', 2, '2017-11-26 14:51:11', '2017-11-26 14:51:11'),
(105, 'payment-method-list', 'payment-method', 'list', 1, '2017-11-26 14:52:56', '2017-11-26 14:52:56'),
(106, 'payment-method-form', 'payment-method', 'form', 2, '2017-11-26 14:53:10', '2017-11-26 14:53:10'),
(107, 'module-item-list', 'module-item', 'list', 1, '2017-11-26 14:54:56', '2017-11-26 14:54:56'),
(108, 'module-item-form', 'module-item', 'form', 2, '2017-11-26 14:55:07', '2017-11-26 14:55:07'),
(109, 'setting-system-list', 'setting-system', 'list', 1, '2017-11-26 14:56:14', '2017-11-26 14:56:31'),
(110, 'setting-system-form', 'setting-system', 'form', 2, '2017-11-26 14:56:46', '2017-11-26 14:56:46'),
(111, 'category-product-trash', 'category-product', 'trash', 3, '2017-11-26 16:31:27', '2017-11-26 16:31:45'),
(112, 'category-product-status', 'category-product', 'status', 4, '2017-11-26 16:32:17', '2017-11-26 16:32:17'),
(113, 'category-product-delete', 'category-product', 'delete', 5, '2017-11-26 16:32:50', '2017-11-26 16:32:50'),
(114, 'category-product-ordering', 'category-product', 'ordering', 6, '2017-11-26 16:33:08', '2017-11-26 16:33:08'),
(115, 'category-banner-list', 'category-banner', 'list', 1, '2017-12-12 04:05:17', '2017-12-12 04:05:17'),
(116, 'category-banner-form', 'category-banner', 'form', 2, '2017-12-12 04:05:47', '2017-12-12 04:05:47'),
(117, 'category-banner-trash', 'category-banner', 'trash', 3, '2017-12-12 04:06:15', '2017-12-12 04:06:15'),
(118, 'category-banner-status', 'category-banner', 'status', 4, '2017-12-12 04:06:43', '2017-12-12 04:06:43'),
(119, 'category-banner-delete', 'category-banner', 'delete', 5, '2017-12-12 04:07:11', '2017-12-12 04:08:01'),
(120, 'category-banner-ordering', 'category-banner', 'ordering', 6, '2017-12-12 04:07:32', '2017-12-12 04:08:01'),
(121, 'banner-list', 'banner', 'list', 1, '2017-12-12 07:41:46', '2017-12-12 07:41:46'),
(122, 'banner-form', 'banner', 'form', 2, '2017-12-12 07:41:56', '2017-12-12 07:41:56'),
(123, 'page-list', 'page', 'list', 1, '2017-12-13 18:10:13', '2017-12-13 18:10:13'),
(124, 'page-form', 'page', 'form', 2, '2017-12-13 18:10:24', '2017-12-13 18:10:24'),
(125, 'project-list', 'project', 'list', 1, '2018-01-04 09:45:36', '2018-01-04 09:45:36'),
(126, 'project-form', 'project', 'form', 2, '2018-01-04 09:45:49', '2018-01-04 09:45:49'),
(127, 'project-article-list', 'project-article', 'list', 1, '2018-01-04 15:21:53', '2018-01-04 15:21:53'),
(128, 'project-article-form', 'project-article', 'form', 2, '2018-01-04 15:22:08', '2018-01-04 15:22:08'),
(129, 'supporter-list', 'supporter', 'list', 1, '2018-01-07 17:18:23', '2018-01-07 17:18:23'),
(130, 'supporter-form', 'supporter', 'form', 2, '2018-01-07 17:18:39', '2018-01-07 17:18:39'),
(131, 'organization-list', 'organization', 'list', 1, '2018-01-08 04:32:03', '2018-01-08 04:32:03'),
(132, 'organization-form', 'organization', 'form', 2, '2018-01-08 04:32:17', '2018-01-08 04:32:17'),
(133, 'album-list', 'album', 'list', 1, '2018-01-08 15:57:00', '2018-01-08 15:57:00'),
(134, 'album-form', 'album', 'form', 2, '2018-01-08 15:57:10', '2018-01-08 15:57:10'),
(135, 'photo-list', 'photo', 'list', 1, '2018-01-08 18:07:30', '2018-01-08 18:07:30'),
(136, 'photo-form', 'photo', 'form', 2, '2018-01-08 18:07:39', '2018-01-08 18:07:39'),
(137, 'category-video-list', 'category-video', 'list', 1, '2018-01-09 09:54:53', '2018-01-09 09:54:53'),
(138, 'category-video-form', 'category-video', 'form', 2, '2018-01-09 09:55:06', '2018-01-09 09:55:06'),
(139, 'video-list', 'video', 'list', 1, '2018-01-09 09:55:16', '2018-01-09 09:55:16'),
(140, 'video-form', 'video', 'form', 2, '2018-01-09 09:55:24', '2018-01-09 09:55:24'),
(141, 'province-list', 'province', 'list', 1, '2018-01-21 17:53:20', '2018-01-21 17:53:20'),
(142, 'province-form', 'province', 'form', 2, '2018-01-21 17:53:29', '2018-01-21 17:53:29'),
(143, 'district-list', 'district', 'list', 1, '2018-01-22 02:03:24', '2018-01-22 02:03:24'),
(144, 'district-form', 'district', 'form', 2, '2018-01-22 02:03:34', '2018-01-22 02:03:34'),
(145, 'category-param-list', 'category-param', 'list', 1, '2018-02-01 20:15:43', '2018-02-01 20:15:43'),
(146, 'category-param-form', 'category-param', 'form', 2, '2018-02-01 20:15:56', '2018-02-01 20:15:56'),
(147, 'category-param-trash', 'category-param', 'trash', 3, '2018-02-01 20:43:36', '2018-02-01 20:43:36'),
(148, 'category-param-delete', 'category-param', 'delete', 4, '2018-02-01 20:43:52', '2018-02-01 20:43:52'),
(149, 'category-param-status', 'category-param', 'status', 1, '2018-02-01 20:44:13', '2018-02-01 20:44:13'),
(150, 'category-param-ordering', 'category-param', 'ordering', 5, '2018-02-01 20:44:42', '2018-02-01 20:44:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `child_image` text CHARACTER SET utf8,
  `price` decimal(11,2) DEFAULT NULL,
  `sale_price` decimal(11,2) DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `detail` text CHARACTER SET utf8,
  `count_view` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `size_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `code`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `child_image`, `price`, `sale_price`, `intro`, `detail`, `count_view`, `category_id`, `size_type`, `user_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(4, '273185649', 'Đầm Body Thời Trang Eden Ren Hoa Cao Cấp - D231', 'metakeyword Đầm Body Thời Trang Eden Ren Hoa Cao Cấp - D231 - D231', 'metadescription Đầm Body Thời Trang Eden Ren Hoa Cao Cấp - D231 - D231', 'dam-body-thoi-trang-eden-ren-hoa-cao-cap-d231', 'D231.jpg', 1, '[\"D231-1.jpg\",\"D231-2.jpg\",\"D231-3.jpg\"]', '569000.00', '449000.00', 'giới thiệu Đầm Body Thời Trang Eden Ren Hoa Cao Cấp - D231 - D231', '<p style=\"text-align:justify\">Đầm Body Thời Trang Eden Ren Hoa Cao Cấp được l&agrave;m từ chất liệu ren nhập cao cấp v&agrave; kỹ thuật may kh&eacute;o l&eacute;o, tỉ mỉ sẽ mang lại cho bạn sự sang trọng qu&yacute; ph&aacute;i.&nbsp;</p>\n\n<p style=\"text-align:justify\">Điểm nổi bật :</p>\n\n<p style=\"text-align:justify\">-Kiểu d&aacute;ng : đầm body, s&aacute;t n&aacute;ch.</p>\n\n<p style=\"text-align:justify\">-Chất liệu : Ren cao c&acirc;p</p>\n\n<p style=\"text-align:justify\">-M&agrave;u : Đỏ</p>\n\n<p style=\"text-align:justify\">-Size : XS, S,M,L,XL.</p>\n\n<p style=\"text-align:justify\">-Xuất xứ : Việt Nam.</p>\n\n<p style=\"text-align:justify\">-Thương hiệu : Eden.</p>\n\n<p style=\"text-align:justify\">-Trọng lượng :250g.</p>\n\n<p style=\"text-align:justify\">Th&ocirc;ng số sản phẩm:</p>\n\n<p style=\"text-align:justify\">V&ograve;ng ngực x eo x m&ocirc;ng x chiều d&agrave;i :</p>\n\n<p style=\"text-align:justify\">-Size XS : &nbsp;80 x 64 x 84 x 88-90 (cm) (dưới 43kg)</p>\n\n<p style=\"text-align:justify\">-Size S : 82 x 66 x 86 x 88-90 (cm) (43-45kg)</p>\n\n<p style=\"text-align:justify\">-Size M : 84 x 70 x 90 x 88-90 (cm) (45-50kg)</p>\n\n<p style=\"text-align:justify\">-Size L: 88 x 74 x 94 x 88-90 (cm) (50-55kg)</p>\n\n<p style=\"text-align:justify\">-Size XL: 92 x 78 x 98 x 88-90 (cm) (55-60kg)</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/superstore/vip-member/vip-8/test-2.png\" /><img alt=\"\" src=\"/superstore/vip-member/vip-8/test-1.jpg\" /><img alt=\"\" src=\"/superstore/vip-member/vip-8/test-3.jpg\" /><img alt=\"\" src=\"/superstore/vip-member/vip-8/test-4.jpg\" /><img alt=\"\" src=\"/superstore/vip-member/vip-8/test-5.jpg\" /></p>', 301, 42, '400 x 20', 8, 1, '2018-02-01 04:15:10', '2018-02-04 04:13:51'),
(11, '542937681', 'Đầm Body Thời Trang Eden Ren Hoa Cổ Tròn Cao Cấp - D233', 'metakeyword Đầm Body Thời Trang Eden Ren Hoa Cổ Tròn Cao Cấp - D233', 'metadescription Đầm Body Thời Trang Eden Ren Hoa Cổ Tròn Cao Cấp - D233', 'dam-body-thoi-trang-eden-ren-hoa-co-tron-cao-cap-d233', 'D233.jpg', 1, '[\"D233-1.jpg\",\"D233-2.jpg\",\"D233-3.jpg\"]', '569000.00', '0.00', 'giới thiệu Đầm Body Thời Trang Eden Ren Hoa Cổ Tròn Cao Cấp - D233', '<p>chi tiết&nbsp;Đầm Body Thời Trang Eden Ren Hoa Cổ Tr&ograve;n Cao Cấp - D233&nbsp;</p>', 24, 42, '', 8, 2, '2018-02-02 04:57:22', '2018-02-04 02:59:59'),
(12, '347198526', 'Đầm Suông Thời Trang Eden Phối Lưới Họa Tiết Thêu Hoa - D234', 'metakeyword Đầm Suông Thời Trang Eden Phối Lưới Họa Tiết Thêu Hoa - D234', 'metadescription Đầm Suông Thời Trang Eden Phối Lưới Họa Tiết Thêu Hoa - D234', 'dam-suong-thoi-trang-eden-phoi-luoi-hoa-tiet-theu-hoa-d234', 'D234-1.jpg', 1, '[\"D234-2.jpg\",\"D234-3.jpg\",\"D234-4.jpg\",\"D234-5.jpg\"]', '569000.00', '299000.00', 'giới thiệu Đầm Suông Thời Trang Eden Phối Lưới Họa Tiết Thêu Hoa - D234', '<p>chi tiết&nbsp;Đầm Su&ocirc;ng Thời Trang Eden Phối Lưới Họa Tiết Th&ecirc;u Hoa - D234</p>', 3, 42, '', 8, 3, '2018-02-02 06:56:02', '2018-02-04 02:55:31'),
(13, '295683174', 'Đầm Body Thời Trang Eden Ren Hoa Cổ Tim - D235', 'metakeyword Đầm Body Thời Trang Eden Ren Hoa Cổ Tim - D235', 'metadescription Đầm Body Thời Trang Eden Ren Hoa Cổ Tim - D235', 'dam-body-thoi-trang-eden-ren-hoa-co-tim-d235', 'D235.jpg', 1, '[\"D235-1.jpg\",\"D235-2.jpg\",\"D235-3.jpg\"]', '569000.00', '545000.00', 'giới thiệu Đầm Body Thời Trang Eden Ren Hoa Cổ Tim - D235', '<p>chi tiết&nbsp;Đầm Body Thời Trang Eden Ren Hoa Cổ Tim - D235</p>', 3, 42, '450 x 20', 8, 4, '2018-02-02 07:18:26', '2018-02-04 02:56:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_param`
--

DROP TABLE IF EXISTS `product_param`;
CREATE TABLE `product_param` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `param_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_param`
--

INSERT INTO `product_param` (`id`, `product_id`, `param_id`, `created_at`, `updated_at`) VALUES
(19, 5, 10, '2018-02-02 03:51:55', '2018-02-02 03:51:55'),
(20, 5, 14, '2018-02-02 03:51:55', '2018-02-02 03:51:55'),
(21, 5, 24, '2018-02-02 03:51:55', '2018-02-02 03:51:55'),
(22, 5, 31, '2018-02-02 03:51:55', '2018-02-02 03:51:55'),
(58, 12, 35, '2018-02-02 06:56:02', '2018-02-02 06:56:02'),
(59, 12, 36, '2018-02-02 06:56:02', '2018-02-02 06:56:02'),
(60, 12, 37, '2018-02-02 06:56:02', '2018-02-02 06:56:02'),
(61, 12, 38, '2018-02-02 06:56:02', '2018-02-02 06:56:02'),
(62, 12, 39, '2018-02-02 06:56:02', '2018-02-02 06:56:02'),
(86, 11, 19, '2018-02-02 17:22:42', '2018-02-02 17:22:42'),
(87, 11, 28, '2018-02-02 17:22:42', '2018-02-02 17:22:42'),
(88, 11, 31, '2018-02-02 17:22:42', '2018-02-02 17:22:42'),
(89, 11, 35, '2018-02-02 17:22:42', '2018-02-02 17:22:42'),
(90, 11, 36, '2018-02-02 17:22:42', '2018-02-02 17:22:42'),
(91, 11, 37, '2018-02-02 17:22:42', '2018-02-02 17:22:42'),
(92, 11, 38, '2018-02-02 17:22:42', '2018-02-02 17:22:42'),
(93, 11, 39, '2018-02-02 17:22:42', '2018-02-02 17:22:42'),
(94, 13, 28, '2018-02-02 17:22:57', '2018-02-02 17:22:57'),
(95, 13, 30, '2018-02-02 17:22:57', '2018-02-02 17:22:57'),
(96, 13, 35, '2018-02-02 17:22:57', '2018-02-02 17:22:57'),
(97, 13, 36, '2018-02-02 17:22:57', '2018-02-02 17:22:57'),
(98, 13, 37, '2018-02-02 17:22:57', '2018-02-02 17:22:57'),
(99, 13, 38, '2018-02-02 17:22:57', '2018-02-02 17:22:57'),
(100, 13, 39, '2018-02-02 17:22:57', '2018-02-02 17:22:57'),
(284, 4, 10, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(285, 4, 23, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(286, 4, 28, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(287, 4, 29, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(288, 4, 30, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(289, 4, 31, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(290, 4, 32, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(291, 4, 33, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(292, 4, 35, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(293, 4, 36, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(294, 4, 37, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(295, 4, 38, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(296, 4, 39, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(297, 4, 45, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(298, 4, 48, '2018-02-03 11:43:17', '2018-02-03 11:43:17'),
(299, 4, 51, '2018-02-03 11:43:17', '2018-02-03 11:43:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_view` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `overview` text COLLATE utf8_unicode_ci,
  `equipment` text COLLATE utf8_unicode_ci,
  `price_list` text COLLATE utf8_unicode_ci,
  `googlemap_url` text COLLATE utf8_unicode_ci,
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `street` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project`
--

INSERT INTO `project` (`id`, `fullname`, `alias`, `meta_keyword`, `meta_description`, `image`, `count_view`, `total_cost`, `unit`, `intro`, `overview`, `equipment`, `price_list`, `googlemap_url`, `province_id`, `district_id`, `street`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Opal Skyview 1', 'opal-skyview-1', 'metakeyword Opal Skyview 1', 'metadescription Opal Skyview 1', 'conmochieu-1.png', 407, 100, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 1</p>', '<p>tiện &iacute;ch 1</p>', '<p>bảng gi&aacute; 1</p>', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 1, 1, '2018-01-04 18:34:30', '2018-01-23 03:06:27'),
(11, 'Opal Skyview 2', 'opal-skyview-2', 'metakeyword Opal Skyview 2', 'metadescription Opal Skyview 2', 'conmochieu-2.png', 1, 200, 'triệu VNĐ', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source', '<p>tổng quan 2</p>', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 2, 1, '2018-01-18 17:17:02', '2018-01-22 06:55:55'),
(12, 'Opal Skyview 3', 'opal-skyview-3', 'metakeyword Opal Skyview 3', 'metadescription Opal Skyview 3', 'conmochieu-3.png', NULL, 300, 'triệu VNĐ', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham', '<p>tổng quan 3</p>', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 3, 1, '2018-01-18 17:17:56', '2018-01-22 03:42:44'),
(13, 'Opal Skyview 4', 'opal-skyview-4', 'metakeyword Opal Skyview 4', 'metadescription Opal Skyview 4', 'conmochieu-4.png', NULL, 400, 'triệu VNĐ', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy', '<p>tổng quan 4</p>', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 4, 1, '2018-01-18 17:22:56', '2018-01-22 03:42:52'),
(14, 'Opal Skyview 5', 'opal-skyview-5', 'metakeyword Opal Skyview 5', 'metadescription Opal Skyview 5', 'conmochieu-5.png', NULL, 500, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 5</p>', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 5, 1, '2018-01-18 17:23:56', '2018-01-22 03:43:01'),
(15, 'Opal Skyview 6', 'opal-skyview-6', 'metakeyword Opal Skyview 6', 'metadescription Opal Skyview 6', 'conmochieu-6.png', NULL, 600, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 6</p>', '', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 6, 1, '2018-01-18 17:24:37', '2018-01-22 03:43:09'),
(16, 'Opal Skyview 7', 'opal-skyview-7', 'metakeyword Opal Skyview 7', 'metadescription Opal Skyview 7', 'conmochieu-7.png', NULL, 700, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 7</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 7, 1, '2018-01-18 17:25:24', '2018-01-18 17:25:24'),
(17, 'Opal Skyview 8', 'opal-skyview-8', 'metakeyword Opal Skyview 8', 'metadescription Opal Skyview 8', 'conmochieu-8.png', NULL, 800, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 8</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 8, 1, '2018-01-18 17:26:18', '2018-01-18 17:26:18'),
(18, 'Opal Skyview 9', 'opal-skyview-9', 'metakeyword Opal Skyview 9', 'metadescription Opal Skyview 9', 'conmochieu-9.png', NULL, 900, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 9</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 9, 1, '2018-01-18 17:26:59', '2018-01-18 17:26:59'),
(19, 'Opal Skyview 10', 'opal-skyview-10', 'metakeyword Opal Skyview 10', 'metadescription Opal Skyview 10', 'conmochieu-10.png', NULL, 1000, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 10</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 10, 1, '2018-01-18 17:27:47', '2018-01-18 17:27:47'),
(20, 'Opal Skyview 11', 'opal-skyview-11', 'metakeyword Opal Skyview 11', 'metadescription Opal Skyview 11', 'conmochieu-11.png', 1, 1100, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 11</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 11, 1, '2018-01-18 17:29:10', '2018-01-23 03:06:13'),
(21, 'Opal Skyview 12', 'opal-skyview-12', 'metakeyword Opal Skyview 12', 'metadescription Opal Skyview 12', 'conmochieu-12.png', NULL, 1200, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 12</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 12, 1, '2018-01-18 17:30:19', '2018-01-18 17:30:19'),
(22, 'Opal Skyview 13', 'opal-skyview-13', 'metakeyword Opal Skyview 13', 'metadescription Opal Skyview 13', 'conmochieu-13.png', NULL, 1300, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 13</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 13, 1, '2018-01-18 17:31:06', '2018-01-18 17:31:06'),
(23, 'Opal Skyview 14', 'opal-skyview-14', 'metakeyword Opal Skyview 14', 'metadescription Opal Skyview 14', 'conmochieu-14.png', NULL, 1400, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan&nbsp;Opal Skyview 14</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 14, 1, '2018-01-18 17:31:47', '2018-01-18 17:31:47'),
(24, 'Opal Skyview 15', 'opal-skyview-15', 'metakeyword Opal Skyview 15', 'metadescription Opal Skyview 15', 'conmochieu-15.png', NULL, 1500, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 15</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 15, 1, '2018-01-18 17:33:28', '2018-01-18 17:33:28'),
(25, 'Opal Skyview 16', 'opal-skyview-16', 'metakeyword Opal Skyview 16', 'metadescription Opal Skyview 16', 'conmochieu-16.png', NULL, 1600, 'triệu VNĐ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p>tổng quan 16</p>', NULL, NULL, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.524046987366!2d106.64216631435112!3d10.84768899227317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTDCsDUwJzUxLjciTiAxMDbCsDM4JzM5LjciRQ!5e0!3m2!1svi!2s!4v1516617184567', 1, 1, 'Khu căn hộ cao cấp Q.7 Tp. HCM', 16, 1, '2018-01-18 17:34:08', '2018-01-18 17:34:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_article`
--

DROP TABLE IF EXISTS `project_article`;
CREATE TABLE `project_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project_article`
--

INSERT INTO `project_article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `project_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sam Allardyce - gã HLV thực dụng nhất Ngoại hạng Anh', 'sam-allardyce---ga-hlv-thuc-dung-nhat-ngoai-hang-anh', 'conmochieu-16.png', 'Với những ai yêu bóng đá Anh, Big Sam  như một người bạn lâu năm. Có thì bình thường nhưng vắng mặt là cảm giác… thiếu thiếu.', '<p>Allardyce l&agrave; một trong những gương mặt dễ nhận ra nhất của b&oacute;ng đ&aacute; Anh. &Ocirc;ng đ&atilde; c&oacute; 21 năm thi đấu chuy&ecirc;n nghiệp, v&agrave; đang ở năm thứ 27 kể từ khi khởi nghiệp cầm qu&acirc;n. Trong số HLV c&ograve;n l&agrave;m việc tại Anh, &ocirc;ng gi&agrave; 63 tuổi n&agrave;y chịu k&eacute;m duy nhất một người về th&acirc;m ni&ecirc;n: Arsene Wenger của Arsenal.</p>\n\n<p>Khi Big Sam ra tự truyện, HLV huyền thoại Alex Ferguson thậm ch&iacute; xung phong viết lời tựa. Ferguson gọi Big Sam l&agrave; một phần kh&ocirc;ng thể t&aacute;ch rời của lịch sử b&oacute;ng đ&aacute; Anh. Thời c&ograve;n l&agrave;m cầu thủ, &ocirc;ng l&agrave; một hậu vệ rắn mặt c&oacute; tiếng. Đến mức Ferguson từng bảo Allardyce đ&atilde; k&egrave;m ai tối Chủ nhật th&igrave; s&aacute;ng thứ Hai người ấy ăn cũng kh&ocirc;ng nổi. Khi chuyển sang cầm qu&acirc;n, c&aacute;c đội b&oacute;ng của &ocirc;ng cũng chơi thứ b&oacute;ng đ&aacute; rất kh&oacute; chịu.</p>\n\n<p>Ngoại h&igrave;nh th&ocirc; kệch, sẵn s&agrave;ng thực dụng đến xấu x&iacute; l&agrave; m&ocirc; tả gần nhất về Big Sam.&nbsp;<br />\nL&agrave; người Anh, nhưng Big Sam kh&ocirc;ng mang một ch&uacute;t n&agrave;o tinh thần hiệp sĩ. C&aacute;c đội b&oacute;ng của &ocirc;ng lu&ocirc;n ng&atilde; vờ, c&acirc;u giờ, tiểu xảo, v&agrave; kh&ocirc;ng từ một thủ đoạn n&agrave;o để đạt kết quả - một phong c&aacute;ch &quot;rất&hellip; Allardyce&quot;. Big Sam cũng d&iacute;nh v&agrave;o nghi &aacute;n hay t&aacute;c động để CLB của &ocirc;ng mua cầu thủ c&oacute; c&ugrave;ng người đại diện, để được... chia phần trăm. Ngay cả trong trải nghiệm cầm qu&acirc;n lớn nhất cuộc đời &ndash; HLV trưởng của đội tuyển Anh, Big Sam cũng d&iacute;nh v&agrave;o một b&ecirc; bối t&agrave;y trời. Bị ph&oacute;ng vi&ecirc;n Telegraph giả dạng l&agrave;m người đại diện của một c&ocirc;ng ty ch&acirc;u &Aacute;, Big Sam h&agrave;o hứng b&agrave;y vẽ cho họ c&aacute;ch l&aacute;ch luật chuyển nhượng. Trong l&uacute;c cao hứng, &ocirc;ng c&ograve;n tiện mồm ch&ecirc; bai Gary Neville v&agrave; Roy Hodgson - người tiền nhiệm ở tuyển Anh.&nbsp;</p>\n\n<p>Vậy m&agrave; &ocirc;ng vẫn sống tốt, sống khỏe bất chấp những scandal của bản th&acirc;n. V&igrave; trong những l&uacute;c gian kh&oacute;, CLB n&agrave;o cũng cần một con người thực dụng như thế. Allardyce kh&ocirc;ng phải l&agrave; một cầu thủ xuất ch&uacute;ng khi c&ograve;n thi đấu, n&ecirc;n &ocirc;ng khởi nghiệp HLV từ những CLB rất nhỏ. Đầu ti&ecirc;n l&agrave; trải nghiệm HLV ki&ecirc;m cầu thủ tại CLB Ireland Limerick, sau đ&oacute; l&agrave; c&aacute;c đội hạng dưới ở Anh như Preston North End, Blackpool v&agrave; Notts County.</p>\n\n<p>Nhưng Big Sam chỉ ch&iacute;nh thức g&acirc;y tiếng vang khi cầm qu&acirc;n cho Bolton Wanderers. Khi &ocirc;ng tiếp quản v&agrave;o năm 1999, CLB c&ograve;n lặn ngụp ở nửa dưới của giải Division Two (tương đương hạng Tư trong hệ thống c&aacute;c giải b&oacute;ng đ&aacute; Anh). Khi &ocirc;ng rời đi v&agrave;o năm 2007, Bolton l&agrave; đội thường xuy&ecirc;n g&oacute;p mặt ở nửa tr&ecirc;n của Ngoại hạng Anh, đ&atilde; gi&agrave;nh v&eacute; dự Cup ch&acirc;u &Acirc;u lần đầu ti&ecirc;n v&agrave; duy nhất trong lịch sử.</p>\n\n<p>Bolton của Big Sam những năm ấy chơi thứ b&oacute;ng đ&aacute; gi&agrave;u sức mạnh, với những cầu thủ đ&atilde; qua thời đỉnh cao. &Ocirc;ng ch&agrave;o đ&oacute;n tất cả, từ dạng bất trị như Nicolas Anelka, sớm nắng chiều mưa như Jay-Jay Okocha, cần c&ugrave; b&ugrave; khả năng như Gary Speed hay những người ngỡ như qu&aacute; gi&agrave; v&agrave; qu&aacute; yếu để đ&aacute; ở Ngoại hạng Anh như Fernando Hierro, Ivan Campo, Youri Djorkaeff...</p>\n\n<p>Big Sam l&agrave; một trong những HLV đầu ti&ecirc;n &aacute;p dụng thống k&ecirc; v&agrave; ph&acirc;n t&iacute;ch v&agrave;o lối chơi. &Ocirc;ng c&oacute; một đội ngũ số liệu đ&ocirc;ng như bầu đo&agrave;n th&ecirc; tử của một ng&ocirc;i sao nhạc pop, cung cấp cho &ocirc;ng mọi th&ocirc;ng số từ thể lực đến dinh dưỡng. Khi luật việt vị thay đổi v&agrave;o năm 2003, Big Sam l&agrave; HLV hiếm hoi kh&ocirc;ng than v&atilde;n m&agrave; th&iacute;ch nghi cực nhanh, biến n&oacute; th&agrave;nh lợi thế cho đội của &ocirc;ng.</p>\n\n<p>Youri Djorkaeff (&aacute;o trắng) chỉ l&agrave; một trong nhiều ng&ocirc;i sao hết thời ở c&aacute;c CLB lớn, sang Bolton v&agrave; tỏa s&aacute;ng trở lại ở Ngoại hạng Anh dưới trướng Sam Allardyce.&nbsp;</p>\n\n<p>Big Sam l&agrave; mẫu HLV m&agrave; kh&ocirc;ng ai muốn, nhưng ai cũng cần. Sau khi rời Bolton, &ocirc;ng lang bạt qua s&aacute;u CLB kh&aacute;c nhau ở Ngoại hạng Anh v&agrave; lu&ocirc;n đảm bảo rằng: khi &ocirc;ng rời đi, CLB đều tốt hơn khi &ocirc;ng đến. L&uacute;c truyền th&ocirc;ng Anh ca tụng HLV Marco Silva của Watford, Big Sam n&oacute;i: &ldquo;Đừng s&iacute;nh ngoại thế, t&ocirc;i chưa rớt hạng bao giờ, Marco từng rớt hạng với Hull City đấy&rdquo;.</p>\n\n<p>Big Sam tự h&agrave;o kh&ocirc;ng hề qu&aacute;, bởi d&ugrave; kh&ocirc;ng c&oacute; danh hiệu n&agrave;o khi l&agrave;m HLV trưởng, &quot;chiếc Cup&quot; lớn nhất đời &ocirc;ng l&agrave; chưa bao giờ rớt hạng, kể cả CLB &ocirc;ng cầm c&oacute; đang khủng hoảng đến đ&acirc;u đi nữa. N&oacute;i theo ng&ocirc;n ngữ khoa học, luật vạn vật hấp dẫn kh&ocirc;ng t&aacute;c động l&ecirc;n Big Sam, v&igrave; đội b&oacute;ng của &ocirc;ng kh&ocirc;ng bao giờ rơi xuống hạng dưới.</p>\n\n<p>Th&aacute;ng 7/2017, sau khi vớt Crystal Palace từ c&otilde;i chết trở về, &ocirc;ng ra đi v&agrave; tuy&ecirc;n bố kh&ocirc;ng cầm qu&acirc;n cấp độ CLB nữa. Vậy m&agrave; khi đề nghị từ Everton đến bốn th&aacute;ng sau đ&oacute;, Big Sam nhận lời ngay. Mấy th&aacute;ng ngồi ngo&agrave;i, chơi với con ch&aacute;u khiến Big Sam nhớ việc. V&agrave; dường như Ngoại hạng Anh cũng nhớ &ocirc;ng. H&igrave;nh ảnh một &ocirc;ng gi&agrave; b&ecirc;n đường piste, d&aacute;ng mập mạp, miệng li&ecirc;n tục nhai kẹo cao su, hay cười cợt v&igrave; đủ thứ l&yacute; do thật quen thuộc, giống như một người bạn l&acirc;u năm. C&oacute; th&igrave; kh&ocirc;ng để &yacute;, nhưng vắng lại nhớ ngay.</p>\n\n<p>Allardyce nhận được sự qu&yacute; mến, nể trọng từ những bậc đồng nghiệp khả k&iacute;nh lừng danh như Alex Ferguson.&nbsp;<br />\nV&agrave; Big Sam trở lại, lợi hại như xưa. Everton của &ocirc;ng thua hai trận gần nhất, nhưng họ r&otilde; r&agrave;ng đ&atilde; l&agrave; một đội b&oacute;ng ho&agrave;n to&agrave;n kh&aacute;c so với khi &ocirc;ng nhậm chức. Hiện th&acirc;n r&otilde; nhất cho thay đổi m&agrave; Allardyce mang lại l&agrave; Wayne Rooney. Trước khi Big Sam đến, anh đ&aacute; 11 trận, ghi bốn b&agrave;n v&agrave; kh&ocirc;ng kiến tạo được g&igrave;. Sau khi c&oacute; Big Sam, anh ghi s&aacute;u b&agrave;n, kiến tạo hai lần chỉ sau ... năm trận. Từ chỗ đang ở dưới khu vực đ&egrave;n đỏ, b&acirc;y giờ Everton đang lơ lửng ở giữa bảng điểm.</p>\n\n<p>B&iacute; quyết cầm qu&acirc;n của Big Sam thực ra rất giản dị, đ&atilde; theo &ocirc;ng từ những ng&agrave;y đầu cầm qu&acirc;n. &quot;T&ocirc;i lu&ocirc;n khuy&ecirc;n mọi cầu thủ h&atilde;y chuyền quả b&oacute;ng l&ecirc;n tr&ecirc;n nếu c&oacute; thể. Ngay cả trước những đội b&oacute;ng ph&ograve;ng ngự hay nhất Ngoại hạng Anh, một đường chuyền nhanh l&ecirc;n tr&ecirc;n cũng c&oacute; thể tạo ra cơ hội ghi b&agrave;n. Chuyền ngang hoặc chuyền về chỉ c&agrave;ng l&agrave;m đối phương tổ chức ph&ograve;ng ngự tốt hơn m&agrave; th&ocirc;i&quot;, &ocirc;ng n&oacute;i tr&ecirc;n Sky Sports.&nbsp;</p>\n\n<p>Trang Wikipedia th&igrave; m&ocirc; tả như sau: &quot;Khi c&ograve;n l&agrave; hậu vệ, &ocirc;ng rất ngại xử l&yacute; b&oacute;ng. C&oacute; b&oacute;ng l&agrave; chuyền ngay cho người đứng gần nhất&quot;. Nghe cứ như&hellip; đ&ugrave;n đẩy tr&aacute;ch nhiệm. V&agrave; khi l&agrave;m HLV, Big Sam cũng khuy&ecirc;n c&aacute;c cầu thủ h&atilde;y đ&ugrave;n đẩy như thế. C&oacute; b&oacute;ng cứ chuyền l&ecirc;n tr&ecirc;n cho người thuận lợi nhất, nếu pha b&oacute;ng ấy kh&ocirc;ng th&agrave;nh c&ocirc;ng th&igrave; cầu thủ cũng kh&ocirc;ng c&oacute; lỗi.</p>\n\n<p>Big Sam giống như hiện th&acirc;n cho một tư duy thực dụng đến tận c&ugrave;ng, nhưng vẫn c&oacute; đất sống giữa một Ngoại hạng Anh trăm hoa đua nở. Người h&acirc;m mộ v&agrave; giới chuy&ecirc;n m&ocirc;n hay than thở về việc những HLV trẻ của Anh quốc kh&ocirc;ng được trao cơ hội. Nhưng vấn đề l&agrave; khi gặp kh&oacute; khăn, trong đầu c&aacute;c CLB Ngoại hạng Anh lu&ocirc;n bật ra c&aacute;i t&ecirc;n Sam Allardyce như một phản xạ. Học tr&ograve; cũ Jermain Defoe đ&atilde; n&oacute;i: &quot;&Ocirc;ng ấy lu&ocirc;n n&oacute;i với ch&uacute;ng t&ocirc;i như sau: &#39;T&ocirc;i kh&ocirc;ng bận t&acirc;m chuyện mấy cậu đ&aacute; đấm thế n&agrave;o, miễn thắng l&agrave; được&quot;.</p>\n\n<p>Big Sam chắc chắn sẽ kh&ocirc;ng bao giờ được chọn mặt gửi v&agrave;ng cho những c&ocirc;ng việc lớn như tại Man Utd, Man City, Arsenal, Chelsea&hellip; Nhưng nh&agrave; cầm qu&acirc;n n&agrave;y vẫn th&uacute; vị theo c&aacute;ch của ri&ecirc;ng &ocirc;ng: ng&ocirc;ng ngh&ecirc;nh, l&igrave; lợm, giang hồ với một phương ch&acirc;m sống duy nhất: c&aacute;i g&igrave; c&oacute; lợi th&igrave; l&agrave;m th&ocirc;i!</p>', '', 'metakeyword Sam Allardyce - gã HLV thực dụng nhất Ngoại hạng Anh', 'metadescription Sam Allardyce - gã HLV thực dụng nhất Ngoại hạng Anh', NULL, 10, 1, 1, '2018-01-04 18:37:46', '2018-01-18 19:01:31'),
(2, 'Andy Murray rút khỏi Australia Mở rộng 2018', 'andy-murray-rut-khoi-australia-mo-rong-2018', 'conmochieu-15.png', 'Tay vợt người Scotland vẫn chưa bình phục chấn thương hông kể từ Wimbledon 2017.', '<p>&ldquo;T&ocirc;i sẽ kh&ocirc;ng tham g&oacute;p mặt giải đấu ở Melbourne năm nay, do chưa sẵn s&agrave;ng&rdquo;, Murray th&ocirc;ng b&aacute;o. &ldquo;T&ocirc;i sẽ trở về London để xem x&eacute;t c&aacute;c khả năng tiếp theo. T&ocirc;i cũng cảm k&iacute;ch v&igrave; những lời ch&uacute;c của mọi người. Hy vọng t&ocirc;i sẽ sớm trở lại&rdquo;.<br />\nTrong tiết lộ tr&ecirc;n Instagram &iacute;t ng&agrave;y trước, Murray cho biết chấn thương h&ocirc;ng kh&ocirc;ng tiến triển tốt, d&ugrave; đ&atilde; nghỉ thi đấu s&aacute;u th&aacute;ng qua. Tay vợt sở hữu ba Grand Slam đứng trước hai lựa chọn: tiếp tục qu&aacute; tr&igrave;nh hồi phục hoặc l&ecirc;n b&agrave;n mổ. Nhưng phẫu thuật chỉ l&agrave; phương &aacute;n B với Murray do anh c&oacute; thể đối mặt những rủi ro kh&oacute; lường.</p>\n\n<p>Murray từng năm lần v&agrave;o chung kết Australia Mở rộng (2010, 2011, 2013, 2015, 2016), nhưng đều gục ng&atilde;. Trận đấu chuy&ecirc;n nghiệp gần nhất của tay vợt 30 tuổi l&agrave; thất bại trước Sam Querrey ở tứ kết Wimbledon 2017. Anh tham dự trận đấu biểu diễn với Roger Federer th&aacute;ng 11/2017, với thất bại 3-6, 6-3, 6-10. Tuần trước, Murray cũng đ&aacute;nh một trận biểu diễn c&ugrave;ng Roberto Bautista Agut tại Abu Dhabi. Nhưng chấn thương ph&aacute;t t&aacute;c khiến anh phải r&uacute;t khỏi giải ATP 250 ở Brisbane.</p>\n\n<p>B&ecirc;n cạnh Murray, nhiều tay vợt h&agrave;ng đầu cũng c&oacute; nguy cơ lỡ hẹn giải Grand Slam đầu ti&ecirc;n năm 2018, như Novak Djokovic, Rafael Nadal v&agrave; Stan Wawrinka.</p>', '', 'metakeyword Andy Murray rút khỏi Australia Mở rộng 2018', 'metadescription Andy Murray rút khỏi Australia Mở rộng 2018', 1, 10, 2, 1, '2018-01-04 18:39:04', '2018-01-22 09:56:14'),
(3, 'Pochettino: \'Tottenham sẽ xem xét nếu Kane đề nghị ra đi\'', 'pochettino:-tottenham-se-xem-xet-neu-kane-de-nghi-ra-di', 'conmochieu-14.png', '\"Gà trống\" không muốn mất tiền đạo chủ lực nhưng sẽ cân nhắc nếu bản thân Harry Kane đề bạt nguyện vọng rời CLB - như Modric và Bale từng làm.', '<p>&quot;L&agrave; HLV của Tottenham, t&ocirc;i c&oacute; thể n&oacute;i rằng nếu Real Madrid đưa ra đề nghị, ch&uacute;ng t&ocirc;i sẽ từ chối. Bởi v&igrave; cậu ấy sẽ ở đ&acirc;y v&agrave; họ hiểu điều đ&oacute;&quot;, Pochettino trả lời phỏng vấn k&ecirc;nh truyền h&igrave;nh El Chiringuito.&nbsp;</p>\n\n<p>&quot;Tuy nhi&ecirc;n, nếu cầu thủ đề bạt nguyện vọng ra đi, giống như trường hợp của Modric v&agrave; Bale, ch&uacute;ng t&ocirc;i sẽ xem điều g&igrave; c&oacute; thể diễn ra. H&ocirc;m nay, chuyện đ&oacute; chưa xảy ra. T&ocirc;i hy vọng Harry Kane sẽ ở đ&acirc;y th&ecirc;m nhiều năm v&agrave; đ&oacute;ng g&oacute;p th&ecirc;m nhiều b&agrave;n, gi&agrave;nh những chiến thắng v&agrave; danh hiệu. Đ&oacute; l&agrave; mong muốn của ch&uacute;ng t&ocirc;i&quot;.<br />\nKane đang l&agrave; mục ti&ecirc;u theo đuổi của Real - đội b&oacute;ng từng chi&ecirc;u mộ những hảo thủ từ Tottenham như Gareth Bale hay Luka Modric.</p>\n\n<p>Kane trải qua một năm 2017 th&agrave;nh c&ocirc;ng khi ph&aacute; kỷ lục số b&agrave;n nhiều nhất tại Ngoại hạng Anh trong một năm của Alan Shearer (37). Anh nổi l&ecirc;n l&agrave; một trong những trung phong hay nhất ch&acirc;u &Acirc;u v&agrave; m&agrave;n tr&igrave;nh diễn xuất sắc trong hai trận đấu với Real ở v&ograve;ng bảng Champions League khiến &quot;Kền kền trắng&quot; đặt quyết t&acirc;m chi&ecirc;u mộ Kane.</p>\n\n<p>Kane đang dẫn đầu danh s&aacute;ch ghi b&agrave;n tại Ngoại hạng Anh với 18 b&agrave;n, gi&uacute;p Tottenham đứng thứ năm. H&ocirc;m nay, anh v&agrave; đồng đội sẽ l&agrave;m kh&aacute;ch tr&ecirc;n s&acirc;n của West Ham, trong trận đấu muộn ở v&ograve;ng 22.</p>\n\n<p>Kane l&agrave; vua ph&aacute; lưới Ngoại hạng Anh trong hai m&ugrave;a giải gần nhất, ghi 25 b&agrave;n ở m&ugrave;a 2015-2016 v&agrave; 29 b&agrave;n ở m&ugrave;a 2016-2017.</p>', 'chú thích Pochettino: \'Tottenham sẽ xem xét nếu Kane đề nghị ra đi\'', 'metakeyword Neymar Pochettino: \'Tottenham sẽ xem xét nếu Kane đề nghị ra đi\'', 'metadescription Neymar Pochettino: \'Tottenham sẽ xem xét nếu Kane đề nghị ra đi\'', NULL, 10, 3, 1, '2018-01-04 18:41:15', '2018-01-18 19:01:42'),
(4, 'Lịch thi đấu ở Anh khắc nghiệt như thế nào', 'lich-thi-dau-o-anh-khac-nghiet-nhu-the-nao', 'conmochieu-13.png', 'Tờ AS (Tây Ban Nha) dẫn thống kê về số trận tối đa mà một đội bóng hàng đầu tại Anh chơi mỗi mùa để ủng hộ quan điểm của Pep Guardiola.', '<p>Guardiola đ&atilde; khơi lại cuộc tranh luận về kỳ nghỉ đ&ocirc;ng tại Ngoại hạng Anh, khi cho rằng lịch thi đấu hiện tại &quot;đang hủy hoại cầu thủ&quot;. Ph&aacute;t biểu được HLV người T&acirc;y Ban Nha đưa ra sau trận thắng Watford với tỷ số 3-1 h&ocirc;m 2/1, hai ng&agrave;y sau khi họ bị Crystal Palace cầm h&ograve;a kh&ocirc;ng b&agrave;n thắng.</p>\n\n<p>Cựu HLV Barca ho&agrave;n to&agrave;n c&oacute; l&yacute; khi đưa ra nhận định như vậy. T&iacute;nh đến ng&agrave;y 4/1, Man City đ&atilde; chơi tổng cộng 25 trận tại giải quốc nội m&ugrave;a 2017-2018, bao gồm Ngoại hạng Anh v&agrave; Cup Li&ecirc;n đo&agrave;n. Con số n&agrave;y với Juventus tại Italy l&agrave; 22, t&iacute;nh cả trận đấu tối nay với Cagliari. Trong khi đ&oacute;, Bayern Munich, Barca v&agrave; PSG mới chơi 20 trận từ đầu m&ugrave;a.<br />\nNếu muốn ẵm trọn mọi danh hiệu tại nước Anh, bao gồm Ngoại hạng Anh, Cup FA v&agrave; Cup Li&ecirc;n đo&agrave;n, Man City phải ra s&acirc;n tổng cộng 50 trận. Nếu họ c&oacute; một kết quả h&ograve;a, ở bất kỳ v&ograve;ng n&agrave;o trước b&aacute;n kết, con số n&agrave;y sẽ tăng th&ecirc;m, với mức tối đa l&agrave; 53 trận. Tại Bundesliga, với 18 đội tham dự, một đội muốn th&acirc;u t&oacute;m mọi danh hiệu trong nước chỉ phải đ&aacute; 40 trận. Con số n&agrave;y ở T&acirc;y Ban Nha l&agrave; 47 trận v&agrave; Italy l&agrave; 43 trận.</p>\n\n<p>Ph&aacute;p v&agrave; Bồ Đ&agrave;o Nha, giống nước Anh, c&oacute; hai giải đấu Cup trong nước, nhưng họ đều c&oacute; biện ph&aacute;p cắt giảm số trận cho những đội thi đấu ở giải h&agrave;ng đầu l&agrave; Ligue 1 v&agrave; Primeira Liga. C&aacute;c đội dự Ligue 1 được đặc c&aacute;ch v&agrave;o đ&aacute; những v&ograve;ng s&acirc;u hơn so với Ngoại hạng Anh, v&agrave; họ chỉ phải thi đấu 47 trận nếu muốn đoạt cả ba danh hiệu. Tại Bồ Đ&agrave;o Nha, số đội dự Primeira Liga l&agrave; 18. Điều ấy gi&uacute;p số trận tối đa m&agrave; một CLB nước n&agrave;y phải đấu trong nước chỉ l&agrave; 45.</p>\n\n<p>Tr&ecirc;n to&agrave;n ch&acirc;u &Acirc;u, ngoại trừ Anh, kh&ocirc;ng CLB n&agrave;o c&oacute; thể chơi qu&aacute; 48 trận quốc nội. Ch&iacute;nh việc phải đấu đến 50 trận khiến b&oacute;ng đ&aacute; Anh kh&ocirc;ng thể sắp xếp kỳ nghỉ đ&ocirc;ng, điều m&agrave; tất cả c&aacute;c giải đấu h&agrave;ng đầu ch&acirc;u &Acirc;u đều l&agrave;m.</p>\n\n<p>Nếu x&eacute;t năm giải v&ocirc; địch quốc gia lớn, kỳ nghỉ đ&ocirc;ng ngắn nhất thuộc về T&acirc;y Ban Nha. C&aacute;c CLB nước n&agrave;y c&oacute; 10 ng&agrave;y nghỉ từ Gi&aacute;ng sinh đến đầu năm mới. Tiếp theo l&agrave; Italy (14 ng&agrave;y), Ph&aacute;p (16 ng&agrave;y) v&agrave; Đức (22 ng&agrave;y). Bồ Đ&agrave;o Nha, nước cũng c&oacute; hai giải đấu c&uacute;p trong nước như Anh, cũng c&oacute; kỳ nghỉ đ&ocirc;ng d&agrave;i bảy ng&agrave;y.<br />\nArsenal m&ugrave;a 2017-2018 l&agrave; v&iacute; dụ r&otilde; nhất cho lịch thi đấu khắc nghiệt tại Anh. Thầy tr&ograve; Arsene Wenger c&oacute; thể phải chơi tổng cộng 69 trận, nếu v&agrave;o chung kết Europa League, Cup FA v&agrave; Cup Li&ecirc;n đo&agrave;n (đ&atilde; đi đến b&aacute;n kết). So với Real Madrid, đội phải tham dự FIFA Club World Cup v&agrave; đ&aacute; Si&ecirc;u Cup ch&acirc;u &Acirc;u, &quot;Ph&aacute;o thủ&quot; chơi nhiều hơn tới năm trận.</p>', '', 'metakeyword Lịch thi đấu ở Anh khắc nghiệt như thế nào', 'metadescription Lịch thi đấu ở Anh khắc nghiệt như thế nào', 1, 10, 4, 1, '2018-01-04 18:43:11', '2018-01-22 08:45:39'),
(5, 'LeBron James bất lực nhìn đội nhà thảm bại trước Boston Celtics', 'lebron-james-bat-luc-nhin-doi-nha-tham-bai-truoc-boston-celtics', 'conmochieu-12.png', 'Ngôi sao sáng nhất của Cleveland Cavaliers không thể vực dậy phong độ kém cỏi của toàn đội trong trận thua đậm 88-102 trước Boston Celtics.', '<p>Quyết định để ng&ocirc;i sao Isaiah Thomas ngồi ngo&agrave;i của HLV Tyronn Lue gần như ngay lập tức ảnh hưởng l&ecirc;n lối chơi của Cleveland Cavaliers trong chuyến l&agrave;m kh&aacute;ch tại Boston. Đội đương kim &Aacute; qu&acirc;n NBA tấn c&ocirc;ng bế tắc trước h&agrave;ng thủ vững chắc nhất giải. Ngay cả LeBron James cũng chỉ c&oacute; 19 điểm trận n&agrave;y, nhiều nhất đội nhưng kh&ocirc;ng đủ để tạo kh&aacute;c biệt. Trong khi đ&oacute;, chấn thương khiến Kevin Love chỉ chơi 21 ph&uacute;t với đ&uacute;ng một pha n&eacute;m hai điểm th&agrave;nh c&ocirc;ng trong 11 lần n&eacute;m rổ.<br />\nCleveland Cavaliers bị Boston Celtics dẫn điểm trong cả bốn hiệp, trong đ&oacute; khoảng c&aacute;ch lớn nhất l&agrave; 11 điểm ngay sau hiệp đầu ti&ecirc;n. M&agrave;n phủ đầu g&acirc;y sốc của Kyrie Irving v&agrave; c&aacute;c đồng đội khiến đội kh&aacute;ch kh&ocirc;ng thể gượng dậy trong phần c&ograve;n lại của trận đấu. Khoảng năm ph&uacute;t cuối, HLV Tyronn Lue thậm ch&iacute; c&ograve;n bu&ocirc;ng xu&ocirc;i khi r&uacute;t LeBron James khỏi s&acirc;n.</p>\n\n<p>Chiến lược gia 40 tuổi cũng thực hiện đ&uacute;ng những g&igrave; tuy&ecirc;n bố trước trận khi kh&ocirc;ng cho Isaiah Thomas chơi một ph&uacute;t n&agrave;o. Cầu thủ đ&oacute;ng g&oacute;p 17 điểm ở chiến thắng trước Portland Trail Blazers h&ocirc;m qua lặng lẽ ngồi nh&igrave;n đội nh&agrave; bị đội b&oacute;ng cũ của anh v&ugrave;i dập với tỷ số c&aacute;ch biệt 102-88.<br />\nTrận thua thứ 13 từ đầu m&ugrave;a khiến Cleveland Cavaliers ch&ocirc;n ch&acirc;n ở vị tr&iacute; thứ ba miền Đ&ocirc;ng. Trong khi Boston Celtics củng cố vững chắc ng&ocirc;i đầu với th&agrave;nh t&iacute;ch 31 thắng &ndash; 10 thua. Phong độ xuống dốc của LeBron James v&agrave; đồng đội (thua 5 trong 6 trận gần nhất) khiến họ bị Washington Wizards phả hơi n&oacute;ng v&agrave;o g&aacute;y với c&aacute;ch biệt chỉ ba chiến thắng. Ở lượt đấu n&agrave;y, cặp b&agrave;i tr&ugrave;ng John Wall - Bradley Beal tiếp tục tỏa s&aacute;ng, đ&oacute;ng g&oacute;p 52 điểm mang về chiến thắng 121-103 cho đại diện thủ đ&ocirc; trước đối thủ New York Knicks.</p>\n\n<p>Tại miền T&acirc;y, Golden State Warriors c&oacute; chuyến l&agrave;m kh&aacute;ch tưởng như dễ d&agrave;ng tới s&acirc;n Dallas Mavericks. Nhưng sau khi dẫn đối thủ 9 điểm ở hiệp một, nh&agrave; đương kim v&ocirc; địch bất ngờ đ&aacute;nh mất nhịp độ tấn c&ocirc;ng. Họ để Dallas v&ugrave;ng l&ecirc;n trong hai hiệp tiếp theo, b&aacute;m s&aacute;t với c&aacute;ch biệt chỉ hai điểm.</p>\n\n<p>Trong hiệp bốn, đ&ocirc;i b&ecirc;n tạo ra thế trận ăn miếng trả miếng. Khi trận đấu c&ograve;n s&aacute;u gi&acirc;y, Harison Barnes l&ecirc;n rổ th&agrave;nh c&ocirc;ng gỡ h&ograve;a 122-122 cho chủ nh&agrave;. Tuy nhi&ecirc;n, Stephen Curry, bằng đẳng cấp si&ecirc;u sao, đ&atilde; kh&ocirc;ng để đối thủ k&eacute;o v&agrave;o hiệp phụ. C&uacute; n&eacute;m ba điểm lạnh l&ugrave;ng của cầu thủ vừa trở lại sau chấn thương ở thời điểm đồng hồ c&ograve;n 3 gi&acirc;y đ&atilde; dập tắt mọi hy vọng của Dallas Mavericks. Thắng nghẹt thở 125-122, Warriors củng cố vững chắc ng&ocirc;i đầu miền T&acirc;y với th&agrave;nh t&iacute;ch 30 thắng &ndash; 8 thua.<br />\nĐội đang xếp thứ hai sau họ l&agrave; Houston Rockets cũng c&oacute; chiến thắng trong loạt trận s&aacute;ng nay. Vắng Jame Harden v&igrave; chấn thương, khả năng tấn c&ocirc;ng của Rockets sụt giảm tr&ocirc;ng thấy. Nhưng trước đối thủ Orlando Magic, Chris Paul v&agrave; đồng đội đ&atilde; ph&ograve;ng ngự chắc chắn. Rockets chỉ để đối thủ ghi 98 điểm, trong khi sự tỏa s&aacute;ng của nh&acirc;n tố dự bị Gerald Green (27 điểm) v&agrave; trung phong Capela (21 điểm) mang về cho họ 116 điểm.</p>\n\n<p>Tương tự Houston Rockets, Oklahoma City Thunder cũng gi&agrave;nh chiến thắng c&aacute;ch biệt trước Los Angeles Lakers. Bộ ba Westbrook-Anthony-George ghi tổng cộng 65 điểm gi&uacute;p đội nh&agrave; c&oacute; trận thắng c&aacute;ch biệt nhất từ đầu m&ugrave;a với tỷ số 133-96. Việc thiếu vắng Lonzo Ball (chấn thương vai) đang khiến Lakers rơi v&agrave;o khủng hoảng trầm trọng với trận thua thứ 8 li&ecirc;n tiếp, tụt xuống vị tr&iacute; b&eacute;t bảng miền T&acirc;y với th&agrave;nh t&iacute;ch 11 thắng &ndash; 25 thua.</p>\n\n<p>Ng&agrave;y mai, hai đội đầu bảng l&agrave; Golden State Warriors v&agrave; Houston Rockets sẽ gặp nhau tại Toyota Center. Kh&aacute;n giả Việt Nam c&oacute; thể xem trực tiếp trận đấu n&agrave;y v&agrave;o l&uacute;c 8h (giờ H&agrave; Nội) tr&ecirc;n k&ecirc;nh Thể thao Tin tức HD.</p>', 'chú thích LeBron James bất lực nhìn đội nhà thảm bại trước Boston Celtics', 'metakeyword LeBron James bất lực nhìn đội nhà thảm bại trước Boston Celtics', 'metadescription LeBron James bất lực nhìn đội nhà thảm bại trước Boston Celtics', 1, 10, 5, 1, '2018-01-04 18:44:44', '2018-01-22 08:45:08'),
(6, 'Kỳ thủ tám tuổi gây bất ngờ ở Cup Chiến thắng', 'ky-thu-tam-tuoi-gay-bat-ngo-o-cup-chien-thang', 'conmochieu-11.png', 'Phạm Trần Gia Phúc vượt qua nhà vô địch châu Á Thu Thảo (nhảy xa) và Thanh Tùng (thể dục dụng cụ) để trở thành \"Vận động viên yêu thích của năm\".', '<p>Phần thưởng &ldquo;Vận động vi&ecirc;n y&ecirc;u th&iacute;ch của năm&rdquo; do người h&acirc;m mộ b&igrave;nh chọn qua tin nhắn điện thoại. Sau ba th&aacute;ng, chiến thắng thuộc về Phạm Trần Gia Ph&uacute;c. Kỳ thủ t&aacute;m tuổi năm vừa qua gi&agrave;nh năm HC v&agrave;ng ở s&acirc;n chơi Đ&ocirc;ng Nam &Aacute;, ch&acirc;u &Aacute; v&agrave; thế giới. Hai &ldquo;bại tướng&rdquo; của Gia Ph&uacute;c l&agrave; nh&agrave; v&ocirc; địch ch&acirc;u &Aacute; nhảy xa Thu Thảo v&agrave; nh&agrave; v&ocirc; địch ch&acirc;u &Aacute; thể dục dụng cụ Thanh T&ugrave;ng.</p>\n\n<p>H&ocirc;m nay 4/1, ban tổ chức cũng đ&atilde; tiến h&agrave;nh chốt ba ứng vi&ecirc;n cuối c&ugrave;ng cho c&aacute;c giải thưởng như &ldquo;Vận động vi&ecirc;n nam của năm&rdquo;, &ldquo;Vận động vi&ecirc;n nữ của năm&rdquo;, &ldquo;HLV của năm&rdquo;...Danh s&aacute;ch mỗi hạng mục gồm một nh&acirc;n vật do người h&acirc;m mộ b&igrave;nh chọn v&agrave; hai người do Hội đồng b&igrave;nh chọn gồm c&aacute;c chuy&ecirc;n gia v&agrave; nh&agrave; b&aacute;o chọn.</p>\n\n<p>Ở hạng mục &ldquo;Nữ vận động vi&ecirc;n của năm&rdquo;, bất ngờ xảy ra khi T&uacute; Chinh &ldquo;trượt&rdquo; top 3. Đ&acirc;y l&agrave; đ&aacute;ng tiếc lớn khi nữ VĐV của TP HCM ngay lần đầu tham dự đ&atilde; gi&agrave;nh ba HC V&agrave;ng SEA Games, đồng thời được gọi l&agrave; &ldquo;nữ ho&agrave;ng tốc độ&rdquo; khi thống trị cự ly ngắn 100m v&agrave; 200m. Ba nữ VĐV v&agrave;o chung kết l&agrave; k&igrave;nh ngư &Aacute;nh Vi&ecirc;n, Thu Thảo v&agrave; chủ nh&acirc;n ba tấm HC v&agrave;ng điền kinh Nguyễn Thị Huyền.</p>\n\n<p>Ở hạng mục &ldquo;Nam vận động vi&ecirc;n của nam&rdquo;, đ&ocirc; cử Thạch Kim Tuấn cạnh tranh c&ugrave;ng đồng đội Nguyễn Văn Vinh v&agrave; nh&agrave; v&ocirc; địch ch&acirc;u &Aacute; thể dục dụng cụ L&ecirc; Thanh T&ugrave;ng. Điều đặc biệt l&agrave; Thạch Kim Tuấn mới được v&agrave;o danh s&aacute;ch ứng vi&ecirc;n nhờ &ldquo;v&eacute; vớt&rdquo; sau khi gi&agrave;nh hai HC v&agrave;ng giải cử tạ thế giới.</p>\n\n<p>Tại hạng mục &ldquo;HLV của năm&rdquo;, &ocirc;ng Mai Đức Chung đang c&oacute; lợi thế lớn. Vị chiến lược gia n&agrave;y g&acirc;y ấn tượng mạnh khi gi&uacute;p tuyển nữ Việt Nam gi&agrave;nh HC v&agrave;ng SEA Games 29, đồng thời nhận vai tr&ograve; HLV tạm quyền ở đội tuyển nam, gi&agrave;nh s&aacute;u điểm trước Campuchia, g&oacute;p c&ocirc;ng lớn đoạt dự v&ograve;ng chung kết Asian Cup. Cạnh tranh c&ugrave;ng &ocirc;ng l&agrave; hai HLV bộ m&ocirc;n điền kinh Thanh Hương v&agrave; Vũ Ngọc Lợi.</p>\n\n<p>Người chiến thắng ở c&aacute;c hạng mục sẽ được xướng t&ecirc;n tại lễ trao giải v&agrave;o ng&agrave;y 16/1 tới.&nbsp;</p>', 'chú thích Kỳ thủ tám tuổi gây bất ngờ ở Cup Chiến thắng', 'metakeyword Kỳ thủ tám tuổi gây bất ngờ ở Cup Chiến thắng', 'metadescription Kỳ thủ tám tuổi gây bất ngờ ở Cup Chiến thắng', 16, 10, 6, 1, '2018-01-04 18:52:02', '2018-01-22 10:09:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_member`
--

DROP TABLE IF EXISTS `project_member`;
CREATE TABLE `project_member` (
  `id` bigint(20) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project_member`
--

INSERT INTO `project_member` (`id`, `project_id`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 10, 4, '2018-01-07 14:09:20', '2018-01-07 14:09:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `fullname`, `alias`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', 'ho-chi-minh', 1, 1, '2018-01-21 18:15:47', '2018-01-22 07:09:04'),
(5, 'Kiên Giang', 'kien-giang', 2, 1, '2018-01-21 18:21:04', '2018-01-22 07:09:15'),
(6, 'Đồng Tháp', 'dong-thap', 3, 1, '2018-01-22 02:19:03', '2018-01-22 07:10:03'),
(7, 'Tây Ninh', 'tay-ninh', 4, 1, '2018-01-22 02:19:11', '2018-01-22 07:10:07'),
(8, 'Trà Vinh', 'tra-vinh', 5, 1, '2018-01-22 02:19:21', '2018-01-22 07:10:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_system`
--

DROP TABLE IF EXISTS `setting_system`;
CREATE TABLE `setting_system` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` text,
  `meta_keyword` text,
  `meta_description` text,
  `author` varchar(255) DEFAULT NULL,
  `copyright` text,
  `google_site_verification` text,
  `google_analytics` text,
  `logo_frontend` text,
  `favicon` varchar(255) DEFAULT NULL,
  `setting` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting_system`
--

INSERT INTO `setting_system` (`id`, `fullname`, `alias`, `title`, `meta_keyword`, `meta_description`, `author`, `copyright`, `google_site_verification`, `google_analytics`, `logo_frontend`, `favicon`, `setting`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'settingsystem', 'setting-system', 'DC Mobile Chuyên kinh doanh điện thoại, máy tính laptop mới cũ', 'máy tính,  laptop cũ,  điện thoại thông minh', 'Bán lẻ máy tính, laptop, điện thoại mới cũ trên toàn quốc. DC Mobile một trong những thương hiệu có tiếng lâu đời về các sản phẩm công nghệ', 'DC Mobile Chuyên kinh doanh điện thoại, máy tính laptop mới cũ', 'DC Mobile Chuyên kinh doanh điện thoại, máy tính laptop mới cũ [seodekiemtien@gmail.com]', 'KqqAiIZhyvjETFMGGAwT_GliP8lOHb4-lIpwli3Fua8', '444111222', 'logo.png', 'favicon.ico', '[{\"field_name\":\"Số bài viết trên 1 trang\",\"field_code\":\"article_perpage\",\"field_value\":\"10\"},{\"field_name\":\"Độ rộng hình bài viết\",\"field_code\":\"article_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình bài viết\",\"field_code\":\"article_height\",\"field_value\":\"250\"},{\"field_name\":\"Số sản phẩm trên 1 trang\",\"field_code\":\"product_perpage\",\"field_value\":\"32\"},{\"field_name\":\"Độ rộng hình sản phẩm\",\"field_code\":\"product_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình sản phẩm\",\"field_code\":\"product_height\",\"field_value\":\"400\"},{\"field_name\":\"Đơn vị tiền tệ\",\"field_code\":\"currency_unit\",\"field_value\":\"vi_VN\"},{\"field_name\":\"Smtp host\",\"field_code\":\"smtp_host\",\"field_value\":\"smtp.gmail.com\"},{\"field_name\":\"Smtp port\",\"field_code\":\"smtp_port\",\"field_value\":\"465\"},{\"field_name\":\"Smtp authication\",\"field_code\":\"authentication\",\"field_value\":\"1\"},{\"field_name\":\"Encription\",\"field_code\":\"encription\",\"field_value\":\"ssl\"},{\"field_name\":\"Smtp username\",\"field_code\":\"smtp_username\",\"field_value\":\"dien.toannang@gmail.com\"},{\"field_name\":\"Smtp password\",\"field_code\":\"smtp_password\",\"field_value\":\"bjsdgetadsutdono\"},{\"field_name\":\"Email to\",\"field_code\":\"email_to\",\"field_value\":\"dienit02@gmail.com\"},{\"field_name\":\"Contact person\",\"field_code\":\"contacted_person\",\"field_value\":\"Công Ty TNHH GreenEcoLife\"},{\"field_name\":\"Trụ sở\",\"field_code\":\"address\",\"field_value\":\"50/2/59 Dương Quảng Hàm, Phường 5, Quận Gò Vấp\"},{\"field_name\":\"Hotline\",\"field_code\":\"telephone\",\"field_value\":\"0902.90.74.75\"},{\"field_name\":\"Facebook\",\"field_code\":\"facebook_url\",\"field_value\":\"https://www.facebook.com/nguyenvan.laptrinh\"},{\"field_name\":\"Twitter\",\"field_code\":\"twitter_url\",\"field_value\":\"https://twitter.com/\"},{\"field_name\":\"Google Plus\",\"field_code\":\"google_plus\",\"field_value\":\"https://plus.google.com/u/0/?hl=vi\"},{\"field_name\":\"Youtube\",\"field_code\":\"youtube_url\",\"field_value\":\"https://www.youtube.com/watch?v=kAcV7S3sySU\"},{\"field_name\":\"Instagram\",\"field_code\":\"instagram_url\",\"field_value\":\"http://flickr.com\"},{\"field_name\":\"Pinterest\",\"field_code\":\"pinterest_url\",\"field_value\":\"http://daidung.vn/\"},{\"field_name\":\"Map\",\"field_code\":\"map_url\",\"field_value\":\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.7765505259867!2d106.68751671435092!3d10.828404792286284!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f0d3be7c47%3A0x3f95e11384c4817f!2zNTAgRMawxqFuZyBRdeG6o25nIEjDoG0sIHBoxrDhu51uZyA1LCBHw7IgVuG6pXAsIEjhu5MgQ2jDrSBNaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1515998374369\"},{\"field_name\":\"Văn phòng giao dịch\",\"field_code\":\"office\",\"field_value\":\"27/13/8 Đường số 27, P.Hiệp Bình Chánh, Q.Thủ Đức\"},{\"field_name\":\"Skype NVKD 1\",\"field_code\":\"skype_nvkd_1\",\"field_value\":\"quocquy2010\"},{\"field_name\":\"Skype NVKD 2\",\"field_code\":\"skype_nvkd_2\",\"field_value\":\"greenecolife.vn\"},{\"field_name\":\"Skype NVKD 3\",\"field_code\":\"skype_nvkd_3\",\"field_value\":\"hiiamduc\"},{\"field_name\":\"Skype NVKD 4\",\"field_code\":\"skype_nvkd_4\",\"field_value\":\"phong.nguyen1984\"},{\"field_name\":\"Email NVKD 1\",\"field_code\":\"email_nvkd_1\",\"field_value\":\"dienit02@gmail.com\"},{\"field_name\":\"Email NVKD 2\",\"field_code\":\"email_nvkd_2\",\"field_value\":\"dienit02@gmail.com\"},{\"field_name\":\"Email NVKD 3\",\"field_code\":\"email_nvkd_3\",\"field_value\":\"dienit02@gmail.com\"},{\"field_name\":\"Email NVKD 4\",\"field_code\":\"email_nvkd_4\",\"field_value\":\"dienit02@gmail.com\"},{\"field_name\":\"Tel NVKD 1\",\"field_code\":\"tel_nvkd_1\",\"field_value\":\"0918.17.88.96\"},{\"field_name\":\"Tel NVKD 2\",\"field_code\":\"tel_nvkd_2\",\"field_value\":\"0902.90.74.75\"},{\"field_name\":\"Tel NVKD 3\",\"field_code\":\"tel_nvkd_3\",\"field_value\":\"0918.17.88.96\"},{\"field_name\":\"Tel NVKD 4\",\"field_code\":\"tel_nvkd_4\",\"field_value\":\"0918.17.88.96\"},{\"field_name\":\"NVKD1\",\"field_code\":\"name_nvkd_1\",\"field_value\":\"Mr Cooc Cui\"},{\"field_name\":\"NVKD2\",\"field_code\":\"name_nvkd_2\",\"field_value\":\"Mr Anh Lạc\"},{\"field_name\":\"NVKD3\",\"field_code\":\"name_nvkd_3\",\"field_value\":\"Nguyễn Tấn Phát\"},{\"field_name\":\"NVKD4\",\"field_code\":\"name_nvkd_4\",\"field_value\":\"Nguyễn Hùng Phương\"}]', 1, 1, '2017-12-03 07:45:35', '2018-02-01 04:10:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supporter`
--

DROP TABLE IF EXISTS `supporter`;
CREATE TABLE `supporter` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_money` decimal(11,0) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supporter`
--

INSERT INTO `supporter` (`id`, `fullname`, `number_money`, `payment_method_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Thị Thu Hằng', '1000000', 1, 1, 1, '2018-01-07 17:32:50', '2018-01-07 17:47:21'),
(7, 'Trần Gia Lạc', '2000000', 2, 2, 1, '2018-01-07 18:02:15', '2018-01-08 07:19:18'),
(8, 'Lê Văn Đại', '2000000', 1, 3, 1, '2018-01-08 02:38:56', '2018-01-08 09:29:07'),
(9, 'Nguyễn Mạnh Hùng', '3000000', 2, 4, 1, '2018-01-08 02:39:19', '2018-01-08 02:39:19'),
(10, 'Trần Tiến Dư', '3000000', 2, 5, 1, '2018-01-08 02:39:35', '2018-01-08 02:39:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `throttle`
--

DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(2, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(3, NULL, 'global', NULL, '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(4, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(5, NULL, 'global', NULL, '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(6, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(7, NULL, 'global', NULL, '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(8, NULL, 'ip', '127.0.0.1', '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(9, NULL, 'global', NULL, '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(10, NULL, 'ip', '127.0.0.1', '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(11, NULL, 'global', NULL, '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(12, NULL, 'ip', '127.0.0.1', '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(13, NULL, 'global', NULL, '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(14, NULL, 'ip', '127.0.0.1', '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(15, NULL, 'global', NULL, '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(16, NULL, 'ip', '127.0.0.1', '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(17, NULL, 'global', NULL, '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(18, NULL, 'ip', '127.0.0.1', '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(19, NULL, 'global', NULL, '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(20, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(21, NULL, 'global', NULL, '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(22, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(23, NULL, 'global', NULL, '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(24, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(25, NULL, 'global', NULL, '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(26, NULL, 'ip', '127.0.0.1', '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(27, NULL, 'global', NULL, '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(28, NULL, 'ip', '127.0.0.1', '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(29, NULL, 'global', NULL, '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(30, NULL, 'ip', '127.0.0.1', '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(31, NULL, 'global', NULL, '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(32, NULL, 'ip', '127.0.0.1', '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(33, NULL, 'global', NULL, '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(34, NULL, 'ip', '127.0.0.1', '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(35, NULL, 'global', NULL, '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(36, NULL, 'ip', '127.0.0.1', '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(37, NULL, 'global', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(38, NULL, 'ip', '127.0.0.1', '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(39, 1, 'user', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(40, NULL, 'global', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(41, NULL, 'ip', '127.0.0.1', '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(42, 1, 'user', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(43, NULL, 'global', NULL, '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(44, NULL, 'ip', '127.0.0.1', '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(45, NULL, 'global', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(46, NULL, 'ip', '127.0.0.1', '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(47, 4, 'user', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(48, NULL, 'global', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(49, NULL, 'ip', '127.0.0.1', '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(50, 4, 'user', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(51, NULL, 'global', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(52, NULL, 'ip', '127.0.0.1', '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(53, 4, 'user', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(54, NULL, 'global', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(55, NULL, 'ip', '127.0.0.1', '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(56, 1, 'user', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(57, NULL, 'global', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(58, NULL, 'ip', '127.0.0.1', '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(59, 1, 'user', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(60, NULL, 'global', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(61, NULL, 'ip', '127.0.0.1', '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(62, 1, 'user', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(63, NULL, 'global', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(64, NULL, 'ip', '127.0.0.1', '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(65, 4, 'user', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(66, NULL, 'global', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(67, NULL, 'ip', '127.0.0.1', '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(68, 4, 'user', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(69, NULL, 'global', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(70, NULL, 'ip', '127.0.0.1', '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(71, 1, 'user', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(72, NULL, 'global', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(73, NULL, 'ip', '127.0.0.1', '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(74, 1, 'user', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(75, NULL, 'global', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(76, NULL, 'ip', '127.0.0.1', '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(77, 1, 'user', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(78, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(79, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(80, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(81, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(82, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(83, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(84, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(85, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(86, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(87, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(88, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(89, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(90, NULL, 'global', NULL, '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(91, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(92, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(93, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(94, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(95, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(96, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(97, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(98, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(99, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(100, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(101, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(102, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(103, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(104, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(105, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(106, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(107, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(108, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(109, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(110, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(111, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(112, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(113, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(114, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(115, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(116, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(117, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(118, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(119, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(120, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(121, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(122, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(123, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(124, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(125, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(126, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(127, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(128, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(129, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(130, NULL, 'global', NULL, '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(131, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(132, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(133, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(134, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(135, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(136, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(137, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(138, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(139, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(140, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(141, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(142, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(143, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(144, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(145, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(146, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(147, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(148, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(149, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(150, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(151, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(152, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(153, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(154, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(155, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(156, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(157, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(158, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(159, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(160, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(161, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(162, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(163, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(164, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(165, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(166, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(167, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(168, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(169, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(170, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(171, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(172, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(173, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(174, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(175, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(176, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(177, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(178, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(179, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(180, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(181, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(182, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(183, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(184, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(185, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(186, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(187, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(188, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(189, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(190, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(191, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(192, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(193, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(194, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(195, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(196, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(197, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(198, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(199, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(200, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(201, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(202, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(203, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(204, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(205, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(206, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(207, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(208, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(209, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(210, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(211, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(212, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(213, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(214, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(215, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(216, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(217, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(218, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(219, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(220, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(221, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(222, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(223, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(224, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(225, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(226, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(227, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(228, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(229, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(230, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(231, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(232, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(233, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(234, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(235, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(236, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(237, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(238, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(239, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(240, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(241, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(242, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(243, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(244, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(245, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(246, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(247, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(248, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(249, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(250, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(251, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(252, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(253, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(254, NULL, 'global', NULL, '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(255, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(256, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(257, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(258, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(259, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(260, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(261, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(262, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(263, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(264, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(265, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(266, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(267, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(268, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(269, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(270, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(271, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(272, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(273, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(274, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(275, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(276, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(277, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(278, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(279, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(280, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(281, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(282, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(283, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(284, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(285, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(286, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(287, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(288, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(289, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(290, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(291, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(292, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(293, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(294, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(295, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(296, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(297, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(298, NULL, 'global', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(299, NULL, 'ip', '127.0.0.1', '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(300, 4, 'user', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(301, NULL, 'global', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(302, NULL, 'ip', '127.0.0.1', '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(303, 1, 'user', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(304, NULL, 'global', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(305, NULL, 'ip', '127.0.0.1', '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(306, 1, 'user', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(307, NULL, 'global', NULL, '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(308, NULL, 'ip', '127.0.0.1', '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(309, NULL, 'global', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(310, NULL, 'ip', '127.0.0.1', '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(311, 1, 'user', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(312, NULL, 'global', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(313, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(314, 6, 'user', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(315, NULL, 'global', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(316, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(317, 6, 'user', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(318, NULL, 'global', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(319, NULL, 'ip', '127.0.0.1', '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(320, 1, 'user', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(321, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(322, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(323, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(324, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(325, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(326, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(327, NULL, 'global', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(328, NULL, 'ip', '127.0.0.1', '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(329, 1, 'user', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(330, NULL, 'global', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(331, NULL, 'ip', '127.0.0.1', '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(332, 1, 'user', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(333, NULL, 'global', NULL, '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(334, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(335, NULL, 'global', NULL, '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(336, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(337, NULL, 'global', NULL, '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(338, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(339, NULL, 'global', NULL, '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(340, NULL, 'ip', '127.0.0.1', '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(341, NULL, 'global', NULL, '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(342, NULL, 'ip', '127.0.0.1', '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(343, NULL, 'global', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(344, NULL, 'ip', '127.0.0.1', '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(345, 1, 'user', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(346, NULL, 'global', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(347, NULL, 'ip', '127.0.0.1', '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(348, 1, 'user', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(349, NULL, 'global', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(350, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(351, 1, 'user', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(352, NULL, 'global', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(353, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(354, 1, 'user', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(355, NULL, 'global', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(356, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(357, 1, 'user', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(358, NULL, 'global', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(359, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(360, 1, 'user', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(361, NULL, 'global', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(362, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(363, 1, 'user', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(364, NULL, 'global', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(365, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(366, 1, 'user', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(367, NULL, 'global', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(368, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(369, 1, 'user', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(370, NULL, 'global', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(371, NULL, 'ip', '127.0.0.1', '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(372, 1, 'user', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(373, NULL, 'global', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(374, NULL, 'ip', '127.0.0.1', '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(375, 1, 'user', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(376, NULL, 'global', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(377, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(378, 1, 'user', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(379, NULL, 'global', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(380, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(381, 1, 'user', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(382, NULL, 'global', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(383, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(384, 1, 'user', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(385, NULL, 'global', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(386, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(387, 1, 'user', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(388, NULL, 'global', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(389, NULL, 'ip', '127.0.0.1', '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(390, 1, 'user', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(391, NULL, 'global', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(392, NULL, 'ip', '127.0.0.1', '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(393, 1, 'user', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(394, NULL, 'global', NULL, '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(395, NULL, 'ip', '127.0.0.1', '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(396, NULL, 'global', NULL, '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(397, NULL, 'ip', '127.0.0.1', '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(398, NULL, 'global', NULL, '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(399, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(400, NULL, 'global', NULL, '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(401, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(402, NULL, 'global', NULL, '2018-01-15 01:13:23', '2018-01-15 01:13:23'),
(403, NULL, 'ip', '127.0.0.1', '2018-01-15 01:13:23', '2018-01-15 01:13:23'),
(404, NULL, 'global', NULL, '2018-01-15 11:12:12', '2018-01-15 11:12:12'),
(405, NULL, 'ip', '127.0.0.1', '2018-01-15 11:12:12', '2018-01-15 11:12:12'),
(406, NULL, 'global', NULL, '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(407, NULL, 'ip', '127.0.0.1', '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(408, 1, 'user', NULL, '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(409, NULL, 'global', NULL, '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(410, NULL, 'ip', '127.0.0.1', '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(411, 1, 'user', NULL, '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(412, NULL, 'global', NULL, '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(413, NULL, 'ip', '127.0.0.1', '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(414, 1, 'user', NULL, '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(415, NULL, 'global', NULL, '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(416, NULL, 'ip', '127.0.0.1', '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(417, 1, 'user', NULL, '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(418, NULL, 'global', NULL, '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(419, NULL, 'ip', '127.0.0.1', '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(420, 4, 'user', NULL, '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(421, NULL, 'global', NULL, '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(422, NULL, 'ip', '127.0.0.1', '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(423, 4, 'user', NULL, '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(424, NULL, 'global', NULL, '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(425, NULL, 'ip', '127.0.0.1', '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(426, 6, 'user', NULL, '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(427, NULL, 'global', NULL, '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(428, NULL, 'ip', '127.0.0.1', '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(429, 6, 'user', NULL, '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(430, NULL, 'global', NULL, '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(431, NULL, 'ip', '127.0.0.1', '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(432, 6, 'user', NULL, '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(433, NULL, 'global', NULL, '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(434, NULL, 'ip', '127.0.0.1', '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(435, 6, 'user', NULL, '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(436, NULL, 'global', NULL, '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(437, NULL, 'ip', '127.0.0.1', '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(438, 6, 'user', NULL, '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(439, NULL, 'global', NULL, '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(440, NULL, 'ip', '127.0.0.1', '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(441, 6, 'user', NULL, '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(442, NULL, 'global', NULL, '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(443, NULL, 'ip', '127.0.0.1', '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(444, 6, 'user', NULL, '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(445, NULL, 'global', NULL, '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(446, NULL, 'ip', '127.0.0.1', '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(447, 7, 'user', NULL, '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(448, NULL, 'global', NULL, '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(449, NULL, 'ip', '127.0.0.1', '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(450, 1, 'user', NULL, '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(451, NULL, 'global', NULL, '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(452, NULL, 'ip', '127.0.0.1', '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(453, 1, 'user', NULL, '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(454, NULL, 'global', NULL, '2018-01-31 00:07:43', '2018-01-31 00:07:43'),
(455, NULL, 'ip', '127.0.0.1', '2018-01-31 00:07:44', '2018-01-31 00:07:44'),
(456, 1, 'user', NULL, '2018-01-31 00:07:44', '2018-01-31 00:07:44'),
(457, NULL, 'global', NULL, '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(458, NULL, 'ip', '127.0.0.1', '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(459, 1, 'user', NULL, '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(460, NULL, 'global', NULL, '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(461, NULL, 'ip', '127.0.0.1', '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(462, 1, 'user', NULL, '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(463, NULL, 'global', NULL, '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(464, NULL, 'ip', '127.0.0.1', '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(465, 1, 'user', NULL, '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(466, NULL, 'global', NULL, '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(467, NULL, 'ip', '127.0.0.1', '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(468, 1, 'user', NULL, '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(469, NULL, 'global', NULL, '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(470, NULL, 'ip', '127.0.0.1', '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(471, 1, 'user', NULL, '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(472, NULL, 'global', NULL, '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(473, NULL, 'ip', '127.0.0.1', '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(474, 1, 'user', NULL, '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(475, NULL, 'global', NULL, '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(476, NULL, 'ip', '127.0.0.1', '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(477, 1, 'user', NULL, '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(478, NULL, 'global', NULL, '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(479, NULL, 'ip', '127.0.0.1', '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(480, 1, 'user', NULL, '2018-02-02 19:05:12', '2018-02-02 19:05:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `permissions`, `last_login`, `fullname`, `address`, `phone`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'diennk@dienkim.com', '$2y$10$U.H6.rf5/X4JpVnA/WyQwOD9a.dWtbQFWtp3wqxjJBu8w9BJg3Q9K', NULL, '2018-02-02 19:07:26', 'Nguyễn Kim Điền', NULL, NULL, 'nguyen-kim-dien.png', 5, 1, '2017-11-12 07:23:56', '2018-02-02 19:07:26'),
(6, 'helenangochong', 'helenangoc@dienkim.com', '$2y$10$/cSr2zKOI5RUAo9XD2K5DuVwB554IWn3k16RwF37pFSxYFouMOmbi', NULL, '2018-01-26 04:32:49', 'Hồ Thị Ngọc Hồng', '12 Tân Canh', '0988162755', NULL, 1, 0, '2018-01-26 01:57:35', '2018-01-26 04:32:59'),
(7, 'langong', 'thaithuonglangong@dienkim.com', '$2y$10$W38P0cEq8qVYSiXYAKQVCOKb7ZkN4t7uN1trgm38V2wSKjtacybxe', NULL, '2018-01-28 09:54:51', 'Thái Thượng Lãng Ông', '13 Tân Canh', '0988162774', NULL, 1, 0, '2018-01-28 09:40:59', '2018-01-28 18:27:39'),
(8, 'tiennv', 'tiennv@dienkim.com', '$2y$10$9sq3u.mDu/Bk1vvpv4sU7.Ior67wjHR5n1slgsv/sz63zBQxAfZ4K', NULL, '2018-02-03 13:40:10', 'Nguyễn Văn Tiến', '14 Tân Canh', '0988152782', NULL, 1, 0, '2018-01-28 10:04:24', '2018-02-03 13:40:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_group_member`
--

DROP TABLE IF EXISTS `user_group_member`;
CREATE TABLE `user_group_member` (
  `id` bigint(20) NOT NULL,
  `group_member_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_group_member`
--

INSERT INTO `user_group_member` (`id`, `group_member_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 1, 1, '2018-01-26 04:05:58', '2018-01-26 04:05:58'),
(9, 4, 6, '2018-01-26 08:57:35', '2018-01-26 08:57:35'),
(10, 4, 7, '2018-01-28 16:36:54', '2018-01-28 16:36:54'),
(25, 3, 8, '2018-01-29 02:40:24', '2018-01-29 02:40:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_video_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `fullname`, `category_video_id`, `image`, `video_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Đi tham quan núi Bà Đen 2', 1, 'thuvienhinh-1.png', 'F5gQLpScOsI', 2, 1, '2018-01-09 11:01:55', '2018-01-09 11:49:30'),
(5, 'Đi tham quan núi Bà Đen', 1, 'thuvienhinh-2.png', 'BDBb1h-eLsY', 1, 1, '2018-01-09 11:04:06', '2018-01-09 11:49:08'),
(6, 'Đi tham quan núi Bà Đen 3', 1, 'thuvienhinh-3.png', 'rQt2EuoN6oo', 3, 1, '2018-01-09 11:04:29', '2018-01-09 11:49:42'),
(7, 'Đi tham quan núi Bà Đen 4', 1, 'thuvienhinh-4.png', 'jLzAqwCjPuU', 4, 1, '2018-01-09 11:04:54', '2018-01-09 11:49:49'),
(8, 'Đi tham quan núi Bà Đen 5', 1, 'thuvienhinh-5.png', 'koeu_AnZ0BQ', 5, 1, '2018-01-09 11:05:20', '2018-01-09 11:49:56'),
(9, 'Đi tham quan núi Bà Đen 6', 1, 'thuvienhinh-6.png', 'jM53ZU2MCzU', 6, 1, '2018-01-09 11:05:37', '2018-01-09 11:50:04'),
(10, 'Đi tham quan núi Bà Đen 7', 1, 'thuvienhinh-7.png', 'u7xIydku_Yw', 7, 1, '2018-01-09 11:05:53', '2018-01-09 11:50:11'),
(11, 'Đi tham quan núi Bà Đen 8', 1, 'thuvienhinh-8.png', 'yGvSEhQXu4g', 8, 1, '2018-01-09 11:06:08', '2018-01-09 11:50:20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_article`
--
ALTER TABLE `category_article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_banner`
--
ALTER TABLE `category_banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_param`
--
ALTER TABLE `category_param`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_video`
--
ALTER TABLE `category_video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_privilege`
--
ALTER TABLE `group_privilege`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `module_item`
--
ALTER TABLE `module_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Chỉ mục cho bảng `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_param`
--
ALTER TABLE `product_param`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project_article`
--
ALTER TABLE `project_article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project_member`
--
ALTER TABLE `project_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Chỉ mục cho bảng `setting_system`
--
ALTER TABLE `setting_system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supporter`
--
ALTER TABLE `supporter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `user_group_member`
--
ALTER TABLE `user_group_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `category_article`
--
ALTER TABLE `category_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category_banner`
--
ALTER TABLE `category_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `category_param`
--
ALTER TABLE `category_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `category_video`
--
ALTER TABLE `category_video`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `group_member`
--
ALTER TABLE `group_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `group_privilege`
--
ALTER TABLE `group_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3720;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `module_item`
--
ALTER TABLE `module_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT cho bảng `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `product_param`
--
ALTER TABLE `product_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT cho bảng `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `project_article`
--
ALTER TABLE `project_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `project_member`
--
ALTER TABLE `project_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_system`
--
ALTER TABLE `setting_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `supporter`
--
ALTER TABLE `supporter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `user_group_member`
--
ALTER TABLE `user_group_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
