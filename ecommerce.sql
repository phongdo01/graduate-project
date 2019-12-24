-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 24, 2019 lúc 03:42 AM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ecommerce`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `advertise`
--

CREATE TABLE `advertise` (
  `Id` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `Visible` int(11) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `advertise`
--

INSERT INTO `advertise` (`Id`, `Name`, `Image`, `IsActive`, `Visible`, `Description`) VALUES
(3, 'Banner Quảng Cáo Ngang 1', 'advertise-3-banner-quang-cao-ngang-1.jpg', 1, 3, 'Nằm dưới sản phẩm mới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `allcode`
--

CREATE TABLE `allcode` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `allcode`
--

INSERT INTO `allcode` (`id`, `name`, `value`, `content`) VALUES
(1, 'ORDERS_SST', '0', 'Chờ duyệt'),
(2, 'ORDERS_SST', '1', 'Đã duyệt - chờ giao hàng'),
(3, 'ORDERS_SST', '2', 'Từ chối'),
(4, 'ORDERS_SST', '3', 'Đã giao hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `Visible` int(11) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `Name`, `Image`, `IsActive`, `Visible`, `Description`) VALUES
(1, 'banner trái', 'banner-1-banner-trai.png', 1, 1, 'banner bên trái'),
(2, 'banner phải', 'banner-2-banner-phai.jpg', 1, 2, 'banner bên phải'),
(3, 'Banner Quảng Cáo Ngang 1', 'banner-3-banner-quang-cao-ngang-1.jpg', 1, 3, 'Nằm dưới sản phẩm mới'),
(5, '1 trung tam', 'banner-5-1-trung-tam1 trung tam.jpg', 0, 4, 'sdadadasd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `SupplyId` int(11) DEFAULT NULL,
  `Position` int(4) DEFAULT NULL,
  `alias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`Id`, `Name`, `SupplyId`, `Position`, `alias`) VALUES
(1, 'ĐIỆN THOẠI', 1, 1, 'dien-thoai'),
(2, 'LAPTOP-TABLET', 1, 2, 'laptop-tablet'),
(3, 'PHỤ KIỆN', 2, 4, 'phu-kien'),
(5, 'ĐIỆN TỬ DÂN DỤNG', NULL, 5, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contactinfo`
--

CREATE TABLE `contactinfo` (
  `Id` int(11) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Facebook` varchar(200) NOT NULL,
  `Zalo` varchar(200) NOT NULL,
  `Skype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `contactinfo`
--

INSERT INTO `contactinfo` (`Id`, `Address`, `Country`, `Mobile`, `Phone`, `Email`, `Facebook`, `Zalo`, `Skype`) VALUES
(1, 'Hoàng Mai', 'Hà Nội', '0976298379', '0976298379', 'dovanphong96@gmail.com', 'facebook.com/phong.do.00', 'phong.do', 'phong.do');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Subject` varchar(300) NOT NULL,
  `Createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`Id`, `Name`, `Email`, `Mobile`, `Subject`, `Createtime`) VALUES
(7, 'Dương Lương', 'LuongDuong@outlook.com', '0944129843', 'bảo hành mỗi sản phẩm trong bao lâu?', '2019-04-25 16:20:04'),
(8, 'joker', 'tuonglailacuatoi97@gmail.com', '039764099', 'Sản phẩm có đúng của nhà sản xuất?', '2019-12-10 13:43:29'),
(9, 'CA', 'conganh.nguyen@fssc.com.vn', '0935213422', 'Cho em xin danh sách nội dung của những video đã đăng lên ', '2019-12-18 21:16:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imageslide`
--

CREATE TABLE `imageslide` (
  `Id` int(11) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `SlideId` int(1) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `imageslide`
--

INSERT INTO `imageslide` (`Id`, `Image`, `SlideId`, `IsActive`) VALUES
(1, '3-1.jpg', 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `intro`
--

CREATE TABLE `intro` (
  `Id` int(11) NOT NULL,
  `Title` text,
  `Content` longtext,
  `Link` varchar(250) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `intro`
--

INSERT INTO `intro` (`Id`, `Title`, `Content`, `Link`, `IsActive`) VALUES
(1, 'Nội dung giới thiệu shop', '<h2 style=\"text-align:center\"><strong>Giới thiệu shop</strong></h2>\r\n\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Hiện nay, xu hướng thương mại điện tử đang ph&aacute;t triển rất mạnh, trong tương lai sẽ l&agrave; m&ocirc; h&igrave;nh chủ đạo v&agrave; tất yếu, ShopOnline.com đ&atilde; tạo n&ecirc;n sự kh&aacute;c biệt bởi ch&iacute;nh h&igrave;nh thức n&agrave;y: Một m&ocirc; h&igrave;nh cửa h&agrave;ng trực tuyến, cung cấp mọi g&oacute;c độ của sản phẩm nhằm gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng chọn lựa so s&aacute;nh t&iacute;nh năng v&agrave; chọn sản phẩm th&iacute;ch hợp nhất. Với c&aacute;c sản phẩm Hiện đại, đi đầu xu hướng của c&aacute;c h&atilde;ng sản xuất nổi tiếng.&nbsp;Bạn c&oacute; thể t&igrave;m hiểu kỹ hơn để y&ecirc;n t&acirc;m hơn về những sản phẩm cũng như dịch vụ b&aacute;n h&agrave;ng trực tuyến của ch&uacute;ng t&ocirc;i theo những đường dẫn sau đ&acirc;y:<br />\r\n&nbsp;</div>\r\n\r\n<h2 style=\"text-align:center\"><strong>Hướng dẫn Đặt h&agrave;ng</strong></h2>\r\n\r\n<p><strong>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch h&agrave;ng của Shop Online!</strong></p>\r\nCh&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin tưởng v&agrave; lựa chọn ShopOnline l&agrave; điểm đến mua sắm.<br />\r\nTuy nhi&ecirc;n, c&oacute; một thắc mắc lớn nhất l&agrave; &ldquo;l&agrave;m thế n&agrave;o để mua sản phẩm m&igrave;nh ưa th&iacute;ch một c&aacute;ch nhanh ch&oacute;ng v&agrave; tiện lợi nhất&rdquo;?<br />\r\nĐể giải đ&aacute;p thắc mắc n&agrave;y, ch&uacute;ng t&ocirc;i xin gửi tới qu&yacute; kh&aacute;ch h&igrave;nh ảnh hướng dẫn c&aacute;c bước mua h&agrave;ng như sau:\r\n<p><strong>Bước 1:&nbsp;</strong>Tại giao diện trang chủ của ShopOnline (shoponline.com.vn)<br />\r\nQu&yacute; kh&aacute;ch g&otilde; v&agrave;o thanh t&igrave;m kiếm sản phẩm m&agrave; m&igrave;nh quan t&acirc;m. V&iacute; dụ qu&yacute; kh&aacute;ch đang muốn mua sản phẩm sau khi g&otilde; hệ thống sẽ truy xuất ra c&aacute;c sản phẩm li&ecirc;n quan tới từ kh&oacute;a m&agrave; qu&yacute; kh&aacute;ch muốn t&igrave;m.</p>\r\n\r\n<p><strong>Bước 2:&nbsp;</strong>B&acirc;y giờ bạn h&atilde;y click chọn sản phẩm m&agrave; qu&yacute; kh&aacute;ch muốn. Sau khi click chọn sẽ hiện thị trang chi tiết sản phẩm như dưới.Qu&yacute; kh&aacute;ch c&oacute; thể xem c&aacute;c th&ocirc;ng số thuộc t&iacute;nh cũng như b&agrave;i viết đ&aacute;nh gi&aacute; về sản phẩm ngay b&ecirc;n dưới.</p>\r\n\r\n<p><strong>Bước 3:&nbsp;</strong>Sau khi đ&atilde; h&agrave;i l&ograve;ng với sản phẩm qu&yacute; kh&aacute;ch vui l&ograve;ng click v&agrave;o n&uacute;t &ldquo;ĐẶT MUA &rdquo;. Sau đ&oacute; qu&yacute; kh&aacute;ch c&oacute; thể thấy được giỏ h&agrave;ng của m&igrave;nh đang gồm những sản phẩm đ&atilde; chọn mua.<br />\r\n<br />\r\n<strong>Bước 4:&nbsp;</strong>Tiến h&agrave;nh đặt h&agrave;ng. Sau khi qu&yacute; kh&aacute;ch kiểm tra lại giỏ h&agrave;ng v&agrave; chọn &ldquo;Tiến h&agrave;nh đặt h&agrave;ng&rdquo;. Qu&yacute; kh&aacute;ch sẽ thấy Form th&ocirc;ng tin cần thiết để điền bao gồm: &ldquo;Họ v&agrave; t&ecirc;n&rdquo;,&rdquo;Số điện thoại&rdquo;,&rdquo;Email&rdquo;.&nbsp;</p>\r\n&nbsp;\r\n\r\n<h2 style=\"text-align:center\"><strong>Chi ph&iacute; vận chuyển, giao h&agrave;ng v&agrave; thanh to&aacute;n</strong></h2>\r\n\r\n<h3><strong>1. Ch&iacute;nh s&aacute;ch giao h&agrave;ng</strong></h3>\r\n\r\n<p>- Giao h&agrave;ng miễn ph&iacute; to&agrave;n quốc c&aacute;c sản phẩm Shop Onlineđang kinh doanh.</p>\r\n\r\n<p>- Kh&aacute;ch h&agrave;ng ở xa c&oacute; thể mua h&agrave;ng bằng c&aacute;c đặt h&agrave;ng tr&ecirc;n website hoặc li&ecirc;n hệ với nh&acirc;n vi&ecirc;n qua tổng đ&agrave;i 0888888&nbsp;( 8h30 &ndash; 20h30) chủ nhật từ ( 8h30 đến 18h).</p>\r\n\r\n<p>- Trong v&ograve;ng 5 ph&uacute;t nh&acirc;n vi&ecirc;n tổng đ&agrave;i sẽ li&ecirc;n hệ qu&yacute; kh&aacute;ch để x&aacute;c nhận đơn h&agrave;ng.</p>\r\n\r\n<p>- C&aacute;c đơn h&agrave;ng ph&aacute;t sinh sau 20h c&ugrave;ng ng&agrave;y đến 9h s&aacute;ng ng&agrave;y h&ocirc;m sau, ShopOnline&nbsp;sẽ li&ecirc;n hệ x&aacute;c nhận trước 12h trưa.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>2. C&aacute;ch thức giao - nhận h&agrave;ng</strong></h3>\r\n\r\n<p>- ShopOnline&nbsp;li&ecirc;n kết với&nbsp;c&aacute;c đối t&aacute;c giao h&agrave;ng để cung cấp dịch vụ mua h&agrave;ng v&agrave; thanh to&aacute;n tại nh&agrave;.</p>\r\n\r\n<p>- ShopOnline&nbsp;sẽ xử l&yacute; đơn h&agrave;ng, x&aacute;c nhận đơn h&agrave;ng với qu&yacute; kh&aacute;ch trước khi giao h&agrave;ng.</p>\r\n\r\n<p>- Sản phẩm được đ&oacute;ng g&oacute;i v&agrave; d&aacute;n tem ni&ecirc;m phong của ShopOnline.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>3. Thời gian giao h&agrave;ng dự kiến</strong>&nbsp;:</h3>\r\n\r\n<p>- T&ugrave;y khu vực v&agrave; g&oacute;i giao h&agrave;ng kh&aacute;ch lựa chọn t&iacute;nh từ l&uacute;c nh&acirc;n vi&ecirc;n gọi x&aacute;c nhận đơn h&agrave;ng với quy kh&aacute;ch. Chi tiết:<br />\r\n- Khu vực nội th&agrave;nh H&agrave; Nội:&nbsp;<br />\r\nTừ 8h30 &ndash; 16h : x&aacute;c nhận v&agrave; giao trong ng&agrave;y &gt;&gt; Ph&iacute; vận chuyển:35.000đ (Miễn ph&iacute; đơn h&agrave;ng &gt;= 500.000đ)<br />\r\nSau 17h : x&aacute;c nhận trước v&agrave; giao v&agrave;o ng&agrave;y h&ocirc;m sau &gt;&gt;&nbsp;Ph&iacute; vận chuyển: 35.000đ (Miễn ph&iacute; đơn h&agrave;ng &gt;= 500.000đ)<br />\r\n- Khu vực ngoại th&agrave;nh H&agrave; Nội: từ 1- 2 ng&agrave;y &gt;&gt; Ph&iacute; vận chuyển 35.000đ (Miễn ph&iacute; đơn h&agrave;ng &gt;= 500.000đ)<br />\r\n- Khu vực ngoại tỉnh: 3 - 5 ng&agrave;y &gt;&gt; 35.000đ (Miễn ph&iacute; đơn h&agrave;ng &gt;= 500.000đ</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:821px\">\r\n	<tbody>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;<em>Kh&ocirc;ng &aacute;p dụng giao h&agrave;ng ngoại th&agrave;nh v&agrave; ngoại tỉnh đối với c&aacute;c sản phẩm : m&aacute;y cũ, m&aacute;y đổi trả bảo h&agrave;nh,&nbsp;qu&agrave; tặng tr&uacute;ng thưởng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>4.</strong>&nbsp;<strong>C&aacute;c trường hợp sau Qu&yacute; Kh&aacute;ch vui l&ograve;ng Chuyển Khoản trước khi giao h&agrave;ng :</strong></h3>\r\n\r\n<p>- Chuyển khoản trước phần số dư so với những sản phẩm c&oacute; gi&aacute; trị tr&ecirc;n 5 triệu.</p>\r\n\r\n<p>- Người đại diện nhận h&agrave;ng thay người mua&nbsp;hoặc l&agrave; sản phẩm được tặng cho người kh&aacute;c. Qu&yacute;&nbsp;kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước 100% gi&aacute; trị đơn h&agrave;ng.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>5. H&igrave;nh thức thanh to&aacute;n :</strong></h3>\r\n\r\n<p>- Thanh to&aacute;n bằng tiền mặt khi nhận h&agrave;ng.</p>\r\n\r\n<p>- Chuyển khoản trước theo th&ocirc;ng tin t&agrave;i khoản :</p>\r\n\r\n<p>Chủ t&agrave;i khoản : C&ocirc;ng Ty TNHH ShopOnline</p>\r\n\r\n<p>Ng&acirc;n h&agrave;ng n&ocirc;ng nghiệp v&agrave; ph&aacute;t triển n&ocirc;ng th&ocirc;n Việt Nam &ndash; Agribank</p>\r\n\r\n<p>Số t&agrave;i khoản : 1902 2010 52803 &ndash; Agribank chi nh&aacute;nh 4</p>\r\n\r\n<p>Nội dung : &lt; T&ecirc;n kh&aacute;ch h&agrave;ng&gt; &lt; Số điện thoại &gt;</p>\r\n\r\n<p>- Thanh to&aacute;n online tr&ecirc;n web hnammobile.com bằng c&aacute;c loại thẻ Visa, Master ( ph&iacute; cổng thanh to&aacute;n 1,3%),thẻ nội địa miễn ph&iacute;.</p>\r\n\r\n<p>- Thanh to&aacute;n qua v&iacute; điện tử ZaloPay, Momo.</p>\r\n\r\n<p>-&nbsp;Khi cần hỗ trợ th&ecirc;m th&ocirc;ng tin , kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ số hotline :&nbsp;<a href=\"tel:19002012\">1900 2012</a>&nbsp;( 8h30 &ndash; 20h30) - chủ nhật ( 8h30 -18h).</p>\r\n', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `livesport`
--

CREATE TABLE `livesport` (
  `Id` int(11) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Link` varchar(300) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Url1` varchar(200) NOT NULL,
  `Url2` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `livesport`
--

INSERT INTO `livesport` (`Id`, `Title`, `Link`, `Description`, `Url1`, `Url2`) VALUES
(2, 'Giới thiệu Iphone 11', 'https://www.youtube.com/embed/TEMe04_wYAw', 'Iphone 11', 'http://localhost:8080/ShopOnline/livesport', 'http://localhost:8080/ShopOnline/livesport'),
(3, 'Đánh giá Oppo F11', 'https://www.youtube.com/embed/UUEb8U6V1_w', 'Đ&aacute;nh gi&aacute; Oppo F11', 'http://localhost:8080/ShopOnline/livesport', 'http://localhost:8080/ShopOnline/livesport');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `Customer` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Createtime` datetime NOT NULL,
  `Status` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Cart_total` float NOT NULL,
  `accepter` int(11) DEFAULT '0',
  `ProcessingTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`Id`, `Customer`, `Address`, `Phone`, `Createtime`, `Status`, `Email`, `Cart_total`, `accepter`, `ProcessingTime`) VALUES
(1, 'Nguyễn Thị Sen', 'Bắc Giang', '0347135097', '2019-12-11 23:22:08', 2, '', 11490000, 27, '2019-12-10 15:48:29'),
(2, 'Nguyễn Diệu Linh', 'Ninh Bình', '0123456789', '2019-11-21 23:26:29', 2, '', 8990000, 27, '2019-12-10 16:06:39'),
(3, 'Nguyễn Thị Hương', 'Thanh Hóa', '0984757395', '2019-11-22 23:31:37', 2, '', 23900000, 27, '2019-12-10 16:07:09'),
(4, 'Nguyễn Thị Ngọc Anh', 'Bắc Ninh', '0857123578', '2019-12-01 23:32:42', 0, '', 480000, 0, '0000-00-00 00:00:00'),
(5, 'Nguyễn Thị Ngọc Anh', 'Bắc Ninh', '0857123578', '2019-11-27 10:32:47', 0, '', 480000, 0, '0000-00-00 00:00:00'),
(6, 'Trần Thị Dương', 'Nam Định', '0966201334', '2019-04-24 13:22:38', 0, '', 22900000, 0, '0000-00-00 00:00:00'),
(7, 'Trần Thị Dương', 'Nam Định', '0966201334', '2019-04-23 13:25:07', 0, '', 22900000, 0, '0000-00-00 00:00:00'),
(8, 'Nguyễn Minh Anh', 'Hà Tây', '0987344357', '2019-10-07 07:33:29', 0, '', 4990000, 0, '0000-00-00 00:00:00'),
(9, 'Nguyễn Huyền Yến', 'Hòa Bình', '0837263123', '2019-11-22 14:50:28', 1, '', 892500, 25, '2019-12-12 15:40:09'),
(10, 'do van phong', 'Tan Mai', '0936381310', '2019-11-28 15:09:42', 0, '', 10990000, 0, '0000-00-00 00:00:00'),
(11, 'HieuDo', 'Ha Noi', '0936381310', '2019-11-28 15:23:07', 1, '', 28167500, 25, '2019-12-12 15:42:03'),
(12, 'dovanphong', 'Tiên Sơn - Việt Yên - Bắc Giang', '0976298379', '2019-12-04 22:10:26', 0, '', 26970000, 0, '0000-00-00 00:00:00'),
(13, 'hungtran', 'Số 3 Vương Thừa Vũ', '0912094321', '2019-12-05 23:20:11', 0, '', 35480000, 0, '0000-00-00 00:00:00'),
(15, 'lulu', 'Tiên Sơn - Việt Yên - Bắc Giang', '0912121213', '2019-12-06 08:28:31', 3, '', 4490000, 28, '2019-12-12 13:49:48'),
(17, 'phong.do', 'Số 3 Vương Thừa Vũ', '0176298379', '2019-12-06 08:31:32', 0, '', 10990000, 0, '0000-00-00 00:00:00'),
(18, 'nam', 'vu thu, thai binh', '0965351741', '2019-12-07 16:05:26', 1, '', 35920000, 27, '2019-12-11 14:16:27'),
(21, 'Ngọc Trọng', 'Tân Mai, Hoàng Mai, Hà Nội', '0921222912', '2019-12-07 16:51:57', 0, '', 14970000, 0, '0000-00-00 00:00:00'),
(22, 'Hoàng Văn Nam', 'Đê La Thành, Hà Nội', '0929619622', '2019-12-07 17:25:03', 0, '', 69960000, 0, '0000-00-00 00:00:00'),
(23, 'Quang Hải', 'Hà Đông', '0912333222', '2019-12-07 17:28:56', 0, '', 16990000, 0, '0000-00-00 00:00:00'),
(24, 'Nam hoang', 'Thái Bình', '0965221122', '2019-12-07 17:36:03', 0, '', 9980000, 0, '0000-00-00 00:00:00'),
(25, 'Trần Văn Nam', 'Hưng Yên', '09221112221', '2019-12-07 17:41:18', 3, '', 49900000, 27, '2019-12-10 15:38:03'),
(26, 'Xuân Tuyền', 'Tân Mai - Hoàng Mai - Hà Nội', '0923761234', '2019-12-07 23:02:25', 0, '', 11490000, 0, '0000-00-00 00:00:00'),
(29, 'Hưng Trần Ngọc', 'Chiến Thắng - Văn Quán - Hà Đông', '0945891423', '2019-12-09 22:06:58', 0, '', 12500000, 0, '0000-00-00 00:00:00'),
(30, 'Ngọc Trọng', 'Hoàng Mai - Hà Nội', '0915821543', '2019-12-10 17:27:39', 0, '', 2800000, 0, '0000-00-00 00:00:00'),
(31, 'Đình Tuyên', 'Đống Đa - Hà Nội', '0945312044', '2019-12-10 23:01:11', 2, '', 28850000, 27, '2019-12-10 16:02:15'),
(32, 'Chiến Đoàn', 'Văn Giang Hưng Yên', '0925430988', '2019-12-12 08:58:45', 2, '', 12500000, 27, '2019-12-18 02:01:55'),
(33, 'Linh Dương', 'Hoàn Kiếm Hà Nội', '0945132088', '2019-12-12 20:53:09', 3, '', 3600000, 28, '2019-12-12 13:53:30'),
(34, 'Anh Hiếu', 'Xuân Thủy Cầu Giấy', '0936351247', '2019-12-12 20:59:35', 3, '', 8400000, 28, '2019-12-12 14:00:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`Id`, `OrderId`, `ProductId`, `Quantity`, `Price`) VALUES
(1, 1, 46, 1, 11490000),
(2, 2, 64, 1, 8990000),
(3, 3, 50, 1, 23900000),
(4, 4, 59, 1, 600000),
(5, 6, 41, 1, 22900000),
(6, 8, 43, 1, 4990000),
(7, 9, 60, 1, 1050000),
(8, 10, 47, 1, 10990000),
(9, 11, 51, 1, 18990000),
(10, 11, 63, 1, 250000),
(11, 11, 64, 1, 8990000),
(12, 12, 64, 3, 8990000),
(13, 13, 46, 2, 11490000),
(14, 13, 68, 1, 12500000),
(16, 15, 48, 1, 4490000),
(18, 17, 47, 1, 10990000),
(19, 18, 48, 8, 4490000),
(22, 21, 1, 3, 4990000),
(23, 22, 1, 4, 4990000),
(24, 22, 68, 4, 12500000),
(25, 23, 48, 1, 4490000),
(26, 23, 68, 1, 12500000),
(27, 24, 1, 2, 4990000),
(28, 25, 1, 10, 4990000),
(29, 26, 46, 1, 11490000),
(32, 29, 68, 1, 12500000),
(33, 30, 64, 1, 2800000),
(34, 31, 46, 1, 3850000),
(35, 31, 68, 2, 12500000),
(36, 32, 68, 1, 12500000),
(37, 33, 48, 1, 4000000),
(38, 34, 13, 3, 2800000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Name` varchar(550) DEFAULT NULL,
  `TypeId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `SupplyId` int(11) DEFAULT NULL,
  `Description` longtext,
  `Price` int(11) NOT NULL,
  `Color` varchar(250) DEFAULT NULL,
  `Material` varchar(250) DEFAULT NULL,
  `Size` varchar(20) NOT NULL,
  `Detail` longtext,
  `CreateBy` int(11) DEFAULT NULL,
  `Createdate` date DEFAULT NULL,
  `EditBy` int(11) DEFAULT NULL,
  `EditDate` date DEFAULT NULL,
  `TotalView` int(11) DEFAULT NULL,
  `isSaleOff` tinyint(1) DEFAULT NULL,
  `Percent_off` int(11) NOT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `Image2` varchar(250) DEFAULT NULL,
  `Image3` varchar(260) NOT NULL,
  `Image4` varchar(260) NOT NULL,
  `alias` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`Id`, `Name`, `TypeId`, `CategoryId`, `SubCategoryId`, `SupplyId`, `Description`, `Price`, `Color`, `Material`, `Size`, `Detail`, `CreateBy`, `Createdate`, `EditBy`, `EditDate`, `TotalView`, `isSaleOff`, `Percent_off`, `Image1`, `Image2`, `Image3`, `Image4`, `alias`, `quantity`, `sold`) VALUES
(1, 'Nokia 6.1 Plus', 1, 1, 13, 1, '<img alt=\"á\" src=\"/ShopOnline/admin/themes/upload/images/799_28_1.jpg\" style=\"height:800px; width:600px\" /><img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/847_thay_th____2.jpg\" style=\"height:800px; width:600px\" /><img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/407_0_4_1.jpg\" style=\"height:267px; margin-left:100px; margin-right:100px; width:200px\" />vu dinh dong<br />\r\n&nbsp;', 1400000, 'Đen', 'Vỏ Kim loại ', '5.8 inch, Full HD', '1m6 55klg mac cỡ nào đc bạn ơi', 0, '2019-12-10', 0, '2016-01-23', 96, 0, 0, 'product11-nokia-61-plus.png', 'product21-nokia-61-plus.jpg', '', '', 'nokia-61-plus', -5, 10),
(3, 'Đồng hồ thông minh Samsung Galaxy Watch Active R500', 3, 3, 14, 1, '<br />\r\n<img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/807_2013606805_1641250346.jpg\" style=\"border-style:solid; border-width:1px; height:371px; margin-left:111px; margin-right:111px; width:400px\" /><br />\r\n<img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/407_0_4_1.jpg\" style=\"height:400px; margin-left:150px; margin-right:150px; width:300px\" />', 5490000, 'Hồng', 'Kính cường lực Gorilla Class ', 'Đường kính mặt: 27 m', '/public/images/product/aokhoac2.jpg\r\n/public/images/product/aokhoac2.jpg', NULL, '2019-12-10', NULL, '2016-01-23', 32, 0, 0, 'product13-dong-ho-thong-minh-samsung-galaxy-watch-active-r500.jpg', 'product23-dong-ho-thong-minh-samsung-galaxy-watch-active-r500.jpg', '', '', 'dong-ho-thong-minh-samsung-galaxy-watch-active-r500', 5, 0),
(13, 'OPPO F11', 1, 1, 1, NULL, '<h2>Đặc điểm nổi bật của Samsung Galaxy A9 (2018)</h2>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a9-2018\" target=\"_blank\" title=\"Tham khảo chi tiết điện thoại Samsung Galaxy A9 (2018) tại Thegioididong.com\" type=\"Tham khảo chi tiết điện thoại Samsung Galaxy A9 (2018) tại Thegioididong.com\">Samsung Galaxy A9 (2018)</a>&nbsp;l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo các dòng điện thoại chính hãng, giá tốt đang kinh doanh tại Thegioididong.com\" type=\"Tham khảo các dòng điện thoại chính hãng, giá tốt đang kinh doanh tại Thegioididong.com\">điện thoại</a>&nbsp;đầu ti&ecirc;n của Samsung sở hữu hệ thống camera ấn tượng với 4 thấu k&iacute;nh c&ugrave;ng h&agrave;ng loạt c&aacute;c n&acirc;ng cấp đ&aacute;ng gi&aacute; về cấu h&igrave;nh v&agrave; t&iacute;nh năng hiện đại kh&aacute;c.</h2>\r\n', 2800000, 'Xanh', 'Kim loại nguyên khối', '6 inch', NULL, NULL, '2019-12-11', NULL, NULL, 8, 1, 10, 'product113-oppo-f11.png', NULL, '', '', 'oppo-f11', 1, 4),
(41, 'Điện thoại iPhone X 64', 2, 1, 13, NULL, '', 7700000, 'Hồng vàng', 'Kim loại nguyên khối', '5.8inch', NULL, NULL, '2019-12-05', NULL, NULL, 2, 1, 5, 'product141-dien-thoai-iphone-x-64.png', NULL, '', '', 'dien-thoai-iphone-x-64', 5, 0),
(42, 'Điện thoại Huawei P30 Lite', 0, 1, 3, NULL, '', 2450000, 'Xanh', 'vỏ kim loại', '5.6 inch', NULL, NULL, '2019-12-11', NULL, NULL, 5, 0, 0, 'product142-dien-thoai-huawei-p30-lite.png', NULL, '', '', 'dien-thoai-huawei-p30-lite', 5, 0),
(43, 'Điện thoại OPPO A7 32GB', 1, 1, 1, NULL, '', 1400000, 'Vàng đồng', 'vỏ kim loại', '6 inch', NULL, NULL, '2019-12-09', NULL, NULL, 47, 0, 10, 'product143-dien-thoai-oppo-a7-32gb.png', NULL, '', '', 'dien-thoai-oppo-a7-32gb', 5, 0),
(45, 'Máy tính bảng Samsung Galaxy Tab A 10.1 T515', 1, 2, 5, NULL, '', 2450000, 'Hồng', 'vỏ kim loại', '10,5 inch', NULL, NULL, '2019-12-08', NULL, NULL, 2, 0, 0, 'product145-may-tinh-bang-samsung-galaxy-tab-a-101-t515.png', NULL, '', '', 'may-tinh-bang-samsung-galaxy-tab-a-101-t515', 5, 0),
(46, 'Máy tính bảng iPad Wifi Cellular 32GB (2018)', 1, 2, 5, NULL, '', 3850000, 'xám', 'Vỏ kim loại, HD', '9,7 inch', NULL, NULL, '2019-12-12', NULL, NULL, 11, 1, 10, 'product146-may-tinh-bang-ipad-wifi-cellular-32gb-2018.png', NULL, '', '', 'may-tinh-bang-ipad-wifi-cellular-32gb-2018', 5, 0),
(47, 'Máy tính bảng iPad Wifi 128 GB (2018)', 1, 2, 5, NULL, '', 3500000, 'Hồng', 'Vỏ kim loại, HD', '9,7 inch', NULL, NULL, '2019-12-10', NULL, NULL, 4, 0, 10, 'product147-may-tinh-bang-ipad-wifi-128-gb-2018.png', NULL, '', '', 'may-tinh-bang-ipad-wifi-128-gb-2018', 5, 0),
(48, 'Máy tính bảng Huawei MediaPad T3 10', 2, 2, 5, NULL, '', 4000000, 'Trắng', 'Kim loại', '9,7 inch', NULL, NULL, '2019-12-12', NULL, NULL, 10, 1, 10, 'product148-may-tinh-bang-huawei-mediapad-t3-10.png', NULL, '', '', 'may-tinh-bang-huawei-mediapad-t3-10', 3, 2),
(49, 'Điện thoại Samsung Galaxy A10', 1, 1, 4, NULL, '', 3000000, 'Đỏ', 'Vỏ nhựa', '6.2 inch', NULL, NULL, '2019-12-08', NULL, NULL, 0, 0, 0, 'product149-dien-thoai-samsung-galaxy-a10.png', NULL, '', '', 'dien-thoai-samsung-galaxy-a10', 5, 0),
(50, 'Điện thoại iPhone Xr 256GB', 2, 1, 13, NULL, '', 8050000, 'Trắng', 'Kim loại nguyên khối', '6.1 inch', NULL, NULL, '2019-12-06', NULL, NULL, 101, 0, 0, 'product150-dien-thoai-iphone-xr-256gb.png', NULL, '', '', 'dien-thoai-iphone-xr-256gb', 5, 0),
(51, 'Điện thoại Samsung Galaxy Note 9', 2, 1, 4, NULL, '', 6300000, 'Đen', 'Kim loại nguyên khối', '6,4 inch', NULL, NULL, '2019-12-03', NULL, NULL, 5, 0, 0, 'product151-dien-thoai-samsung-galaxy-note-9.png', NULL, '', '', 'dien-thoai-samsung-galaxy-note-9', 4, 1),
(52, 'Pin sạc dự phòng Polymer 10.000 mAh eSaver PJ JP62S', 3, 3, 14, NULL, '', 640000, 'Xanh, Hồng', 'Pin Polymer (Pin Poli)', 'Dài 14.5 cm - ngang ', NULL, NULL, '2019-12-10', NULL, NULL, 34, 1, 10, 'product152-pin-sac-du-phong-polymer-10000-mah-esaver-pj-jp62s.jpg', NULL, '', '', 'pin-sac-du-phong-polymer-10000-mah-esaver-pj-jp62s', 5, 0),
(53, 'Loa Bluetooth Fenda W5', 3, 3, 18, NULL, '', 400000, 'Xanh, Xám', 'Vỏ nhựa cứng', 'Cao 8 cm - ngang 9.2', NULL, NULL, '2019-12-09', NULL, NULL, 0, 1, 25, 'product153-loa-bluetooth-fenda-w5.jpg', NULL, '', '', 'loa-bluetooth-fenda-w5', 5, 0),
(56, 'Điện thoại Huawei P30 Lite', 1, 1, 3, NULL, '', 7000000, 'Xanh', 'Kính cường lực Gorilla Class ', '6 inch', NULL, NULL, '2019-12-08', NULL, NULL, 11, 0, 0, 'product156-dien-thoai-huawei-p30-lite.png', NULL, '', '', 'dien-thoai-huawei-p30-lite', 4, 1),
(57, 'Adapter sạc 1A Xmobile C058', 3, 3, 18, NULL, '', 100000, 'Trắng', 'nhựa ', '1 A', NULL, NULL, '2019-12-10', NULL, NULL, 1, 1, 10, 'product157-adapter-sac-1a-xmobile-c058.jpg', NULL, '', '', 'adapter-sac-1a-xmobile-c058', 5, 0),
(59, 'Pin sạc dự phòng 10.000 mAh eSaver LA Y325S', 3, 3, 14, NULL, '', 600000, 'Xanh, Trắng', 'Vỏ nhựa', 'Dài 14 cm - ngang 6.', NULL, NULL, '2019-12-10', NULL, NULL, 3, 1, 20, 'product159-pin-sac-du-phong-10000-mah-esaver-la-y325s.jpg', NULL, '', '', 'pin-sac-du-phong-10000-mah-esaver-la-y325s', 5, 0),
(60, 'Loa vi tính 2.1 Enkor E900 Bạc', 3, 3, 14, NULL, '', 1050000, 'Bạc ', 'Cáp cắm 3.5 mm Loa siêu trầm 2 loa vệ tinh 1 sợi Ăng-ten FM', 'Cao 22 cm- ngang 10.', NULL, NULL, '2019-12-10', NULL, NULL, 1, 1, 15, 'product160-loa-vi-tinh-21-enkor-e900-bac.jpg', NULL, '', '', 'loa-vi-tinh-21-enkor-e900-bac', 5, 0),
(61, 'Dây cáp Micro USB 0.2 m Xmobile MU03', 3, 3, 14, NULL, '', 40000, 'Đen', 'Vỏ nhựa', '20 cm', NULL, NULL, '2019-12-10', NULL, NULL, 0, 1, 20, 'product161-day-cap-micro-usb-02-m-xmobile-mu03.jpg', NULL, '', '', 'day-cap-micro-usb-02-m-xmobile-mu03', 5, 0),
(62, 'Adapter Sạc 2 cổng USB 2.4A Type C 3A Xmobile DS165 Trắng', 3, 3, 14, NULL, '', 250000, 'Trắng', 'Vỏ nhựa', 'Cổng 1: 3A Cổng 2: 2', NULL, NULL, '2019-12-10', NULL, NULL, 0, 1, 20, 'product162-adapter-sac-2-cong-usb-24a-type-c-3a-xmobile-ds165-trang.jpg', NULL, '', '', 'adapter-sac-2-cong-usb-24a-type-c-3a-xmobile-ds165-trang', 5, 0),
(63, 'Cáp Lightning MFI 1m Omars OM03W Xám', 3, 3, 14, NULL, '', 250000, 'Xám', 'Cáp dù', '1 m', NULL, NULL, '2019-12-15', NULL, NULL, 1, 1, 25, 'product163-cap-lightning-mfi-1m-omars-om03w-xam.jpg', NULL, '', '', 'cap-lightning-mfi-1m-omars-om03w-xam', 4, 1),
(64, 'Apple Watch S3 GPS ', 3, 3, 14, NULL, '', 2800000, 'Đen', 'Dây da', '2.1 inch, Đường kính', NULL, NULL, '2019-12-10', NULL, NULL, 6, 0, 0, 'product164-apple-watch-s3-gps.jpg', NULL, '', '', 'apple-watch-s3-gps', 4, 1),
(68, 'Smart TV  43LM6300PTP', 1, 5, 20, NULL, 'SmartTV LG 43 inch 43 LM6300 PTB<br />\r\nTh&ugrave;ng tivi c&oacute;: S&aacute;ch hướng dẫn, Remote, Ch&acirc;n đế, &ndash; Đổi sản phẩm lỗi miễn ph&iacute; trong 7 ng&agrave;y, &ndash; Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 2 năm, remote 2 năm', 12500000, 'Đen', 'Thường', '43inch', NULL, NULL, '2019-12-07', NULL, NULL, 9, 0, 0, 'product168-smart-tv-43lm6300ptp.jpg', NULL, '', '', 'smart-tv-43lm6300ptp', 5, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`Id`, `Name`, `Description`) VALUES
(1, 'admin', 'a'),
(2, 'user', 'sadad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

CREATE TABLE `slideshow` (
  `Id` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `img1` varchar(260) DEFAULT NULL,
  `text1` varchar(500) DEFAULT NULL,
  `img2` varchar(260) DEFAULT NULL,
  `text2` varchar(500) DEFAULT NULL,
  `img3` varchar(260) NOT NULL,
  `text3` varchar(500) NOT NULL,
  `img4` varchar(260) NOT NULL,
  `text4` varchar(500) NOT NULL,
  `img5` varchar(260) NOT NULL,
  `text5` varchar(500) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slideshow`
--

INSERT INTO `slideshow` (`Id`, `Name`, `img1`, `text1`, `img2`, `text2`, `img3`, `text3`, `img4`, `text4`, `img5`, `text5`, `status`) VALUES
(1, 'banner trái', 'image1-1-banner-trai.jpg', '0', 'image2-1-banner-trai.jpg', '0', 'image3-1-banner-trai.png', '0', 'image4-1-banner-trai.jpg', '0', 'image5-1-banner-trai.jpeg', '0', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subcategory`
--

CREATE TABLE `subcategory` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `SupplyId` int(11) DEFAULT NULL,
  `Link` varchar(260) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `pId` int(11) NOT NULL,
  `alias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `subcategory`
--

INSERT INTO `subcategory` (`Id`, `Name`, `SupplyId`, `Link`, `CategoryId`, `pId`, `alias`) VALUES
(1, 'Oppo', 1, '', 1, 0, 'oppo'),
(3, 'Huawei', 1, '', 1, 0, 'huawei'),
(4, 'Samsung', 1, '', 1, 0, 'samsung'),
(5, 'Tablet', 2, '', 2, 1, 'tablet'),
(13, 'Apple Iphone', NULL, '', 1, 0, 'apple-iphone'),
(14, 'Phụ kiện điện thoại', NULL, '', 3, 0, 'phu-kien-dien-thoai'),
(15, 'Xiaomi', NULL, '', 1, 0, 'xiaomi'),
(16, 'Nokia', NULL, '', 1, 0, 'nokia'),
(17, 'Laptop', NULL, '', 2, 0, 'laptop'),
(18, 'Phụ kiện', NULL, '', 1, 0, 'phu-kien'),
(19, 'Realme', NULL, '', 1, 0, 'realme'),
(20, 'TV', NULL, '', 5, 0, 'tv');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplies`
--

CREATE TABLE `supplies` (
  `SupplyId` int(11) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `supplies`
--

INSERT INTO `supplies` (`SupplyId`, `Name`, `Logo`) VALUES
(1, 'Việt Nam', NULL),
(2, 'Việt Nam', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `type`
--

CREATE TABLE `type` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `alias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `type`
--

INSERT INTO `type` (`Id`, `Name`, `Description`, `alias`) VALUES
(0, 'SẢN PHẨM LƯU TRỮ', '', 'san-pham-luu-tru'),
(1, 'SẢN PHẨM NỔI BẬT', '', 'san-pham-order'),
(2, 'SẢN PHẨM MỚI', '', 'san-pham-moi'),
(3, 'SẢN PHẨM KHUYẾN MẠI', '', 'san-pham-khuyen-mai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `CreateDate` date DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  `Avatar` varchar(550) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `isLogin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`Id`, `Username`, `Password`, `Name`, `CreateDate`, `RoleId`, `Avatar`, `Email`, `Phone`, `Address`, `isLogin`) VALUES
(0, 'default', 'c4ca4238a0b923820dcc509a6f75849b', 'default', '2019-12-22', 2, NULL, 'default', '0912345678', 'none', 0),
(25, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin', '2019-12-05', 1, 'avatar_name25-.jpg', 'dovanphong96@gmail.com', '0976298379', 'Hà Nội', 0),
(26, 'user', 'c4ca4238a0b923820dcc509a6f75849b', 'Nguyễn Văn Sang', '2019-12-08', 2, 'avatar_name26-user.png', 'user@user.com', '0976298379', 'Hà Nội', 0),
(27, 'phong.do', 'bc88b11c254dcbcef4ddb2f692c4feae', 'Đỗ Văn Phong', '2019-12-08', 2, 'avatar_name27-phongdo.jpg', 'phong.do@fssc.com.vn', '0936381310', 'Tiên Sơn - Việt Yên - Bắc Giang', 0),
(28, 'ngoctrongbg', 'c4ca4238a0b923820dcc509a6f75849b', 'Nguyễn Ngọc Trọng', '2019-12-12', 2, 'avatar_name28-ngoctrongbg.jpeg', 'ngoctrongbg@gmail.com', '0387015611', 'Tân Mai - Hoàng Mai - Hà Nội', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `session` varchar(100) NOT NULL DEFAULT '''''',
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(24) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `dateonline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user_online`
--

INSERT INTO `user_online` (`session`, `time`, `ip`, `browser`, `dateonline`) VALUES
('o7etocmf5254kqrt2593o4kip5', 1577028651, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `visiter`
--

CREATE TABLE `visiter` (
  `Id` int(11) NOT NULL,
  `session` varchar(100) NOT NULL DEFAULT '''''',
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(24) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `dateonline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `visiter`
--

INSERT INTO `visiter` (`Id`, `session`, `time`, `ip`, `browser`, `dateonline`) VALUES
(2, '1456825980', 1270, 'Mozilla/5.0 (Windows NT ', '2016-03-01', '0000-00-00'),
(3, 'u15sou3lb29c5mro2vgrahugu3', 1456826004, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-01'),
(4, 'n6971v5af3kbrmve3g0hhnh6i2', 1456826021, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0)', '2016-03-01'),
(5, 'u15sou3lb29c5mro2vgrahugu3', 1456826038, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-01'),
(6, 'u15sou3lb29c5mro2vgrahugu3', 1456826115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-01'),
(7, 'n6971v5af3kbrmve3g0hhnh6i2', 1456830148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0)', '2016-03-01'),
(8, 'athrmehegvarha5g2h2igoorc2', 1456857824, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-01'),
(9, 'nra8eeqgb9t2uatm42d4fr2mr4', 1456927765, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-02'),
(10, '11ml11mraqjrk9boluapoqlau7', 1456977971, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-03'),
(11, '6217tfbqb6dek1aef4u616uha5', 1456977972, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-03'),
(12, 'oojpfp5bgmggtjknupef2094q3', 1457061719, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-04'),
(13, 'ufe6ipna8isig4f1j8pa64n0q0', 1457061720, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-04'),
(14, 'j0s6euuvb5cthjqrrj3sj6pi97', 1457087447, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-04'),
(15, 'v9n5hb1fliivanpte9pgm80mp5', 1457160920, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-05'),
(16, 'upjtit7vu5p0db6hrmr4mfp5m2', 1457189666, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-05'),
(17, 'j3egjmm0shrdmgpomvoncoc3d7', 1457246392, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-06'),
(18, 'h6me5m2lj64uga2thqd24cdh74', 1457502114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-09'),
(19, '63a6idp353am4dvjfknu3dksk0', 1457522637, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-09'),
(20, '0s5so7pvogve8i5lp9nqtsgq97', 1457542143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-09'),
(21, '25r22h8hal3rbqj7lfggevs4m3', 1457542641, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-09'),
(22, 'n8edt08aut5449eoehamf60l21', 1457543311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-09'),
(23, 'igv6kb9l52tqeofg1b21jt66r6', 1457579200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-10'),
(24, 'fj65aursh80vqe3f3aarrijcj4', 1457580682, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-10'),
(25, 'r0vrorb37asvmaqapqfqs7hdd2', 1457581555, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-10'),
(26, 'ir8k2j5s84kmevpqnk6nu0mr66', 1457581850, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-10'),
(27, 'ghpgnejg26es9l3dijkp1dc5p5', 1457582605, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-10'),
(28, 'sb08aqlu1vmav0vsg3tjqi9686', 1457582715, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-10'),
(29, 'jr75cu5jfmsvgm2nels1nukr82', 1457604875, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-10'),
(30, 'op7fgfpu8lutmmvjogdacrpg77', 1457624257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-10'),
(31, 'ftapl0k0q554r0gfl0ljqd1ci6', 1457928426, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(32, '4jpn482mdk9dc0utp5k3jjtoe0', 1457928427, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(33, 'qaqgnilb2vleja1gfclc96vii6', 1457936959, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(34, 'vdvvvvl538j5lkvotr60a2h9g2', 1457956744, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(35, 'ktnumkqu68mbbf0u8nonbn1ej3', 1457962239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(36, 's2mqpmio4t9g7omj78t9khurb4', 1457962758, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(37, '60agnncgn5r5gj0eo26hiqikg0', 1457967981, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(38, '5fctj754v0p82qkhuvnese0ne0', 1457968254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(39, '0c1dbegjtv7d061o2su2rpr2p2', 1457968820, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(40, 'poenm4ui9bu5hge9ei1rti7md5', 1457971110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(41, '2auuh22bt0vrg3n4bm51n27lu0', 1457971184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(42, '06l5aqmh0b54r14g0begde1p25', 1457972434, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(43, '569i5e4s5oq0aef69lf0b87eg3', 1457974717, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(44, 'f3trnllaf4ju07e1nepgpbean4', 1457975380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-14'),
(45, '7jmfq3k12vthq6anep0dh3av56', 1458024787, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-15'),
(46, '4m83pors4kn4qon8sto4964fr4', 1458025610, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-15'),
(47, '2lu71cr6tefh78a4qikitv3pm2', 1458026089, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-15'),
(48, 'tccac13jsag6dhukea2n8jhdh1', 1458184443, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(49, 'jrtttilad1bbu0rfhjg6kamn54', 1458197484, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(50, 'ou0a403o6e3l4u4ogb7lfvrso2', 1458213584, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(51, 'i1fnihddupc3l10uc0ftllr612', 1458215656, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(52, 'r48ga6i92r1as5sb3o4pj0fqd6', 1458215656, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(53, '7c069ghvrkslu7vrjkk9nafnl1', 1458218271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(54, '11tqef9oi2c32fjmr9vfq523m2', 1458219755, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(55, 'v4it7rsl72quq4bvlm68kmauj3', 1458236974, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(56, '68jeh3us3bjt5r2doju7q56uf4', 1458237218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(57, 'v4it7rsl72quq4bvlm68kmauj3', 1458239202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-17'),
(58, '9taac909nttrhusdn9onngrng4', 1458267457, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-18'),
(59, '2g4u834q03mdbq4kfnpnga5ge1', 1458300153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (K', '2016-03-18'),
(60, '89eju3klssu1h378hl60tdmte7', 1553764473, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-03-28'),
(61, '6k5m3fqgfh8g6nlc705puf6sj6', 1553767171, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2019-03-28'),
(62, 'ug1fto2vg8o9i4g1gfgtupk3q0', 1554378568, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-04'),
(63, 'ljiott69e50p5uhm7feli3gsn6', 1554985016, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-11'),
(64, 'i0mjapdma46hiocfsh32stob87', 1555562243, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2019-04-18'),
(65, 'do9g0m5ilkdbi21ak66p897rq4', 1555563430, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-18'),
(66, '9s65t8j65b380r1r71dbpdp5g5', 1555582359, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-18'),
(67, 'gvlj9c5ofhoemg7s2fr5uvlsh6', 1555606242, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-18'),
(68, 'hm4nofo029sjip610r1upcb6f3', 1555653342, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-19'),
(69, 'qiaa0n1ftobstmtv0tjfl16l63', 1555913219, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-22'),
(70, '4g3eld1322nisob9uo580csi84', 1555948809, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-22'),
(71, 'ttj7bkm7u3bnq420nilll3ni32', 1555987523, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-23'),
(72, 'gqcc7rm06qh08c80vjp6oto5i0', 1556122851, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-24'),
(73, '1517euj9lkl0bl38u0dphi4q61', 1556160998, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-25'),
(74, 'v9b5uhs2nf48hfuitslps8od31', 1556182925, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-25'),
(75, 'n305p3nd0q9s3h6apibvjlak64', 1572404031, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2019-10-30'),
(76, 'o7etocmf5254kqrt2593o4kip5', 1574304342, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-11-21'),
(77, 'iauoi365rl69ms4hralivpr0b5', 1574323608, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-11-21'),
(78, 'n5281bq8rpgf69uma9l4v400v0', 1574323702, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0)', '2019-11-21'),
(79, 'j897sqbq04vlqnk3veu8741jt0', 1574323985, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0)', '2019-11-21'),
(80, 'lg40h5k124b4cd9lh9ilsqt4l0', 1574928502, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-11-28'),
(81, 'o7etocmf5254kqrt2593o4kip5', 1574928640, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-11-28'),
(82, 'o7etocmf5254kqrt2593o4kip5', 1575472091, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-04'),
(83, 'j9p4up5cafllhot04tk3ejl9u2', 1575473161, '192.168.0.103', 'Mozilla/5.0 (Linux; Android 5.1; A1601 Build/LMY47', '2019-12-04'),
(84, 'o7etocmf5254kqrt2593o4kip5', 1575473311, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-04'),
(85, '5qddmcm32ql9713s4789qjjhr3', 1575555583, '192.168.0.108', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2019-12-05'),
(86, 'snllo28uq3bngr6n27llrjj154', 1575556086, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-05'),
(87, 'hb4crjbam48ma5ov0uqg8v13s7', 1575556115, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0)', '2019-12-05'),
(88, 'n305p3nd0q9s3h6apibvjlak64', 1575556156, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2019-12-05'),
(89, '9kq6gjkhu33g9ho0r686ktiv03', 1575556465, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-05'),
(90, 'o7etocmf5254kqrt2593o4kip5', 1575556505, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-05'),
(91, 'snllo28uq3bngr6n27llrjj154', 1575557898, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-05'),
(92, 'hb4crjbam48ma5ov0uqg8v13s7', 1575557983, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0)', '2019-12-05'),
(93, '9kq6gjkhu33g9ho0r686ktiv03', 1575558870, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-05'),
(94, 'hb4crjbam48ma5ov0uqg8v13s7', 1575560103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0)', '2019-12-05'),
(95, '9kq6gjkhu33g9ho0r686ktiv03', 1575560512, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-05'),
(96, 'n305p3nd0q9s3h6apibvjlak64', 1575562601, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/5', '2019-12-05'),
(97, 'o7etocmf5254kqrt2593o4kip5', 1575592229, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-06'),
(98, 'u5t1cb12vv03ciggdo5ij0egq3', 1575592817, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-06'),
(99, 'u5t1cb12vv03ciggdo5ij0egq3', 1575594754, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-06'),
(100, 'b6bhvhultrcg3isopanul4v5l5', 1575686353, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-07'),
(101, 'o7etocmf5254kqrt2593o4kip5', 1575707726, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-07'),
(102, 'fljdpb0h0vv271q3b470cmbi04', 1575772504, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-08'),
(103, 'fljdpb0h0vv271q3b470cmbi04', 1575810713, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-08'),
(104, 'd3c0hkdi92bs767fm3kh6ueru1', 1575901516, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-09'),
(105, 'o7etocmf5254kqrt2593o4kip5', 1575902896, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-09'),
(106, 'd3c0hkdi92bs767fm3kh6ueru1', 1575904407, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-09'),
(107, 'o90o7g7if057nsk5ofk0bab5l6', 1575960584, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-10'),
(108, 'o90o7g7if057nsk5ofk0bab5l6', 1575964859, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-10'),
(109, '8o52k3c2t8ri6nvb432qe81eg7', 1575966545, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-10'),
(110, 'o90o7g7if057nsk5ofk0bab5l6', 1575966601, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-10'),
(111, 'ru7aj9k9ron2kegt36nvldm683', 1575966693, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0)', '2019-12-10'),
(112, 'irkjtn6h2ofs8fn5t6r16eon16', 1575966978, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0)', '2019-12-10'),
(113, 'o7etocmf5254kqrt2593o4kip5', 1575969928, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-10'),
(114, '9c7e5qdloso3od7tfk5l8cfkf0', 1575997029, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-10'),
(115, 'o7etocmf5254kqrt2593o4kip5', 1576020004, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-12-11');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `allcode`
--
ALTER TABLE `allcode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Categories_Supplies1` (`SupplyId`);

--
-- Chỉ mục cho bảng `contactinfo`
--
ALTER TABLE `contactinfo`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `imageslide`
--
ALTER TABLE `imageslide`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `livesport`
--
ALTER TABLE `livesport`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `accepter` (`accepter`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `fk_detail_product` (`ProductId`),
  ADD KEY `fk_detail_order` (`OrderId`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Product_Supplies` (`SupplyId`),
  ADD KEY `FK_Product_Categories` (`CategoryId`),
  ADD KEY `fk_product_subcategory` (`SubCategoryId`),
  ADD KEY `TypeId` (`TypeId`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Id_Supplies1` (`SupplyId`),
  ADD KEY `FK_Id_Category1` (`CategoryId`);

--
-- Chỉ mục cho bảng `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`SupplyId`);

--
-- Chỉ mục cho bảng `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_User_Role` (`RoleId`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`session`);

--
-- Chỉ mục cho bảng `visiter`
--
ALTER TABLE `visiter`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `advertise`
--
ALTER TABLE `advertise`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `allcode`
--
ALTER TABLE `allcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `imageslide`
--
ALTER TABLE `imageslide`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `intro`
--
ALTER TABLE `intro`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `livesport`
--
ALTER TABLE `livesport`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `supplies`
--
ALTER TABLE `supplies`
  MODIFY `SupplyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `type`
--
ALTER TABLE `type`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `visiter`
--
ALTER TABLE `visiter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`accepter`) REFERENCES `user` (`Id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `fk_detail_order` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`),
  ADD CONSTRAINT `fk_detail_product` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_subcategory` FOREIGN KEY (`SubCategoryId`) REFERENCES `subcategory` (`Id`),
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`TypeId`) REFERENCES `type` (`Id`);

--
-- Các ràng buộc cho bảng `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `FK_Id_Category1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_User_Role` FOREIGN KEY (`RoleId`) REFERENCES `role` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
