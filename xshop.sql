-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2022 lúc 11:19 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `ngaybl` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`id`, `noidung`, `iduser`, `idsp`, `ngaybl`) VALUES
(3, 'good', 20, 29, '12:50:22 16/10/2022'),
(5, 'sản phẩm tốt', 0, 32, '06:40:35 16/10/2022'),
(6, 'sản phẩm tốt', 0, 42, '06:41:23 16/10/2022'),
(7, 'hayyy', 0, 34, '06:43:00 16/10/2022'),
(8, 'sản phẩm tốt', 0, 34, '03:27:25 17/10/2022'),
(9, 'good', 20, 34, '09:52:17 19/10/2022'),
(10, 'hayyy', 20, 30, '10:00:17 19/10/2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` int(11) NOT NULL,
  `namedm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `namedm`) VALUES
(51, 'Smart Watch'),
(53, 'Fly cam'),
(55, 'Laptop'),
(62, 'Bàn chải điện'),
(63, 'iPhone'),
(64, 'Chuột máy tính'),
(65, 'Tay cầm chơi game'),
(66, 'Sạc không dây'),
(67, 'Tai nghe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `anhsp` varchar(255) DEFAULT NULL,
  `namesp` varchar(255) DEFAULT NULL,
  `giasp` int(10) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `iduser`, `idsp`, `anhsp`, `namesp`, `giasp`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 1),
(2, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 1),
(3, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 1),
(4, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 2),
(5, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 2),
(6, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 3),
(7, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 3),
(8, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 4),
(9, 20, 34, 'mouse.png', 'Chuột không dây Logitech', 50, 1, 50, 9),
(10, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 9),
(11, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 11),
(12, 20, 33, 'gamepad.png', 'Tay cầm chơi game Terios', 50, 1, 50, 11),
(13, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 13),
(14, 20, 39, 'ip14.png', 'iPhone 14 Promax', 3000, 1, 3000, 14),
(15, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 18),
(16, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 19),
(17, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 20),
(18, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 21),
(19, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 21),
(20, 20, 34, 'mouse.png', 'Chuột không dây Logitech', 50, 1, 50, 22),
(21, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 22),
(22, 20, 41, 'hpvictus16.png', 'Laptop HP Gaming VICTUS 16', 1500, 1, 1500, 23),
(23, 20, 31, 'headphones.png', 'Tai nghe Sony ', 200, 1, 200, 23),
(24, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 24),
(25, 20, 34, 'mouse.png', 'Chuột không dây Logitech', 50, 1, 50, 26),
(26, 20, 41, 'hpvictus16.png', 'Laptop HP Gaming VICTUS 16', 1500, 1, 1500, 26),
(27, 20, 33, 'gamepad.png', 'Tay cầm chơi game Terios', 50, 1, 50, 26),
(37, 20, 41, 'hpvictus16.png', 'Laptop HP Gaming VICTUS 16', 1500, 1, 1500, 36),
(38, 20, 34, 'mouse.png', 'Chuột không dây Logitech', 50, 1, 50, 36),
(39, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(40, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(41, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(42, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(43, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(44, 20, 33, 'gamepad.png', 'Tay cầm chơi game Terios', 50, 1, 50, 36),
(45, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(46, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(47, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(48, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(49, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(50, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 36),
(51, 27, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 37),
(52, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 38),
(53, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 38),
(54, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 39),
(55, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 41),
(56, 20, 41, 'hpvictus16.png', 'Laptop HP Gaming VICTUS 16', 1500, 1, 1500, 41),
(57, 20, 32, 'charging.png', 'Sạc không dây Anker', 150, 1, 150, 41),
(58, 20, 32, 'charging.png', 'Sạc không dây Anker', 150, 1, 150, 42),
(59, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 43),
(61, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 44),
(62, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 44),
(63, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 44),
(64, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 44),
(65, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 44),
(66, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 44),
(67, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 45),
(68, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 45),
(69, 20, 33, 'gamepad.png', 'Tay cầm chơi game Terios', 50, 1, 50, 45),
(74, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 48),
(75, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 48),
(76, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 48),
(77, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 48),
(78, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 48),
(79, 20, 42, 'dareu908.png', 'Chuột máy tính DARE-U EM908', 40, 1, 40, 48),
(80, 20, 34, 'mouse.png', 'Chuột không dây Logitech', 50, 1, 50, 48),
(83, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 50),
(85, 20, 41, 'hpvictus16.png', 'Laptop HP Gaming VICTUS 16', 1500, 1, 1500, 53),
(86, 20, 34, 'mouse.png', 'Chuột không dây Logitech', 50, 1, 50, 54),
(87, 20, 34, 'mouse.png', 'Chuột không dây Logitech', 50, 1, 50, 55),
(88, 20, 41, 'hpvictus16.png', 'Laptop HP Gaming VICTUS 16', 1500, 1, 1500, 55),
(90, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 56),
(91, 20, 43, 'galaxyactive2.png', 'Samsung Galaxy Active 2 ', 300, 1, 300, 56),
(92, 20, 34, 'mouse.png', 'Chuột không dây Logitech', 50, 1, 50, 57),
(93, 20, 32, 'charging.png', 'Sạc không dây Anker', 150, 1, 150, 57),
(94, 20, 34, 'mouse.png', 'Chuột không dây Logitech', 50, 1, 50, 58);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL DEFAULT 0,
  `user` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.Thanh toán khi nhận hàng 2.Chuyển khoản ngân hàng 3.Thanh toán online',
  `ngaydathang` varchar(50) DEFAULT NULL,
  `tongdonhang` int(10) NOT NULL DEFAULT 0,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0.Đơn hàng mới 1.Đang xử lý 2.Đang giao hàng 3.Đã giao hàng',
  `tennhan` varchar(255) DEFAULT NULL,
  `diachinhan` varchar(255) DEFAULT NULL,
  `sdtnhan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `iduser`, `user`, `diachi`, `sdt`, `email`, `pttt`, `ngaydathang`, `tongdonhang`, `trangthai`, `tennhan`, `diachinhan`, `sdtnhan`) VALUES
(57, 20, 'mun', 'Phương Canh, Xuân Phương, Từ Liêm, Hà Nội', '12345', 'mun@gmail.com', 2, '06:53:44am 22/10/2022', 200, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `namesp` varchar(255) NOT NULL,
  `giasp` double(10,2) NOT NULL DEFAULT 0.00,
  `anhsp` varchar(255) DEFAULT NULL,
  `motasp` text DEFAULT NULL,
  `luotxemsp` int(11) DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `namesp`, `giasp`, `anhsp`, `motasp`, `luotxemsp`, `iddm`) VALUES
(27, 'Laptop Dell Inspiron1', 1500.00, 'laptop.png', 'Laptop Dell 2022', 78, 55),
(28, 'DJI Air 2S Flycam', 2000.00, 'flycam.png', 'Fly cam 2022', 0, 53),
(29, 'Đồng hồ thông minh Xiaomi', 300.00, 'smartwacth.png', 'Đồng hồ Xiaomi', 100, 51),
(30, 'Bàn chải điện Seago SG 507', 100.00, 'brush.png', 'bàn chải điện', 200, 62),
(31, 'Tai nghe Sony ', 200.00, 'headphones.png', 'Tai nghe Sony WH-1000xm4', 45, 67),
(32, 'Sạc không dây Anker', 150.00, 'charging.png', 'Sạc không dây Anker', 123, 66),
(33, 'Tay cầm chơi game Terios', 50.00, 'gamepad.png', 'Tay cầm chơi game Terios', 34, 65),
(34, 'Chuột không dây Logitech', 50.00, 'mouse.png', 'Chuột không dây Logitech', 134, 64),
(39, 'iPhone 14 Promax', 3000.00, 'ip14.png', '123scv', 0, 63),
(41, 'Laptop HP Gaming VICTUS 16', 1500.00, 'hpvictus16.png', 'Laptop HP Gaming VICTUS 16 e0170AX R7 5800H/8GB/512GB/4GB RTX3050/144Hz/Win11 (4R0U7PA)', 0, 55),
(42, 'Chuột máy tính DARE-U EM908 update', 60.00, '633acafe0f5c8-306003060_203995465381574_2224164997647840559_n.jpg', 'Thiết kế nhỏ gọn, tinh tế với hệ thống LED RGB tuyệt đẹp, có chất lượng tối ưu', 90, 64),
(43, 'Samsung Galaxy Active 2 update', 300.00, 'galaxyactive2.png', 'Samsung Galaxy Active 2 40mm là dòng đồng hồ thông minh tốt dành cho nữ ', 0, 51);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `vaitro` tinyint(4) NOT NULL DEFAULT 0,
  `anhuser` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `user`, `password`, `email`, `diachi`, `sdt`, `vaitro`, `anhuser`) VALUES
(20, 'mun', '250303', 'mun@gmail.com', 'Phương Canh, Xuân Phương, Từ Liêm, Hà Nội', '12345', 1, ''),
(27, 'min', '250303', 'min@gmail.com', 'Phương Canh, Xuân Phương, Từ Liêm, Hà Nội', '01234768', 0, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_iduser_taikhoan` (`iduser`),
  ADD KEY `lk_idsp_sanpham` (`idsp`),
  ADD KEY `lk_idbill_hoa_don` (`idbill`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_danhmuc_sanpham` (`iddm`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `lk_idsp_sanpham` FOREIGN KEY (`idsp`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `lk_iduser_taikhoan` FOREIGN KEY (`iduser`) REFERENCES `tai_khoan` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `lk_danhmuc_sanpham` FOREIGN KEY (`iddm`) REFERENCES `danh_muc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
