-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 01, 2024 lúc 03:19 PM
-- Phiên bản máy phục vụ: 10.5.23-MariaDB-cll-lve
-- Phiên bản PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tsntgamevnlink_vn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Banks`
--

CREATE TABLE `Banks` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `chutaikhoan` text NOT NULL,
  `sotaikhoan` text NOT NULL,
  `toithieu` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DanhMuc`
--

CREATE TABLE `DanhMuc` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `time_date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `DanhMuc`
--

INSERT INTO `DanhMuc` (`id`, `name`, `image`, `time_date`) VALUES
(1, 'THIẾT KẾ SHOP ROBLOX GIÁ RẺ', 'https://i.imgur.com/8TGsdwH.png', '1699151641');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DanhSachCode`
--

CREATE TABLE `DanhSachCode` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `name` text NOT NULL,
  `theme` text NOT NULL,
  `time` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DanhSachHosting`
--

CREATE TABLE `DanhSachHosting` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `domain` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `package` text DEFAULT NULL,
  `server` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `time` text DEFAULT NULL,
  `orvertime` text DEFAULT NULL,
  `timesuspended` text DEFAULT NULL,
  `taikhoan` text DEFAULT NULL,
  `matkhau` text DEFAULT NULL,
  `lidokhoa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DanhSachLogo`
--

CREATE TABLE `DanhSachLogo` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `name` text NOT NULL,
  `theme` text NOT NULL,
  `status` text NOT NULL,
  `time` text NOT NULL,
  `logo_output` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DanhSachReseller`
--

CREATE TABLE `DanhSachReseller` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `domain` text NOT NULL,
  `email` text NOT NULL,
  `package` text NOT NULL,
  `server` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DanhSachWeb`
--

CREATE TABLE `DanhSachWeb` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `domain` text NOT NULL,
  `taikhoan` text NOT NULL,
  `matkhau` text NOT NULL,
  `status` text NOT NULL,
  `theme` text NOT NULL,
  `time` text NOT NULL,
  `orvertime` text NOT NULL,
  `ghichu` text DEFAULT NULL,
  `timesuspended` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DataCard`
--

CREATE TABLE `DataCard` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `pin` text NOT NULL,
  `serial` text NOT NULL,
  `amount` text NOT NULL,
  `type` text NOT NULL,
  `status` text NOT NULL,
  `time` text NOT NULL,
  `requestid` text NOT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `DataCard`
--

INSERT INTO `DataCard` (`id`, `username`, `pin`, `serial`, `amount`, `type`, `status`, `time`, `requestid`, `date`) VALUES
(2, 'admin', '15498329644249', '51500549374889', '20000', 'VINAPHONE', '0', '1702792753', '8151627858', '17/12/2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Domain`
--

CREATE TABLE `Domain` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `domain` text NOT NULL,
  `ns` text NOT NULL,
  `hsd` text NOT NULL,
  `status` text NOT NULL,
  `time` text NOT NULL,
  `overtime` text NOT NULL,
  `timedelete` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DomainPackages`
--

CREATE TABLE `DomainPackages` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `image` text NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Dots`
--

CREATE TABLE `Dots` (
  `id` int(11) NOT NULL,
  `dot` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `MaGiamGia`
--

CREATE TABLE `MaGiamGia` (
  `id` int(11) NOT NULL,
  `code` text NOT NULL,
  `gioihan` int(11) NOT NULL,
  `luotdung` int(11) NOT NULL,
  `loai` text NOT NULL,
  `amount` text NOT NULL,
  `service` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `MaGiamGia`
--

INSERT INTO `MaGiamGia` (`id`, `code`, `gioihan`, `luotdung`, `loai`, `amount`, `service`) VALUES
(10, '2Y8eIwjlSbiVCSizr83WgiqE16JhIpMQJDwjxCpx', 0, 0, '', '', ''),
(11, 'diWSvgOzLYG4cjWMTIoavqcLWkeQLjmuIuxSsRqN', 111, 0, 'tien', '1111', 'host'),
(12, 'ib5Ba5rot9Rr35eWX5M3RaT4QSIcK5Fz5zp4IItV', 111, 0, 'tien', '1111', 'host'),
(13, 'WXP58Ua6MrZMJIW3vcH7SabQppUsmPq1JNo87XnX', 111, 0, 'tien', '1111', 'host'),
(14, '0VDC0BMFGDfMkVkWz4GFmPuNk82uwZEc4sKNV9ip', 111, 0, 'tien', '1111', 'host'),
(15, 'D8HFG5iaZ1JpV2P13SC42Yea9NqmHZEjlSTJ0kZm', 111, 0, 'tien', '1111', 'host'),
(16, 'dfd', 111, 0, 'tien', '1111', 'host'),
(17, 'dfd', 111, 0, 'tien', '1111', 'host'),
(18, 'dfd', 111, 0, 'tien', '1111', 'host');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `MauLogo`
--

CREATE TABLE `MauLogo` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `MauLogo`
--

INSERT INTO `MauLogo` (`id`, `name`, `image`, `price`) VALUES
(4, 'Mẫu Logo Shop Roblox V1', 'https://i.imgur.com/SjSsjp5.jpg', '10000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `PackageHosting`
--

CREATE TABLE `PackageHosting` (
  `id` int(11) NOT NULL,
  `disk` text NOT NULL,
  `bandwidth` text NOT NULL,
  `addondomain` text NOT NULL,
  `subdomain` text NOT NULL,
  `server` text NOT NULL,
  `package` text NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `danhmuc` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `images` text NOT NULL,
  `price` text NOT NULL,
  `demo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ServerName`
--

CREATE TABLE `ServerName` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `uname` text NOT NULL,
  `ssl_key` text NOT NULL,
  `backup` text NOT NULL,
  `hostname` text NOT NULL,
  `whmusername` text NOT NULL,
  `whmpassword` text NOT NULL,
  `ip` text NOT NULL,
  `nameserver1` text NOT NULL,
  `nameserver2` text NOT NULL,
  `value` text NOT NULL,
  `ghichu` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `SourceCode`
--

CREATE TABLE `SourceCode` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `code` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `System32`
--

CREATE TABLE `System32` (
  `id` int(11) NOT NULL,
  `date_cron` text DEFAULT NULL,
  `partner_id` text DEFAULT NULL,
  `partner_key` text DEFAULT NULL,
  `modal` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `token` text DEFAULT NULL,
  `author` text DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `tokenMomo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `System32`
--

INSERT INTO `System32` (`id`, `date_cron`, `partner_id`, `partner_key`, `modal`, `title`, `description`, `keywords`, `logo`, `token`, `author`, `avatar`, `tokenMomo`) VALUES
(1, NULL, NULL, NULL, NULL, 'SNTGAMECN.SITE', NULL, 'SNTGAMECN', 'https://i.imgur.com/S8zOTDk.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TranIDMomo`
--

CREATE TABLE `TranIDMomo` (
  `id` int(11) NOT NULL,
  `requestid` text NOT NULL,
  `amount` text NOT NULL,
  `comment` text NOT NULL,
  `time` text NOT NULL,
  `nameBank` text NOT NULL,
  `status` text NOT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `monney` text DEFAULT NULL,
  `re_monney` int(255) DEFAULT NULL,
  `total_rechange` int(255) DEFAULT NULL,
  `time` text DEFAULT NULL,
  `level` text DEFAULT NULL,
  `date_online` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Users`
--

INSERT INTO `Users` (`id`, `username`, `password`, `email`, `monney`, `re_monney`, `total_rechange`, `time`, `level`, `date_online`) VALUES
(1, 'admin123', '0192023a7bbd73250516f069df18b500', 'admin123@gmail.com', '0', NULL, NULL, '1707919430', 'admin', '1707919810'),
(2, 'sntgame', '827ccb0eea8a706c4c34a16891f84e7b', 'dvandat09@gmail.com', '0', NULL, NULL, '1709280611', 'admin', '1709281085');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Banks`
--
ALTER TABLE `Banks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DanhMuc`
--
ALTER TABLE `DanhMuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DanhSachCode`
--
ALTER TABLE `DanhSachCode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DanhSachHosting`
--
ALTER TABLE `DanhSachHosting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DanhSachLogo`
--
ALTER TABLE `DanhSachLogo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DanhSachReseller`
--
ALTER TABLE `DanhSachReseller`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DanhSachWeb`
--
ALTER TABLE `DanhSachWeb`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DataCard`
--
ALTER TABLE `DataCard`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Domain`
--
ALTER TABLE `Domain`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DomainPackages`
--
ALTER TABLE `DomainPackages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Dots`
--
ALTER TABLE `Dots`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `MaGiamGia`
--
ALTER TABLE `MaGiamGia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `MauLogo`
--
ALTER TABLE `MauLogo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `PackageHosting`
--
ALTER TABLE `PackageHosting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ServerName`
--
ALTER TABLE `ServerName`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `SourceCode`
--
ALTER TABLE `SourceCode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `System32`
--
ALTER TABLE `System32`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TranIDMomo`
--
ALTER TABLE `TranIDMomo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `Banks`
--
ALTER TABLE `Banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `DanhMuc`
--
ALTER TABLE `DanhMuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `DanhSachCode`
--
ALTER TABLE `DanhSachCode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DanhSachHosting`
--
ALTER TABLE `DanhSachHosting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `DanhSachLogo`
--
ALTER TABLE `DanhSachLogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `DanhSachReseller`
--
ALTER TABLE `DanhSachReseller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `DanhSachWeb`
--
ALTER TABLE `DanhSachWeb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `DataCard`
--
ALTER TABLE `DataCard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `Domain`
--
ALTER TABLE `Domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `DomainPackages`
--
ALTER TABLE `DomainPackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `Dots`
--
ALTER TABLE `Dots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `MaGiamGia`
--
ALTER TABLE `MaGiamGia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `MauLogo`
--
ALTER TABLE `MauLogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `PackageHosting`
--
ALTER TABLE `PackageHosting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `Products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ServerName`
--
ALTER TABLE `ServerName`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `SourceCode`
--
ALTER TABLE `SourceCode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `System32`
--
ALTER TABLE `System32`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `TranIDMomo`
--
ALTER TABLE `TranIDMomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
