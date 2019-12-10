-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 11:39 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
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
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`Id`, `Name`, `Image`, `IsActive`, `Visible`, `Description`) VALUES
(3, 'Banner Quảng Cáo Ngang 1', 'banner-3-banner-quang-cao-ngang-1.jpg', 1, 3, 'Nằm dưới sản phẩm mới');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
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
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`Id`, `Name`, `Image`, `IsActive`, `Visible`, `Description`) VALUES
(1, 'banner trái', 'banner-1-banner-trai.png', 1, 1, 'banner bên trái'),
(2, 'banner phải', 'banner-2-banner-phai.jpg', 1, 2, 'banner bên phải'),
(3, 'Banner Quảng Cáo Ngang 1', 'banner-3-banner-quang-cao-ngang-1.jpg', 1, 3, 'Nằm dưới sản phẩm mới'),
(5, '1 trung tam', 'banner-5-1-trung-tam1 trung tam.jpg', 0, 4, 'sdadadasd');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `SupplyId` int(11) DEFAULT NULL,
  `Position` int(4) DEFAULT NULL,
  `alias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Name`, `SupplyId`, `Position`, `alias`) VALUES
(1, 'ĐIỆN THOẠI', 1, 1, 'dien-thoai'),
(2, 'LAPTOP-TABLET', 1, 2, 'laptop-tablet'),
(3, 'PHỤ KIỆN', 2, 4, 'phu-kien');

-- --------------------------------------------------------

--
-- Table structure for table `contactinfo`
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
-- Dumping data for table `contactinfo`
--

INSERT INTO `contactinfo` (`Id`, `Address`, `Country`, `Mobile`, `Phone`, `Email`, `Facebook`, `Zalo`, `Skype`) VALUES
(1, 'Thanh xuân', 'Hà Nội', '0945 802 194', '0945 802 194', 'quangdanh@gmail.com', 'Facebook.com', 'quangdanh', 'quangdanh');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
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
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`Id`, `Name`, `Email`, `Mobile`, `Subject`, `Createtime`) VALUES
(1, 'aaaaaaaa', 'a', '1', ' a', '2016-03-04 00:00:00'),
(2, 'vu dinh dong', 'd@gmail.com', '0987 192 209', 'Nếu tham số $length được sử dụng và là một số dương, chuỗi trả về sẽ bao gồm $length ký tự, tính từ vị trí thứ $start (tùy thuộc vào độ dài của chuỗi).\\\\r\\\\nNếu tham số $length được sử dụng và là một số âm, chuỗi trả về được tính từ vị trí $start đến vị trí $length (trong đó vị trí $length được tính', '2016-03-10 00:00:00'),
(4, 'dá', 'sadad', 'dsada', ' sadadad', '2016-03-03 13:20:59'),
(5, 'dá', 'sadad', 'dsada', ' sadadad', '2016-03-03 13:26:00'),
(7, 'fwe', 'fwef', '534', ' fewf', '2019-04-25 16:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `imageslide`
--

CREATE TABLE `imageslide` (
  `Id` int(11) NOT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `SlideId` int(1) DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `imageslide`
--

INSERT INTO `imageslide` (`Id`, `Image`, `SlideId`, `IsActive`) VALUES
(1, '3-1.jpg', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `intro`
--

CREATE TABLE `intro` (
  `Id` int(11) NOT NULL,
  `Title` text,
  `Content` longtext,
  `Link` varchar(250) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `intro`
--

INSERT INTO `intro` (`Id`, `Title`, `Content`, `Link`, `IsActive`) VALUES
(1, 'Nội dung giới thiệu shop', '<h2 style=\"text-align:center\"><strong>Giới thiệu shop</strong></h2>\r\n\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n\r\n<div>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Hiện nay, xu hướng thương mại điện tử đang ph&aacute;t triển rất mạnh, trong tương lai sẽ l&agrave; m&ocirc; h&igrave;nh chủ đạo v&agrave; tất yếu, ShopOnline.com đ&atilde; tạo n&ecirc;n sự kh&aacute;c biệt bởi ch&iacute;nh h&igrave;nh thức n&agrave;y: Một m&ocirc; h&igrave;nh cửa h&agrave;ng trực tuyến, cung cấp mọi g&oacute;c độ của sản phẩm nhằm gi&uacute;p kh&aacute;ch h&agrave;ng dễ d&agrave;ng chọn lựa so s&aacute;nh t&iacute;nh năng v&agrave; chọn sản phẩm th&iacute;ch hợp nhất. Với c&aacute;c sản phẩm Hiện đại, đi đầu xu hướng của c&aacute;c h&atilde;ng sản xuất nổi tiếng.&nbsp;Bạn c&oacute; thể t&igrave;m hiểu kỹ hơn để y&ecirc;n t&acirc;m hơn về những sản phẩm cũng như dịch vụ b&aacute;n h&agrave;ng trực tuyến của ch&uacute;ng t&ocirc;i theo những đường dẫn sau đ&acirc;y:<br />\r\n&nbsp;</div>\r\n\r\n<h2 style=\"text-align:center\"><strong>Hướng dẫn Đặt h&agrave;ng</strong></h2>\r\n\r\n<p><strong>K&iacute;nh ch&agrave;o qu&yacute; kh&aacute;ch h&agrave;ng của Shop Online!</strong></p>\r\nCh&acirc;n th&agrave;nh cảm ơn qu&yacute; kh&aacute;ch đ&atilde; tin tưởng v&agrave; lựa chọn ShopOnline l&agrave; điểm đến mua sắm.<br />\r\nTuy nhi&ecirc;n, c&oacute; một thắc mắc lớn nhất l&agrave; &ldquo;l&agrave;m thế n&agrave;o để mua sản phẩm m&igrave;nh ưa th&iacute;ch một c&aacute;ch nhanh ch&oacute;ng v&agrave; tiện lợi nhất&rdquo;?<br />\r\nĐể giải đ&aacute;p thắc mắc n&agrave;y, ch&uacute;ng t&ocirc;i xin gửi tới qu&yacute; kh&aacute;ch h&igrave;nh ảnh hướng dẫn c&aacute;c bước mua h&agrave;ng như sau:\r\n<p><strong>Bước 1:&nbsp;</strong>Tại giao diện trang chủ của ShopOnline (shoponline.com.vn)<br />\r\nQu&yacute; kh&aacute;ch g&otilde; v&agrave;o thanh t&igrave;m kiếm sản phẩm m&agrave; m&igrave;nh quan t&acirc;m. V&iacute; dụ qu&yacute; kh&aacute;ch đang muốn mua sản phẩm sau khi g&otilde; hệ thống sẽ truy xuất ra c&aacute;c sản phẩm li&ecirc;n quan tới từ kh&oacute;a m&agrave; qu&yacute; kh&aacute;ch muốn t&igrave;m.</p>\r\n\r\n<p><strong>Bước 2:&nbsp;</strong>B&acirc;y giờ bạn h&atilde;y click chọn sản phẩm m&agrave; qu&yacute; kh&aacute;ch muốn. Sau khi click chọn sẽ hiện thị trang chi tiết sản phẩm như dưới.Qu&yacute; kh&aacute;ch c&oacute; thể xem c&aacute;c th&ocirc;ng số thuộc t&iacute;nh cũng như b&agrave;i viết đ&aacute;nh gi&aacute; về sản phẩm ngay b&ecirc;n dưới.</p>\r\n\r\n<p><strong>Bước 3:&nbsp;</strong>Sau khi đ&atilde; h&agrave;i l&ograve;ng với sản phẩm qu&yacute; kh&aacute;ch vui l&ograve;ng click v&agrave;o n&uacute;t &ldquo;ĐẶT MUA &rdquo;. Sau đ&oacute; qu&yacute; kh&aacute;ch c&oacute; thể thấy được giỏ h&agrave;ng của m&igrave;nh đang gồm những sản phẩm đ&atilde; chọn mua.<br />\r\n<br />\r\n<strong>Bước 4:&nbsp;</strong>Tiến h&agrave;nh đặt h&agrave;ng. Sau khi qu&yacute; kh&aacute;ch kiểm tra lại giỏ h&agrave;ng v&agrave; chọn &ldquo;Tiến h&agrave;nh đặt h&agrave;ng&rdquo;. Qu&yacute; kh&aacute;ch sẽ thấy Form th&ocirc;ng tin cần thiết để điền bao gồm: &ldquo;Họ v&agrave; t&ecirc;n&rdquo;,&rdquo;Số điện thoại&rdquo;,&rdquo;Email&rdquo;.&nbsp;</p>\r\n&nbsp;\r\n\r\n<h2 style=\"text-align:center\"><strong>Chi ph&iacute; vận chuyển, giao h&agrave;ng v&agrave; thanh to&aacute;n</strong></h2>\r\n\r\n<h3><strong>1. Ch&iacute;nh s&aacute;ch giao h&agrave;ng</strong></h3>\r\n\r\n<p>- Giao h&agrave;ng miễn ph&iacute; to&agrave;n quốc c&aacute;c sản phẩm Shop Onlineđang kinh doanh.</p>\r\n\r\n<p>- Kh&aacute;ch h&agrave;ng ở xa c&oacute; thể mua h&agrave;ng bằng c&aacute;c đặt h&agrave;ng tr&ecirc;n website hoặc li&ecirc;n hệ với nh&acirc;n vi&ecirc;n qua tổng đ&agrave;i 0888888&nbsp;( 8h30 &ndash; 20h30) chủ nhật từ ( 8h30 đến 18h).</p>\r\n\r\n<p>- Trong v&ograve;ng 5 ph&uacute;t nh&acirc;n vi&ecirc;n tổng đ&agrave;i sẽ li&ecirc;n hệ qu&yacute; kh&aacute;ch để x&aacute;c nhận đơn h&agrave;ng.</p>\r\n\r\n<p>- C&aacute;c đơn h&agrave;ng ph&aacute;t sinh sau 20h c&ugrave;ng ng&agrave;y đến 9h s&aacute;ng ng&agrave;y h&ocirc;m sau, ShopOnline&nbsp;sẽ li&ecirc;n hệ x&aacute;c nhận trước 12h trưa.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>2. C&aacute;ch thức giao - nhận h&agrave;ng</strong></h3>\r\n\r\n<p>- ShopOnline&nbsp;li&ecirc;n kết với&nbsp;c&aacute;c đối t&aacute;c giao h&agrave;ng để cung cấp dịch vụ mua h&agrave;ng v&agrave; thanh to&aacute;n tại nh&agrave;.</p>\r\n\r\n<p>- ShopOnline&nbsp;sẽ xử l&yacute; đơn h&agrave;ng, x&aacute;c nhận đơn h&agrave;ng với qu&yacute; kh&aacute;ch trước khi giao h&agrave;ng.</p>\r\n\r\n<p>- Sản phẩm được đ&oacute;ng g&oacute;i v&agrave; d&aacute;n tem ni&ecirc;m phong của ShopOnline.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>3. Thời gian giao h&agrave;ng dự kiến</strong>&nbsp;:</h3>\r\n\r\n<p>- T&ugrave;y khu vực v&agrave; g&oacute;i giao h&agrave;ng kh&aacute;ch lựa chọn t&iacute;nh từ l&uacute;c nh&acirc;n vi&ecirc;n gọi x&aacute;c nhận đơn h&agrave;ng với quy kh&aacute;ch. Chi tiết:<br />\r\n- Khu vực nội th&agrave;nh H&agrave; Nội:&nbsp;<br />\r\nTừ 8h30 &ndash; 16h : x&aacute;c nhận v&agrave; giao trong ng&agrave;y &gt;&gt; Ph&iacute; vận chuyển:35.000đ (Miễn ph&iacute; đơn h&agrave;ng &gt;= 500.000đ)<br />\r\nSau 17h : x&aacute;c nhận trước v&agrave; giao v&agrave;o ng&agrave;y h&ocirc;m sau &gt;&gt;&nbsp;Ph&iacute; vận chuyển: 35.000đ (Miễn ph&iacute; đơn h&agrave;ng &gt;= 500.000đ)<br />\r\n- Khu vực ngoại th&agrave;nh H&agrave; Nội: từ 1- 2 ng&agrave;y &gt;&gt; Ph&iacute; vận chuyển 35.000đ (Miễn ph&iacute; đơn h&agrave;ng &gt;= 500.000đ)<br />\r\n- Khu vực ngoại tỉnh: 3 - 5 ng&agrave;y &gt;&gt; 35.000đ (Miễn ph&iacute; đơn h&agrave;ng &gt;= 500.000đ</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:821px\">\r\n	<tbody>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Lưu &yacute;:</strong>&nbsp;<em>Kh&ocirc;ng &aacute;p dụng giao h&agrave;ng ngoại th&agrave;nh v&agrave; ngoại tỉnh đối với c&aacute;c sản phẩm : m&aacute;y cũ, m&aacute;y đổi trả bảo h&agrave;nh,&nbsp;qu&agrave; tặng tr&uacute;ng thưởng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>4.</strong>&nbsp;<strong>C&aacute;c trường hợp sau Qu&yacute; Kh&aacute;ch vui l&ograve;ng Chuyển Khoản trước khi giao h&agrave;ng :</strong></h3>\r\n\r\n<p>- Chuyển khoản trước phần số dư so với những sản phẩm c&oacute; gi&aacute; trị tr&ecirc;n 5 triệu.</p>\r\n\r\n<p>- Người đại diện nhận h&agrave;ng thay người mua&nbsp;hoặc l&agrave; sản phẩm được tặng cho người kh&aacute;c. Qu&yacute;&nbsp;kh&aacute;ch vui l&ograve;ng thanh to&aacute;n trước 100% gi&aacute; trị đơn h&agrave;ng.</p>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3><strong>5. H&igrave;nh thức thanh to&aacute;n :</strong></h3>\r\n\r\n<p>- Thanh to&aacute;n bằng tiền mặt khi nhận h&agrave;ng.</p>\r\n\r\n<p>- Chuyển khoản trước theo th&ocirc;ng tin t&agrave;i khoản :</p>\r\n\r\n<p>Chủ t&agrave;i khoản : C&ocirc;ng Ty TNHH ShopOnline</p>\r\n\r\n<p>Ng&acirc;n h&agrave;ng n&ocirc;ng nghiệp v&agrave; ph&aacute;t triển n&ocirc;ng th&ocirc;n Việt Nam &ndash; Agribank</p>\r\n\r\n<p>Số t&agrave;i khoản : 1902 2010 52803 &ndash; Agribank chi nh&aacute;nh 4</p>\r\n\r\n<p>Nội dung : &lt; T&ecirc;n kh&aacute;ch h&agrave;ng&gt; &lt; Số điện thoại &gt;</p>\r\n\r\n<p>- Thanh to&aacute;n online tr&ecirc;n web hnammobile.com bằng c&aacute;c loại thẻ Visa, Master ( ph&iacute; cổng thanh to&aacute;n 1,3%),thẻ nội địa miễn ph&iacute;.</p>\r\n\r\n<p>- Thanh to&aacute;n qua v&iacute; điện tử ZaloPay, Momo.</p>\r\n\r\n<p>-&nbsp;Khi cần hỗ trợ th&ecirc;m th&ocirc;ng tin , kh&aacute;ch h&agrave;ng vui l&ograve;ng li&ecirc;n hệ số hotline :&nbsp;<a href=\"tel:19002012\">1900 2012</a>&nbsp;( 8h30 &ndash; 20h30) - chủ nhật ( 8h30 -18h).</p>\r\n', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `livesport`
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
-- Dumping data for table `livesport`
--

INSERT INTO `livesport` (`Id`, `Title`, `Link`, `Description`, `Url1`, `Url2`) VALUES
(1, 'Ra mắt bộ ba Iphone mới', 'https://www.youtube.com/watch?v=mgjjJTjiiLg', 'Trực tiếp lễ ra mắt bộ 3 Iphone mới', 'http://localhost:8080/ShopOnline/livesport', 'http://localhost:8080/ShopOnline/livesport'),
(2, 'Ra mắt SamSung S10', 'https://www.youtube.com/watch?v=W7k0rd5edNw', 'Trực tiếp Giới thiệu SamSung S10', 'http://localhost:8080/ShopOnline/livesport', 'http://localhost:8080/ShopOnline/livesport');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `MenuId` int(11) NOT NULL,
  `Name` varchar(150) DEFAULT NULL,
  `ParentId` int(11) DEFAULT NULL,
  `URL` varchar(250) DEFAULT NULL,
  `Order` int(11) DEFAULT NULL,
  `IsVisible` tinyint(1) DEFAULT NULL,
  `Desciption` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`MenuId`, `Name`, `ParentId`, `URL`, `Order`, `IsVisible`, `Desciption`) VALUES
(5, 'Quần Jean', 3, '~/quan-jean', 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `Customer` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Createtime` datetime NOT NULL,
  `Status` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Cart_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Id`, `Customer`, `Address`, `Phone`, `Createtime`, `Status`, `Email`, `Cart_total`) VALUES
(1, 'Nguyễn Thị Sen', 'Bắc Giang', '0347135097', '2019-04-24 23:22:08', 1, '', 11490000),
(2, 'Nguyễn Diệu Linh', 'Ninh Bình', '0123456789', '2019-04-24 23:26:29', 0, '', 8990000),
(3, 'Nguyễn Thị Hương', 'Thanh Hóa', '0984757395', '2019-04-24 23:31:37', 0, '', 23900000),
(4, 'Nguyễn Thị Ngọc Anh', 'Bắc Ninh', '0857123578', '2019-04-24 23:32:42', 1, '', 480000),
(5, 'Nguyễn Thị Ngọc Anh', 'Bắc Ninh', '0857123578', '2019-04-24 23:32:47', 1, '', 480000),
(6, 'Trần Thị Dương', 'Nam Định', '0966201334', '2019-04-24 23:38:57', 0, '', 22900000),
(7, 'Trần Thị Dương', 'Nam Định', '0966201334', '2019-04-24 23:39:07', 1, '', 22900000),
(8, 'Nguyễn Minh Anh', 'Hà Tây', '0987344357', '2019-04-24 23:47:36', 1, '', 4990000),
(9, 'Nguyễn Huyền Yến', 'Hòa Bình', '0837263123', '2019-04-24 23:50:28', 0, '', 892500);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`Id`, `OrderId`, `ProductId`, `Quantity`, `Price`, `Description`) VALUES
(1, 1, 46, 1, 11490000, ''),
(2, 2, 64, 1, 8990000, ''),
(3, 3, 50, 1, 23900000, ''),
(4, 4, 59, 1, 600000, ''),
(5, 6, 41, 1, 22900000, ''),
(6, 8, 43, 1, 4990000, ''),
(7, 9, 60, 1, 1050000, '');

-- --------------------------------------------------------

--
-- Table structure for table `product`
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
  `alias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Name`, `TypeId`, `CategoryId`, `SubCategoryId`, `SupplyId`, `Description`, `Price`, `Color`, `Material`, `Size`, `Detail`, `CreateBy`, `Createdate`, `EditBy`, `EditDate`, `TotalView`, `isSaleOff`, `Percent_off`, `Image1`, `Image2`, `Image3`, `Image4`, `alias`) VALUES
(1, 'Nokia 6.1 Plus', 2, 1, 16, 1, '<img alt=\"á\" src=\"/ShopOnline/admin/themes/upload/images/799_28_1.jpg\" style=\"height:800px; width:600px\" /><img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/847_thay_th____2.jpg\" style=\"height:800px; width:600px\" /><img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/407_0_4_1.jpg\" style=\"height:267px; margin-left:100px; margin-right:100px; width:200px\" />vu dinh dong<br />\r\n&nbsp;', 4990000, 'Đen', 'Vỏ Kim loại ', '5.8 inch, Full HD', '1m6 55klg mac cỡ nào đc bạn ơi', 0, '2016-01-29', 0, '2016-01-23', 89, 0, 0, 'product11-nokia-61-plus.png', 'product21-nokia-61-plus.jpg', '', '', 'nokia-61-plus'),
(3, 'Đồng hồ thông minh Samsung Galaxy Watch Active R500', 3, 3, 14, 1, '<br />\r\n<img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/807_2013606805_1641250346.jpg\" style=\"border-style:solid; border-width:1px; height:371px; margin-left:111px; margin-right:111px; width:400px\" /><br />\r\n<img alt=\"\" src=\"/ShopOnline/admin/themes/upload/images/407_0_4_1.jpg\" style=\"height:400px; margin-left:150px; margin-right:150px; width:300px\" />', 5490000, 'Hồng', 'Kính cường lực Gorilla Class ', 'Đường kính mặt: 27 m', '/public/images/product/aokhoac2.jpg\r\n/public/images/product/aokhoac2.jpg', NULL, '2016-12-31', NULL, '2016-01-23', 28, 0, 0, 'product13-dong-ho-thong-minh-samsung-galaxy-watch-active-r500.jpg', 'product23-dong-ho-thong-minh-samsung-galaxy-watch-active-r500.jpg', '', '', 'dong-ho-thong-minh-samsung-galaxy-watch-active-r500'),
(13, 'OPPO F11', 2, 1, 1, NULL, '<h2>Đặc điểm nổi bật của Samsung Galaxy A9 (2018)</h2>\r\n\r\n<h2><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a9-2018\" target=\"_blank\" title=\"Tham khảo chi tiết điện thoại Samsung Galaxy A9 (2018) tại Thegioididong.com\" type=\"Tham khảo chi tiết điện thoại Samsung Galaxy A9 (2018) tại Thegioididong.com\">Samsung Galaxy A9 (2018)</a>&nbsp;l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo các dòng điện thoại chính hãng, giá tốt đang kinh doanh tại Thegioididong.com\" type=\"Tham khảo các dòng điện thoại chính hãng, giá tốt đang kinh doanh tại Thegioididong.com\">điện thoại</a>&nbsp;đầu ti&ecirc;n của Samsung sở hữu hệ thống camera ấn tượng với 4 thấu k&iacute;nh c&ugrave;ng h&agrave;ng loạt c&aacute;c n&acirc;ng cấp đ&aacute;ng gi&aacute; về cấu h&igrave;nh v&agrave; t&iacute;nh năng hiện đại kh&aacute;c.</h2>\r\n', 8, 'Xanh', 'Kim loại nguyên khối', '6 inch', NULL, NULL, '2016-02-29', NULL, NULL, 1, 1, 10, 'product113-oppo-f11.png', NULL, '', '', 'oppo-f11'),
(40, 'Điện thoại iPhone Xs Max 64GB', 2, 1, 13, NULL, '', 29900000, 'Xám', 'Kim loại nguyên khối', '6 inch', NULL, NULL, '2016-12-06', NULL, NULL, 0, 0, 0, 'product140-dien-thoai-iphone-xs-max-64gb.png', NULL, '', '', 'dien-thoai-iphone-xs-max-64gb'),
(41, 'Điện thoại iPhone X 64', 2, 1, 13, NULL, '', 22900000, 'Hồng vàng', 'Kim loại nguyên khối', '5.8inch', NULL, NULL, '2016-01-02', NULL, NULL, 1, 1, 5, 'product141-dien-thoai-iphone-x-64.png', NULL, '', '', 'dien-thoai-iphone-x-64'),
(42, 'Điện thoại Huawei P30 Lite', 2, 1, 3, NULL, '', 7490000, 'Xanh', 'vỏ kim loại', '5.6 inch', NULL, NULL, '2016-05-18', NULL, NULL, 1, 0, 0, 'product142-dien-thoai-huawei-p30-lite.png', NULL, '', '', 'dien-thoai-huawei-p30-lite'),
(43, 'Điện thoại OPPO A7 32GB', 2, 1, 1, NULL, '', 4990000, 'Vàng đồng', 'vỏ kim loại', '6 inch', NULL, NULL, '2016-05-27', NULL, NULL, 46, 0, 10, 'product143-dien-thoai-oppo-a7-32gb.png', NULL, '', '', 'dien-thoai-oppo-a7-32gb'),
(45, 'Máy tính bảng Samsung Galaxy Tab A 10.1 T515', 1, 2, 5, NULL, '', 7490000, 'Hồng', 'vỏ kim loại', '10,5 inch', NULL, NULL, '2016-02-03', NULL, NULL, 0, 0, 0, 'product145-may-tinh-bang-samsung-galaxy-tab-a-101-t515.png', NULL, '', '', 'may-tinh-bang-samsung-galaxy-tab-a-101-t515'),
(46, 'Máy tính bảng iPad Wifi Cellular 32GB (2018)', 1, 2, 5, NULL, '', 11490000, 'xám', 'Vỏ kim loại, HD', '9,7 inch', NULL, NULL, '2016-02-11', NULL, NULL, 2, 1, 10, 'product146-may-tinh-bang-ipad-wifi-cellular-32gb-2018.png', NULL, '', '', 'may-tinh-bang-ipad-wifi-cellular-32gb-2018'),
(47, 'Máy tính bảng iPad Wifi 128 GB (2018)', 1, 2, 5, NULL, '', 10990000, 'Hồng', 'Vỏ kim loại, HD', '9,7 inch', NULL, NULL, '2016-02-11', NULL, NULL, 0, 0, 10, 'product147-may-tinh-bang-ipad-wifi-128-gb-2018.png', NULL, '', '', 'may-tinh-bang-ipad-wifi-128-gb-2018'),
(48, 'Máy tính bảng Huawei MediaPad T3 10', 1, 2, 5, NULL, '', 4490000, 'Trắng', 'Kim loại', '9,7 inch', NULL, NULL, '2016-05-18', NULL, NULL, 0, 0, 0, 'product148-may-tinh-bang-huawei-mediapad-t3-10.png', NULL, '', '', 'may-tinh-bang-huawei-mediapad-t3-10'),
(49, 'Điện thoại Samsung Galaxy A10', 2, 1, 4, NULL, '', 3090000, 'Đỏ', 'Vỏ nhựa', '6.2 inch', NULL, NULL, '2016-07-08', NULL, NULL, 0, 0, 0, 'product149-dien-thoai-samsung-galaxy-a10.png', NULL, '', '', 'dien-thoai-samsung-galaxy-a10'),
(50, 'Điện thoại iPhone Xr 256GB', 2, 1, 13, NULL, '', 23900000, 'Trắng', 'Kim loại nguyên khối', '6.1 inch', NULL, NULL, '2016-08-25', NULL, NULL, 101, 0, 0, 'product150-dien-thoai-iphone-xr-256gb.png', NULL, '', '', 'dien-thoai-iphone-xr-256gb'),
(51, 'Điện thoại Samsung Galaxy Note 9', 2, 1, 4, NULL, '', 18990000, 'Đen', 'Kim loại nguyên khối', '6,4 inch', NULL, NULL, '2016-09-03', NULL, NULL, 1, 0, 0, 'product151-dien-thoai-samsung-galaxy-note-9.png', NULL, '', '', 'dien-thoai-samsung-galaxy-note-9'),
(52, 'Pin sạc dự phòng Polymer 10.000 mAh eSaver PJ JP62S', 3, 3, 14, NULL, '', 640000, 'Xanh, Hồng', 'Pin Polymer (Pin Poli)', 'Dài 14.5 cm - ngang ', NULL, NULL, '2016-08-21', NULL, NULL, 34, 1, 10, 'product152-pin-sac-du-phong-polymer-10000-mah-esaver-pj-jp62s.jpg', NULL, '', '', 'pin-sac-du-phong-polymer-10000-mah-esaver-pj-jp62s'),
(53, 'Loa Bluetooth Fenda W5', 3, 3, 18, NULL, '', 400000, 'Xanh, Xám', 'Vỏ nhựa cứng', 'Cao 8 cm - ngang 9.2', NULL, NULL, '2016-04-15', NULL, NULL, 0, 1, 25, 'product153-loa-bluetooth-fenda-w5.jpg', NULL, '', '', 'loa-bluetooth-fenda-w5'),
(56, 'Điện thoại Huawei P30 Lite', 2, 1, 3, NULL, '', 7490000, 'Xanh', 'Kính cường lực Gorilla Class ', '6 inch', NULL, NULL, '2016-08-03', NULL, NULL, 0, 0, 0, 'product156-dien-thoai-huawei-p30-lite.png', NULL, '', '', 'dien-thoai-huawei-p30-lite'),
(57, 'Adapter sạc 1A Xmobile C058', 3, 3, 18, NULL, '', 100000, 'Trắng', 'nhựa ', '1 A', NULL, NULL, '2016-09-01', NULL, NULL, 0, 1, 10, 'product157-adapter-sac-1a-xmobile-c058.jpg', NULL, '', '', 'adapter-sac-1a-xmobile-c058'),
(59, 'Pin sạc dự phòng 10.000 mAh eSaver LA Y325S', 3, 3, 14, NULL, '', 600000, 'Xanh, Trắng', 'Vỏ nhựa', 'Dài 14 cm - ngang 6.', NULL, NULL, '2016-09-09', NULL, NULL, 1, 1, 20, 'product159-pin-sac-du-phong-10000-mah-esaver-la-y325s.jpg', NULL, '', '', 'pin-sac-du-phong-10000-mah-esaver-la-y325s'),
(60, 'Loa vi tính 2.1 Enkor E900 Bạc', 3, 3, 14, NULL, '', 1050000, 'Bạc ', 'Cáp cắm 3.5 mm Loa siêu trầm 2 loa vệ tinh 1 sợi Ăng-ten FM', 'Cao 22 cm- ngang 10.', NULL, NULL, '2016-08-08', NULL, NULL, 1, 1, 15, 'product160-loa-vi-tinh-21-enkor-e900-bac.jpg', NULL, '', '', 'loa-vi-tinh-21-enkor-e900-bac'),
(61, 'Dây cáp Micro USB 0.2 m Xmobile MU03', 3, 3, 14, NULL, '', 40000, 'Đen', 'Vỏ nhựa', '20 cm', NULL, NULL, '2016-05-07', NULL, NULL, 0, 1, 20, 'product161-day-cap-micro-usb-02-m-xmobile-mu03.jpg', NULL, '', '', 'day-cap-micro-usb-02-m-xmobile-mu03'),
(62, 'Adapter Sạc 2 cổng USB 2.4A Type C 3A Xmobile DS165 Trắng', 3, 3, 14, NULL, '', 250000, 'Trắng', 'Vỏ nhựa', 'Cổng 1: 3A Cổng 2: 2', NULL, NULL, '2016-07-08', NULL, NULL, 0, 1, 20, 'product162-adapter-sac-2-cong-usb-24a-type-c-3a-xmobile-ds165-trang.jpg', NULL, '', '', 'adapter-sac-2-cong-usb-24a-type-c-3a-xmobile-ds165-trang'),
(63, 'Cáp Lightning MFI 1m Omars OM03W Xám', 3, 3, 14, NULL, '', 250000, 'Xám', 'Cáp dù', '1 m', NULL, NULL, '2016-03-04', NULL, NULL, 0, 1, 25, 'product163-cap-lightning-mfi-1m-omars-om03w-xam.jpg', NULL, '', '', 'cap-lightning-mfi-1m-omars-om03w-xam'),
(64, 'Apple Watch S3 GPS ', 3, 3, 14, NULL, '', 8990000, 'Đen', 'Dây da', '2.1 inch, Đường kính', NULL, NULL, '2016-06-06', NULL, NULL, 2, 0, 0, 'product164-apple-watch-s3-gps.jpg', NULL, '', '', 'apple-watch-s3-gps');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `Id` int(11) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`Id`, `Name`, `Description`) VALUES
(1, 'admin', 'a'),
(2, 'user', 'sadad');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
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
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`Id`, `Name`, `img1`, `text1`, `img2`, `text2`, `img3`, `text3`, `img4`, `text4`, `img5`, `text5`, `status`) VALUES
(1, 'banner trái', 'image1-1-banner-trai.jpg', '0', 'image2-1-banner-trai.jpg', '0', 'image3-1-banner-trai.png', '0', 'image4-1-banner-trai.jpg', '0', 'image5-1-banner-trai.jpeg', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
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
-- Dumping data for table `subcategory`
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
(18, 'Phụ kiện điện thoại', NULL, '', 3, 0, 'phu-kien-dien-thoai');

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `SupplyId` int(11) NOT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`SupplyId`, `Name`, `Logo`) VALUES
(1, 'Việt Nam', NULL),
(2, 'Việt Nam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `alias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`Id`, `Name`, `Description`, `alias`) VALUES
(1, 'SẢN PHẨM NỔI BẬT', '', 'san-pham-order'),
(2, 'SẢN PHẨM MỚI', '', 'san-pham-moi'),
(3, 'SẢN PHẨM KHUYẾN MẠI', '', 'san-pham-khuyen-mai');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
  `Address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Username`, `Password`, `Name`, `CreateDate`, `RoleId`, `Avatar`, `Email`, `Phone`, `Address`) VALUES
(25, 'admin', 'c4ca4238a0b923820dcc509a6f75849b', 'admin', '2016-03-18', 1, 'avatar_name25-.jpg', 'quangdanh@gmail.com', '0945802194', 'hanoi'),
(26, 'user', 'c4ca4238a0b923820dcc509a6f75849b', 'user', '2016-03-18', 2, 'avatar_name26-user.png', 'user@user.com', '0945802194', 'hanoi');

-- --------------------------------------------------------

--
-- Table structure for table `user_online`
--

CREATE TABLE `user_online` (
  `session` varchar(100) NOT NULL DEFAULT '''''',
  `time` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(24) NOT NULL,
  `browser` varchar(50) NOT NULL,
  `dateonline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_online`
--

INSERT INTO `user_online` (`session`, `time`, `ip`, `browser`, `dateonline`) VALUES
('v9b5uhs2nf48hfuitslps8od31', 1556185030, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-25');

-- --------------------------------------------------------

--
-- Table structure for table `visiter`
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
-- Dumping data for table `visiter`
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
(74, 'v9b5uhs2nf48hfuitslps8od31', 1556182925, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWeb', '2019-04-25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Categories_Supplies1` (`SupplyId`);

--
-- Indexes for table `contactinfo`
--
ALTER TABLE `contactinfo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `imageslide`
--
ALTER TABLE `imageslide`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `intro`
--
ALTER TABLE `intro`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `livesport`
--
ALTER TABLE `livesport`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MenuId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Product_Supplies` (`SupplyId`),
  ADD KEY `FK_Product_Categories` (`CategoryId`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Id_Supplies1` (`SupplyId`),
  ADD KEY `FK_Id_Category1` (`CategoryId`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`SupplyId`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_User_Role` (`RoleId`);

--
-- Indexes for table `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`session`);

--
-- Indexes for table `visiter`
--
ALTER TABLE `visiter`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contactinfo`
--
ALTER TABLE `contactinfo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `imageslide`
--
ALTER TABLE `imageslide`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `intro`
--
ALTER TABLE `intro`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `livesport`
--
ALTER TABLE `livesport`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `MenuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `SupplyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `visiter`
--
ALTER TABLE `visiter`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `FK_Categories_Supplies1` FOREIGN KEY (`SupplyId`) REFERENCES `supplies` (`SupplyId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_Product_Categories` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Product_Supplies` FOREIGN KEY (`SupplyId`) REFERENCES `supplies` (`SupplyId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `FK_Id_Category1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_Id_Supplies1` FOREIGN KEY (`SupplyId`) REFERENCES `supplies` (`SupplyId`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_User_Role` FOREIGN KEY (`RoleId`) REFERENCES `role` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
