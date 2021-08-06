-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 06:16 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbwebsach`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(900) NOT NULL,
  `NameVN` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Name`, `NameVN`) VALUES
(2, 'Sách', 'Tiểu Thuyết'),
(3, 'Sách văn học', 'Truyện dài'),
(4, 'Sách', 'Truyện ngắn - Tản văn - Tạp Văn'),
(5, 'Sách', 'Truyện trinh thám'),
(6, 'Văn phòng phẩm', 'Đồ dùng học tập'),
(7, 'Sách', 'Tiểu Thuyết');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentedDate` date NOT NULL,
  `userId` varchar(50) NOT NULL,
  `contentOfComment` text NOT NULL,
  `productId` int(11) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `Id` int(11) NOT NULL,
  `OrderId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `UnitPrice` float NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `UserId` varchar(20) NOT NULL,
  `OrderDate` date NOT NULL,
  `Telephone` int(50) NOT NULL,
  `Address` varchar(900) NOT NULL,
  `Amount` float NOT NULL,
  `Description` text NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` varchar(600) NOT NULL,
  `UnitPrice` float NOT NULL,
  `Image` varchar(900) NOT NULL,
  `ProductDate` date NOT NULL,
  `Available` bit(1) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Discount` float NOT NULL,
  `ViewCount` int(11) NOT NULL,
  `Special` bit(1) NOT NULL,
  `Author` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Name`, `UnitPrice`, `Image`, `ProductDate`, `Available`, `CategoryId`, `Quantity`, `Description`, `Discount`, `ViewCount`, `Special`, `Author`) VALUES
(3, 'Những Đêm Không Ngủ, Những Ngày Chậm Trôi', 68000, 'Untitled.png', '2021-06-03', b'0', 4, 10, '<p>NHỮNG Đ&Ecirc;M KH&Ocirc;NG NGỦ NHỮNG NG&Agrave;Y CHẬM TR&Ocirc;I - A CRAZY MIND</p>\r\n\r\n<p>&ldquo;Những đ&ecirc;m kh&ocirc;ng ngủ, những ng&agrave;y chậm tr&ocirc;i&rdquo; đại diện cho một h&agrave;nh tinh mới - nơi nỗi đau tinh thần được đưa ra &aacute;nh s&aacute;ng v&agrave; chữa l&agrave;nh.</p>\r\n\r\n<p>Cuốn s&aacute;ch l&agrave; tập hợp những c&acirc;u chuyện c&oacute; thật của những số phận kh&aacute;c nhau đang gặp phải c&aacute;c vấn đề về t&acirc;m l&yacute;: trầm cảm, rối loạn lo &acirc;u, rối loạn lưỡng cực&hellip; v&agrave; những người đang học tập v&agrave; l&agrave;m việc trong ng&agrave;nh t&acirc;m l&yacute; học.</p>\r\n\r\n<p>&ldquo;Nếu thế giới n&agrave;y c&ograve;n thứ g&igrave; giữ bạn lại, l&agrave; t&igrave;nh y&ecirc;u thương hay sự quan t&acirc;m trong ph&uacute;t gi&acirc;y n&agrave;o đ&oacute;, mong bạn đừng gạt n&oacute; đi, bạn đừng bỏ qua sự cố gắng của bản th&acirc;n d&ugrave; nhỏ b&eacute; nhất!&rdquo;- Khải Trạch. H&oacute;a ra tận c&ugrave;ng nỗi đau v&agrave; tận c&ugrave;ng sự chống chọi l&agrave; một l&ograve;ng tha thiết sống, l&ograve;ng tha thiết b&aacute;m rễ ở cuộc đời n&agrave;y như thế.</p>\r\n\r\n<p>&ldquo;Những đ&ecirc;m kh&ocirc;ng ngủ, những ng&agrave;y chậm tr&ocirc;i&rdquo; l&agrave; một khoảng lặng giữa những nốt nhạc vội v&atilde; chạy nhảy giữa cuộc sống hiện đại, để những con người d&ugrave; mang trong m&igrave;nh những tổn thương t&acirc;m l&yacute; hay kh&ocirc;ng đều c&ugrave;ng ngồi lại b&ecirc;n nhau, soi tỏ t&acirc;m hồn nhau bằng &aacute;nh s&aacute;ng của sự thấu cảm, trao gửi cho nhau thương y&ecirc;u v&agrave; kết nối để chữa l&agrave;nh.</p>\r\n\r\n<p>Th&ocirc;ng qua cuốn s&aacute;ch, A Crazy Mind mong muốn đưa một g&oacute;c nh&igrave;n mới đến độc giả về thế giới của những con người đang phải đấu tranh với những nỗi đau tinh thần cũng như những c&acirc;u chuyện thực tế &iacute;t được đề cập của những người đang học tập v&agrave; l&agrave;m việc trong ng&agrave;nh t&acirc;m l&yacute; học.</p>\r\n\r\n<p>Đ&acirc;y kh&ocirc;ng phải cuốn s&aacute;ch đọc để giải tr&iacute;, m&agrave; l&agrave; một bức tranh &ldquo;cảm x&uacute;c&rdquo; được gh&eacute;p từ những c&acirc;u chuyện đủ đầy c&aacute;c mảng s&aacute;ng tối lẩn khuất thẳm s&acirc;u trong t&acirc;m hồn. Hy vọng đ&acirc;y l&agrave; một m&oacute;n ăn tinh thần l&agrave;m đầy th&ecirc;m sự phong ph&uacute; trong t&acirc;m hồn bạn.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0.05, 18, b'1', 'A Crazy Mind team'),
(4, 'Sáu Đợt Thức Tỉnh - Tiểu thuyết Trinh thám Giải mã Án mạng trên Tàu vũ trụ', 120000, 'Capture.PNG', '2021-06-03', b'1', 5, 100, '<p><strong><u>GIỚI THIỆU NỘI DUNG:</u></strong></p>\r\n\r\n<p>Maria Arena l&agrave; một bản sao v&ocirc; t&iacute;nh. Sau mỗi lần chết đi, c&ocirc; sẽ lại &ldquo;thức tỉnh&rdquo; trong một th&acirc;n x&aacute;c trẻ trung, sở hữu k&yacute; ức của mọi &ldquo;kiếp đời&rdquo; trước. Do vậy, c&ocirc; c&ugrave;ng năm bản sao kh&aacute;c đ&atilde; được bổ nhiệm l&agrave;m phi h&agrave;nh đo&agrave;n của t&agrave;u vũ trụ Dormire, thực hiện chuyến bay d&agrave;i mấy thế kỷ để l&ecirc;n định cư tr&ecirc;n h&agrave;nh tinh Artemis tươi đẹp.</p>\r\n\r\n<p>Bỗng một ng&agrave;y, Maria c&ugrave;ng phi h&agrave;nh đo&agrave;n thức tỉnh giữa một bể m&aacute;u. Cả s&aacute;u vừa bị giết, m&aacute;y m&oacute;c tr&ecirc;n t&agrave;u th&igrave; đ&atilde; bị ph&aacute; hoại, v&agrave; kh&ocirc;ng ai nhớ chuyện g&igrave; đ&atilde; xảy ra hết, thậm ch&iacute; c&ograve;n chẳng nhớ g&igrave; về nhau. Nguy hiểm hơn, thủ phạm hẳn phải l&agrave; một người trong nh&oacute;m bọn họ. Kẻ ấy vẫn đang r&igrave;nh rập, chờ thời cơ ra tay lần nữa&hellip;</p>\r\n\r\n<p>S&aacute;u đợt thức tỉnh t&ecirc;n gốc l&agrave; Six Wakes, một cuốn trinh th&aacute;m với bối cảnh tương lai của Mur Lafferty. Truyện từng lọt danh s&aacute;ch đề cử c&aacute;c giải lớn năm 2017 như Hugo, Nebula, Goodreads Choice, v&agrave; được mệnh danh l&agrave; &quot;10 người da đen nhỏ ngo&agrave;i vũ trụ.&quot;</p>\r\n\r\n<p>---</p>\r\n\r\n<p><strong><u>REVIEW TỪ BẠN ĐỌC:</u></strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<ul>\r\n		<li><strong>9.0/10</strong><br />\r\n		Đ&acirc;y l&agrave; một cuốn Sci Fi vừa c&oacute; t&iacute;nh giải tr&iacute; rất cao th&ocirc;ng qua việc đi giải m&atilde; một vụ thảm s&aacute;t đầy lắt l&eacute;o tr&ecirc;n t&agrave;u vũ trụ, đồng thời c&ograve;n gi&uacute;p khơi gợi suy tư th&ocirc;ng qua những b&igrave;nh luận cực kỳ s&acirc;u sắc về sức ảnh hưởng của một trong những thứ c&ocirc;ng nghệ mang t&iacute;nh bước ngoặt. Truyện pha trộn rất h&agrave;i ho&agrave; c&aacute;c m&ocirc; t&iacute;p của trinh th&aacute;m v&agrave; Sci Fi, thế kể cả nếu chỉ đọc được một trong hai d&ograve;ng n&agrave;y, chắc chắn bạn sẽ kh&ocirc;ng thất vọng với S&aacute;u đợt thức tỉnh.<br />\r\n		<strong><em>~ Long Nguyen (Admin cộng đồng Hội th&iacute;ch truyện Sci Fi tr&ecirc;n Facebook)</em></strong><br />\r\n		&nbsp;</li>\r\n		<li>Đ&aacute;nh gi&aacute;:&nbsp;<strong>8/10đ&nbsp;</strong>(Hay. Đặc biệt. Đ&aacute;ng suy ngẫm).<br />\r\n		Đọc những chương đầu ti&ecirc;n trong t&ocirc;i b&ugrave;ng nổ một cảm gi&aacute;c phấn kh&iacute;ch kỳ lạ, nội dung mở m&agrave;n th&uacute; vị tới mức t&ocirc;i cứ suy nghĩ: &quot;Liệu đ&acirc;y c&oacute; phải cuốn s&aacute;ch hay nhất năm của m&igrave;nh hay kh&ocirc;ng?&quot; Mặc d&ugrave; sau đ&oacute; v&igrave; vướng bận c&ocirc;ng việc phải bỏ dở &iacute;t bữa n&ecirc;n sự l&ocirc;i cuốn c&oacute; phần chững lại v&agrave; mạch truyện kh&uacute;c giữa cũng hơi chậm, nhưng c&agrave;ng đọc về cuối t&aacute;c phẩm c&agrave;ng để lại cho t&ocirc;i nhiều cảm x&uacute;c v&agrave; sự trăn trở quặn l&ograve;ng.<br />\r\n		<strong><em>~ Nguyệt Ngọt Ng&agrave;o (Admin cộng đồng Hội Y&ecirc;u S&aacute;ch tr&ecirc;n Facebook)</em></strong><br />\r\n		&nbsp;</li>\r\n		<li>Đủ b&iacute; ẩn, đằng sau mỗi nh&acirc;n vật l&agrave; một c&acirc;u chuyện kh&ocirc;ng tưởng. V&agrave;, cốt truyện đủ bất ngờ, thật, m&igrave;nh chuy&ecirc;n đọc trinh th&aacute;m, nội dung cuốn s&aacute;ch kh&ocirc;ng được gọi l&agrave; m&aacute;u me nhưng đủ bất ngờ, khiến độc giả lăn đ&ugrave;ng ng&atilde; ngửa lu&ocirc;n. V&agrave; &acirc;m mưu to lớn c&ugrave;ng &yacute; đồ sau c&ugrave;ng cả cả c&acirc;u chuyện sẽ l&agrave; H&ocirc; h&ocirc;, m&igrave;nh kh&ocirc;ng n&oacute;i đ&acirc;u.<br />\r\n		<strong><em>~ Trang Đ&agrave;o (Admin cộng đồng B&igrave;nh Thư Qu&aacute;n tr&ecirc;n Facebook)</em></strong><br />\r\n		&nbsp;</li>\r\n		<li><strong>4/5</strong><br />\r\n		Phần đầu v&agrave; cuối hấp dẫn, vậy đoạn giữa l&agrave; g&igrave;? L&agrave; backstory của từng nh&acirc;n vật, v&agrave; c&aacute;c đoạn đối thoại li&ecirc;n tục. C&oacute; thể người đọc sẽ đ&ocirc;i l&uacute;c ch&aacute;n nản, nhưng đừng qu&ecirc;n trong một t&aacute;c phẩm trinh th&aacute;m, t&aacute;c giả thường kh&ocirc;ng v&ocirc; cớ đưa v&agrave;o những chi tiết thừa, tất cả đều c&oacute; l&yacute; do của n&oacute;.<br />\r\n		<strong><em>~ xuxudocsach (review tr&ecirc;n Instagram)</em></strong><br />\r\n		&nbsp;</li>\r\n		<li>Thể loại: Khoa học viễn tưởng &ndash; Trinh th&aacute;m. Điểm:&nbsp;<strong>9.5/10</strong><br />\r\n		C&oacute; thể nhiều người sẽ cho rằng &ldquo;S&aacute;u đợt thức tỉnh&rdquo; chỉ l&agrave; một quyển s&aacute;ch để giải tr&iacute;, nhưng Biển ngộ ra được một số gi&aacute; trị nh&acirc;n văn m&agrave; (chắc l&agrave;) t&aacute;c giả muốn gửi gắm: sự t&ocirc;n trọng sinh mệnh &ndash; kể cả sinh mệnh của bản sao v&ocirc; t&iacute;nh, sự t&ocirc;n trọng nh&acirc;n quyền v&agrave; tư duy của người kh&aacute;c, tội lỗi cay đắng v&agrave; sự tha thứ nhẹ nh&otilde;m, hận th&ugrave; v&agrave; y&ecirc;u thương. Đọc đến trang 467 th&igrave; Biển mỉm cười sung sướng, cảm thấy thật đ&aacute;ng c&ocirc;ng đọc từ đầu đến đ&oacute;. Tha thứ thật sự qu&aacute; kh&oacute;, nhưng nếu l&agrave;m được th&igrave; thanh thản biết bao, m&agrave; nếu kh&ocirc;ng l&agrave;m được th&igrave; cứ coi kẻ th&ugrave; như kh&ocirc;ng kh&iacute; đi.<br />\r\n		<strong><em>~ Camellia Phoenix (review trong cộng đồng Hội th&iacute;ch truyện trinh th&aacute;m tr&ecirc;n Facebook)</em></strong><br />\r\n		&nbsp;</li>\r\n		<li><strong>3.5/5</strong><br />\r\n		Nh&igrave;n chung S&aacute;u Đợt Thức Tỉnh l&agrave; một cuốn trinh th&aacute;m kh&aacute; ổn, đặc biệt d&agrave;nh cho bạn n&agrave;o th&iacute;ch khoa học viễn tưởng hay lập tr&igrave;nh m&aacute;y m&oacute;c c&aacute;c kiểu đan xen một ch&uacute;t trinh th&aacute;m th&igrave; okay, cuốn n&agrave;y đ&uacute;ng l&agrave; d&agrave;nh cho bạn lu&ocirc;n. Dịch giả dịch si&ecirc;u c&oacute; t&acirc;m, tớ c&ograve;n bị ấn tượng với dịch giả hơn cả nội dung s&aacute;ch &yacute; huhu.<br />\r\n		<strong><em>~ neverblossom (review tr&ecirc;n Instagram)</em></strong><br />\r\n		&nbsp;</li>\r\n		<li>Điểm:&nbsp;<strong>9,5/10</strong><br />\r\n		Đ&acirc;y l&agrave; một cuốn truyện rất hay, cả về kh&iacute;a cạnh trinh th&aacute;m lẫn viễn tưởng. D&ugrave; c&oacute; một hai lỗi đ&aacute;nh m&aacute;y nhưng nội dung cuốn đến mức đọc bỏ qua sạch lu&ocirc;n. D&ugrave; bạn muốn một cuốn trinh th&aacute;m b&iacute; ẩn v&agrave; lắt l&eacute;o với những nh&acirc;n vật c&oacute; chiều s&acirc;u hay một cuốn du h&agrave;nh kh&ocirc;ng gian kỳ th&uacute; với những pha h&agrave;nh động đầy kịch t&iacute;nh hay thậm ch&iacute; l&agrave; một quyển s&aacute;ch triết l&yacute; s&acirc;u sắc nhưng kh&ocirc;ng k&eacute;m phần h&agrave;i hước v&agrave; cảm động về những kh&iacute;a cạnh x&atilde; hội lớn lao cũng như mối quan hệ giữa con người v&agrave; c&ocirc;ng nghệ, chắc chắn đ&acirc;y sẽ l&agrave; quyển hợp với bạn.<br />\r\n		<strong><em>~ Ngoc Anh Nguyen (review trong cộng đồng Nh&atilde; Nam reading club tr&ecirc;n Facebook)</em></strong><br />\r\n		&nbsp;</li>\r\n		<li><strong>5/5</strong><br />\r\n		K&eacute;o full điểm lu&ocirc;n kh&ocirc;ng cần phải b&agrave;n c&atilde;i<br />\r\n		<strong><em>~ Mai Nguyễn (review bản tiếng Việt tr&ecirc;n Goodreads)</em></strong><br />\r\n		&nbsp;</li>\r\n		<li>Điểm tổng:&nbsp;<strong>4/5</strong>. Rất đ&aacute;ng đọc.<br />\r\n		Đ&acirc;y c&oacute; lẽ l&agrave; một trong những cuốn trinh th&aacute;m mật thất lạ thường v&agrave; cuốn h&uacute;t nhất m&igrave;nh được đọc trong năm nay. Truyện mở ra trong một bể m&aacute;u: 6 bản sao v&ocirc; t&iacute;nh trần truồng thức dậy tr&ecirc;n một con t&agrave;u vũ trụ, v&agrave; thấy tr&ocirc;i lềnh bềnh xung quanh m&igrave;nh l&agrave; m&aacute;u, rất lắm m&aacute;u, ph&ograve;i ra từ những c&aacute;i x&aacute;c đ&atilde; bị s&aacute;t hại d&atilde; man. L&uacute;c kh&aacute;m nghiệm x&aacute;c, họ giật m&igrave;nh nhận thấy đ&acirc;y l&agrave; x&aacute;c của&hellip; ch&iacute;nh họ.<br />\r\n		<strong><em>~ Long Tran (review trong cộng đồng Người Đọc S&aacute;ch tr&ecirc;n Facebook)</em></strong></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>---</p>\r\n\r\n<p><em>H&igrave;nh ảnh sử dụng: xuxudocsach, winny.win.winny, Bookism.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0.05, 19, b'0', 'Sách Bookism'),
(5, 'câu chuyện về trận chiến huyền thoại trong sử thi của Homer: Truyền thuyết thành Troy và Hy Lạp  (Xem 1 đánh giá)', 84000, 'Capture 1.PNG', '2021-06-03', b'1', 2, 100, '<p>Truyền Thuyết Th&agrave;nh Troy V&agrave; Hy Lạp<br />\r\n<img alt=\"\" src=\"https://salt.tikicdn.com/ts/tmp/e4/62/af/e96592b399daa787ab8584310bd661ae.jpg\" style=\"height:422px; width:750px\" /><br />\r\n<br />\r\nTrong t&aacute;c phẩm n&agrave;y, t&aacute;c giả Andrew Lang đ&atilde; vận dụng những kiến thức th&ocirc;ng th&aacute;i của m&igrave;nh về lịch sử v&agrave; văn học để viết lại c&acirc;u chuyện về trận chiến huyền thoại giữa người Hy Lạp v&agrave; th&agrave;nh Troy trong sử thi của Homer. Th&ecirc;m v&agrave;o đ&oacute;, cuốn s&aacute;ch cũng đề cập đến những cuộc phi&ecirc;u lưu của c&aacute;c anh h&ugrave;ng Theseus v&agrave; Perseus, đồng thời kể về h&agrave;nh tr&igrave;nh của Jason đi t&igrave;m bộ l&ocirc;ng cừu v&agrave;ng. Cuốn s&aacute;ch n&agrave;y chắc chắn sẽ l&agrave;m thỏa m&atilde;n những bạn đọc y&ecirc;u th&iacute;ch t&igrave;m hiểu những truyền thuyết kỳ th&uacute; v&agrave; c&aacute;c tập tục văn h&oacute;a của người Hy Lạp khi xưa.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0.1, 19, b'0', 'Adrew Lang'),
(6, 'Bá Tước Monte Cristo (Bìa Cứng)', 120000, 'Capture 3.PNG', '2021-06-03', b'1', 2, 10, '<p>B&aacute; tước Monte Cristo lấy bối cảnh nước Ph&aacute;p thế kỷ XIX lấp l&aacute;nh xinh đẹp, nhưng đầy rẫy lọc lừa v&agrave; những &acirc;m mưu toan t&iacute;nh c&aacute; nh&acirc;n. Tất cả hiện l&ecirc;n giống như m&agrave;n kịch trong nh&agrave; h&aacute;t, khiến người ta kinh sợ. Nơi đ&oacute;, t&igrave;nh người trở n&ecirc;n hiếm hoi.</p>\r\n\r\n<p>Ch&agrave;ng Edmond Dant&egrave;s trẻ tuổi, t&agrave;i hoa, c&oacute; một tương lai hứa hẹn, hạnh ph&uacute;c b&ecirc;n người vợ sắp cưới. Song ch&iacute;nh trong ng&agrave;y cưới của m&igrave;nh, Edmond bị vu oan gi&aacute; họa v&agrave; bị bắt nhốt bỏ ngục. Sống trong cảnh t&ugrave; đầy đọa, bị cướp mất t&igrave;nh y&ecirc;u v&agrave; sự tự do, cuộc đời ch&agrave;ng trai trẻ dường như đ&atilde; mất hết hy vọng, chỉ c&ograve;n b&oacute;ng tối v&acirc;y quanh. Thế nhưng sau nhiều năm đằng đẵng, một người bạn t&ugrave; đ&atilde; gi&uacute;p ch&agrave;ng vượt ngục. Từ đ&acirc;y bắt đầu cuộc b&aacute;o th&ugrave; đầy ly k&igrave; v&agrave; bất ngờ của Edmond Dant&egrave;s - nay đ&atilde; l&agrave; B&aacute; tước Monte Cristo.</p>\r\n\r\n<p>C&oacute; thể coi B&aacute; tước Monte Cristo l&agrave; một trong những t&aacute;c phẩm kinh điển đặc sắc nhất, hấp dẫn nhất, chiều l&ograve;ng cả những độc giả kh&oacute; t&iacute;nh lẫn những độc giả chỉ đơn giản l&agrave; muốn t&igrave;m đọc một cốt truyện giải tr&iacute;.</p>\r\n\r\n<p>B&aacute; tước Monte Cristo cũng l&agrave; một c&acirc;u chuyện về t&igrave;nh y&ecirc;u, l&ograve;ng th&ugrave; hận v&agrave; sự vị tha. Ở đ&acirc;y, ranh giới giữa thiện v&agrave; &aacute;c tưởng như r&otilde; r&agrave;ng nhưng lại v&ocirc; c&ugrave;ng mong manh. B&agrave;i học về cuộc sống m&agrave; t&aacute;c giả d&agrave;nh tặng cho độc giả, đ&oacute; l&agrave;: &ldquo;Tr&ecirc;n đời n&agrave;y kh&ocirc;ng c&oacute; hạnh ph&uacute;c m&agrave; cũng chẳng c&oacute; bất hạnh, chỉ l&agrave; sự chuyển biến từ trạng th&aacute;i n&agrave;y qua trạng th&aacute;i kh&aacute;c. Chỉ c&oacute; những người n&agrave;o đ&atilde; trải qua cảnh khổ cực mới hưởng thụ được cảnh sung sướng. Chỉ c&oacute; kẻ n&agrave;o sắp chết mới biết cuộc sống l&agrave; thi&ecirc;n đường. Hai anh chị h&atilde;y sống hạnh ph&uacute;c b&ecirc;n nhau v&agrave; nhớ kỹ rằng tất cả sự kh&ocirc;n ngoan của con người chỉ t&oacute;m tắt trong mấy chữ HI VỌNG v&agrave; ĐỢI CHỜ&quot;.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0, 3, b'0', 'Alexandre Dumas'),
(8, 'Cây Cam Ngọt Của Tôi', 108000, 'Capture 4.PNG', '2021-06-03', b'1', 2, 100, '<p>&ldquo;Vị chua ch&aacute;t của c&aacute;i ngh&egrave;o h&ograve;a trộn với vị ngọt ng&agrave;o khi kh&aacute;m ph&aacute; ra những điều khiến cuộc đời n&agrave;y đ&aacute;ng số một t&aacute;c phẩm kinh điển của Brazil.&rdquo;</p>\r\n\r\n<p>- Booklist</p>\r\n\r\n<p>&ldquo;Một c&aacute;ch nh&igrave;n cuộc sống gần như ho&agrave;n chỉnh từ con mắt trẻ thơ&hellip; c&oacute; sức mạnh sưởi ấm v&agrave; l&agrave;m tan n&aacute;t c&otilde;i l&ograve;ng, d&ugrave; người đọc ở lứa tuổi n&agrave;o.&rdquo;</p>\r\n\r\n<p>- The National</p>\r\n\r\n<p>H&atilde;y l&agrave;m quen với Zez&eacute;, cậu b&eacute; tinh nghịch si&ecirc;u hạng đồng thời cũng đ&aacute;ng y&ecirc;u bậc nhất, với ước mơ lớn l&ecirc;n trở th&agrave;nh nh&agrave; thơ cổ thắt nơ bướm. Chẳng phải ai cũng c&ocirc;ng nhận khoản &ldquo;đ&aacute;ng y&ecirc;u&rdquo; kia đ&acirc;u nh&eacute;. Bởi v&igrave;, ở c&aacute;i x&oacute;m ngoại &ocirc; ngh&egrave;o ấy, nỗi khắc khổ bủa v&acirc;y đ&atilde; che mờ mắt người ta trước tr&aacute;i tim thiện lương c&ugrave;ng tr&iacute; tưởng tượng tuyệt vời của cậu b&eacute; con năm tuổi.</p>\r\n\r\n<p>C&oacute; hề g&igrave; đ&acirc;u bao nhi&ecirc;u l&agrave; hắt hủi, đ&aacute;nh mắng, v&igrave; Zez&eacute; đ&atilde; c&oacute; một người bạn đặc biệt để tr&uacute;t nỗi l&ograve;ng: c&acirc;y cam ngọt nơi vườn sau. V&agrave; cả một người bạn nữa, bằng xương bằng thịt, một ng&agrave;y kia xuất hiện, cho cậu b&eacute; nhạy cảm kh&ocirc;n sớm biết thế n&agrave;o l&agrave; tr&igrave;u mến, thế n&agrave;o l&agrave; nỗi đau, v&agrave; m&atilde;i m&atilde;i thay đổi cuộc đời cậu.<br />\r\nMở đầu bằng những thanh &acirc;m trong s&aacute;ng v&agrave; kết th&uacute;c lắng lại trong những nốt trầm ho&agrave;i niệm, C&acirc;y cam ngọt của t&ocirc;i khiến ta nhận ra vẻ đẹp thực sự của cuộc sống đến từ những điều giản dị như b&ocirc;ng hoa trắng của c&aacute;i c&acirc;y sau nh&agrave;, v&agrave; rằng cuộc đời thật khốn khổ nếu thiếu đi l&ograve;ng y&ecirc;u thương v&agrave; niềm trắc ẩn. Cuốn s&aacute;ch kinh điển n&agrave;y bởi thế kh&ocirc;ng ngừng khiến tr&aacute;i tim người đọc khắp thế giới thổn thức, kể từ khi ra mắt lần đầu năm 1968 tại Brazil.</p>\r\n\r\n<p><strong>T&aacute;c giả:</strong></p>\r\n\r\n<p>JOS&Eacute; MAURO DE VASCONCELOS (1920-1984) l&agrave; nh&agrave; văn người Brazil. Sinh ra trong một gia đ&igrave;nh ngh&egrave;o ở ngoại &ocirc; Rio de Janeiro, lớn l&ecirc;n &ocirc;ng phải l&agrave;m đủ nghề để kiếm sống. Nhưng với t&agrave;i kể chuyện thi&ecirc;n bẩm, tr&iacute; nhớ phi thường, tr&iacute; tưởng tượng tuyệt vời c&ugrave;ng vốn sống phong ph&uacute;, Jos&eacute; cảm thấy trong m&igrave;nh th&ocirc;i th&uacute;c phải trở th&agrave;nh nh&agrave; văn n&ecirc;n đ&atilde; bắt đầu s&aacute;ng t&aacute;c năm 22 tuổi. T&aacute;c phẩm nổi tiếng nhất của &ocirc;ng l&agrave; tiểu thuyết mang m&agrave;u sắc tự truyện C&acirc;y cam ngọt của t&ocirc;i. Cuốn s&aacute;ch được đưa v&agrave;o chương tr&igrave;nh tiểu học của Brazil, được b&aacute;n bản quyền cho hai mươi quốc gia v&agrave; chuyển thể th&agrave;nh phim điện ảnh. Ngo&agrave;i ra, Jos&eacute; c&ograve;n rất th&agrave;nh c&ocirc;ng trong vai tr&ograve; diễn vi&ecirc;n điện ảnh v&agrave; bi&ecirc;n kịch.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0, 7, b'0', 'Nhã Nam'),
(9, 'Combo 4 Quyển Sa Môn Không Hải Thết Yến Bầy Quỷ Đại Đường(Tập 1 + 2 + 3 + 4) / Tiểu Thuyết Huyền Bí - Phiêu lưu cực hay', 500000, 'Capture 5.PNG', '2021-06-03', b'1', 5, 100, '<p><strong>1.Sa M&ocirc;n Kh&ocirc;ng Hải Thết Yến Bầy Quỷ Đại Đường Tập 1</strong></p>\r\n\r\n<p>Nh&agrave; sư trẻ tuổi Kh&ocirc;ng Hải, c&ugrave;ng người bạn th&acirc;n Quất Dật Thế, từ Nhật Bản xa x&ocirc;i vượt biển tới Đại Đường với tư c&aacute;ch sứ thần sang du học. V&agrave;o thời đại đ&oacute;, Trường An, kinh đ&ocirc; của nh&agrave; Đại Đường l&agrave; nơi nổi tiếng thịnh vượng phồn hoa, tập trung nhiều sắc d&acirc;n từ khắp nơi đổ về. Như b&oacute;ng tối lu&ocirc;n song h&agrave;nh c&ugrave;ng &aacute;nh s&aacute;ng, nhiều lo&agrave;i y&ecirc;u ma quỷ qu&aacute;i cũng bị thu h&uacute;t về đ&acirc;y. Một con y&ecirc;u qu&aacute;i m&egrave;o đ&atilde; &aacute;m dinh cơ của vi&ecirc;n chức dịch họ Lưu v&agrave; đưa ra lời ti&ecirc;n tri về c&aacute;i chết của ho&agrave;ng đế. Tự tin v&agrave;o vốn kiến thức uy&ecirc;n b&aacute;c c&ugrave;ng t&agrave;i ứng biến phi thường của bản th&acirc;n, Kh&ocirc;ng Hải đ&atilde; dẫn Quất Dật Thế đến nh&agrave; họ Lưu để đương đầu với y&ecirc;u m&egrave;o. Song họ kh&ocirc;ng ngờ, m&igrave;nh đ&atilde; v&ocirc; t&igrave;nh d&iacute;nh l&iacute;u v&agrave;o một sự kiện lớn l&agrave;m rung chuyển nh&agrave; Đường. Kiệt t&aacute;c tiểu thuyết truyền kỳ Nhật Bản lấy bối cảnh Trung Hoa mở ra từ đ&acirc;y.</p>\r\n\r\n<p><strong>2.Sa M&ocirc;n Kh&ocirc;ng Hải Thết Yến Bầy Quỷ Đại Đường Tập 2</strong></p>\r\n\r\n<p>Lần theo manh mối từ tập một, Kh&ocirc;ng Hải bắt tay v&agrave;o điều tra từ b&agrave;i ca m&agrave; người vợ bị m&egrave;o &aacute;m của nh&agrave; họ Lưu h&aacute;t. Biết được đ&oacute; l&agrave; b&agrave;i thơ khoảng 60 năm trước khi ti&ecirc;n L&yacute; Bạch đ&atilde; l&agrave;m để ngợi ca vẻ đẹp của Dương Qu&yacute; Phi sủng phi của Đường Huyền T&ocirc;ng, Kh&ocirc;ng Hải v&agrave; Dật Thế đ&atilde; c&ugrave;ng Bạch Lạc Thi&ecirc;n - người bạn t&igrave;nh cờ quen biết, sau n&agrave;y sẽ trở th&agrave;nh đại thi h&agrave;o - đi đến M&atilde; Ng&ocirc;i Dịch đ&agrave;o mộ của Dương Qu&yacute; Phi. Kỳ lạ thay, ng&ocirc;i mộ đ&atilde; bị ếm bởi những lời nguyền ma qu&aacute;i, hơn nữa, thi h&agrave;i Qu&yacute; phi ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; trong quan t&agrave;i</p>\r\n\r\n<p><strong>3.Sa M&ocirc;n Kh&ocirc;ng Hải Thết Yến Bầy Quỷ Đại Đường Tập 3</strong></p>\r\n\r\n<p>Từ l&aacute; thư m&agrave; A Bội Trọng Ma Lữ để lại, nh&oacute;m Kh&ocirc;ng Hải biết được một sự thật. Đ&oacute; l&agrave;, khi ho&agrave;ng đế Huyền T&ocirc;ng buộc phải xử tử Dương qu&yacute; phi, ng&agrave;i đ&atilde; l&agrave;m theo mưu kế của đạo sĩ Ho&agrave;ng Hạc, thực hiện ph&eacute;p thi giải đưa Qu&yacute; phi v&agrave;o trạng th&aacute;i chết giả để đợi hồi sinh, nhưng thật kh&ocirc;ng may, họ đ&atilde; thất bại. C&ugrave;ng l&uacute;c ấy, Bạch Long, đệ tử cũ của Ho&agrave;ng Hạc xuất hiện. Bạch Long nguyền rủa ho&agrave;ng đế Thuận T&ocirc;ng, t&igrave;m c&aacute;ch hủy diệt cả triều đại nh&agrave; Đường. Chỉ c&ograve;n ch&uacute;t sức t&agrave;n, Huệ Quả của Thanh Long Tự phải đứng ra đấu với Bạch Long, cứu ho&agrave;ng đế, giải nguy cho vương triều</p>\r\n\r\n<p><strong>4.Sa M&ocirc;n Kh&ocirc;ng Hải Thết Yến Bầy Quỷ Đại Đường Tập 4</strong></p>\r\n\r\n<p>Bức thư m&agrave; th&aacute;i gi&aacute;m Cao Lực Sĩ để lại cho A Bội Trọng Ma Lữ ngay trước khi qua đời chứa đựng một sự thật khủng khiếp li&ecirc;n quan đến xuất th&acirc;n của Dương qu&yacute; phi. Thuận T&ocirc;ng ho&agrave;ng đế hấp hối tr&ecirc;n giường bệnh v&igrave; b&ugrave;a ph&eacute;p v&agrave; lời nguyền rủa của Bạch Long. Giang sơn Đại Đường như trứng để đầu đẳ<br />\r\nĐể vạch trần ch&acirc;n tướng của lời nguyền v&agrave; kh&eacute;p lại mọi chuyện, Kh&ocirc;ng Hải dẫn theo Dật Thế, Bạch Lạc Thi&ecirc;n, nhiều nhạc sĩ v&agrave; đầu bếp, đi đến Hoa Thanh Cung ở<br />\r\nLy Sơn - nơi li&ecirc;n quan tới Huyền T&ocirc;ng ho&agrave;ng đế v&agrave; Dương qu&yacute; phi &ndash; v&agrave; t&aacute;i hiện lại buổi tiệc năm mươi năm trước</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0, 30, b'1', '	Nhã Nam'),
(10, 'Lâu Đài Bay Của Pháp Sư Howl (Tái Bản 2020) + Lâu Đài Trên Mây', 180000, 'Capture 6.PNG', '2021-06-03', b'1', 3, 100, '<p><strong>Combo tiểu thuyết giả tưởng tuyệt vời của t&aacute;c giả Diana Wynne Jones :L&acirc;u Đ&agrave;i Bay Của Ph&aacute;p Sư Howl (T&aacute;i Bản 2020) + L&acirc;u Đ&agrave;i Tr&ecirc;n M&acirc;y:</strong></p>\r\n\r\n<p><strong>L&acirc;u Đ&agrave;i Tr&ecirc;n M&acirc;y</strong></p>\r\n\r\n<p>Tại th&agrave;nh Zanzib ở vương quốc Rashpuht, ph&iacute;a Nam của Ingary, c&oacute; một người bu&ocirc;n thảm trẻ tuổi t&ecirc;n Abdullah ng&agrave;y ng&agrave;y đắm ch&igrave;m trong những mộng tưởng hoang đường. Tuy chẳng gi&agrave;u c&oacute; nhưng anh rất bằng l&ograve;ng với cuộc sống của m&igrave;nh, cho tới ng&agrave;y anh được một lữ kh&aacute;ch phương xa b&aacute;n cho một tấm thảm mầu nhiệm.</p>\r\n\r\n<p>Hằng đ&ecirc;m, tấm thảm đưa anh tới một khu vườn đẹp m&ecirc; hoặc, nơi anh gặp gỡ v&agrave; đem l&ograve;ng y&ecirc;u n&agrave;ng c&ocirc;ng ch&uacute;a Hoa Đ&ecirc;m khả &aacute;. Một đ&ecirc;m nọ, n&agrave;ng lại bị ma thần cướp đi ngay trước mắt anh. Với tấm thảm thần gi&uacute;p sức v&agrave; sự lanh tr&iacute; của bản th&acirc;n, Abdullah khăn g&oacute;i l&ecirc;n đường đi giải cứu c&ocirc; g&aacute;i của l&ograve;ng m&igrave;</p>\r\n\r\n<p>&ldquo;Một chuyến phi&ecirc;u lưu kỳ ảo v&ocirc; c&ugrave;ng sống động.&rdquo;</p>\r\n\r\n<p><em>- School Library Journal</em></p>\r\n\r\n<p>&ldquo;Phần tiếp theo của&nbsp;<em>L&acirc;u đ&agrave;i bay của ph&aacute;p sư Howl</em>&nbsp;kh&ocirc;ng hề k&eacute;m cạnh phần đầu. Với khiếu h&agrave;i hước kỳ lạ v&agrave; những t&igrave;nh tiết b&iacute; ẩn, Jones đ&atilde; th&agrave;nh c&ocirc;ng trong việc tạo n&ecirc;n cho cuốn s&aacute;ch một kh&ocirc;ng kh&iacute; căng thẳng m&agrave; d&iacute; dỏm, v&agrave; lần nữa chứng minh rằng mọi sự kh&ocirc;ng phải l&uacute;c n&agrave;o cũng như ta tưởng.&rdquo;</p>\r\n\r\n<p><strong>L&acirc;u Đ&agrave;i Bay Của Ph&aacute;p Sư Howl (T&aacute;i Bản 2020)</strong></p>\r\n\r\n<p>C&ocirc; g&aacute;i Sophie Hatter đang sống v&agrave; l&agrave;m việc y&ecirc;n ổn trong cửa hiệu b&aacute;n mũ của bố mẹ ở Ingary, xứ sở của những đ&ocirc;i ủng bảy l&yacute; v&agrave; &aacute;o t&agrave;ng h&igrave;nh th&igrave; bỗng một ng&agrave;y, mụ ph&ugrave; thuỷ xứ Waste xuất hiện biến c&ocirc; th&agrave;nh b&agrave; gi&agrave; xấu x&iacute;. Quyết t&acirc;m giải cứu bản th&acirc;n m&igrave;nh, Sophie đi tới l&acirc;u đ&agrave;i bay t&igrave;m kiếm sự gi&uacute;p đỡ của Ph&aacute;p sư Howl - kẻ vốn bị đồn l&agrave; kho&aacute;i &ldquo;ăn tươi nuốt sống&rdquo; tr&aacute;i tim của những c&ocirc; g&aacute;i trẻ.</p>\r\n\r\n<p>&ldquo;&hellip;Sophie ngậm ng&oacute;n tay bị bỏng nhẹ v&agrave; lấy tay kia nhặt những l&aacute;t thịt ba chỉ x&ocirc;ng kh&oacute;i rơi tr&ecirc;n v&aacute;y, mắt chằm chằm nh&igrave;n Calcifer. L&atilde;o đang quật từ b&ecirc;n n&agrave;y sang b&ecirc;n kia l&ograve; sưởi. Những bộ mặt xanh lơ của l&atilde;o gần như trắng bệch. Trong khoảnh khắc, l&atilde;o c&oacute; v&ocirc; số những con mắt da cam, rồi khoảnh khắc sau đ&oacute; đ&atilde; c&oacute; h&agrave;ng d&atilde;y những con mắt bạc s&aacute;ng như sao. C&ocirc; chưa bao giờ h&igrave;nh dung ra c&aacute;i g&igrave; giống như thế.</p>\r\n\r\n<p>C&oacute; c&aacute;i g&igrave; đ&oacute; qu&eacute;t qua tr&ecirc;n đầu với một ph&aacute;t nổ v&agrave; tiếng đ&ugrave;ng l&agrave;m rung chuyển mọi thứ trong ph&ograve;ng. Một c&aacute;i g&igrave; đ&oacute; thứ hai theo sau, với tiếng rống d&agrave;i ch&oacute;i tai. Calcifer rung l&ecirc;n gần như xanh đen, v&agrave; da Sophie x&egrave;o x&egrave;o v&igrave; t&agrave;n lửa từ ph&eacute;p thần th&ocirc;ng đ&oacute;&hellip;&rdquo;</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0.05, 20, b'1', 'Diana Wynne Jones'),
(11, 'Trò Chơi Vương Quyền 2B - Bảy Phụ Quốc (Tái Bản 2020)', 200000, 'Capture 7.PNG', '2021-06-03', b'1', 2, 100, '<p><strong>Tr&ograve; Chơi Vương Quyền 2B &ndash; Bảy Phụ Quốc (T&aacute;i Bản 2020)</strong></p>\r\n\r\n<p>Bộ s&aacute;ch đồ sộ v&agrave; đ&igrave;nh đ&aacute;m Tr&ograve; chơi vương quyền l&agrave; một series tiểu thuyết sử thi viễn tưởng của tiểu thuyết gia nổi tiếng người Mỹ George R. R. Martin. Lấy cảm hứng từ tiểu thuyết &quot;Cuộc chiến hoa hồng&quot; v&agrave; &quot;Ivanhoe&quot; Martin bắt đầu viết bộ s&aacute;ch v&agrave;o năm 1991 v&agrave; năm 1996 &ocirc;ng cho ra mắt ấn phẩm đầu ti&ecirc;n. Cuốn tiểu thuyết cũng như cả bộ s&aacute;ch nhanh ch&oacute;ng nhận được sự đ&oacute;n ch&agrave;o nhiệt liệt của một lượng fan h&acirc;m mộ khổng lồ, trở th&agrave;nh c&aacute;c t&aacute;c phẩm best seller của nhiều bảng xếp hạng uy t&iacute;n. Từ dự định viết một bộ ba tập l&uacute;c ban đầu, đến nay Martin đ&atilde; đẩy kế hoạch đ&oacute; l&ecirc;n th&agrave;nh bảy tập; v&agrave; tập năm của bộ s&aacute;ch đ&atilde; được ph&aacute;t h&agrave;nh v&agrave;o 12/07/2011 vừa qua.</p>\r\n\r\n<p>Ngo&agrave;i việc đoạt được h&agrave;ng loạt c&aacute;c giải thưởng danh gi&aacute; như giải khoa học viễn tưởng Hugo Award, bộ tiểu thuyết &quot;Tr&ograve; chơi vương quyền&quot; đ&atilde; được b&aacute;n bản quyền cho hơn 20 nước v&agrave; dịch ra hơn 20 ng&ocirc;n ngữ tr&ecirc;n thế giới. Tại qu&ecirc; hương của m&igrave;nh, tập thứ tư v&agrave; thứ năm của bộ s&aacute;ch li&ecirc;n tục đứng ở vị tr&iacute; số một trong Danh s&aacute;ch b&aacute;n chạy nhất New York Times v&agrave;o năm 2005 v&agrave; 2011. Về số lượng, series tiểu thuyết n&agrave;y đ&atilde; b&aacute;n được hơn 7 triệu bản tại Mỹ v&agrave; hơn 22 triệu bản tr&ecirc;n to&agrave;n thế giới. K&ecirc;nh truyền h&igrave;nh HBO đ&atilde; chuyển thể series tiểu thuyết n&agrave;y sang series phim truyền h&igrave;nh chất lượng cao, đậm chất Holywood khiến danh tiếng của bộ s&aacute;ch cũng như t&ecirc;n tuổi của t&aacute;c giả ng&agrave;y c&agrave;ng vang xa.</p>\r\n\r\n<p>Bộ s&aacute;ch viết về cuộc tranh gi&agrave;nh quyền lực của bảy l&atilde;nh ch&uacute;a v&ugrave;ng đất Weterlos v&agrave; Essos, gồm những khu vực do c&aacute;c d&ograve;ng họ lớn cai trị, trong bối cảnh nhiều thế lực đen tối c&oacute; sức mạnh si&ecirc;u nhi&ecirc;n như người Ngoại nh&acirc;n, quỷ b&oacute;ng trắ lu&ocirc;n đe dọa x&acirc;m chiếm Weterlos.</p>\r\n\r\n<p>Lấy cảm hứng từ c&aacute;c sự kiện lịch sử như lịch sử nước Anh thời kỳ &quot;Cuộc chiến hoa hồng&quot;, nhưng Martin cố t&igrave;nh bất chấp c&aacute;c quy ước về thể loại giả tượng để viết n&ecirc;n bộ tiểu thuyết n&agrave;y. Bạo lực, t&igrave;nh dục v&agrave; sự mơ hồ về đạo đức thường xuy&ecirc;n hiển thị trong t&aacute;c phẩm của &ocirc;ng. Nh&acirc;n vật ch&iacute;nh thường xuy&ecirc;n bị giết, c&aacute;c sự kiện được nh&igrave;n nhận dưới nhiều g&oacute;c nh&igrave;n kh&aacute;c nhau, kể cả qua c&aacute;i nh&igrave;n của c&aacute;c nh&acirc;n vật phản diện, điều n&agrave;y khiến độc giả kh&ocirc;ng thể nghi&ecirc;ng về c&aacute;c nh&acirc;n vật &quot;anh h&ugrave;ng&quot; như c&aacute;c cuốn tiểu thuyết th&ocirc;ng thường kh&aacute;c; đồng thời cũng khẳng định th&ecirc;m sự thật rằng những nh&acirc;n vật anh h&ugrave;ng kh&ocirc;ng thể đi qua c&aacute;c biến cố m&agrave; kh&ocirc;ng bị tổn thương, mất m&aacute;t giống như trong đời thực. Ch&iacute;nh v&igrave; vậy, Tr&ograve; chơi vương quyền nhận được v&ocirc; số những lời khen ngợi về chủ nghĩa hiện thực. Đồng thời bộ tiểu thuyết cũng nhận được những b&igrave;nh luận quan trọng về vai tr&ograve; của phụ nữ v&agrave; t&ocirc;n gi&aacute;o được thể hiện trong t&aacute;c phẩm.<br />\r\n&nbsp;</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0.1, 11, b'1', 'George R. R. Martin'),
(13, 'Bước Chậm Lại Giữa Thế Gian Vội Vã (Tái Bản)', 63000, 'Capture 8.PNG', '2021-06-03', b'1', 2, 100, '<p><strong>Bước Chậm Lại Giữa Thế Gian Vội V&atilde; (T&aacute;i Bản)</strong></p>\r\n\r\n<p>Chen vai th&iacute;ch c&aacute;nh để c&oacute; một chỗ b&aacute;m tr&ecirc;n xe bu&yacute;t giờ đi l&agrave;m, nh&iacute;ch từng xentim&eacute;t b&aacute;nh xe tr&ecirc;n đường l&uacute;c tan sở, quay cuồng với thi cử v&agrave; tiến độ c&ocirc;ng việc, lu b&ugrave; vướng mắc trong những mối quan hệ cả th&acirc;n lẫn sơ&hellip; bạn c&oacute; lu&ocirc;n cảm thấy thế gian xung quanh m&igrave;nh đang xoay chuyển qu&aacute; vội v&agrave;ng?</p>\r\n\r\n<p>Nếu c&oacute; thể, h&atilde;y tạm dừng một bước.</p>\r\n\r\n<p>Để tự hỏi, l&agrave; do thế gian n&agrave;y vội v&agrave;ng hay do ch&iacute;nh t&acirc;m tr&iacute; bạn đang qu&aacute; bận rộn? Để cầm cuốn s&aacute;ch nhỏ dung dị m&agrave; lắng đọng n&agrave;y l&ecirc;n, chậm r&atilde;i lật giở từng trang, thong thả kh&aacute;m ph&aacute; những điều m&agrave; chỉ khi bước chậm lại mới c&oacute; thể thấu r&otilde;: về c&aacute;c mối quan hệ, về ch&iacute;nh bản th&acirc;n m&igrave;nh, về những trăn trở trước cuộc đời v&agrave; nh&acirc;n thế, về bao điều l&yacute; tr&iacute; rất hiểu nhưng tr&aacute;i tim chưa c&aacute;ch n&agrave;o nghe theo&hellip;</p>\r\n\r\n<p>Ra mắt lần đầu năm 2012, Bước chậm lại giữa thế gian vội v&atilde;&nbsp;của Đại đức&nbsp;Hae Min&nbsp;đ&atilde; li&ecirc;n tục đứng đầu danh s&aacute;ch best-seller của nhiều trang&nbsp;s&aacute;ch trực tuyến&nbsp;uy t&iacute;n của H&agrave;n Quốc, trở th&agrave;nh cuốn s&aacute;ch chữa l&agrave;nh cho h&agrave;ng triệu người trẻ lu&ocirc;n tất bật với nhịp sống hiện đại hối hả.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0, 1, b'1', 'Hae Min'),
(14, 'Muôn Kiếp Nhân Sinh 2', 180000, 'Capture 10.PNG', '2021-06-03', b'1', 2, 100, '<p>CUỐN S&Aacute;CH CỦA NHỮNG C&Aacute;NH BƯỚM RUNG ĐỘNG</p>\r\n\r\n<p>T&aacute;c phẩm Mu&ocirc;n Kiếp Nh&acirc;n Sinh tập 1 của t&aacute;c giả Nguy&ecirc;n Phong xuất bản giữa t&acirc;m điểm của đại dịch đ&atilde; thực sự tạo n&ecirc;n một hiện tượng xuất bản hiếm c&oacute; ở Việt Nam. Cuốn s&aacute;ch đ&atilde; khơi dậy những trực cảm tiềm ẩn của con người, l&agrave;m thay đổi g&oacute;c nh&igrave;n cuộc sống v&agrave; thức tỉnh nhận thức của ch&uacute;ng ta giữa một thế giới đang ng&agrave;y c&agrave;ng bất ổn v&agrave; đầy biến động. Ngo&agrave;i việc ph&aacute;t h&agrave;nh hơn 200.000 bản trong 6 th&aacute;ng, chưa kể lượng ph&aacute;t h&agrave;nh Ebook v&agrave; Audio Book qua Voiz-FM, First News c&ograve;n nhận được h&agrave;ng ng&agrave;n tin nhắn, e-mail chuyển lời cảm ơn đến t&aacute;c giả Nguy&ecirc;n Phong. Điều n&agrave;y chứng tỏ sức lan tỏa của cuốn s&aacute;ch đ&atilde; tạo n&ecirc;n một hiện tượng trong văn h&oacute;a đọc của năm 2020.</p>\r\n\r\n<p>Khởi duy&ecirc;n cuốn s&aacute;ch Mu&ocirc;n Kiếp Nh&acirc;n Sinh l&agrave; cuộc điện thoại l&uacute;c đ&ecirc;m khuya từ Việt Nam qua Mỹ v&agrave;o cuối năm 2016. Khi cảm nhận thế giới xung quanh c&ograve;n qu&aacute; nhiều &aacute;p bức, bất c&ocirc;ng v&agrave; điều &aacute;c đang diễn ra, t&ocirc;i đ&atilde; đề nghị t&aacute;c giả Nguy&ecirc;n Phong viết một cuốn s&aacute;ch về Nh&acirc;n quả để cảnh b&aacute;o v&agrave; thức tỉnh con người (t&aacute;c phẩm H&agrave;nh Tr&igrave;nh về Phương Đ&ocirc;ng do &ocirc;ng viết ph&oacute;ng t&aacute;c gần năm mươi năm trước đ&atilde; l&agrave;m nhiều thế hệ người Việt Nam thay đổi t&acirc;m thức v&agrave; được y&ecirc;u th&iacute;ch cho đến giờ).<br />\r\nL&uacute;c đ&oacute;, t&aacute;c giả Nguy&ecirc;n Phong đ&atilde; kể t&ocirc;i nghe về c&acirc;u chuyện nh&acirc;n quả v&agrave; tiền kiếp đặc biệt kỳ lạ của Thomas - một doanh nh&acirc;n th&agrave;nh đạt ở New York v&agrave; cũng l&agrave; người bạn t&acirc;m giao m&agrave; &ocirc;ng đ&atilde; từng gặp ở Đại học Đ&agrave;i Bắc năm 2008. Sau cuộc điện thoại đ&ecirc;m khuya đ&oacute;, &ocirc;ng đ&atilde; lẳng lặng bay đến New York gặp Thomas v&agrave; đề nghị được viết những c&acirc;u chuyện lạ thường của Thomas th&agrave;nh s&aacute;ch.</p>\r\n\r\n<p>V&agrave; bất ngờ - Thomas đ&atilde; đồng &yacute;.</p>\r\n\r\n<p>Mu&ocirc;n Kiếp Nh&acirc;n Sinh đ&atilde; ra đời một c&aacute;ch kỳ lạ như cuốn s&aacute;ch của nh&acirc;n duy&ecirc;n v&agrave; c&oacute; một sứ mệnh đặc biệt. T&ocirc;i v&agrave; nhiều độc giả Việt Nam đ&atilde; thực sự lay động v&agrave; đồng cảm s&acirc;u sắc với những lời chia sẻ t&acirc;m huyết của Thomas ở những trang s&aacute;ch cuối tập 1: &ldquo;T&ocirc;i mong ch&uacute;ng ta - những c&aacute;nh bướm b&eacute; nhỏ rung động mong manh - cũng c&oacute; thể tạo n&ecirc;n những trận cuồng phong m&atilde;nh liệt để thức tỉnh mọi người&rdquo;.</p>\r\n\r\n<p>Tiếp nối c&aacute;c kiếp sống kỳ lạ của Thomas ở nền văn minh Atlantis v&agrave; Ai Cập h&ugrave;ng mạnh ở tập 1, Mu&ocirc;n Kiếp Nh&acirc;n Sinh tập 2 l&agrave; cuộc h&agrave;nh tr&igrave;nh v&ocirc; tiền kho&aacute;ng hậu tiếp theo của Thomas tr&ecirc;n chuyến t&agrave;u xuy&ecirc;n thời gian - kh&ocirc;ng gian trải d&agrave;i từ nước Mỹ đương đại, ngược về v&ugrave;ng sa mạc Lưỡng H&agrave; Assyria cho đến Hy Lạp, Ba Tư, Ấn Độ cổ đại qua những cuộc chinh phạt của Alexander Đại đế. Những k&yacute; ức về chiến binh ki&ecirc;u h&ugrave;ng Achilles trong trận c&ocirc;ng th&agrave;nh Troy huyền thoại v&agrave; sự thức tỉnh bất ngờ của vị đại đế bất bại khi chinh phục quốc gia huyền b&iacute; đ&atilde; vẽ n&ecirc;n bức tranh kỳ vĩ về th&acirc;n phận con người lu&ocirc;n phải xoay vần kh&ocirc;ng ngừng trong b&atilde;o tố Nh&acirc;n quả của tham vọng, chiến tranh, hận th&ugrave; v&agrave; t&igrave;nh y&ecirc;u trong suốt chiều d&agrave;i lịch sử thế giới.<br />\r\nKh&ocirc;ng chỉ l&agrave; những b&agrave;i học s&acirc;u sắc về Nh&acirc;n quả của Thomas, Mu&ocirc;n Kiếp Nh&acirc;n Sinh tập 2 c&ograve;n v&eacute;n bức m&agrave;n b&iacute; ẩn v&agrave; kh&aacute;m ph&aacute; h&agrave;nh tr&igrave;nh bất tận của những linh hồn qua c&aacute;c tầng c&otilde;i, trạm trung chuyển trong mu&ocirc;n v&agrave;n kiếp số Tất cả được đ&uacute;c kết, x&acirc;u chuỗi lại một c&aacute;ch logic bằng g&oacute;c nh&igrave;n h&agrave;i h&ograve;a giữa t&acirc;m linh, khoa học, triết học v&agrave; lịch sử c&aacute;c nền văn minh từ Đ&ocirc;ng sang T&acirc;y, từ cổ đại đến hiện đại.</p>\r\n\r\n<p>Th&ocirc;ng qua những cuộc tr&ograve; chuyện đầy t&iacute;nh minh triết, t&aacute;c phẩm Mu&ocirc;n Kiếp Nh&acirc;n Sinh tập 2 cũng đưa ra c&aacute;ch chuyển h&oacute;a nghiệp quả, đồng thời cảnh b&aacute;o về những hiểm họa, biến động lớn trong tương lai của nh&acirc;n loại cũng như gửi gắm những th&ocirc;ng điệp chữa l&agrave;nh. Đ&acirc;y sẽ l&agrave; khởi đầu một kỷ nguy&ecirc;n mới với cuộc c&aacute;ch mạng chuyển đổi t&acirc;m thức v&agrave; cũng l&agrave; con đường minh triết nhất để thức tỉnh, cứu mỗi người, cứu lấy sự sống tr&aacute;i đất đang b&ecirc;n bờ của những khủng hoảng, hiểm họa kh&oacute; lường.</p>\r\n\r\n<p>C&aacute;c nh&agrave; hiền triết đ&atilde; chỉ r&otilde; qu&aacute; tr&igrave;nh thức tỉnh bắt đầu từ ch&iacute;nh mỗi người. V&agrave; đ&oacute; sẽ kh&ocirc;ng phải l&agrave; h&agrave;nh tr&igrave;nh v&ocirc; vọng nếu ch&uacute;ng ta c&ugrave;ng thật sự &yacute; thức được &yacute; nghĩa sống v&agrave; sứ mệnh của m&igrave;nh. Tương lai ch&uacute;ng ta c&oacute; trở n&ecirc;n tốt đẹp hơn hay kh&ocirc;ng l&agrave; do năng lượng từ ch&iacute;nh những suy nghĩ, h&agrave;nh động của ch&uacute;ng ta ng&agrave;y h&ocirc;m nay.</p>\r\n\r\n<p>Khi t&acirc;m huyết viết Mu&ocirc;n Kiếp Nh&acirc;n Sinh, t&aacute;c giả Nguy&ecirc;n Phong mong muốn truyền tải những th&ocirc;ng điệp thức tỉnh c&ugrave;ng những lời cảnh b&aacute;o đầy tr&aacute;ch nhiệm với một tr&aacute;i tim gi&agrave;u l&ograve;ng trắc ẩn, y&ecirc;u thương để mọi người c&ugrave;ng nhận thức, chuyển đổi - như những c&aacute;nh bướm rung động m&atilde;nh liệt lan tỏa đến với nhiều người. Bởi tận c&ugrave;ng của những rung động lan tỏa đ&oacute; sẽ tạo ra sự chuyển đổi t&acirc;m thức để tạo n&ecirc;n một tương lai tốt đẹp hơn cho mỗi người v&agrave; cho nh&acirc;n loại.</p>\r\n\r\n<p>Ngo&agrave;i ra kh&ocirc;ng c&ograve;n bất kỳ l&yacute; do n&agrave;o kh&aacute;c.</p>\r\n\r\n<p>B&ocirc;n ba mu&ocirc;n nẻo nh&acirc;n sinh.</p>\r\n\r\n<p>Kh&ocirc;ng ai mang theo được thứ g&igrave; khi rời xa thế giới n&agrave;y - trừ c&ocirc;ng v&agrave; tội.</p>\r\n\r\n<p>Ch&iacute;nh bạn mới c&oacute; thể chuyển h&oacute;a được nghiệp quả của m&igrave;nh - kh&ocirc;ng phải bất kỳ một ai kh&aacute;c.</p>\r\n\r\n<p>Nh&acirc;n quả đừng đợi thấy mới tin. Nh&acirc;n quả l&agrave; bảng chỉ đường, gi&uacute;p con người t&igrave;m về thiện lương. - Nguyễn Văn Phước</p>\r\n\r\n<p>S&aacute;ng lập First News - Tr&iacute; Việt</p>\r\n\r\n<p>Mu&ocirc;n Kiếp Nh&acirc;n Sinh (Phần 2)</p>\r\n\r\n<p>Tiếp nối c&aacute;c kiếp sống kỳ lạ của Thomas ở nền văn minh Atlantis v&agrave; Ai Cập, Mu&ocirc;n Kiếp Nh&acirc;n Sinh tập 2 l&agrave; cuộc h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; tr&ecirc;n chuyến t&agrave;u xuy&ecirc;n thời gian - kh&ocirc;ng gian trải d&agrave;i từ nước Mỹ đương đại, ngược về v&ugrave;ng sa mạc Assyria, đến Hy Lạp, Ba Tư, Ấn Độ cổ đại qua những cuộc chinh phạt của Alexander Đại đế, k&yacute; ức về Achilles ki&ecirc;u h&ugrave;ng v&agrave; sự thức tỉnh bất ngờ từ ngai v&agrave;ng Vua của &Aacute; ch&acirc; Trong cơn lốc xo&aacute;y nh&acirc;n quả của tham vọng, chiến tranh, hận th&ugrave; v&agrave; t&igrave;nh y&ecirc;u, bức tranh kỳ vĩ về th&acirc;n phận con người hiện l&ecirc;n sống động với bi&ecirc;n độ kiến thức rộng mở kh&ocirc;ng giới hạn.</p>\r\n\r\n<p>Cuốn s&aacute;ch v&eacute;n bức m&agrave;n b&iacute; ẩn về h&agrave;nh tr&igrave;nh bất tận của những linh hồn qua mu&ocirc;n v&agrave;n kiếp sống, sự thức tỉnh từ c&otilde;i chết để t&igrave;m ra con đường chuyển h&oacute;a nghiệp quả bằng cuộc c&aacute;ch mạng chuyển đổi t&acirc;m thức - Con đường minh triết c&oacute; thể cứu lấy thế giới đang đứng trước những biến động v&agrave; hiếm họa kh&ocirc;n lường. Tất cả được đ&uacute;c kết, x&acirc;u chuỗi một c&aacute;ch logic với g&oacute;c nh&igrave;n tổng thể giữa khoa học v&agrave; t&acirc;m linh, triết học v&agrave; lịch sử c&aacute;c nền văn minh từ Đ&ocirc;ng sang T&acirc;y, từ cổ đại đến hiện đại.</p>\r\n\r\n<p><strong>Th&ocirc;ng tin t&aacute;c giả</strong></p>\r\n\r\n<p>T&aacute;c giả Nguy&ecirc;n Phong</p>\r\n\r\n<p>T&aacute;c giả Nguy&ecirc;n Phong t&ecirc;n thật l&agrave; Vũ Văn Du, sinh năm 1950 tại H&agrave; Nội. &Ocirc;ng rời Việt Nam du học ở Hoa Kỳ từ năm 1968 v&agrave; tốt nghiệp cao học ở hai ng&agrave;nh Sinh vật học v&agrave; Điện to&aacute;n. Ngo&agrave;i c&ocirc;ng việc ch&iacute;nh l&agrave; một kỹ sư cao cấp tại Boeing trong hơn 20 năm, &ocirc;ng vẫn tiếp tục nghi&ecirc;n cứu trong vai tr&ograve; nh&agrave; khoa học tại Đại học Carnergie Mellon v&agrave; Đại học Seattle. &Ocirc;ng c&ograve;n giảng dạy tại một số trường đại học quốc tế tại Trung Hoa, H&agrave;n Quốc, Nhật Bản về lĩnh vực c&ocirc;ng nghệ phần mềm.</p>\r\n\r\n<p>Song song với vai tr&ograve; một nh&agrave; khoa học, Nguy&ecirc;n Phong c&ograve;n l&agrave; dịch giả nổi tiếng của loạt s&aacute;ch về văn h&oacute;a v&agrave; t&acirc;m linh phương Đ&ocirc;ng, chuyển thể từ nhiều t&aacute;c phẩm của c&aacute;c học giả phương T&acirc;y sau qu&aacute; tr&igrave;nh t&igrave;m hiểu v&agrave; kh&aacute;m ph&aacute; c&aacute;c gi&aacute; trị tinh thần từ phương Đ&ocirc;ng. Trong số đ&oacute;, c&oacute; thể kể: H&agrave;nh Tr&igrave;nh về phương Đ&ocirc;ng, Ngọc s&aacute;ng trong hoa sen, B&ecirc;n rặng Tuyết sơn, Hoa sen tr&ecirc;n tuyết, Huyền thuật v&agrave; đạo sĩ T&acirc;y Tạng, Minh Triết trong đời sống, Đường m&acirc;y qua xứ tuyết&hellip;</p>\r\n\r\n<p>Đam m&ecirc; thiền học, nghi&ecirc;n cứu s&acirc;u sắc c&aacute;c vấn đề t&acirc;m linh dưới g&oacute;c nh&igrave;n của khoa học, những t&aacute;c phẩm của &ocirc;ng, phần lớn l&agrave; ph&oacute;ng t&aacute;c, gi&uacute;p người đọc tiếp cận c&aacute;c t&aacute;c phẩm gốc thuận lợi hơn, l&yacute; giải được những vấn đề c&ograve;n nhiều ẩn số bằng c&aacute;i nh&igrave;n minh triết.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. Tuy nhi&ecirc;n tuỳ v&agrave;o từng loại sản phẩm hoặc phương thức, địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, ...</p>\r\n', 0.1, 1, b'1', 'Nguyên Phong');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `Fullname` varchar(502) NOT NULL,
  `Telephone` int(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Photo` varchar(500) NOT NULL,
  `Activated` bit(1) NOT NULL,
  `Admin` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `username`, `Password`, `Fullname`, `Telephone`, `Email`, `Photo`, `Activated`, `Admin`) VALUES
(NULL, 'huong123', 'MTIzNDU2', 'Ngô Nguyễn Quỳnh Hương', 966726907, 'quynhhuongngng@gmail.com', 'user.png', b'1', b'0'),
(NULL, 'huong2', 'MTIzNDU2', 'huong nnnq', 966726907, 'quynhhuongngng@gmail.com', '202170305_982172112322373_2727094907305427328_n.jpg', b'1', b'0'),
(NULL, 'huong3', 'MTIzNDU2', 'Ngô Nguyễn Quỳnh Hương', 966726907, 'quynhhuongngng@gmail.com', '202981300_982172208989030_6726521758043803394_n.jpg', b'1', b'0'),
(NULL, 'huong333', 'MTIzNDU2', 'Ngô Nguyễn Quỳnh Hương', 966726907, 'quynhhuongngng@gmail.com', 'daylatest.png', b'1', b'0'),
(1, 'ly', 'MTIzNDU2', 'Ngô Nguyễn Quỳnh Hương', 966726907, 'quynhhuongngng@gmail.com', '9ee0443157de2e51c013ff659c3e374f.jpg', b'1', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `productId` (`productId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `OrderId` (`OrderId`),
  ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`Id`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`Id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`username`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `categories` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
