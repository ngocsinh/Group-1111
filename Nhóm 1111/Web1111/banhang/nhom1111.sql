-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 09:20 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhom1111`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE `tbl_config` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`id`, `code`, `name`, `detail`, `date_added`, `last_modified`) VALUES
(1, 'total_visits', 'Tên truy cập', '445', '0000-00-00 00:00:00', '2020-07-25 20:16:07'),
(2, 'currencyUnit', 'Đơn vị tiền tệ', 'VNĐ', '0000-00-00 00:00:00', '2020-07-25 20:16:33'),
(3, 'adminEmail', 'Email', '1111@gmail.com', '0000-00-00 00:00:00', '2020-07-25 20:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE `tbl_content` (
  `id` int(11) NOT NULL,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`, `new`) VALUES
(35, '', 'Event', 33, 'subject Event', 'short Event', 'long Event', NULL, NULL, 0, 0, '2008-04-29 22:54:02', '2008-04-29 22:54:02', 'en', NULL),
(119, '', 'Introduction', 29, '', '<p>\r\n<tr>\r\n</tr>\r\n<span class="text_xanh">Những nguy&ecirc;n tắc mới của dụng cụ cắt (Phần 1)</span><br />\r\n<em><img height="80" hspace="6" src="http://viettienthanh.net/demo/minh_thang1/images/dungcucat1210081.jpg" width="100" align="left" vspace="4" alt="" />Ng&agrave;nh c&ocirc;ng nghệ cắt gọt đ&atilde; c&oacute; những bước ph&aacute;t triển nhanh ch&oacute;ng nhằm đ&aacute;p ứng nhu cầu thay đổi v&agrave; sử dụng c&aacute;c vật liệu ph&ocirc;i chất lượng cao hơn. C&aacute;c nh&agrave; m&aacute;y gia c&ocirc;ng cơ kh&iacute; cần được th&ocirc;ng tin về những chủng loại dụng cụ cắt, với chất lượng tốt từ c&aacute;c nh&agrave; cung cấp kh&aacute;c nhau.<br />\r\n</em><br />\r\nNg&agrave;nh c&ocirc;ng nghệ cắt gọt đ&atilde; c&oacute; những bước ph&aacute;t triển nhanh ch&oacute;ng nhằm đ&aacute;p ứng nhu cầu thay đổi v&agrave; sử dụng c&aacute;c vật liệu ph&ocirc;i chất lượng cao hơn. C&aacute;c nh&agrave; m&aacute;y gia c&ocirc;ng cơ kh&iacute; cần được th&ocirc;ng tin về những chủng loại dụng cụ cắt, với chất lượng tốt từ c&aacute;c nh&agrave; cung cấp kh&aacute;c nhau. </p>', '<p align="justify"><font size="3"><img height="160" hspace="5" width="200" align="left" alt="" src="/vantindat/images/Image/dungcucat1210081.jpg" />&nbsp;<span class="text_xanh">Những nguy&ecirc;n tắc mới của dụng cụ cắt (Phần 1)</span><br />\r\n<em>Ng&agrave;nh c&ocirc;ng nghệ cắt gọt đ&atilde; c&oacute; những bước ph&aacute;t triển nhanh ch&oacute;ng nhằm đ&aacute;p ứng nhu cầu thay đổi v&agrave; sử dụng c&aacute;c vật liệu ph&ocirc;i chất lượng cao hơn. C&aacute;c nh&agrave; m&aacute;y gia c&ocirc;ng cơ kh&iacute; cần được th&ocirc;ng tin về những chủng loại dụng cụ cắt, với chất lượng tốt từ c&aacute;c nh&agrave; cung cấp kh&aacute;c nhau.<br />\r\n</em><br />\r\nNg&agrave;nh c&ocirc;ng nghệ cắt gọt đ&atilde; c&oacute; những bước ph&aacute;t triển nhanh ch&oacute;ng nhằm đ&aacute;p ứng nhu cầu thay đổi v&agrave; sử dụng c&aacute;c vật liệu ph&ocirc;i chất lượng cao hơn. C&aacute;c nh&agrave; m&aacute;y gia c&ocirc;ng cơ kh&iacute; cần được th&ocirc;ng tin về những chủng loại dụng cụ cắt, với chất lượng tốt từ c&aacute;c nh&agrave; cung cấp kh&aacute;c nhau. </font></p>\r\n<font size="3">\r\n<p align="justify"><font size="3">&nbsp;<span class="text_xanh">Những nguy&ecirc;n tắc mới của dụng cụ cắt (Phần 1)</span><br />\r\n<em>Ng&agrave;nh c&ocirc;ng nghệ cắt gọt đ&atilde; c&oacute; những bước ph&aacute;t triển nhanh ch&oacute;ng nhằm đ&aacute;p ứng nhu cầu thay đổi v&agrave; sử dụng c&aacute;c vật liệu ph&ocirc;i chất lượng cao hơn. C&aacute;c nh&agrave; m&aacute;y gia c&ocirc;ng cơ kh&iacute; cần được th&ocirc;ng tin về những chủng loại dụng cụ cắt, với chất lượng tốt từ c&aacute;c nh&agrave; cung cấp kh&aacute;c nhau.<br />\r\n</em><br />\r\nNg&agrave;nh c&ocirc;ng nghệ cắt gọt đ&atilde; c&oacute; những bước ph&aacute;t triển nhanh ch&oacute;ng nhằm đ&aacute;p ứng nhu cầu thay đổi v&agrave; sử dụng c&aacute;c vật liệu ph&ocirc;i chất lượng cao hơn. C&aacute;c nh&agrave; m&aacute;y gia c&ocirc;ng cơ kh&iacute; cần được th&ocirc;ng tin về những chủng loại dụng cụ cắt, với chất lượng tốt từ c&aacute;c nh&agrave; cung cấp kh&aacute;c nhau. </font></p>\r\n</font>', NULL, NULL, 1, 0, '2008-12-05 14:51:10', '2008-12-17 08:58:50', 'en', NULL),
(38, '', 'Service', 20, '', '<p align="justify"><span class="text_xanh">Những nguy&ecirc;n tắc mới của dụng cụ cắt (Phần 1) (16-10-2008 07:58:50)</span><em><br />\r\nNg&agrave;nh c&ocirc;ng nghệ cắt gọt đ&atilde; c&oacute; những bước ph&aacute;t triển nhanh ch&oacute;ng nhằm đ&aacute;p ứng nhu cầu thay đổi v&agrave; sử dụng c&aacute;c vật liệu ph&ocirc;i chất lượng cao hơn. C&aacute;c nh&agrave; m&aacute;y gia c&ocirc;ng cơ kh&iacute; cần được th&ocirc;ng tin về những chủng loại dụng cụ cắt, với chất lượng tốt từ c&aacute;c nh&agrave; cung cấp kh&aacute;c nhau. </em></p>\r\n<div align="justify"><strong><br />\r\n</strong></div>\r\n<p align="justify"><img height="150" alt="" hspace="8" width="350" align="left" src="http://viettienthanh.net/demo/minh_thang1/images/dungcucat1210081.jpg" />Trong c&ocirc;ng nghệ kim loại, kh&ocirc;ng c&oacute; sự lựa chọn kh&aacute;c ngo&agrave;i việc chấp nhận những c&ocirc;ng nghệ hiện đại. Những y&ecirc;u cầu trong gia c&ocirc;ng cắt gọt đ&atilde; c&oacute; từ l&acirc;u v&agrave; ng&agrave;y c&agrave;ng đ&ograve;i hỏi ở mức cao hơn v&agrave; chỉ c&ocirc;ng nghệ hiện đại mới c&oacute; khả năng đ&aacute;p ứng được những y&ecirc;u cầu đ&oacute;. </p>\r\n<p align="justify">Chris Mill, gi&aacute;m đốc dự &aacute;n ph&aacute;t triển ng&agrave;nh h&agrave;ng kh&ocirc;ng với Sandvik Coromant, đ&atilde; lấy c&ocirc;ng nghiệp h&agrave;ng kh&ocirc;ng l&agrave;m v&iacute; dụ minh họa. Để đ&aacute;p ứng được những y&ecirc;u cầu sản xuất của c&ocirc;ng nghiệp h&agrave;ng kh&ocirc;ng trong 20 năm, năng suất gia c&ocirc;ng sẽ cần tăng l&ecirc;n ba lần trong khoảng thời gian giữa b&acirc;y giờ v&agrave; tiếp theo. Điều n&agrave;y có khả thi hay kh&ocirc;ng? </p>\r\n<p align="justify">&Yacute; định tăng l&ecirc;n ba lần năng suất gia c&ocirc;ng sẽ k&eacute;o theo số lượng m&aacute;y c&ocirc;ng cụ tăng l&ecirc;n ba lần, với những phương thức gia c&ocirc;ng cơ kh&iacute; vốn c&oacute; như ng&agrave;y nay. </p>\r\n<p align="justify">&quot;Kh&ocirc;ng hợp l&yacute;&quot;, &ocirc;ng ta n&oacute;i. Việc tăng số lượng m&aacute;y c&ocirc;ng cụ l&ecirc;n đồng nghĩa với việc tăng số lượng nh&acirc;n vi&ecirc;n điều khiển m&aacute;y l&ecirc;n mức tương tự như vậy. Thật kh&oacute; để h&igrave;nh dung, với một số lượng phương tiện m&aacute;y m&oacute;c ấy cần bố tr&iacute; số lượng nh&acirc;n sự c&oacute; đủ chuy&ecirc;n m&ocirc;n như thế n&agrave;o để điều khiển m&aacute;y. </p>\r\n<p align="justify">Kh&ocirc;ng, năng suất tăng l&ecirc;n sẽ đến từ những c&ocirc;ng nghệ ti&ecirc;n tiến m&agrave; ở đ&oacute; cho ph&eacute;p với c&ugrave;ng một lượng nh&acirc;n vi&ecirc;n nhưng c&oacute; thể gi&aacute;m s&aacute;t được một khối lượng c&ocirc;ng việc lớn hơn nhiều. </p>\r\n<p align="justify"><strong>Vậy c&ocirc;ng nghệ hiện đại nay sẽ đến từ đ&acirc;u?</strong> </p>\r\n<p align="justify">M&aacute;y c&ocirc;ng cụ đang ph&aacute;t triển mạnh, ng&agrave;y c&agrave;ng trở n&ecirc;n nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c hơn. Tuy nhi&ecirc;n, bản th&acirc;n ph&ocirc;i li&ecirc;̣u kh&ocirc;ng ph&aacute;t triển theo c&aacute;ch gia tăng giống như vậy, ch&uacute;ng đang thay đổi một c&aacute;ch căn bản. Ng&agrave;y nay ph&ocirc;i gia c&ocirc;ng kh&ocirc;ng chỉ c&oacute; y&ecirc;u cầu về mức độ ch&iacute;nh x&aacute;c m&agrave; c&ograve;n ở chất lượng nguy&ecirc;n liệu, do vậy khi nhận h&agrave;ng, đơn vị sản xuất sẽ gặp phải những vật liệu mới th&acirc;̣m chí chưa hề gặp. Đ&oacute; l&agrave; những vật liệu bao gồm hợp kim titan, c&aacute;c loại hợp kim tr&ecirc;n nền niken v&agrave; th&eacute;p &eacute;p graphit (CGI), </p>', '', NULL, NULL, 0, 0, '2008-04-29 22:55:25', '2008-12-17 09:00:45', 'en', NULL),
(40, 'http://www.mail.yahoo.com.vn', 'mail yahoo', 19, '', '', '', '', NULL, 0, 0, '2008-04-29 22:56:40', '2008-11-27 00:10:42', 'en', NULL),
(148, 'http://www.trangvangwebsite.com', 'trang vàng', 10, '', '', '', 'images/content/link_s148.jpg', NULL, 2, 0, '2009-06-08 11:06:27', '2009-06-08 11:51:07', 'vn', NULL),
(149, 'http://www.thuonggiavietnam.net', 'thương gia', 10, '', '', '', 'images/content/link_s149.jpg', NULL, 3, 0, '2009-06-08 11:07:00', '2009-06-08 11:51:15', 'vn', NULL),
(150, 'http://www.trangvangwebsite.com', 'trang vàng', 10, '', '', '', 'images/content/link_s150.jpg', NULL, 4, 0, '2009-06-08 11:07:19', '2009-06-08 11:51:21', 'vn', NULL),
(154, '', 'Dịch vụ', 9, '', '<font size="3" color="#000000"><strong>Đồ Án nhóm 1111<br />\r\n<br />\r\n</strong>- Chuyên cung cấp các loại thiết bị điện tử:<br />\r\n<br />\r\n- Mua bán các loại máy tính cũ mới.<br />\r\n<br />\r\n- Sửa chữa máy tính, laptop, phần mềm,...</font>', '', NULL, NULL, 0, 0, '0000-00-00 00:00:00', '2020-07-25 20:10:11', 'vn', NULL),
(193, 'ngocsinh', 'Tran Ngoc Sinh', 11, '', '', '', NULL, NULL, 1, 0, '2020-07-25 20:10:53', '2020-07-25 20:10:53', 'vn', NULL),
(159, 'http://www.google.com.vn', 'Công ty TNHH ABC', 71, '', '', '', 'images/content/customer_s159.jpg', NULL, 1, 0, '2009-06-08 12:02:12', '2009-06-12 15:38:55', 'vn', NULL),
(160, 'http://www.thuonggiavietnam.net', 'Khách hàng 123', 71, '', '', '', 'images/content/customer_s160.jpg', NULL, 2, 0, '2009-06-08 12:02:56', '2009-06-12 15:38:44', 'vn', NULL),
(161, 'http://www.trangvangwebsite.com', 'Công ty truyền thông', 71, '', '', '', 'images/content/customer_s161.jpg', NULL, 3, 0, '2009-06-08 13:43:52', '2009-06-12 15:37:44', 'vn', NULL),
(166, '', 'Giới thiệu', 73, '', '<div align="justify">\r\n<table cellspacing="0" cellpadding="0" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td class="name" align="center"><span><font size="2">Dịch vụ kế to&aacute;n </font></span></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin đang cập nhật ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">Dịch vụ k&ecirc; khai v&agrave; tư vấn thuế</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin đang cập nhật ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">Dịch vụ Tư vấn t&agrave;i ch&iacute;nh Doanh nghiệp </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin đang cập nhật ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">Dịch vụ thiết lập dự &aacute;n đầu tư </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin đang cập nhật ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">Dịch vụ thẩm định dự &aacute;n đầu tư </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin đang cập nhật ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">Dịch vụ tư vấn đầu tư t&agrave;i ch&iacute;nh</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin đang cập nhật ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">Dịch vụ thu thập th&ocirc;ng tin, ph&acirc;n t&iacute;ch v&agrave; điều tra thị trường</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin đang cập nhật ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">Dịch vụ hỗ trợ ph&aacute;p l&yacute;</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin đang cập nhật ... </font></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>', '', NULL, NULL, 0, 0, '0000-00-00 00:00:00', '2009-06-12 15:21:13', 'vn', NULL),
(30, '', 'liên hệ', 30, '', '<font size="2" face="Tahoma"> </font><!--[if gte mso 9]><xml>\r\n<w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\nDefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\nLatentStyleCount="267">\r\n<w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Normal" />\r\n<w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="heading 1" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8" />\r\n<w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 1" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 2" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 3" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 4" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 5" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 6" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 7" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 8" />\r\n<w:LsdException Locked="false" Priority="39" Name="toc 9" />\r\n<w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption" />\r\n<w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Title" />\r\n<w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font" />\r\n<w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Subtitle" />\r\n<w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Strong" />\r\n<w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Emphasis" />\r\n<w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Table Grid" />\r\n<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text" />\r\n<w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="No Spacing" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 1" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 1" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 1" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 1" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 1" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 1" />\r\n<w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision" />\r\n<w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="List Paragraph" />\r\n<w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Quote" />\r\n<w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Intense Quote" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 1" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 1" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 1" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 1" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 1" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 1" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 1" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 1" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 2" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 2" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 2" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 2" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 2" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 2" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 2" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 2" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 2" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 2" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 2" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 2" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 2" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 2" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 3" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 3" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 3" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 3" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 3" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 3" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 3" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 3" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 3" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 3" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 3" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 3" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 3" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 3" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 4" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 4" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 4" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 4" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 4" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 4" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 4" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 4" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 4" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 4" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 4" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 4" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 4" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 4" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 5" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 5" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 5" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 5" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 5" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 5" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 5" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 5" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 5" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 5" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 5" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 5" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 5" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 5" />\r\n<w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Shading Accent 6" />\r\n<w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light List Accent 6" />\r\n<w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Light Grid Accent 6" />\r\n<w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 1 Accent 6" />\r\n<w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Shading 2 Accent 6" />\r\n<w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 1 Accent 6" />\r\n<w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium List 2 Accent 6" />\r\n<w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 1 Accent 6" />\r\n<w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 2 Accent 6" />\r\n<w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Medium Grid 3 Accent 6" />\r\n<w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Dark List Accent 6" />\r\n<w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Shading Accent 6" />\r\n<w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful List Accent 6" />\r\n<w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\nUnhideWhenUsed="false" Name="Colorful Grid Accent 6" />\r\n<w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis" />\r\n<w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis" />\r\n<w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Subtle Reference" />\r\n<w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Intense Reference" />\r\n<w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\nUnhideWhenUsed="false" QFormat="true" Name="Book Title" />\r\n<w:LsdException Locked="false" Priority="37" Name="Bibliography" />\r\n<w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading" />\r\n</w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-priority:99;\r\nmso-style-qformat:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nline-height:115%;\r\nmso-pagination:widow-orphan;\r\nfont-size:11.0pt;\r\nfont-family:"Calibri","sans-serif";\r\nmso-ascii-font-family:Calibri;\r\nmso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:"Times New Roman";\r\nmso-fareast-theme-font:minor-fareast;\r\nmso-hansi-font-family:Calibri;\r\nmso-hansi-theme-font:minor-latin;\r\nmso-bidi-font-family:"Times New Roman";\r\nmso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]-->\r\n<h2>Nhóm 1111</h2>\r\nVăn phòng: 280 An Dương Vương - Phường 4 - Quận 5 - TP. HCM<br />\r\nĐT: Mr Sinh - 0123.456.789<br />\r\nEmail: <a href="1111@gmail.com">1111@gmail.com</a><br />\r\nMọi ý kiến, xin gửi về địa chỉ email: <a href="mailto:1111@gmail.com">1111@gmail.com</a>\r\n<p align="center"><span style="font-size:10.0pt"></span></p>', '', NULL, NULL, 0, 0, '0000-00-00 00:00:00', '2020-07-25 20:14:43', 'vn', NULL),
(144, '', 'Tuyển dụng', 70, '', '<p align="justify"><font face="Tahoma" size="2">Th&ocirc;ng tin tuyển dụng đang cập nhật !.</font></p>', '', NULL, NULL, 0, 0, '2009-06-08 10:27:42', '2009-06-08 10:59:55', 'vn', NULL),
(125, '', 'Nhà phát minh Vân Nguyễn nói về thuốc nghệ', 66, '', '', '', 'images/upload/TakeMeToYourHeart.wma', NULL, 1, 0, '2008-12-18 09:04:55', '2008-12-18 09:07:50', 'vn', NULL),
(126, '', 'Thuốc nghệ tại Canada', 66, '', '', '', 'images/upload/Mandy_Westlife.wma', NULL, 2, 0, '2008-12-18 09:08:56', '2008-12-18 09:21:44', 'vn', NULL),
(31, '', 'Contact', 31, '', '<font size="3">\r\n<div style="FONT-WEIGHT: bold; COLOR: rgb(24,130,237); TEXT-ALIGN: center"><font size="2">Minh thang Co Ltd.,&nbsp;</font></div>\r\n<div style="COLOR: rgb(24,130,237); TEXT-ALIGN: center"></div>\r\n</font>', '', NULL, NULL, 0, 0, '2008-03-29 11:36:06', '2008-12-17 09:10:19', 'en', NULL),
(43, 'http://mail.yahoo.com.vn', 'mail yahoo', 26, '', '', '', 'images/content/advleft_s43.gif', NULL, 0, 0, '2008-05-01 23:50:46', '2008-06-18 14:50:50', 'en', NULL),
(44, 'http://www.google.com.vn', 'google', 27, '', '', '', 'images/content/advright_s44.jpg', NULL, 1, 0, '2008-05-01 23:51:17', '2008-11-27 21:11:34', 'en', NULL),
(49, 'thehoipro200x', 'Ho tro ky thuat ', 36, '', '', '', NULL, NULL, 0, 0, '2008-06-02 11:30:58', '2009-06-08 11:52:19', 'vn', NULL),
(50, 'support', 'Support', 37, '', '', '', NULL, NULL, 0, 0, '2008-06-02 11:31:10', '2008-06-02 11:31:27', 'en', NULL),
(167, '', 'Giới thiệu', 28, '', '<h2>Đồ án nhóm 1111</h2>\r\nVăn phòng: 280 An Dương Vương - Phường 4 - Quận 5 - TP. HCM<br />\r\nĐT: Mr Sinh - 0123.456.789<br />\r\nEmail: <a href="mailto:1111@gmail.com">1111@gmail.com</a><br />\r\n<br />\r\nMọi ý kiến, xin gửi về địa chỉ email: <a href="mailto:1111@gmail.com">1111@gmail.com</a>', '', NULL, NULL, 0, 0, '0000-00-00 00:00:00', '2020-07-25 20:08:44', 'vn', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content_category`
--

CREATE TABLE `tbl_content_category` (
  `id` int(11) NOT NULL,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_content_category`
--

INSERT INTO `tbl_content_category` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(1, '', 'Danh mục gốc', 0, '', '', '', NULL, NULL, 0, 0, '0000-00-00 00:00:00', '2009-11-19 09:04:12', ''),
(8, 'vn_news', 'Tin tức & Sự kiện', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(9, 'vn_service', 'Dịch vụ', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(10, 'vn_link', 'Liên kết website', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(11, 'vn_yahoo', 'Hỗ trợ trực tuyến(yahoo)', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(3, 'en', 'English', 1, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'en'),
(2, 'vn', 'Việt nam', 1, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(75, 'vn_logo', 'Logo Quảng cáo', 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(76, 'vn_advleft_bottom', 'Quảng cáo trái dưới', 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(24, 'vn_advleft_top', 'Quảng cáo trái trên', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(25, 'vn_advright_top', 'Quảng cáo phải trên', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(28, 'vn_intro', 'Giới thiệu', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(30, 'vn_contact', 'Liên hệ', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(74, 'vn_download', 'Download bảng giá', 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(77, 'vn_advright_bottom', 'Quảng cáo phải dưới', 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sex` int(3) DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `name`, `sex`, `company`, `address`, `city`, `country`, `tel`, `fax`, `email`, `website`, `uid`, `pwd`, `status`, `date_added`, `last_modified`) VALUES
(11, 'Trần Ngọc Sinh', 0, '1111', '280 An Dương Vương', 'Hồ Chí Minh', 'Vietnam', '123456789', '11111', '1111@gmail.com', '1111', 'sinh', '123456789', 0, '2020-07-25 20:04:32', '2020-07-25 20:04:32'),
(12, 'Vũ Thế Quân', 0, '1111', 'Long An', 'Long An', 'Vietnam', '1234567890', '12345', 'admin@gmail.com', '111.com', 'quan', '123456789', 0, '2020-07-28 13:40:01', '2020-07-28 13:40:01'),
(13, 'Lâm Phát Tài', 0, '1111', 'Long An', 'Long An', 'Vietnam', '1234567890', '1111', 'admin@gmail.com', '1111.com', 'tai', '123456789', 0, '2020-07-28 13:41:08', '2020-07-28 13:41:08'),
(14, 'Đinh Ngọc Phương', 1, '1111', 'Long An', 'Long An', 'Vietnam', '1234567890', '1111', 'admin@gmail.com', '1111.com', 'phuong', '123456789', 0, '2020-07-28 13:41:51', '2020-07-28 13:41:51'),
(15, 'Nguyễn Trần Cao Phong', 0, '1111', 'Long An', 'Long An', 'Vietnam', '1234567890', '1111', 'admin@gmail.com', '1111.com', 'phong', '123456789', 0, '2020-07-28 13:42:30', '2020-07-28 13:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `member_id` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `code`, `member_id`, `date_added`, `last_modified`) VALUES
(28, '0', 10, '2009-06-22 15:12:03', '0000-00-00 00:00:00'),
(27, '0', 8, '2009-06-22 14:14:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `status`) VALUES
(15, 20, 29, 20, 0, 0),
(16, 21, 27, 5, 0, 0),
(17, 21, 31, 6, 0, 0),
(18, 21, 29, 7, 0, 0),
(19, 22, 29, 30, 0, 0),
(20, 22, 32, 20, 0, 0),
(21, 22, 28, 10, 0, 0),
(22, 23, 28, 1, 0, 0),
(23, 23, 27, 1, 0, 0),
(24, 23, 29, 1, 0, 0),
(25, 24, 125, 1, 0, 0),
(26, 25, 127, 5, 0, 0),
(27, 26, 127, 5, 0, 0),
(28, 26, 150, 1, 0, 0),
(29, 27, 152, 10, 0, 0),
(30, 28, 152, 10, 100, 0),
(31, 28, 153, 4, 150, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`, `price`) VALUES
(293, 'Mac2018', 'MacBook Pro 2018', 175, '', 'CPU:	<strong>Intel Core i5 Kabylake Refresh, 2.30 GHz</strong><br/>\r\nRAM:	<strong>8 GB, DDR3L(On board), 2133 MHz</strong><br/>\r\nỔ cứng:	<strong>SSD: 256 GB</strong><br/>\r\nMàn hình:	<strong>13.3 inch, Retina (2560 x 1600)</strong><br/>\r\nCard màn hình:	<strong>Card đồ họa tích hợp, Intel Iris Plus Graphics 655</strong><br/>\r\nCổng kết nối:	<strong>4 x Thunderbolt 3 (USB-C)</strong><br/>\r\nHệ điều hành:	<strong>Mac OS</strong><br/>\r\nThiết kế:	<strong>Vỏ kim loại nguyên khối, PIN liền</strong><br/>\r\nKích thước:	<strong>Dày 14.9 mm, 1.37 kg</strong><br/>', '', 'images/product/product_s293.jpg', 'images/product/product_l293.jpg', 2, 0, '2020-07-25 23:27:10', '2020-07-28 13:36:49', 'vn', 30000000),
(294, 'Mac2019', 'MacBook Pro 2019', 175, '', 'Màn hình:  <strong>13.3-inch 2560 x 1600 pixels</strong><br/>\r\nChip xử lý: <strong>CPU1.4GHz quad-core Intel Core i5 8th Gen</strong><br/>\r\nỔ cứng: <strong>128GB PCIe-based SSD</strong><br/>\r\nBộ nhớ: <strong>RAM8GB of 2133MHz LPDDR3 onboard memory</strong><br/>\r\nKết nối:  <strong>2 Thunderbolt 3 (USB-C) </strong><br/>\r\nCard đồ họa : <strong>GPUIntel Iris Plus Graphics 645</strong><br/>', '', 'images/product/product_s294.jpg', 'images/product/product_l294.jpg', 3, 0, '2020-07-25 23:29:40', '2020-07-28 13:36:44', 'vn', 32000000),
(295, 'Mac2020', 'MacBook Pro 2020', 175, '', 'Kích thước	<strong>1.56 x 30.41 x 21.24</strong><br/>\r\nTrọng lượng	<strong>1.4 kg</strong><br/>\r\nLoại màn hình	 <strong>LED-backlit</strong><br/>\r\nKích thước màn hình	<strong>13.3 inches</strong><br/>\r\nĐộ phân giải màn hình	<strong>2560 x 1600 pixels</strong><br/>\r\nHệ điều hành	<strong>MacOS</strong><br/>\r\nCPU	<strong>1.4GHz quad‑core 8th‑generation Intel Core i5</strong><br/>\r\nVGA	<strong>Intel Iris Plus Graphics 645</strong><br/>', '', 'images/product/product_s295.jpg', 'images/product/product_l295.jpg', 4, 0, '2020-07-25 23:40:48', '2020-07-28 13:36:09', 'vn', 35000000),
(296, 'PC1', 'PC B860', 174, '', 'Main <strong>CHIPSET H61 dòng 2 khe ram FULL ONBOARD</strong><br/>\r\nBộ xử lý: <strong>Intel® Core™ G860 (3M Cache, 3.00 GHz)</strong><br/>\r\nBộ nhớ: <strong>8GB DDR3</strong><br/>\r\nDung lượng ổ cứng : <strong>Seagate sata 250GB 7200/vòng</strong><br/>\r\nCard Vga rời <strong>GT630 2G 128bit chiến game, đồ họa</strong><br/>\r\nNguồn <strong>Vision 500w fan 12 chạy ổn định</strong><br/>\r\nCase <strong>VSP V3, 3 fan case led, 1 fan CPU LED</strong><br/>', '', 'images/product/product_s296.jpg', 'images/product/product_l296.jpg', 1, 0, '2020-07-25 23:43:45', '2020-07-28 13:36:03', 'vn', 5000000),
(297, 'manhinh1', 'Màn Hình Samsung LC34J791WTEXXV', 177, '', 'Màn hình máy tính <strong>Samsung LC34J791WTEXXV</strong><br/>\r\nKích thước:	<strong>34"</strong><br/>\r\nĐộ phân giải:	<strong>3440 x 1440 ( 21:9 )</strong><br/>\r\nKiểu màn hình:	<strong>Màn hình cong</strong><br/>\r\nHDR:	<strong>không hỗ trợ</strong><br/>\r\nCổng mở rộng:	<strong>2 x USB 2.0</strong><br/>\r\nCổng xuất hình:	<strong>1 x HDMI , 1 x DisplayPort</strong><br/>\r\nKhối lượng:	<strong>6.3 kg</strong><br/>\r\nPhụ kiện đi kèm:	<strong>cáp HDMI</strong><br/>', '', 'images/product/product_s297.jpg', 'images/product/product_l297.jpg', 1, 0, '2020-07-25 23:54:50', '2020-07-28 13:35:58', 'vn', 15000000),
(298, 'mouse1', 'Chuột Genius XScroll 120', 183, '', '<strong>Chuột Genius XScroll 120</strong>', '', 'images/product/product_s298.jpg', 'images/product/product_l298.jpg', 1, 0, '2020-07-26 00:08:35', '2020-07-28 13:35:49', 'vn', 75000),
(299, 'banphim1', 'Bàn Phím Mechanical', 182, '', '<strong>Bàn Phím Mechanical</strong>', '', 'images/product/product_s299.jpg', 'images/product/product_l299.jpg', 1, 0, '2020-07-26 00:12:04', '2020-07-28 13:35:29', 'vn', 200000),
(292, 'Mac2017', 'MacBook Pro 2017', 175, '', 'Tình trạng: <strong>Used, máy đẹp 97-98%</strong><br/>\r\nMàu: <strong>Xám (Space Gray)</strong><br/>\r\nCPU: )<strong>Dual-core i5 - 3.1GHz (i5-7267U, 4MB cache</strong><br/>\r\nRAM: <strong>8GB LPDDR3, Bus 2133MHz</strong><br/>\r\nStorage: <strong>256GB On-board SSD</strong><br/>\r\nMàn hình: <strong>13.3 inch, Retina (2650x1600)</strong><br/>\r\nVGA: <strong>Intel Iris Plus 650 (1.5GB)</strong><br/>\r\nInterface: <strong>4 Thunderbolt 3 (USB-Type C)</strong>', '', 'images/product/product_s292.jpg', 'images/product/product_l292.jpg', 1, 0, '2020-07-25 22:56:27', '2020-07-28 13:36:54', 'vn', 25000000),
(300, 'corei9', 'Intel® Core™ i9-9900K Processor', 176, '', 'Bộ vi xử lý <strong>Intel Core i9 9900K, 8 nhân 16 luồng, 16MB cache</strong><br/>\r\nLà sản phẩm dựa trên <strong>kiến trúc Coffee Lake Refresh thế hệ mới nhất</strong><br/>\r\nBộ vi xử lý này có tần số cơ bản là <strong>3.6 GHz turbo lên tới 5.0 GHz. Mức TDP 95W</strong><br/>\r\nHỗ trợ <strong>RAM DDR4 2666 / Dual Channel</strong><br/>', '', 'images/product/product_s300.jpg', 'images/product/product_l300.jpg', 1, 0, '2020-07-28 14:04:26', '2020-07-28 14:07:51', 'vn', 12000000),
(301, 'loa1', 'Loa Nước 3D', 184, '', 'Chất liệu: <strong>Nhựa ABS + Acrylic chất lượng cao</strong><br/>\r\n Chiều dài cáp: <strong>1m</strong><br/>\r\n Màu sắc: <strong>Trắng – Đen</strong><br/>\r\n Điện áp: <strong>DC 4.5V – 5V</strong><br/>\r\n Công suất: <strong>3W + 3W</strong><br/>\r\n<strong> Jack cắm 3.5mm </strong><br/>', '', 'images/product/product_s301.jpg', 'images/product/product_l301.jpg', 1, 0, '2020-07-28 14:07:43', '2020-07-28 14:07:43', 'vn', 400000),
(302, 'pin1', 'Pin sạc dự phòng', 178, '', 'Hãng sản xuất: <strong>Samsung</strong><br/>\r\nDung lượng: <strong>20000mAh</strong><br/>\r\nSạc nhanh: <strong>QC 3.0 Power</strong><br/>\r\n2 Cổng sạc: <strong>USB TyPe-C </strong><br/>', '', 'images/product/product_s302.jpg', 'images/product/product_l302.jpg', 1, 0, '2020-07-28 14:14:15', '2020-07-28 14:14:15', 'vn', 1000000),
(303, 'ram1', 'RAM PC Kingmax 16GB DDR4 2666MHz', 178, '', 'Dung lượng: <strong>16GB</strong><br/>\r\nBuss <strong>2666 Mhz</strong><br/>\r\nKiểu ram: <strong>DDR4</strong><br/>\r\nSố chân <strong>288 pins</strong><br/>\r\nPC <strong>c21.3GB/se</strong><br/>\r\nCAS Latency: <strong>CL19 - 1.2v - Un-buffered DIMM</strong><br/>', '', 'images/product/product_s303.jpg', 'images/product/product_l303.jpg', 2, 0, '2020-07-28 14:17:22', '2020-07-28 14:17:22', 'vn', 1800000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE `tbl_product_category` (
  `id` int(11) NOT NULL,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(1, NULL, 'Danh mục gốc', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'vn', 'Việt nam', 1, '', '', '', NULL, NULL, 0, 0, '2008-03-24 08:36:30', '2008-03-27 10:29:34', 'vn'),
(77, '', 'Sản phẩm ', 2, '', '', '', NULL, NULL, 1, 0, '2008-12-17 08:43:26', '2009-10-13 11:44:49', 'vn'),
(174, '', 'Máy Bộ', 77, '', '', '', NULL, NULL, 1, 0, '2020-07-28 13:31:05', '2020-07-28 13:31:05', 'vn'),
(175, '', 'Máy tính xách tay (Laptop)', 77, '', '', '', NULL, NULL, 2, 0, '2020-07-28 13:32:19', '2020-07-28 13:32:19', 'vn'),
(176, '', 'Linh kiện PC', 77, '', '', '', NULL, NULL, 3, 0, '2020-07-28 13:32:46', '2020-07-28 13:32:46', 'vn'),
(177, '', 'Màn hình', 77, '', '', '', NULL, NULL, 4, 0, '2020-07-28 13:33:01', '2020-07-28 13:33:01', 'vn'),
(178, '', 'Phụ kiện Laptop', 77, '', '', '', NULL, NULL, 5, 0, '2020-07-28 13:33:21', '2020-07-28 13:33:21', 'vn'),
(179, '', 'Thiết bị văn phòng', 77, '', '', '', NULL, NULL, 6, 0, '2020-07-28 13:33:43', '2020-07-28 13:33:43', 'vn'),
(180, '', 'Thiết bị mạng', 77, '', '', '', NULL, NULL, 7, 0, '2020-07-28 13:34:13', '2020-07-28 13:34:13', 'vn'),
(181, '', 'USB', 77, '', '', '', NULL, NULL, 8, 0, '2020-07-28 13:34:22', '2020-07-28 13:34:22', 'vn'),
(182, '', 'Bàn phím', 77, '', '', '', NULL, NULL, 9, 0, '2020-07-28 13:34:34', '2020-07-28 13:34:34', 'vn'),
(183, '', 'Chuột', 77, '', '', '', NULL, NULL, 10, 0, '2020-07-28 13:34:44', '2020-07-28 13:34:44', 'vn'),
(184, '', 'Loa', 77, '', '', '', NULL, NULL, 11, 0, '2020-07-28 13:34:53', '2020-07-28 13:34:53', 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_new`
--

CREATE TABLE `tbl_product_new` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_new`
--

INSERT INTO `tbl_product_new` (`id`, `product_id`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(84, 293, 0, 0, '2020-07-25 23:27:17', '2020-07-25 23:27:17', 'vn'),
(85, 294, 0, 0, '2020-07-25 23:29:48', '2020-07-25 23:29:48', 'vn'),
(86, 295, 0, 0, '2020-07-25 23:40:51', '2020-07-25 23:40:51', 'vn'),
(87, 296, 0, 0, '2020-07-25 23:43:48', '2020-07-25 23:43:48', 'vn'),
(88, 297, 0, 0, '2020-07-25 23:54:54', '2020-07-25 23:54:54', 'vn'),
(89, 298, 0, 0, '2020-07-26 00:08:40', '2020-07-26 00:08:40', 'vn'),
(90, 299, 0, 0, '2020-07-26 00:12:08', '2020-07-26 00:12:08', 'vn'),
(83, 292, 0, 0, '2020-07-25 23:08:34', '2020-07-25 23:08:34', 'vn'),
(91, 300, 0, 0, '2020-07-28 14:04:47', '2020-07-28 14:04:47', 'vn'),
(92, 301, 0, 0, '2020-07-28 14:08:11', '2020-07-28 14:08:11', 'vn'),
(93, 302, 0, 0, '2020-07-28 14:14:18', '2020-07-28 14:14:18', 'vn'),
(94, 303, 0, 0, '2020-07-28 14:17:25', '2020-07-28 14:17:25', 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_special`
--

CREATE TABLE `tbl_product_special` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `uid`, `pwd`) VALUES
(1, 'admin', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitor`
--

CREATE TABLE `tbl_visitor` (
  `session_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member` enum('y','n') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'n',
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_config`
--
ALTER TABLE `tbl_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_content`
--
ALTER TABLE `tbl_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_content_category`
--
ALTER TABLE `tbl_content_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_new`
--
ALTER TABLE `tbl_product_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_special`
--
ALTER TABLE `tbl_product_special`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_visitor`
--
ALTER TABLE `tbl_visitor`
  ADD PRIMARY KEY (`session_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_config`
--
ALTER TABLE `tbl_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_content`
--
ALTER TABLE `tbl_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `tbl_content_category`
--
ALTER TABLE `tbl_content_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;
--
-- AUTO_INCREMENT for table `tbl_product_new`
--
ALTER TABLE `tbl_product_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `tbl_product_special`
--
ALTER TABLE `tbl_product_special`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
