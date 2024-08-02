create database SUPPORT_STUDENTS_FINDSCHOOL;
go 
use SUPPORT_STUDENTS_FINDSCHOOL;
go
SELECT * FROM account;
SELECT * FROM news;
SELECT * From school_details;

go
-- Them du lieu bang Account
INSERT INTO [dbo].[account] (account_id, password, user_name) VALUES (1, N'12345', N'admin');
go

-- Them du lieu bang New
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-18', N'VNExpress', N'https://i1-vnexpress.vnecdn.net/2024/07/17/thithpt-39-jpg-1721210228-1721-5698-9626-1721210382.jpg?w=680&h=408&q=100&dpr=1&fit=crop&s=uVhd99Hwbn8Z9g9ptqbNBg', N'https://vnexpress.net/huong-dan-dang-ky-xet-tuyen-dai-hoc-2024-chi-tiet-nhat-4771275.html', N'Thí sinh có 10 ngày đăng ký, điều chỉnh nguyện vọng xét tuyển đại học trên hệ thống của Bộ Giáo dục và Đào tạo, bắt đầu từ ngày 18/7.');
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-18', N'VNExpress', N'https://i1-vnexpress.vnecdn.net/2024/07/17/z5579405325645-d48280e4ea7907c-6888-8180-1721227897.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=U4p3ywg4mXXdv_g4YiqM-A', N'https://vnexpress.net/diem-san-dai-hoc-cong-thuong-tp-hcm-cao-nhat-20-4771344.html', N'Trường Đại học Công thương TP HCM nhận hồ sơ xét tuyển với ba mức điểm sàn là 16, 18 và 20, tùy ngành.');
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-19', N'VNExpress', N'https://i1-vnexpress.vnecdn.net/2024/07/19/thithpt-30-jpg-1721323929-9378-1721323975.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=hvzk75FUft4h_WPlcH0Xew', N'https://vnexpress.net/dai-hoc-cong-nghiep-tp-hcm-lay-diem-san-tu-17-den-19-4771843.html', N'Điểm sàn trường Đại học Công nghiệp TP HCM từ 17 đến 19 với hầu hết ngành, thấp nhất ở phân hiệu Quảng Ngãi.');
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-20', N'Báo Thanh Niên', N'https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/7/20/img3355-17214479958141549924835.jpg', N'https://thanhnien.vn/diem-san-phuong-thuc-xet-diem-thi-tot-nghiep-thpt-truong-dh-su-pham-ky-thuat-tphcm-185240720105813947.htm', N'Trường ĐH Sư phạm kỹ thuật TP.HCM vừa công bố điểm sàn xét tuyển phương thức dựa vào điểm kỳ thi tốt nghiệp THPT năm 2024.');
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-20', N'Báo Thanh Niên', N'https://images2.thanhnien.vn/thumb_w/640/528068263637045248/2024/7/20/img0381-1721451098848522227855.jpg', N'https://thanhnien.vn/nganh-la-tai-truong-dh-hoa-sen-lay-diem-san-xet-tuyen-bao-nhieu-185240720121047771.htm', N'Trường ĐH Hoa Sen vừa thông báo mức điểm sàn xét tuyển đối với phương thức sử dụng kết quả kỳ thi tốt nghiệp THPT năm 2024, đồng thời công bố điểm chuẩn của các phương thức xét tuyển thẳng, xét học bạ và xét điểm thi đánh giá năng lực.');
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-20', N'Tuổi trẻ', N'https://cdn.tuoitre.vn/thumb_w/730/471584752817336320/2024/7/20/nguyen-khac-quoc-bao-17214568918591610533110.jpg', N'https://tuoitre.vn/dang-ky-nguyen-vong-1-the-nao-diem-khong-cao-co-nen-chon-nganh-cntt-20240720134619353.htm', N'Đăng ký nguyện vọng 1 thế nào, điểm không cao có nên chọn ngành công nghệ thông tin?');
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-20', N'Tuổi trẻ', N'https://cdn.tuoitre.vn/thumb_w/730/471584752817336320/2024/7/20/base64-172140987040821345004.jpeg', N'https://tuoitre.vn/hon-70-truong-dai-hoc-hoc-vien-cong-bo-diem-san-xet-diem-thi-tot-nghiep-20240720002811283.htm', N'Tính đến tối 19-7, đã có hơn 70 đại học, trường đại học, học viện công bố điểm sàn xét tuyển dựa vào kết quả thi tốt nghiệp THPT.');
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-20', N'Tiên phong', N'https://image.tienphong.vn/w645/Uploaded/2024/wpqrnvqdn/2024_07_20/6c111eba-815a-4c8e-9cbc-e6079ccbbfa9-6345.jpg', N'https://tienphong.vn/tuyen-sinh-dh-2024-thi-sinh-ban-khoan-dat-cua-xet-tuyen-post1656598.tpo', N'Dù đã có tấm vé vào đại học bằng phương thức xét tuyển sớm nhưng rất nhiều thí sinh vẫn băn khoăn không biết đăng kí nguyện vọng như thế nào cho đúng trên hệ thống tuyển sinh chung của Bộ GD&ĐT.');
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-20', N'Tiên phong', N'https://image.tienphong.vn/w645/Uploaded/2024/xqeioxnexq/2024_07_20/hinh-1-1-5162.jpg', N'https://tienphong.vn/them-nhieu-truong-dh-phia-nam-cong-bo-diem-san-post1656561.tpo', N'Nhiều trường tại khu vực phía Nam như: ĐH Kinh tế TPHCM; Trường ĐH Tôn Đức Thắng; Trường ĐH Nguyễn Tất Thành và Trường ĐH Hoa Sen...đã công bố điểm sàn đối với phương thức xét tuyển dựa vào kết quả thi tốt nghiệp THPT năm 2024.');
INSERT INTO [dbo].[news] (cre_date, created, link_image, link, title) VALUES 
('2024-07-20', N'VNExpress', N'https://i1-vnexpress.vnecdn.net/2024/07/19/thithpt-34-jpg-1721363167-4387-1721363436.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=6ykcar_XwLAa4FwMsXDxiQ', N'https://vnexpress.net/diem-san-dai-hoc-cong-nghe-thong-tin-la-22-4772032.html', N'Trường Đại học Công nghệ thông tin (UIT) lấy điểm sàn 22 cho tất cả ngành, tổ hợp xét tuyển.');


-- them du lieu bang School
INSERT INTO [dbo].[school] (school_id, address, information, phone, shool_name, type_school, website)
VALUES
(1, N'65 Huỳnh Thúc Kháng, Phường Bến Nghé, Q1, TP. Hồ Chí Minh', NULL, N'(028).3821.2360', N'Cao đẳng Kỹ thuật Cao Thắng', N'Công lập', N'http://caothang.edu.vn/'),
(2, N'Trụ sở chính: Số 02 Mai Thị Lựu, Phường Đakao, Quận 1, TP.HCM; Cơ sở đào tạo 1: 30 Nguyễn Văn Dung, Phường 6, Quận Gò Vấp, TP.HCM; Cơ sở đào tạo 2: Khu Đô thị Tây Bắc thành phố, xã Tân An Hội, Huyện Củ Chi, TP.HCM, Việt Nam', NULL, N'028.3822.3758/ 028.3829.9317', N'Cao đẳng Kỹ thuật Nguyễn Trường Tộ', NULL, N'https://www.nguyentruongto.edu.vn/vn/'),
(3, N'390 Hoàng Văn Thụ, Phường 4, Q. Tân Bình, TP. Hồ Chí Minh', NULL, N'028.3811.0521', N'Cao đẳng Lý Tự Trọng thành phố Hồ Chí Minh', N'Công lập', N'http://lttc.edu.vn/'),
(4, N'416 Đường số 10 (số cũ 64/2B Cây Trâm), P.9, Q.Gò vấp, Tp.Hồ Chí Minh', NULL, N'028.3989.3967 / 028.3989.3968', N'Cao đẳng Miền Nam', N'Công lập', N'www.cdmiennam.edu.vn'),
(5, N'347A Nguyễn Thượng Hiền, Phường 11, Quận 10, Tp.HCM; Cơ sở Kỳ Đồng: 20/11C Kỳ Đồng, Phường 9, Quận 3, Tp.HCM; Cơ sở Tam Đảo: TT17 Tam Đảo, Phường 15, Quận 10, Tp.HCM (Trường TCN KT NV Tôn Đức Thắng)', NULL, N'(028) 3834 4856 - 6297 3210 - 6297 3211', N'Cao đẳng nghề Du lịch Sài Gòn', N'Dân lập', N'http://www.dulichsaigon.edu.vn/');
INSERT INTO [dbo].[school] (school_id, address, information, phone, shool_name, type_school, website)
VALUES
(6, N'Số 232 Nguyễn Văn Hưởng, Phường Thảo Điền, Quận 2, Thành Phố Hồ Chí Minh', NULL, N'086.281.8696', N'Cao đẳng Hàng hải II', N'Công lập', N'http://cdhanghai.edu.vn'),
(7, N'Cơ sở 1: Số 235 Hoàng Sa, phường Tân Định, Quận 1, Thành phố Hồ Chí Minh; Cơ sở 2: Số 1, đường 17, phường Linh Chiểu, quận Thủ Đức, Thành phố Hồ Chí Minh', NULL, N'(028).3526.7377', N'Cao đẳng nghề Thành phố Hồ Chí Minh', N'Công lập', N'http://www.caodangnghehcm.edu.vn/'),
(8, N'Tòa nhà SaigonTech (Đường số 5, Lô 14, Công viên Phần Mềm Quang Trung, Quận 12, Tp. HCM)', NULL, N'0968 253 307, (028) 37151998, (028) 37155033', N'Cao đẳng Sài Gòn', N'Công lập', N'http://www.caodangsaigon.edu.vn/'),
(9, N'Số 05 Nam Quốc Cang, P.Phạm Ngũ Lão, Quận 1, TPHCM', NULL, N'0901.234.5678', N'Cao đẳng Văn hóa Nghệ thuật TP.HCM', N'Dân lập', N'http://vhnthcm.edu.vn/'),
(10, N'368/33 Điện Biên Phủ, P.11, Q. Bình Thạnh', NULL, N'(028) 3868 2222', N'Cao đẳng Viễn Đông', N'Công lập', N'https://tuyensinh.viendong.edu.vn/'),
(11, N'251 Điện Biên Phủ, P.7, Q.3', NULL, N'(028) 3930 3933', N'Cao đẳng Xây dựng Tp. Hồ Chí Minh', N'Công lập', N'https://hcmcc.edu.vn/'),
(12, N'53 Nguyễn Văn Trỗi, P.15, Q. Phú Nhuận', NULL, N'(028) 3962 1234', N'Đại học Văn Hiến', N'Công lập', N'https://portal.vhu.edu.vn/login'),
(13, N'111 Điện Biên Phủ, P.Bình Thạnh, Q. Bình Thạnh', NULL, N'(028) 3864 1888', N'Học viện Cán bộ Thành phố Hồ Chí Minh', N'Công lập', N'http://hocviencanbo.hochiminhcity.gov.vn/'),
(14, N'11 Lê Văn Chí, P.6, Q.6', NULL, N'(028) 3732 0488', N'Học viện Công nghệ Bưu chính Viễn thông (Cơ sở phía Nam)', N'Công lập', N'https://portal.ptit.edu.vn/'),
(15, N'817 Phạm Văn Chí, P.6, Q.6', NULL, N'(028) 3726 1234', N'Học viện Thanh thiếu niên Việt Nam', N'Công lập', N'https://vya.edu.vn/'),
(16, N'280/33 Điện Biên Phủ, P.7, Q.3', NULL, N'(028) 3864 3939', N'Khoa Y - ĐHQG TP.HCM', N'Công lập', N'https://med.ump.edu.vn/'),
(17, N'112 Nguyễn Du, Quận 1, Tp.Hồ Chí Minh', NULL, N'(84 8) 38 225 841', N'Nhạc viện Thành phố Hồ Chí Minh', N'Công lập', N'http://hcmcons.vn/'),
(18, N'450-451 Lê Văn Việt, phường Tăng Nhơn Phú A, quận 9, TP. Hồ Chí Minh', NULL, N'(028).3896.6798 - (028).7300.1155', N'Phân hiệu Đại học Giao thông vận tải tại TP.HCM', N'Công lập', N'http://www.utc2.edu.vn/'),
(19, N'Cơ sở chính: Km 18 Xa lộ Hà Nội, P. Linh Trung, Q. Thủ Đức, TP. Hồ Chí Minh.', NULL, N'(028) 3896 2363', N'Đại học An ninh Nhân dân', N'Công lập', N'hvannd.edu.vn'),
(20, N'Cơ sở 1: 268 Lý Thường Kiệt, Phường 14, Quận 10, TP. Hồ Chí Minh.; Cơ sở 2: Khu đô thị Đại học Quốc gia TP.HCM, Linh Trung, Thủ Đức, TP. Hồ Chí Minh.', NULL, N'(028) 3864 7256', N'Đại học Bách Khoa - ĐHQG TP.HCM', N'Công lập', N'hcmut.edu.vn');



-- them du lieu bang school_detail
-- Data for SchoolID 1
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(1, 1, N'Công nghệ Kỹ thuật Điện, Điện tử'),
(2, 1, N'Công nghệ Kỹ thuật Điện tử - Viễn thông (Điện tử, Truyền thông)'),
(3, 1, N'Công nghệ Kỹ thuật Cơ khí'),
(4, 1, N'Công nghệ Kỹ thuật Ô tô'),
(5, 1, N'Công nghệ Thông tin'),
(6, 1, N'Công nghệ Kỹ thuật Nhiệt (Cơ điện lạnh)'),
(7, 1, N'Công nghệ Kỹ thuật Cơ điện tử'),
(8, 1, N'Công nghệ Kỹ thuật Điều khiển và Tự động hóa'),
(9, 1, N'Kế toán doanh nghiệp (2,5 năm)'),
(10, 1, N'Cơ khí chế tạo'),
(11, 1, N'Sửa chữa cơ khí'),
(12, 1, N'Hàn (Công nghệ cao - 2.5 năm)'),
(13, 1, N'Kỹ thuật máy lạnh và điều hòa không khí'),
(14, 1, N'Bảo trì, sửa chữa Ô tô'),
(15, 1, N'Điện công nghiệp'),
(16, 1, N'Điện tử công nghiệp'),
(17, 1, N'Quản trị mạng máy tính'),
(18, 1, N'Kỹ thuật sửa chữa, lắp ráp máy tính');

-- Data for SchoolID 2
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(19, 2, N'Phát triển phần mềm'),
(20, 2, N'Quản trị mạng'),
(21, 2, N'Thiết kế đồ họa'),
(22, 2, N'Điện công nghiệp'),
(23, 2, N'Điện tử công nghiệp'),
(24, 2, N'Cơ khí chế tạo'),
(25, 2, N'Cơ khí ô tô'),
(26, 2, N'Cơ điện tử'),
(27, 2, N'Công nghệ kỹ thuật nhiệt lạnh'),
(28, 2, N'Công nghệ kỹ thuật xây dựng'),
(29, 2, N'Quản lý xây dựng'),
(30, 2, N'Kế toán doanh nghiệp'),
(31, 2, N'Quản trị doanh nghiệp vừa và nhỏ'),
(32, 2, N'Quản trị khách sạn'),
(33, 2, N'Quản trị dịch vụ du lịch và lữ hành');

-- Data for SchoolID 3
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(34, 3, N'Phát triển phần mềm'),
(35, 3, N'Quản trị mạng máy tính'),
(36, 3, N'Điện công nghiệp'),
(37, 3, N'Điện tử công nghiệp'),
(38, 3, N'Tự động hóa công nghiệp'),
(39, 3, N'Cơ khí chế tạo máy'),
(40, 3, N'Cơ khí ô tô'),
(41, 3, N'Cơ điện tử'),
(42, 3, N'Công nghệ hàn'),
(43, 3, N'Công nghệ kỹ thuật nhiệt lạnh'),
(44, 3, N'Công nghệ kỹ thuật xây dựng'),
(45, 3, N'Công nghệ kỹ thuật giao thông'),
(46, 3, N'Kế toán doanh nghiệp'),
(47, 3, N'Quản trị kinh doanh tổng hợp'),
(48, 3, N'Quản trị dịch vụ du lịch và lữ hành'),
(49, 3, N'Công nghệ chế biến thực phẩm'),
(50, 3, N'Công nghệ kỹ thuật môi trường');

-- Data for SchoolID 4
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(51, 4, N'Công nghệ ô tô'),
(52, 4, N'Công nghệ thông tin'),
(53, 4, N'Dược'),
(54, 4, N'Điều dưỡng'),
(55, 4, N'Kỹ thuật xét nghiệm y học'),
(56, 4, N'Kế toán'),
(57, 4, N'Quản trị kinh doanh'),
(58, 4, N'Tài chính ngân hàng'),
(59, 4, N'Công nghệ kỹ thuật công trình xây dựng'),
(60, 4, N'Quản lý đất đai'),
(61, 4, N'Thiết kế nội thất'),
(62, 4, N'Công nghệ kỹ thuật kiến trúc'),
(63, 4, N'Dịch vụ pháp lý'),
(64, 4, N'Quản trị dịch vụ du lịch và lữ hành'),
(65, 4, N'Quản trị khách sạn'),
(66, 4, N'Quản trị nhà hàng và dịch vụ ăn uống'),
(67, 4, N'Tin học ứng dụng'),
(68, 4, N'Quan hệ công chúng'),
(69, 4, N'Quản lý nhà đất');

-- Data for SchoolID 5
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(70, 5, N'Quản trị khách sạn và quản trị lữ hành'),
(71, 5, N'Hướng dẫn du lịch'),
(72, 5, N'Kỹ thuật chế biến món ăn');

-- Data for SchoolID 6
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(73, 6, N'Điều khiển tàu biển và khai thác máy tàu biển'),
(74, 6, N'Kỹ thuật xây dựng công trình giao thông'),
(75, 6, N'Công nghệ kỹ thuật điện, điện tử'),
(76, 6, N'Công nghệ thông tin'),
(77, 6, N'Quản trị kinh doanh vận tải biển và Logistics, quản lý chuỗi cung ứng');

-- Data for SchoolID 7
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(78, 7, N'Công nghệ kỹ thuật ô tô'),
(79, 7, N'Kỹ thuật cơ điện tử'),
(80, 7, N'Kỹ thuật cơ khí'),
(81, 7, N'Kỹ thuật điện'),
(82, 7, N'Kỹ thuật điều khiển và tự động hóa'),
(83, 7, N'Kỹ thuật điện tử viễn thông'),
(84, 7, N'Kỹ thuật môi trường'),
(85, 7, N'Kỹ thuật xây dựng');

-- Data for SchoolID 8
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(86, 8, N'Công nghệ thông tin'),
(87, 8, N'Điều khiển và tự động hóa'),
(88, 8, N'Kỹ thuật điện tử và truyền thông'),
(89, 8, N'Kinh doanh và quản trị doanh nghiệp'),
(90, 8, N'Tiếng Anh và phiên dịch thương mại');

-- Data for SchoolID 9
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(91, 9, N'Nghệ thuật và Văn hóa');

-- Data for SchoolID 10
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(92, 10, N'Công nghệ thông tin'),
(93, 10, N'Kỹ thuật điện tử'),
(94, 10, N'Quản trị kinh doanh'),
(95, 10, N'Kế toán - Kiểm toán');

-- Data for SchoolID 11
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(96, 11, N'Xây dựng dân dụng'),
(97, 11, N'Cầu đường'),
(98, 11, N'Kỹ thuật xây dựng'),
(99, 11, N'Quản lý công trình');

-- Data for SchoolID 12
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(100, 12, N'Kế toán - Kiểm toán'),
(101, 12, N'Quản trị kinh doanh'),
(102, 12, N'Marketing'),
(103, 12, N'Ngôn ngữ Anh'),
(104, 12, N'Công nghệ thông tin');

-- Data for SchoolID 13
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(105, 13, N'Quản trị nhà nước'),
(106, 13, N'Hành chính công'),
(107, 13, N'Quản lý công');

-- Data for SchoolID 14
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(108, 14, N'Giáo dục mầm non'),
(109, 14, N'Giáo dục tiểu học');

-- Data for SchoolID 15
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(110, 15, N'Luật học'),
(111, 15, N'Luật kinh tế');

-- Data for SchoolID 16
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(112, 16, N'Công nghệ sinh học'),
(113, 16, N'Kỹ thuật môi trường');

-- Data for SchoolID 17
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(114, 17, N'Y học cổ truyền'),
(115, 17, N'Điều dưỡng'),
(116, 17, N'Dược học');
-- Data for SchoolID 18
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(117, 18, N'Kỹ thuật xây dựng công trình giao thông'),
(118, 18, N'Kỹ thuật xây dựng công trình dân dụng và công nghiệp'),
(119, 18, N'Kỹ thuật xây dựng công trình thủy'),
(120, 18, N'Công nghệ kỹ thuật giao thông'),
(121, 18, N'Quản lý xây dựng'),
(122, 18, N'Quản lý giao thông vận tải');

-- Data for SchoolID 19
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(123, 19, N'An ninh điều tra'),
(124, 19, N'Kỹ thuật hình sự'),
(125, 19, N'Quản lý nhà nước về an ninh trật tự'),
(126, 19, N'Công nghệ thông tin trong an ninh');

-- Data for SchoolID 20
INSERT INTO [dbo].[school_details] (detail_id, school_id, major) VALUES
(127, 20, N'Khoa học Máy tính và Kỹ thuật Máy tính'),
(128, 20, N'Kỹ thuật Điện - Điện tử'),
(129, 20, N'Kỹ thuật Cơ khí'),
(130, 20, N'Kỹ thuật Hóa học'),
(131, 20, N'Kỹ thuật Môi trường'),
(132, 20, N'Kỹ thuật Vật liệu'),
(133, 20, N'Kỹ thuật Xây dựng'),
(134, 20, N'Công nghệ Thực phẩm'),
(135, 20, N'Kỹ thuật Năng lượng và Kỹ thuật Tự động hóa'),
(136, 20, N'Kỹ thuật Giao thông Vận tải'),
(137, 20, N'Quản lý Công nghiệp'),
(138, 20, N'Công nghệ Thông tin');







-------------------------------------
-- them du lieu bang major
INSERT INTO [dbo].[major] (major_id, major_name)
VALUES
(1, N'Nghệ thuật'),
(2, N'Mỹ thuật ứng dụng'),
(3, N'Nhân văn'),
(4, N'Ngôn ngữ, văn học và văn hóa nước ngoài'),
(5, N'Khoa học xã hội và hành vi'),
(6, N'Pháp luật'),
(7, N'Khoa học sự sống'),
(8, N'Máy tính và công nghệ thông tin'),
(9, N'Công nghệ kỹ thuật'),
(10, N'Kỹ thuật'),
(11, N'Kiến trúc và xây dựng'),
(12, N'Nông, lâm nghiệp và thủy sản'),
(13, N'Sức khoẻ'),
(14, N'Dịch vụ xã hội'),
(15, N'Du lịch, khách sạn, thể thao và dịch vụ cá nhân'),
(16, N'Môi trường và bảo vệ môi trường'),
(17, N'An ninh, Quốc phòng'),
(18, N'Thiết kế đồ họa'),
(19, N'Quản trị kinh doanh'),
(20, N'Logistics'),
(21, N'Kế toán - Thống kê'),
(22, N'Truyền thông đa phương tiện'),
(23, N'Cơ khí'),
(24, N'Điện - Điện tử');




--- them du lieu bang major_school

INSERT INTO [dbo].[major_school] (major_school_id, major_id, point, school_id) VALUES
('IT1', 8, 25.5, 1),
('ET1', 9, 27.0, 1),
('E1', 10, 20.0, 1),
('IT2', 8, 15.0, 2),
('ET2', 9, 15.0, 2),
('E2', 10, 15.0, 2),
('IT3', 8, 15.0, 3),
('ET3', 9, 15.0, 3),
('E3', 10, 15.0, 3),
('ASC3', 11, 15.0, 3),
('FL4', 4, 15.0, 4),
('LAW4', 6, 15.0, 4),
('IT4', 8, 15.0, 4),
('ET4', 9, 15.0, 4),
('E4', 10, 15.0, 4),
('THS5', 15, 15.0, 5),
('IT6', 8, 15.0, 6),
('ET6', 9, 15.0, 6),
('E6', 10, 15.0, 6),
('IT7', 8, 15.0, 7),
('ET7', 9, 15.0, 7),
('E7', 10, 15.0, 7),
('IT8', 8, 15.0, 8),
('ET8', 9, 15.0, 8),
('E8', 10, 15.0, 8),
('ASC8', 11, 15.0, 8),
('THS8', 15, 15.0, 8),
('ART9', 1, 15.0, 9),
('AFA9', 2, 15.0, 9),
('E10', 9, 15.0, 10),
('ET10', 8, 15.0, 10),
('TKDH10', 18, 15.0, 10),
('THS10', 15, 15.0, 10),
('HS10', 14, 15.0, 10),
('QTKD10', 19, 15.0, 10),
('LOGS10', 20, 15.0, 10),
('AM10', 21, 15.0, 10),
('LAW10', 6, 15.0, 10),
('FL10', 4, 15.0, 10),
('A&C11', 11, 15.0, 11),
('AM12', 21, 23.0, 12),
('QTKD12', 19, 17.0, 12),
('MKT12', 24, 23.0, 12),
('IT12', 8, 16.15, 12),
('FL12', 4, 23.51, 12),
('SPD13', 17, 22.5, 13),
('LAW13', 6, 23.5, 13),
('LS13', 5, 21.5, 13),
('ET14', 9, 18.0, 14),
('IT14', 8, 25.01, 14),
('AM14', 21, 20.0, 14),
('MKT14', 24, 25.8, 14),
('LAW15', 6, 22.0, 15),
('SBS15', 5, 17.0, 15),
('HS15', 13, 21.0, 15),
('HS161', 13, 22.5, 16),
('HS162', 13, 22.5, 16),
('HS163', 13, 22.5, 16),
('HS164', 13, 22.5, 16),
('SC171', 1, 20.0, 17),
('SC172', 1, 20.0, 17),
('SC173', 1, 20.0, 17),
('SC174', 1, 20.0, 17),
('SC181', 10, 24.0, 18),
('SC182', 19, 23.90, 18),
('SC183', 16, 18.0, 18),
('SC184', 11, 22.0, 18),
('SC191', 17, 19.0, 19),
('SC192', 17, 21.0, 19),
('SC193', 19, 20.0, 19),
('SC194', 8, 23.0, 19),
('SC201', 8, 24.0, 20),
('SC202', 24, 17.0, 20),
('SC203', 23, 21.0, 20),
('SC204', 10, 19.0, 20),
('SC205', 10, 22.0, 20),
('SC206', 10, 20.0, 20),
('SC207', 10, 18.0, 20),
('SC208', 12, 25.0, 20),
('SC209', 10, 23.0, 20),
('SC210', 10, 24.0, 20),
('SC211', 11, 22.0, 20),
('SC212', 8, 20.0, 20);


--- them du lieu bang mass
INSERT INTO [dbo].[mass] (massid, mass_name)
VALUES
('A00', N'Toán, Vật lý, Hóa học'),
('A01', N'Toán, Vật lý, Tiếng Anh'),
('A02', N'Toán, Vật lí , Sinh học'),
('A03', N'Toán, Vật lý, Lịch sử'),
('A04', N'Toán, Vật lý, Địa lí'),
('A05', N'Toán, Hóa học, Lịch sử'),
('A06', N'Toán, Hóa học, Địa lí'),
('A07', N'Toán, Lịch sử, Địa lí'),
('A08', N'Toán, Lịch sử, Giáo dục công dân'),
('A09', N'Toán, Địa lí, Giáo dục công dân'),
('A10', N'Toán, Vật lý, Giáo dục công dân'),
('A11', N'Toán, Hóa học, Giáo dục công dân'),
('A12', N'Toán, Khoa học tự nhiên, Khoa học xã hội'),
('A14', N'Toán, Khoa học tự nhiên, Địa lí'),
('A15', N'Toán, Khoa học tự nhiên, Giáo dục công dân'),
('A16', N'Toán, Khoa học tự nhiên, Văn'),
('A17', N'Toán, Khoa học xã hội, Vật lý'),
('A18', N'Toán, Khoa học xã hội, Hóa học'),
('B00', N'Toán, Hóa học, Sinh học'),
('B01', N'Toán, Sinh học, Lịch sử'),
('B02', N'Toán, Sinh học, Địa lí'),
('B03', N'Toán, Sinh học, Văn'),
('B04', N'Toán, Sinh học, Giáo dục công dân'),
('B05', N'Toán, Sinh học, Khoa học xã hội'),
('B08', N'Toán, Sinh học, Tiếng Anh'),
('C00', N'Văn, Lịch sử, Địa lí'),
('C01', N'Văn, Toán, Vật lí'),
('C02', N'Văn, Toán, Hóa học'),
('C03', N'Văn, Toán, Lịch sử'),
('C04', N'Văn, Toán, Địa lí'),
('C05', N'Văn, Vật lí, Hóa học'),
('C06', N'Văn, Vật lí, Sinh học'),
('C07', N'Văn, Vật lí, Lịch sử'),
('C08', N'Văn, Hóa học, Sinh'),
('C09', N'Văn, Vật lí, Địa lí'),
('C10', N'Văn, Hóa học, Lịch sử'),
('C12', N'Văn, Sinh học, Lịch sử'),
('C13', N'Văn, Sinh học, Địa'),
('C14', N'Văn, Toán, Giáo dục công dân'),
('C15', N'Văn, Toán, Khoa học xã hội'),
('C16', N'Văn, Vật lí, Giáo dục công dân'),
('C17', N'Văn, Hóa học, Giáo dục công dân'),
('C18', N'Văn, Sinh học, Giáo dục công dân'),
('C19', N'Văn, Lịch sử, Giáo dục công dân'),
('C20', N'Văn, Địa lí, Giáo dục công dân'),
('D01', N'Văn, Toán, tiếng Anh'),
('D02', N'Văn, Toán, tiếng Nga'),
('D03', N'Văn, Toán, tiếng Pháp'),
('D04', N'Văn, Toán, tiếng Trung'),
('D05', N'Văn, Toán, Tiếng Đức'),
('D06', N'Văn, Toán, Tiếng Nhật'),
('D07', N'Toán, Hóa học, Tiếng Anh'),
('D08', N'Toán, Sinh học, Tiếng Anh'),
('D09', N'Toán, Lịch sử, Tiếng Anh'),
('D10', N'Toán, Địa lí, Tiếng Anh'),
('D11', N'Văn, Vật lí, Tiếng Anh'),
('D12', N'Văn, Hóa học, Tiếng Anh'),
('D13', N'Văn, Sinh học, Tiếng Anh'),
('D14', N'Văn, Lịch sử, Tiếng Anh');



-- them du lieu bang mass_major
INSERT INTO [dbo].[mass_major] (mass_major, major_id, massid) VALUES
(1, 1, 'A00'),
(2, 1, 'A01'),
(3, 1, 'A02'),
(4, 1, 'A03'),
(5, 2, 'A04'),
(6, 2, 'A05'),
(7, 2, 'A06'),
(8, 3, 'A07'),
(9, 3, 'A08'),
(10, 3, 'A09'),
(11, 3, 'A10'),
(12, 4, 'A11'),
(13, 4, 'A12'),
(14, 4, 'A14'),
(15, 4, 'A15'),
(16, 5, 'A16'),
(17, 5, 'A17'),
(18, 5, 'A18'),
(19, 6, 'B00'),
(20, 6, 'B01'),
(21, 6, 'B02'),
(22, 6, 'B03'),
(23, 7, 'B04'),
(24, 7, 'B05'),
(25, 7, 'B08'),
(26, 8, 'C00'),
(27, 8, 'C01'),
(28, 8, 'C02'),
(29, 9, 'C03'),
(30, 9, 'C04'),
(31, 9, 'C05'),
(32, 10, 'C06'),
(33, 10, 'C07'),
(34, 10, 'C08'),
(35, 11, 'C09'),
(36, 11, 'C10'),
(37, 11, 'C12'),
(38, 11, 'C13'),
(39, 12, 'C14'),
(40, 12, 'C15'),
(41, 12, 'C16'),
(42, 13, 'C17'),
(43, 13, 'C18'),
(44, 13, 'C19'),
(45, 14, 'C20'),
(46, 14, 'D01'),
(47, 14, 'D02'),
(48, 15, 'D03'),
(49, 15, 'D04'),
(50, 15, 'D05'),
(51, 15, 'D06'),
(52, 16, 'D07'),
(53, 16, 'D08'),
(54, 16, 'D09'),
(55, 17, 'D10'),
(56, 17, 'D11'),
(57, 17, 'D12'),
(58, 18, 'D13'),
(59, 18, 'D14'),
(60, 18, 'A00'),
(61, 19, 'A01'),
(62, 19, 'A02'),
(63, 19, 'A03'),
(64, 20, 'A04'),
(65, 20, 'A05'),
(66, 20, 'A06'),
(67, 21, 'A07'),
(68, 21, 'A08'),
(69, 21, 'A09'),
(70, 22, 'A10'),
(71, 22, 'A11'),
(72, 22, 'A12'),
(73, 22, 'A14'),
(74, 23, 'A15'),
(75, 23, 'A16'),
(76, 23, 'A17'),
(77, 24, 'A18'),
(78, 24, 'B00'),
(79, 24, 'B01');
