/*
 Navicat Premium Data Transfer

 Source Server         : SEP490
 Source Server Type    : SQL Server
 Source Server Version : 16004105 (16.00.4105)
 Source Host           : 14.225.205.28:1436
 Source Catalog        : abc
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 16004105 (16.00.4105)
 File Encoding         : 65001

 Date: 24/05/2024 23:12:00
*/


-- ----------------------------
-- Table structure for Account
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type IN ('U'))
	DROP TABLE [dbo].[Account]
GO

CREATE TABLE [dbo].[Account] (
  [AccountId] int  IDENTITY(1,1) NOT NULL,
  [UserName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [IsDone] bit  NULL,
  [CreateDate] datetime  NULL,
  [ProgressId] int  NULL,
  [Status] bit  NOT NULL,
  [ProfilePicture] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [RoleId] int  NOT NULL,
  [FullName] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [PhoneNumber] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Account] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Account
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Account] ON
GO

INSERT INTO [dbo].[Account] ([AccountId], [UserName], [Password], [Email], [IsDone], [CreateDate], [ProgressId], [Status], [ProfilePicture], [RoleId], [FullName], [PhoneNumber], [Description]) VALUES (N'1', N'tun', N'123a', N'tunkieu9@gmail.com', NULL, NULL, NULL, N'1', NULL, N'4', N'Nguyen Tuan t', N'0838920599', NULL)
GO

INSERT INTO [dbo].[Account] ([AccountId], [UserName], [Password], [Email], [IsDone], [CreateDate], [ProgressId], [Status], [ProfilePicture], [RoleId], [FullName], [PhoneNumber], [Description]) VALUES (N'2', N'admin', N'$2a$11$8DyeaSHCDggZVqAX3qSMf.zRf/a7c3YCfypA1nnbEKLIJ3A8sSbvO', N'abc@gmail.com', N'1', N'2024-01-03 10:33:48.000', NULL, N'1', N'Default_pfp.svg.png', N'1', N' Nguyen Viet', N'083892059a', NULL)
GO

INSERT INTO [dbo].[Account] ([AccountId], [UserName], [Password], [Email], [IsDone], [CreateDate], [ProgressId], [Status], [ProfilePicture], [RoleId], [FullName], [PhoneNumber], [Description]) VALUES (N'3', N'viet2', N'$2a$11$U5HfWFdNjHl7wyMNttOQYusOyOkk9Nz86tKfqScxJf2gCgYuxAqHy', N'viet@gmail.com', NULL, NULL, NULL, N'1', N'Default_pfp.svg.png', N'2', N'Nguyễn Hoàng VIệt', N'0838920598', NULL)
GO

INSERT INTO [dbo].[Account] ([AccountId], [UserName], [Password], [Email], [IsDone], [CreateDate], [ProgressId], [Status], [ProfilePicture], [RoleId], [FullName], [PhoneNumber], [Description]) VALUES (N'4', N'tunt', N'123a', N'khanhnche153409@fpt.edu.vn', NULL, NULL, NULL, N'1', N'Default_pfp.svg.png', N'4', N'Nguyen Tuan Tu', N'091234565676', N'Ban 365 ')
GO

INSERT INTO [dbo].[Account] ([AccountId], [UserName], [Password], [Email], [IsDone], [CreateDate], [ProgressId], [Status], [ProfilePicture], [RoleId], [FullName], [PhoneNumber], [Description]) VALUES (N'6', N'KienNT', N'$2a$11$SVq1QimnOXO5p0.C/mCeNuYj5ifMguZCumkiBBtw.vz/q6wvhlWZa', N'kiennt@fe.edu.vn', NULL, NULL, NULL, N'1', N'Default_pfp.svg.png', N'3', N'Nguyen Trung Kien', N'0838920599', NULL)
GO

INSERT INTO [dbo].[Account] ([AccountId], [UserName], [Password], [Email], [IsDone], [CreateDate], [ProgressId], [Status], [ProfilePicture], [RoleId], [FullName], [PhoneNumber], [Description]) VALUES (N'2052', N'viet123', N'Psof1lvF', N'vietnhhe150036@fpt.edu.vn', NULL, NULL, NULL, N'1', N'Default_pfp.svg.png', N'2', N'Nguyen Hoang Viet', N'0987654321', NULL)
GO

INSERT INTO [dbo].[Account] ([AccountId], [UserName], [Password], [Email], [IsDone], [CreateDate], [ProgressId], [Status], [ProfilePicture], [RoleId], [FullName], [PhoneNumber], [Description]) VALUES (N'2054', N'tunthe150687', N'$2a$11$LmB/aMqbupYOVdMno0uOQeUU9MFBJ.jOL.EwJeOosIlPia4CEjq8i', N'tunthe150687@fpt.edu.vn', NULL, NULL, NULL, N'1', N'Default_pfp.svg.png', N'4', N'Nguyen Tuan Tu', N'', NULL)
GO

INSERT INTO [dbo].[Account] ([AccountId], [UserName], [Password], [Email], [IsDone], [CreateDate], [ProgressId], [Status], [ProfilePicture], [RoleId], [FullName], [PhoneNumber], [Description]) VALUES (N'2059', N'tungvxhe150247', N'$2a$11$jTX41DHStdKunz4Cxr8uw.mYLNYLj/mM9CgWp5W13vewJKCeu0fsm', N'tungvxhe150247@fpt.edu.vn', NULL, NULL, NULL, N'1', N'52297610_1526610644138796_7618731762117509120_n.jpg', N'4', N'Vu Xuan Tung', N'0918588509', NULL)
GO

INSERT INTO [dbo].[Account] ([AccountId], [UserName], [Password], [Email], [IsDone], [CreateDate], [ProgressId], [Status], [ProfilePicture], [RoleId], [FullName], [PhoneNumber], [Description]) VALUES (N'2063', N'datpthe150862', N'$2a$11$rvm20cavJPuQuiFiV5waIOui0prp8qkubgEq8nf8abckTCMuKWx.m', N'datpthe150862@fpt.edu.vn', NULL, NULL, NULL, N'1', N'Default_pfp.svg.png', N'4', N'Pham Tien', N'', NULL)
GO

SET IDENTITY_INSERT [dbo].[Account] OFF
GO


-- ----------------------------
-- Table structure for AnswerOption
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AnswerOption]') AND type IN ('U'))
	DROP TABLE [dbo].[AnswerOption]
GO

CREATE TABLE [dbo].[AnswerOption] (
  [AnswerOptionId] int  IDENTITY(1,1) NOT NULL,
  [ExamKnowledgeId] int  NULL,
  [AnswerOption] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [isKey] bit  NULL
)
GO

ALTER TABLE [dbo].[AnswerOption] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AnswerOption
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AnswerOption] ON
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1877', N'22', N'A. Thiếu tổ chức', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1878', N'22', N'B. Pháp lý bảo vệ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1879', N'22', N'C. Chiến lược rõ ràng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1880', N'22', N'D. Dễ bị đàn áp', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1881', N'23', N'A. Tập hợp cách mạng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1882', N'23', N'B. Truyền bá chủ nghĩa CS', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1883', N'23', N'C. Xây dựng mạng tín nhiệm', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1884', N'23', N'D. Tổ chức chuẩn bị', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1885', N'24', N'A. Nền tảng cho sự hình thành', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1886', N'24', N'B. Lãnh đạo cuộc đấu tranh', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1887', N'24', N'C. Đồng thời xây dựng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1888', N'24', N' D. Hỗ trợ phát triển', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1889', N'25', N'A. Bối cảnh lịch sử bất ổn', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1890', N'25', N'B. Sự bùng nổ chủ nghĩa CS', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1891', N'25', N' C. Lãnh đạo tài ba', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1892', N'25', N' D. Phát triển của Đảng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1893', N'26', N'A. Lịch sử phát triển ', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1894', N'26', N'B. Tổ chức của Đảng ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1895', N'26', N'C. Hoạt động của Đảng ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1896', N'26', N'D. Tất cả các phần trên', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1897', N'27', N' A. Truyền đạt kiến thức ', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1898', N'27', N'B. Hiểu sâu về sự hình thành', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1899', N'27', N'C. Phát triển của Đảng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1900', N'27', N'  D. Nhận thức chính trị', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1901', N'28', N'A. Nghiên cứu tư liệu', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1902', N'28', N'B. Phân tích và so sánh', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1903', N'28', N'C. Thảo luận và trao đổi', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1904', N'28', N'D. Tất cả các phương pháp', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1905', N'29', N' A. Hiểu biết về lịch sử', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1906', N'29', N' B. Vận động cách mạng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1907', N'29', N'C. Hỗ trợ phát triển', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1908', N'29', N'D. Nhận thức chính trị', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1909', N'30', N' A. Đánh dấu sự bắt đầu', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1910', N'30', N' B. Phong trào cách mạng ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1911', N'30', N'C. Sự hình thành Đảng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1912', N'30', N'D. Chủ lực tại Việt Nam', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1913', N'31', N' A. Chủ nghĩa Mác-Lênin', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1914', N'31', N'B. Tư tưởng Nho giáo', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1915', N'31', N'C. Văn hóa Pháp', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1916', N'31', N'D. Chủ nghĩa tư bản', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1917', N'32', N'A. Khi ông sang Pháp', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1918', N'32', N'B. Khi ông ra đi tìm đường cứu nước', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1919', N'32', N'C. Khi ông tham gia Đảng Xã hội Pháp', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1920', N'32', N'D. Khi ông trở về Việt Nam', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1921', N'33', N'A. Giải phóng dân tộc', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1922', N'33', N'B. Phát triển kinh tế', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1923', N'33', N'C. Thúc đẩy văn hóa', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1924', N'33', N'D. Cả ba giá trị trên', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1925', N'34', N'A. Chỉ riêng Việt Nam', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1926', N'34', N'B. Chỉ riêng châu Á ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1927', N'34', N'C. Ảnh hưởng toàn cầu', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1928', N'34', N'D. Chỉ riêng các nước thuộc địa', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1929', N'35', N'A. Chủ nghĩa Mác-Lênin', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1930', N'35', N'B. Tư tưởng dân chủ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1931', N'35', N'C. Tư tưởng giải phóng dân tộc', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1932', N'35', N'D. Cả ba tư tưởng trên', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1933', N'36', N'A. Kinh nghiệm cách mạng Pháp', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1934', N'36', N'B. Kinh nghiệm cách mạng Nga', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1935', N'36', N'C. Chủ nghĩa yêu nước', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1936', N'36', N'D. Cả ba yếu tố trên', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1937', N'37', N'A. Phải dùng bạo lực cách mạng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1938', N'37', N'B. Phải dựa vào sự giúp đỡ quốc tế', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1939', N'37', N'C. Phải đoàn kết dân tộc', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1940', N'37', N'D. Phải cải cách kinh tế', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1941', N'38', N'A. Văn hóa Đông Tây', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1942', N'38', N'B. Văn hóa cổ truyền', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1943', N'38', N'C. Văn hóa cách mạng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1944', N'38', N'D. Văn hóa phương Tây', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1945', N'39', N'A. Đoàn kết nội bộ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1946', N'39', N'B. Phát triển kinh tế', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1947', N'39', N'C. Nâng cao đạo đức cách mạng', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1948', N'39', N'D. Cải cách hành chính', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1953', N'41', N'A. Tạo niềm tin cho các dân tộc bị áp bức', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1954', N'41', N'B. Xây dựng kinh tế ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1955', N'41', N'C. Phát triển văn hóa', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1956', N'41', N'D. Hỗ trợ giáo dục', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1967', N'45', N'A. Tự kiểm điểm và phê bình', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1968', N'45', N' B. Tập trung dân chủ', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1969', N'45', N'C. Tự do phát triển', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1970', N'45', N'D. Cải cách chính trị	', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1971', N'46', N'A. Tạm thời', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1972', N'46', N'B. Quyết định', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1973', N'46', N'C. Phụ thuộc', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1974', N'46', N'D. Gián tiếp', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1975', N'47', N'A. Tư tưởng dân chủ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1976', N'47', N'B. Chủ nghĩa Marx-Lenin', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1977', N'47', N'C. Tư tưởng tự do', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1978', N'47', N'D. Chủ nghĩa tư bản', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1979', N'48', N'A. Cải tổ và thay đổi', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1980', N'48', N'B. Đổi mới tư duy', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1981', N'48', N'C. Kiểm điểm và phê bình', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1982', N'48', N'D. Tự do hoạt động', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1983', N'49', N'A. Lãnh đạo và chỉ huy', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1984', N'49', N'B. Gần gũi và tin cậy ', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1985', N'49', N'C. Độc lập và tách biệt ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1986', N'49', N'D. Hợp tác và thống nhất', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1987', N'50', N'A. Đảm bảo quyền lợi cho Đảng viên', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1988', N'50', N'B. Đảm bảo sự lãnh đạo lâu dài', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1989', N'50', N'C. Đảm bảo niềm tin của nhân dân ', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1990', N'50', N'D. Đảm bảo phát triển kinh tế', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1991', N'51', N'A. Mục tiêu thứ yếu ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1992', N'51', N'B. Mục tiêu hàng đầu', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1993', N'51', N'C. Mục tiêu tạm thời', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1994', N'51', N'D. Mục tiêu lâu dài', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1995', N'52', N'A. Tư tưởng cá nhân', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1996', N'52', N'B. Chủ nghĩa Marx-Lenin', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1997', N'52', N'C. Tư tưởng dân chủ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1998', N'52', N'D. Tư tưởng cải cách', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'1999', N'53', N'A. Quan trọng ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2000', N'53', N'B. Quyết định', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2001', N'53', N'C. Hỗ trợ ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2002', N'53', N'D. Phụ thuộc', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2003', N'54', N'A. Giành độc lập dân tộc', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2004', N'54', N' B. Xây dựng chủ nghĩa xã hội', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2005', N'54', N'C. Nâng cao đời sống nhân dân', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2006', N'54', N'D. Phát triển kinh tế', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2007', N'55', N' A. Luôn cải cách', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2008', N'55', N'B. Luôn đổi mới ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2009', N'55', N'C. Luôn kiểm điểm và phê bình', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2010', N'55', N'D. Luôn cải tổ chính trị', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2210', N'60', N'Yes', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2211', N'60', N'No', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2212', N'61', N'This file will be opened to append data', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2213', N'61', N'It will be overwritten', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2214', N'61', N'A System.lO.IOException is thrown', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2215', N'62', N'Application_EndO', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2216', N'62', N'Application_Start()', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2217', N'62', N'Session_Start()', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2218', N'63', N'False', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2219', N'63', N'True', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2220', N'64', N'StatusBar', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2221', N'64', N'Label', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2222', N'64', N'ComboBox', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2223', N'65', N'Session', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2224', N'65', N'Cookie', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2225', N'65', N'Application', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2226', N'66', N'<major>.<minor>.<build>.<revision>', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2227', N'66', N'<major>.<minor>.<revision>', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2228', N'66', N'<major>.<minor>.<revision>.<build>', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2405', N'117', N'A. Giáo dục toàn diện về đức, trí, thể, mỹ.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2406', N'117', N'B. Giáo dục kỹ năng nghề nghiệp.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2407', N'117', N'C. Giáo dục chuyên sâu về khoa học công nghệ.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2408', N'117', N'D. Giáo dục chính trị tư tưởng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2413', N'119', N' DatabaseHelper', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2414', N'119', N'Entity', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2415', N'119', N'Repository ', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2416', N'119', N'DAO', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2417', N'120', N'SQlite database', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2418', N'120', N'Shared Preferences', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2419', N'120', N'Cursor', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2420', N'121', N'A. Phương pháp nghiên cứu các tài liệu, văn kiện gốc của Hồ Chí Minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2421', N'121', N'B. Phương pháp suy luận và phân tích tư tưởng của Hồ Chí Minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2422', N'121', N'C. Phương pháp kết hợp giữa nghiên cứu lý luận và thực tiễn.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2423', N'121', N'D. Tất cả các phương pháp trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2424', N'122', N'A. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2425', N'122', N'B. Tư tưởng Hồ Chí Minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2426', N'122', N'C. Thực tiễn cách mạng Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2427', N'122', N'D. Tất cả các yếu tố trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2428', N'123', N'A. Vì nó cung cấp nền tảng lý luận cho đường lối và chính sách của Đảng và Nhà nước.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2429', N'123', N'B. Vì nó là cơ sở để xây dựng hệ thống giáo dục hiện đại.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2430', N'123', N'C. Vì nó là nền tảng cho việc phát triển kinh tế thị trường.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2431', N'123', N'D. Vì nó giúp phát triển du lịch.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2432', N'124', N'A. Phân tích các sự kiện lịch sử có liên quan đến cuộc đời và hoạt động của Hồ Chí Minh.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2433', N'124', N'B. Đánh giá các thành tựu kinh tế.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2434', N'124', N'C. Nghiên cứu về các thành tựu khoa học.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2435', N'124', N'D. Tất cả các đáp án trên.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2436', N'125', N'A. Phân tích các văn bản, bài viết và diễn văn của Hồ Chí Minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2437', N'125', N'B. Phân tích các tác phẩm văn học của Hồ Chí Minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2438', N'125', N'C. Phân tích các bài giảng của Hồ Chí Minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2439', N'125', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2440', N'126', N'A. Phương pháp so sánh đối chiếu.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2441', N'126', N'B. Phương pháp định lượng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2442', N'126', N'C. Phương pháp phỏng vấn trực tiếp.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2443', N'126', N'D. Phương pháp khảo sát thực địa.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2444', N'127', N'A. Nghiên cứu lý luận.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2445', N'127', N'B. Nghiên cứu thực tiễn.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2446', N'127', N'C. Nghiên cứu lịch sử.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2447', N'127', N'D. Tất cả các yếu tố trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2448', N'128', N'A. Hiểu rõ hơn về tư tưởng và quan điểm của Hồ Chí Minh.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2449', N'128', N'B. Xây dựng các chính sách kinh tế.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2450', N'128', N'C. Đưa ra các giải pháp kỹ thuật.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2451', N'128', N'D. Phát triển ngành du lịch.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2452', N'129', N'A. Phương pháp phân tích nội dung.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2453', N'129', N'B. Phương pháp thực nghiệm.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2454', N'129', N'C. Phương pháp mô hình hóa.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2455', N'129', N'D. Phương pháp thống kê.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2456', N'130', N'A. Góp phần nâng cao nhận thức chính trị cho cán bộ, đảng viên và nhân dân.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2457', N'130', N'B. Góp phần phát triển kinh tế xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2458', N'130', N'C. Góp phần xây dựng các công trình hạ tầng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2459', N'130', N'D. Góp phần phát triển công nghệ thông tin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2460', N'131', N'A. Nâng cao nhận thức về lịch sử và văn hóa dân tộc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2461', N'131', N'B. Rèn luyện phẩm chất đạo đức cách mạng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2462', N'131', N'C. Định hướng tư tưởng và hành động theo lý tưởng cách mạng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2463', N'131', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2464', N'132', N'A. Góp phần xây dựng và bảo vệ Tổ quốc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2465', N'132', N'B. Tạo nền tảng cho sự phát triển bền vững.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2466', N'132', N'C. Định hướng chiến lược phát triển kinh tế, chính trị, văn hóa, xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2467', N'132', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2468', N'133', N'A. Giúp hình thành và phát triển những phẩm chất đạo đức tốt đẹp.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2469', N'133', N'B. Định hướng lối sống lành mạnh, có ích cho xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2470', N'133', N'C. Góp phần xây dựng con người mới, con người xã hội chủ nghĩa.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2471', N'133', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2472', N'134', N'A. Xây dựng nền giáo dục toàn diện về đức, trí, thể, mỹ.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2473', N'134', N'B. Phát triển giáo dục gắn với thực tiễn.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2474', N'134', N'C. Đào tạo những con người vừa hồng vừa chuyên.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2475', N'134', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2476', N'135', N'A. Kỹ năng tư duy phản biện.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2477', N'135', N'B. Kỹ năng làm việc nhóm.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2478', N'135', N'C. Kỹ năng lãnh đạo và quản lý.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2479', N'135', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2480', N'136', N'A. Giúp đào tạo, bồi dưỡng đội ngũ cán bộ có đạo đức và năng lực.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2481', N'136', N'B. Xây dựng đội ngũ cán bộ trung thành với lý tưởng cách mạng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2482', N'136', N'C. Nâng cao phẩm chất chính trị và trình độ chuyên môn của cán bộ.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2483', N'136', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2484', N'137', N'A. Định hướng phát triển kinh tế - xã hội theo hướng công nghiệp hóa, hiện đại hóa.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2485', N'137', N'B. Đề cao sự phát triển bền vững và công bằng xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2486', N'137', N'C. Khuyến khích tinh thần tự lực, tự cường và sáng tạo của nhân dân.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2487', N'137', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2488', N'138', N'A. Nâng cao ý thức và trách nhiệm bảo vệ độc lập, chủ quyền, toàn vẹn lãnh thổ.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2489', N'138', N'B. Tạo nền tảng tư tưởng vững chắc cho sự nghiệp bảo vệ Tổ quốc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2490', N'138', N'C. Khơi dậy lòng yêu nước và tinh thần dân tộc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2491', N'138', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2492', N'139', N'A. Góp phần xây dựng xã hội dân chủ, công bằng, văn minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2493', N'139', N'B. Thúc đẩy sự phát triển văn hóa, xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2494', N'139', N'C. Tạo động lực cho sự tiến bộ của cộng đồng và quốc gia.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2495', N'139', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2496', N'140', N'A. Định hướng phát triển kinh tế dựa trên nền tảng khoa học và công nghệ.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2497', N'140', N'B. Xây dựng nền kinh tế thị trường định hướng xã hội chủ nghĩa.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2498', N'140', N'C. Phát triển nguồn nhân lực chất lượng cao, đáp ứng yêu cầu của thời kỳ mới.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2499', N'140', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2500', N'141', N'A. Truyền thống văn hóa của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2501', N'141', N'B. Tinh hoa văn hóa nhân loại.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2502', N'141', N'C. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2503', N'141', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2504', N'142', N'A. Tư tưởng phương Đông cổ điển.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2505', N'142', N'B. Chủ nghĩa Marx-Lenin.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2506', N'142', N'C. Tư tưởng dân chủ phương Tây.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2507', N'142', N'D. Tư tưởng Phật giáo.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2508', N'143', N'A. Tinh thần yêu nước và đoàn kết dân tộc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2509', N'143', N'B. Truyền thống lao động cần cù.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2510', N'143', N'C. Truyền thống hiếu học.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2511', N'143', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2512', N'144', N'A. Truyền thống yêu nước Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2513', N'144', N'B. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2514', N'144', N'C. Các phong trào giải phóng dân tộc trên thế giới.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2515', N'144', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2516', N'145', N'A. Nho giáo và Đạo giáo.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2517', N'145', N'B. Tư tưởng dân chủ phương Tây.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2518', N'145', N'C. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2519', N'145', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2520', N'146', N'A. Truyền thống yêu nước và đoàn kết của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2521', N'146', N'B. Chủ nghĩa quốc tế vô sản.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2522', N'146', N'C. Kinh nghiệm từ các phong trào cách mạng trên thế giới.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2523', N'146', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2524', N'147', N'A. Tư tưởng dân chủ của phương Tây.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2525', N'147', N'B. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2526', N'147', N'C. Truyền thống chính trị và pháp lý của Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2527', N'147', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2528', N'148', N'A. Truyền thống yêu nước của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2529', N'148', N'B. Chủ nghĩa Marx-Lenin.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2530', N'148', N'C. Sự đoàn kết quốc tế.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2531', N'148', N'D. Ý chí tự lực tự cường của nhân dân.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2532', N'149', N'A. Truyền thống yêu nước của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2533', N'149', N'B. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2534', N'149', N'C. Tinh thần quốc tế vô sản.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2535', N'149', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2536', N'150', N'A. Tinh thần tự học và hiếu học của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2537', N'150', N'B. Tư tưởng giáo dục của phương Tây.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2538', N'150', N'C. Tư tưởng giáo dục của chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2539', N'150', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2540', N'151', N'A. Building websites', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2541', N'151', N'B. Developing mobile apps', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2542', N'151', N'C. Creating video games', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2543', N'151', N'D. Editing photos', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2544', N'152', N'A. Python', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2545', N'152', N'B. JAVA', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2546', N'152', N'C. C#', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2547', N'152', N'D. HTML', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2548', N'153', N'A. Windows only', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2549', N'153', N'B. IOS only', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2550', N'153', N'C. Android only', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2551', N'153', N'D. Multiple platforms including Windows, iOS, and Android', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2552', N'154', N'A. Visual Basic', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2553', N'154', N'B. UnityScript', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2554', N'154', N'C. Blueprints', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2555', N'154', N'D. Bolt', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2556', N'155', N'A. Sprite Renderer', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2557', N'155', N'B. Mesh Renderer', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2558', N'155', N'C. Texture Renderer', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2559', N'155', N'D. Model Renderer', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2560', N'156', N'A. A type of light source', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2561', N'156', N'B. A pre-made 3D model', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2562', N'156', N'C. A reusable game object template', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2563', N'156', N'D. A type of camera effect', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2564', N'157', N'A. Occlusion Culling', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2565', N'157', N'B. Ray Tracing', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2566', N'157', N'C. Ambient Occlusion', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2567', N'157', N'D. Normal Mapping', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2568', N'158', N'A. Rigidbody', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2569', N'158', N'B. Collider', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2570', N'158', N'C. Gravity', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2571', N'158', N'D. Joint', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2572', N'159', N'A. A 3D model', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2573', N'159', N'B. A single level or environment in a game', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2574', N'159', N'C. A type of camera angle', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2575', N'159', N'D. A texture map', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2576', N'160', N'A. Epic Games', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2577', N'160', N'B. Blizzard Entertainment', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2578', N'160', N'C. Unity Technologies', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2579', N'160', N'D. Valve Corporation', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2580', N'161', N'A. Chiến tranh thế giới thứ nhất.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2581', N'161', N'B. Chiến tranh thế giới thứ hai.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2582', N'161', N'C. Cuộc đấu tranh giải phóng dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2583', N'161', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2584', N'162', N'A. 1911', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2585', N'162', N'B. 1920', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2586', N'162', N'C. 1930', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2587', N'162', N'D. 1941', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2588', N'163', N'A. Tìm hiểu chủ nghĩa Marx-Lenin.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2589', N'163', N'B. Tham gia Quốc tế Cộng sản.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2590', N'163', N'C. Thành lập Đảng Cộng sản Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2591', N'163', N'D. Tham dự Đại hội Quốc tế Cộng sản lần thứ V.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2592', N'164', N'A. 1918', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2593', N'164', N'B. 1919', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2594', N'164', N'C. 1920', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2595', N'164', N'D. 1921', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2596', N'165', N'A. 1920', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2597', N'165', N'B. 1921', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2598', N'165', N'C. 1922', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2599', N'165', N'D. 1923', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2600', N'166', N'A. 1919', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2601', N'166', N'B. 1920', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2602', N'166', N'C. 1921', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2603', N'166', N'D. 1922', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2604', N'167', N'A. 1921', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2605', N'167', N'B. 1922', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2606', N'167', N'C. 1923', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2607', N'167', N'D. 1924', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2608', N'168', N'A. Đường Kách Mệnh', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2609', N'168', N'B. Bản án chế độ thực dân Pháp', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2610', N'168', N'C. Tuyên ngôn Độc lập', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2611', N'168', N'D. Nhật ký trong tù', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2612', N'169', N'A. Hội Việt Nam Cách mạng Thanh niên', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2613', N'169', N'B. Đảng Cộng sản Đông Dương', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2614', N'169', N'C. Hội Liên hiệp các dân tộc bị áp bức', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2615', N'169', N'D. Mặt trận Việt Minh', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2616', N'170', N'A. Hội Việt Nam Cách mạng Thanh niên', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2617', N'170', N'B. Đảng Cộng sản Đông Dương', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2618', N'170', N'C. Việt Nam Độc lập Đồng minh Hội (Việt Minh)', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2619', N'170', N'D. Mặt trận Tổ quốc Việt Nam', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2620', N'171', N'A. Designing levels', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2621', N'171', N'B. Writing code', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2622', N'171', N'C. Concept and idea generation', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2623', N'171', N'D. Marketing the game', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2624', N'172', N'A. Debugging the game', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2625', N'172', N'B. Creating game assets', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2626', N'172', N'C. Developing the game story', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2627', N'172', N'D. User testing', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2628', N'173', N'A. Technical specification', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2629', N'173', N'B. Design document', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2630', N'173', N'C. Storyboard', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2631', N'173', N'D. Game design document (GDD)', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2632', N'174', N'A. Pre-production', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2633', N'174', N'B. Production', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2634', N'174', N'C. Post-production', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2635', N'174', N'D. Testing', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2636', N'175', N'A. Finalizing game assets', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2637', N'175', N'B. Testing game mechanics and ideas', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2638', N'175', N'C. Launching the game', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2639', N'175', N'D. Marketing the game', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2640', N'176', N'A. Pre-production', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2641', N'176', N'B. Production', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2642', N'176', N'C. Post-production', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2643', N'176', N'D. Concept and idea generation', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2644', N'177', N'A. High-resolution graphics', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2645', N'177', N'B. Detailed character backgrounds and plot development', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2646', N'177', N'C. Advanced coding skills', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2647', N'177', N'D. Marketing strategies', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2648', N'178', N'A. Complex user interfaces', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2649', N'178', N'B. Engaging and relatable characters', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2650', N'178', N'C. Sophisticated programming languages', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2651', N'178', N'D. Detailed game physics', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2652', N'179', N'A. To develop the final code', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2653', N'179', N'B. To create the game’s marketing plan', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2654', N'179', N'C. To visually plan the narrative and sequences', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2655', N'179', N'D. To debug the game', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2656', N'180', N'A. It helps in designing the game’s logo', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2657', N'180', N'B. It provides insights for improving gameplay and fixing issues', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2658', N'180', N'C. It determines the price of the game', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2659', N'180', N'D. It finalizes the game''s genre', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2700', N'181', N'A. A type of variable', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2701', N'181', N'B. A container for components', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2702', N'181', N'C. A specific type of script', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2703', N'181', N'D. A graphic asset', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2704', N'182', N'A. A sound file', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2705', N'182', N'B. A part of a GameObject that defines its behavior and appearance', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2706', N'182', N'C. A type of camera', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2707', N'182', N'D. A 3D model', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2708', N'183', N'A. A 3D model', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2709', N'183', N'B. A type of animation', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2710', N'183', N'C. A 2D image used for characters, backgrounds, and other visual elements', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2711', N'183', N'D. A sound effect', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2712', N'184', N'A. A code script', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2713', N'184', N'B. A sequence of images or frames', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2714', N'184', N'C. A type of GameObject', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2715', N'184', N'D. A physics component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2716', N'185', N'A. A script function', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2717', N'185', N'B. A specific frame in an animation that defines the start or end of a transition', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2718', N'185', N'C. A type of collider', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2719', N'185', N'D. A UI element', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2720', N'186', N'A. Sound effects', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2721', N'186', N'B. A reusable GameObject template', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2722', N'186', N'C. Camera settings', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2723', N'186', N'D. Shader programs', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2724', N'187', N'A. A visual asset', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2725', N'187', N'B. A piece of code that controls the behavior of GameObjects', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2726', N'187', N'C. A sound effect', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2727', N'187', N'D. A 3D model', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2728', N'188', N'A. A single level or environment in a game', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2729', N'188', N'B. A 3D model', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2730', N'188', N'C. A type of component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2731', N'188', N'D. A physics simulation', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2732', N'189', N'A. Only 3D models', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2733', N'189', N'B. Any file that can be used in a game, including images, sounds, and scripts', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2734', N'189', N'C. Only scripts', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2735', N'189', N'D. Only sound files', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2736', N'190', N'A. A type of GameObject that defines the viewpoint through which the player sees the game', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2737', N'190', N'B. A sound component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2738', N'190', N'C. A 2D sprite', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2739', N'190', N'D. A physics object', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2740', N'191', N'A. Adding sound to a GameObject', NULL)
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2741', N'191', N'B. Defining the position, rotation, and scale of a GameObject', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2742', N'191', N'C. Creating animationss', NULL)
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2743', N'191', N'D. Rendering 2D sprites', NULL)
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2744', N'192', N'A. Modify the position values in the Transform component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2745', N'192', N'B. Change the color of the GameObject', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2746', N'192', N'C. Modify the rotation values in the Transform component', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2747', N'192', N'D. Adjust the scale values in the Transform component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2748', N'193', N'A. Transform.RotateAround', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2749', N'193', N'B. Transform.Translate', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2750', N'193', N'C. Transform.Scale', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2751', N'193', N'D. Transform.Move', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2752', N'194', N'A. A type of light source', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2753', N'194', N'B. A reusable game object template', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2754', N'194', N'C. A type of animation', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2755', N'194', N'D. A physics material', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2756', N'195', N'A. By selecting "Save As" from the File menu', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2757', N'195', N'B. By dragging the GameObject from the Hierarchy window to the Project window', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2758', N'195', N'C. By right-clicking the GameObject and selecting "Create Prefab"', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2759', N'195', N'D. By selecting "Save Prefab" from the GameObject menu', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2760', N'196', N'A. By copying and pasting the Prefab', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2761', N'196', N'B. By dragging the Prefab from the Project window to the Scene view or Hierarchy window', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2762', N'196', N'C. By creating a new GameObject and assigning the Prefab to it', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2763', N'196', N'D. By scripting a method to instantiate the Prefab', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2764', N'197', N'A. Instantiate()', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2765', N'197', N'B. Create()', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2766', N'197', N'C. Generate()', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2767', N'197', N'D. New()', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2768', N'198', N'A. By passing position and rotation parameters to the Instantiate() method', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2769', N'198', N'B. By setting the Transform component after instantiation', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2770', N'198', N'C. By using the Translate method', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2771', N'198', N'D. By modifying the Mesh Renderer component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2772', N'199', N'A. They are automatically applied to the Prefab asset', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2773', N'199', N'B. They are lost when the Scene is reloaded', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2774', N'199', N'C. They do not affect the Prefab asset unless explicitly applied', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2775', N'199', N'D. They permanently alter the Prefab asset', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2776', N'200', N'A. By selecting the Prefab instance and choosing "Apply" in the Inspector window', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2777', N'200', N'B. By re-saving the Scene', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2778', N'200', N'C. By manually editing the Prefab file', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2779', N'200', N'D. By re-importing the Prefab asset', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2840', N'215', N'A. Truyền thống văn hóa của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2841', N'215', N'B. Tinh hoa văn hóa nhân loại.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2842', N'215', N'C. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2843', N'215', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2844', N'216', N'A. Tư tưởng phương Đông cổ điển.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2845', N'216', N'B. Chủ nghĩa Marx-Lenin.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2846', N'216', N'C. Tư tưởng dân chủ phương Tây.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2847', N'216', N'D. Tư tưởng Phật giáo.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2848', N'217', N'A. Tinh thần yêu nước và đoàn kết dân tộc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2849', N'217', N'B. Truyền thống lao động cần cù.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2850', N'217', N'C. Truyền thống hiếu học.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2851', N'217', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2852', N'218', N'A. Truyền thống yêu nước Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2853', N'218', N'B. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2854', N'218', N'C. Các phong trào giải phóng dân tộc trên thế giới.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2855', N'218', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2856', N'219', N'A. Nho giáo và Đạo giáo.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2857', N'219', N'B. Tư tưởng dân chủ phương Tây.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2858', N'219', N'C. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2859', N'219', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2860', N'220', N'A. Truyền thống yêu nước và đoàn kết của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2861', N'220', N'B. Chủ nghĩa quốc tế vô sản.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2862', N'220', N'C. Kinh nghiệm từ các phong trào cách mạng trên thế giới.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2863', N'220', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2864', N'221', N'A. Tư tưởng dân chủ của phương Tây.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2865', N'221', N'B. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2866', N'221', N'C. Truyền thống chính trị và pháp lý của Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2867', N'221', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2868', N'222', N'A. Truyền thống yêu nước của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2869', N'222', N'B. Chủ nghĩa Marx-Lenin.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2870', N'222', N'C. Sự đoàn kết quốc tế.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2871', N'222', N'D. Ý chí tự lực tự cường của nhân dân.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2872', N'223', N'A. Truyền thống yêu nước của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2873', N'223', N'B. Chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2874', N'223', N'C. Tinh thần quốc tế vô sản.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2875', N'223', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2876', N'224', N'A. Tinh thần tự học và hiếu học của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2877', N'224', N'B. Tư tưởng giáo dục của phương Tây.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2878', N'224', N'C. Tư tưởng giáo dục của chủ nghĩa Marx-Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'2879', N'224', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3153', N'246', N'Lý luận và kinh nghiệm các cuộc cách mạng điển hình phương Tây', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3154', N'246', N'Kinh nghiệm các cuộc cách mạng điển hình ở phương Đông', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3155', N'246', N'Lý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3212', N'40', N'Delegates', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3213', N'40', N'Buttons', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3214', N'40', N'Methods', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3215', N'40', N'Threads', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3216', N'44', N'DefaultButton', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3217', N'44', N'OkButton', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3218', N'44', N'AcceptButton', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3219', N'44', N'EnterButton', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3234', N'4', N'A. Frameworks', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3235', N'4', N'B. System', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3236', N'4', N'C. Script', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3237', N'4', N'D. All of the above', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3248', N'261', N'1911 đến 1930', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3249', N'261', N'1911 đến 1920', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3250', N'261', N'1911 đến 1935', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3251', N'261', N'1930 đến 1945', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3252', N'235', N'Văn hoá dân chủ, tiến bộ của Đức', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3253', N'235', N'Văn hoá dân chủ, tiến bộ của Pháp', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3254', N'235', N'Văn hoá dân chủ, tiến bộ của Nga', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3255', N'235', N'Văn hóa dân chủ, tiến bộ của Anh', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3256', N'236', N'1911-1912', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3257', N'236', N'1912-1913', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3258', N'236', N'1914-1917', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3259', N'236', N'1911-1915', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3260', N'237', N'Tiếng Anh', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3261', N'237', N'Tiếng Pháp', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3262', N'237', N'Tiếng Trung', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3263', N'237', N'Tiếng Nga', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3264', N'238', N'Chống phong kiến', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3265', N'238', N'Đấu tranh vì tự do, dân chủ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3266', N'238', N'Phù hợp với điều kiện thực tế nước ta', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3267', N'239', N'Vận dụng và phát triển sáng tạo chủ nghĩa Mác- Lênin', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3268', N'239', N'Tiếp thu toàn bộ chủ nghĩa Mác-Lênin', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3269', N'239', N'Tiếp thu một bộ phận của chủ nghĩa Mác-Lênin', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3270', N'240', N'Tư tưởng văn hoá dân chủ và cách mạng của cách mạng Pháp và cách mạng Mỹ', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3271', N'240', N'Những mặt tích cực của Nho Giáo', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3272', N'240', N'Chủ nghĩa Tam dân của Tôn Trung Sơn', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3273', N'241', N'3', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3274', N'241', N'4', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3275', N'241', N'5', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3276', N'241', N'6', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3277', N'242', N'Chủ nghĩa Mác - Lênin là nền tảng tư tưởng, kim chỉ nam cho hành động của Đảng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3278', N'242', N'Tư tưởng Hồ Chí Minh là nền tảng tư tưởng, kim chỉ nam cho hành động của Đảng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3279', N'242', N'Cùng với chủ nghĩa Mác - Lênin, tư tưởng Hồ Chí Minh là nền tảng tư tưởng và kim chỉ nam cho hành động của Đảng ta', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3280', N'243', N'1911 đến 1920', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3281', N'243', N'1921 đến 1930', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3282', N'243', N'1890 đến 1911', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3283', N'244', N'1925', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3284', N'244', N'1927', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3285', N'244', N'1924', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3286', N'245', N'Lý luận và kinh nghiệm các cuộc cách mạng điển hình phương Tây', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3287', N'245', N'Kinh nghiệm các cuộc cách mạng điển hình ở phương Đông', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3288', N'245', N'Lý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3567', N'268', N'A. By adjusting the Transform component directly', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3568', N'268', N'B. By setting the GameObject''s velocity or using AddForce() with a Rigidbody2D component', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3569', N'268', N'C. By changing the GameObject''s tag', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3570', N'268', N'D. By modifying the Animator component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3571', N'201', N'A. By changing its color', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3572', N'201', N'B. By using the Translate method', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3573', N'201', N'C. By using the Vector3.Lerp method', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3574', N'201', N'D. By adjusting the camera settings', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3575', N'202', N'A. Box Collider', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3576', N'202', N'B. Mesh Renderer', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3577', N'202', N'C. Rigidbody2D', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3578', N'202', N'D. Animator', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3579', N'203', N'A. UpdatePosition()', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3580', N'203', N'B. Input.GetAxis()', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3581', N'203', N'C. GetKey()', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3582', N'203', N'D. MoveToPosition()', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3583', N'204', N'A. By writing a custom script', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3584', N'204', N'B. By selecting the GameObject, then adding the Rigidbody2D component from the Inspector', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3585', N'204', N'C. By changing the object''s tag', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3586', N'204', N'D. By modifying the project''s settings', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3587', N'206', N'A. By adjusting the Transform component directly', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3588', N'206', N'B. By setting the GameObject''s velocity or using AddForce() with a Rigidbody2D component', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3589', N'206', N'C. By changing the GameObject''s tag', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3590', N'206', N'D. By modifying the Animator component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3591', N'264', N'A. By adjusting the Transform component directly', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3592', N'264', N'B. By setting the GameObject''s velocity or using AddForce() with a Rigidbody2D component', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3593', N'264', N'C. By changing the GameObject''s tag', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3594', N'264', N'D. By modifying the Animator component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3595', N'267', N'A. By adjusting the Transform component directly', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3596', N'267', N'B. By setting the GameObject''s velocity or using AddForce() with a Rigidbody2D component', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3597', N'267', N'C. By changing the GameObject''s tag', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3598', N'267', N'D. By modifying the Animator component', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3599', N'269', N'A. Nâng cao nhận thức về lịch sử và văn hóa dân tộc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3600', N'269', N'B. Rèn luyện phẩm chất đạo đức cách mạng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3601', N'269', N'C. Định hướng tư tưởng và hành động theo lý tưởng cách mạng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3602', N'269', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3603', N'270', N'A. Góp phần xây dựng và bảo vệ Tổ quốc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3604', N'270', N'B. Tạo nền tảng cho sự phát triển bền vững.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3605', N'270', N'C. Định hướng chiến lược phát triển kinh tế, chính trị, văn hóa, xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3606', N'270', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3607', N'271', N'A. Giúp hình thành và phát triển những phẩm chất đạo đức tốt đẹp.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3608', N'271', N'B. Định hướng lối sống lành mạnh, có ích cho xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3609', N'271', N'C. Góp phần xây dựng con người mới, con người xã hội chủ nghĩa.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3610', N'271', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3611', N'272', N'A. Xây dựng nền giáo dục toàn diện về đức, trí, thể, mỹ.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3612', N'272', N'B. Phát triển giáo dục gắn với thực tiễn.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3613', N'272', N'C. Đào tạo những con người vừa hồng vừa chuyên.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3614', N'272', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3615', N'273', N'A. Kỹ năng tư duy phản biện.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3616', N'273', N'B. Kỹ năng làm việc nhóm.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3617', N'273', N'C. Kỹ năng lãnh đạo và quản lý.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3618', N'273', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3619', N'274', N'A. Giúp đào tạo, bồi dưỡng đội ngũ cán bộ có đạo đức và năng lực.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3620', N'274', N'B. Xây dựng đội ngũ cán bộ trung thành với lý tưởng cách mạng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3621', N'274', N'C. Nâng cao phẩm chất chính trị và trình độ chuyên môn của cán bộ.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3622', N'274', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3623', N'275', N'A. Định hướng phát triển kinh tế - xã hội theo hướng công nghiệp hóa, hiện đại hóa.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3624', N'275', N'B. Đề cao sự phát triển bền vững và công bằng xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3625', N'275', N'C. Khuyến khích tinh thần tự lực, tự cường và sáng tạo của nhân dân.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3626', N'275', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3627', N'276', N'A. Nâng cao ý thức và trách nhiệm bảo vệ độc lập, chủ quyền, toàn vẹn lãnh thổ.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3628', N'276', N'B. Tạo nền tảng tư tưởng vững chắc cho sự nghiệp bảo vệ Tổ quốc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3629', N'276', N'C. Khơi dậy lòng yêu nước và tinh thần dân tộc.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3630', N'276', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3631', N'277', N'A. Góp phần xây dựng xã hội dân chủ, công bằng, văn minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3632', N'277', N'B. Thúc đẩy sự phát triển văn hóa, xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3633', N'277', N'C. Tạo động lực cho sự tiến bộ của cộng đồng và quốc gia.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3634', N'277', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3635', N'278', N'A. Định hướng phát triển kinh tế dựa trên nền tảng khoa học và công nghệ.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3636', N'278', N'B. Xây dựng nền kinh tế thị trường định hướng xã hội chủ nghĩa.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3637', N'278', N'C. Phát triển nguồn nhân lực chất lượng cao, đáp ứng yêu cầu của thời kỳ mới.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3638', N'278', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3671', N'109', N'A. Hệ thống các quan điểm về cách mạng và phát triển đất nước của Hồ Chí Minh.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3672', N'109', N'B. Các quan điểm kinh tế của Hồ Chí Minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3673', N'109', N'C. Các quan điểm văn hóa của Hồ Chí Minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3674', N'109', N'D. Các quan điểm quân sự của Hồ Chí Minh.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3675', N'110', N'A. Giải phóng dân tộc, giải phóng giai cấp, giải phóng con người.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3676', N'110', N'B. Phát triển kinh tế thị trường.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3677', N'110', N'C. Xây dựng hệ thống giáo dục hiện đại.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3678', N'110', N'D. Phát triển du lịch.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3679', N'111', N'A. Từ truyền thống yêu nước của dân tộc Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3680', N'111', N'B. Từ học thuyết của Marx và Lenin.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3681', N'111', N'C. Từ kinh nghiệm thực tiễn cách mạng Việt Nam.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3682', N'111', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3683', N'112', N'A. Con người là vốn quý nhất.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3684', N'112', N'B. Con người là trung tâm của sự phát triển.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3685', N'112', N'C. Phát triển con người toàn diện.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3686', N'112', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3687', N'113', N'A. Đạo đức cách mạng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3688', N'113', N'B. Tính tiên phong, gương mẫu của đảng viên.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3689', N'113', N'C. Năng lực lãnh đạo của Đảng.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3690', N'113', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3691', N'114', N'A. Cách mạng bạo lực.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3692', N'114', N'B. Cách mạng hòa bình.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3693', N'114', N'C. Cách mạng toàn diện, lâu dài và có kế hoạch.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3694', N'114', N'D. Cách mạng tạm thời.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3695', N'115', N'A. Độc lập dân tộc và chủ quyền quốc gia.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3696', N'115', N'B. Tình đoàn kết quốc tế.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3697', N'115', N'C. Hợp tác, hữu nghị với tất cả các nước.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3698', N'115', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3699', N'116', N'A. Kinh tế thị trường tự do.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3700', N'116', N'B. Kinh tế tập trung.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3701', N'116', N'C. Kinh tế đa thành phần có sự quản lý của nhà nước.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3702', N'116', N'D. Kinh tế nông nghiệp truyền thống.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3703', N'263', N'A. Là nền tảng tinh thần của xã hội.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3704', N'263', N'B. Là động lực phát triển kinh tế.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3705', N'263', N'C. Là yếu tố quan trọng trong xây dựng con người mới.', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3706', N'263', N'D. Tất cả các đáp án trên.', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3707', N'279', N'10 năm', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3708', N'279', N'25 năm', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3709', N'279', N'30 năm', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3710', N'279', N'35 năm', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3711', N'280', N'Văn hoá dân chủ, tiến bộ của Đức', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3712', N'280', N'Văn hoá dân chủ, tiến bộ của Pháp', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3713', N'280', N'Văn hoá dân chủ, tiến bộ của Nga', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3714', N'280', N'Văn hóa dân chủ, tiến bộ của Anh', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3715', N'281', N'1911-1912', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3716', N'281', N'1912-1913', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3717', N'281', N'1914-1917', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3718', N'281', N'1911-1915', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3719', N'282', N'Tiếng Anh', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3720', N'282', N'Tiếng Pháp', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3721', N'282', N'Tiếng Trung', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3722', N'282', N'Tiếng Nga', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3723', N'283', N'Chống phong kiến', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3724', N'283', N'Đấu tranh vì tự do, dân chủ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3725', N'283', N'Phù hợp với điều kiện thực tế nước ta', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3726', N'284', N'Vận dụng và phát triển sáng tạo chủ nghĩa Mác- Lênin', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3727', N'284', N'Tiếp thu toàn bộ chủ nghĩa Mác-Lênin', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3728', N'284', N'Tiếp thu một bộ phận của chủ nghĩa Mác-Lênin', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3729', N'285', N'Tư tưởng văn hoá dân chủ và cách mạng của cách mạng Pháp và cách mạng Mỹ', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3730', N'285', N'Những mặt tích cực của Nho Giáo', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3731', N'285', N'Chủ nghĩa Tam dân của Tôn Trung Sơn', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3732', N'286', N'3', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3733', N'286', N'4', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3734', N'286', N'5', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3735', N'286', N'6', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3736', N'287', N'Chủ nghĩa Mác - Lênin là nền tảng tư tưởng, kim chỉ nam cho hành động của Đảng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3737', N'287', N'Tư tưởng Hồ Chí Minh là nền tảng tư tưởng, kim chỉ nam cho hành động của Đảng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3738', N'287', N'Cùng với chủ nghĩa Mác - Lênin, tư tưởng Hồ Chí Minh là nền tảng tư tưởng và kim chỉ nam cho hành động của Đảng ta', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3739', N'288', N'1911 đến 1920', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3740', N'288', N'1921 đến 1930', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3741', N'288', N'1890 đến 1911', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3742', N'289', N'1925', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3743', N'289', N'1927', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3744', N'289', N'1924', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3745', N'290', N'Lý luận và kinh nghiệm các cuộc cách mạng điển hình phương Tây', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3746', N'290', N'Kinh nghiệm các cuộc cách mạng điển hình ở phương Đông', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3747', N'290', N'Lý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3748', N'291', N'Lý luận và kinh nghiệm các cuộc cách mạng điển hình phương Tây', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3749', N'291', N'Kinh nghiệm các cuộc cách mạng điển hình ở phương Đông', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3750', N'291', N'Lý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3751', N'292', N'1911 đến 1930', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3752', N'292', N'1911 đến 1920', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3753', N'292', N'1911 đến 1935', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3754', N'292', N'1930 đến 1945', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3757', N'294', N'10 năm', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3758', N'294', N'25 năm', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3759', N'294', N'30 năm', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3760', N'294', N'35 năm', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3761', N'295', N'Văn hoá dân chủ, tiến bộ của Đức', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3762', N'295', N'Văn hoá dân chủ, tiến bộ của Pháp', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3763', N'295', N'Văn hoá dân chủ, tiến bộ của Nga', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3764', N'295', N'Văn hóa dân chủ, tiến bộ của Anh', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3765', N'296', N'1911-1912', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3766', N'296', N'1912-1913', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3767', N'296', N'1914-1917', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3768', N'296', N'1911-1915', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3769', N'297', N'Tiếng Anh', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3770', N'297', N'Tiếng Pháp', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3771', N'297', N'Tiếng Trung', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3772', N'297', N'Tiếng Nga', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3773', N'298', N'Chống phong kiến', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3774', N'298', N'Đấu tranh vì tự do, dân chủ', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3775', N'298', N'Phù hợp với điều kiện thực tế nước ta', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3776', N'299', N'Vận dụng và phát triển sáng tạo chủ nghĩa Mác- Lênin', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3777', N'299', N'Tiếp thu toàn bộ chủ nghĩa Mác-Lênin', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3778', N'299', N'Tiếp thu một bộ phận của chủ nghĩa Mác-Lênin', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3779', N'300', N'Tư tưởng văn hoá dân chủ và cách mạng của cách mạng Pháp và cách mạng Mỹ', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3780', N'300', N'Những mặt tích cực của Nho Giáo', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3781', N'300', N'Chủ nghĩa Tam dân của Tôn Trung Sơn', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3782', N'301', N'3', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3783', N'301', N'4', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3784', N'301', N'5', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3785', N'301', N'6', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3786', N'302', N'Chủ nghĩa Mác - Lênin là nền tảng tư tưởng, kim chỉ nam cho hành động của Đảng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3787', N'302', N'Tư tưởng Hồ Chí Minh là nền tảng tư tưởng, kim chỉ nam cho hành động của Đảng', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3788', N'302', N'Cùng với chủ nghĩa Mác - Lênin, tư tưởng Hồ Chí Minh là nền tảng tư tưởng và kim chỉ nam cho hành động của Đảng ta', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3789', N'303', N'1911 đến 1920', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3790', N'303', N'1921 đến 1930', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3791', N'303', N'1890 đến 1911', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3792', N'304', N'1925', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3793', N'304', N'1927', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3794', N'304', N'1924', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3795', N'305', N'Lý luận và kinh nghiệm các cuộc cách mạng điển hình phương Tây', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3796', N'305', N'Kinh nghiệm các cuộc cách mạng điển hình ở phương Đông', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3797', N'305', N'Lý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3798', N'306', N'Lý luận và kinh nghiệm các cuộc cách mạng điển hình phương Tây', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3799', N'306', N'Kinh nghiệm các cuộc cách mạng điển hình ở phương Đông', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3800', N'306', N'Lý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3801', N'307', N'1911 đến 1930', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3802', N'307', N'1911 đến 1920', N'1')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3803', N'307', N'1911 đến 1935', N'0')
GO

INSERT INTO [dbo].[AnswerOption] ([AnswerOptionId], [ExamKnowledgeId], [AnswerOption], [isKey]) VALUES (N'3804', N'307', N'1930 đến 1945', N'0')
GO

SET IDENTITY_INSERT [dbo].[AnswerOption] OFF
GO


-- ----------------------------
-- Table structure for Class
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Class]') AND type IN ('U'))
	DROP TABLE [dbo].[Class]
GO

CREATE TABLE [dbo].[Class] (
  [ClassId] int  IDENTITY(1,1) NOT NULL,
  [ClassName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SubjectId] int  NOT NULL,
  [Capacity] int  NULL,
  [Status] bit  NULL,
  [CreateDate] datetime  NULL,
  [SemesterId] int  NULL,
  [CreatedBy] int  NULL,
  [ManagedBy] int  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SubjectCode] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Class] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Class
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Class] ON
GO

INSERT INTO [dbo].[Class] ([ClassId], [ClassName], [SubjectId], [Capacity], [Status], [CreateDate], [SemesterId], [CreatedBy], [ManagedBy], [Description], [SubjectCode]) VALUES (N'8', N'SE1655', N'3', N'4', N'1', N'2024-03-08 23:31:00.000', N'10', N'2', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Class] ([ClassId], [ClassName], [SubjectId], [Capacity], [Status], [CreateDate], [SemesterId], [CreatedBy], [ManagedBy], [Description], [SubjectCode]) VALUES (N'9', N'SE1655', N'2', N'4', N'1', N'2024-01-01 00:00:00.000', N'10', N'3', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Class] ([ClassId], [ClassName], [SubjectId], [Capacity], [Status], [CreateDate], [SemesterId], [CreatedBy], [ManagedBy], [Description], [SubjectCode]) VALUES (N'1029', N'SE1625', N'2', N'4', N'1', NULL, N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Class] ([ClassId], [ClassName], [SubjectId], [Capacity], [Status], [CreateDate], [SemesterId], [CreatedBy], [ManagedBy], [Description], [SubjectCode]) VALUES (N'1038', N'SE1620', N'1', N'0', N'1', NULL, N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Class] ([ClassId], [ClassName], [SubjectId], [Capacity], [Status], [CreateDate], [SemesterId], [CreatedBy], [ManagedBy], [Description], [SubjectCode]) VALUES (N'1039', N'SE1630', N'22', N'0', N'1', NULL, N'3', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Class] ([ClassId], [ClassName], [SubjectId], [Capacity], [Status], [CreateDate], [SemesterId], [CreatedBy], [ManagedBy], [Description], [SubjectCode]) VALUES (N'1040', N'SE1630', N'23', N'0', N'1', NULL, N'4', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Class] ([ClassId], [ClassName], [SubjectId], [Capacity], [Status], [CreateDate], [SemesterId], [CreatedBy], [ManagedBy], [Description], [SubjectCode]) VALUES (N'1041', N'SE1630', N'16', N'0', N'1', NULL, N'5', NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[Class] OFF
GO


-- ----------------------------
-- Table structure for ClassUser
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ClassUser]') AND type IN ('U'))
	DROP TABLE [dbo].[ClassUser]
GO

CREATE TABLE [dbo].[ClassUser] (
  [ClassId] int  NOT NULL,
  [AccountId] int  NOT NULL,
  [IsTeacher] bit  NULL,
  [IsActive] bit  NULL
)
GO

ALTER TABLE [dbo].[ClassUser] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ClassUser
-- ----------------------------
INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'8', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'8', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'8', N'6', N'1', NULL)
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'8', N'2059', N'0', NULL)
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'9', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'9', N'4', N'0', N'1')
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'9', N'6', N'1', N'1')
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'9', N'2059', N'0', NULL)
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'1029', N'1', N'0', NULL)
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'1029', N'4', N'0', NULL)
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'1029', N'6', N'1', NULL)
GO

INSERT INTO [dbo].[ClassUser] ([ClassId], [AccountId], [IsTeacher], [IsActive]) VALUES (N'1029', N'2059', N'0', NULL)
GO


-- ----------------------------
-- Table structure for Exam
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Exam]') AND type IN ('U'))
	DROP TABLE [dbo].[Exam]
GO

CREATE TABLE [dbo].[Exam] (
  [ExamId] int  IDENTITY(1,1) NOT NULL,
  [ClassId] int  NULL,
  [ExamName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [isPractice] bit  NULL,
  [SubjectId] int  NULL,
  [QuestionCount] int  NULL,
  [TimeCount] int  NULL,
  [CreatedDate] datetime  NULL,
  [EndDate] datetime  NULL,
  [IsActive] bit  NULL
)
GO

ALTER TABLE [dbo].[Exam] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Exam
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Exam] ON
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'127', NULL, N'PT1', NULL, N'1', N'30', N'9', N'15', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'128', NULL, N'Lesson22', NULL, N'1', N'2', N'10', N'90', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'131', NULL, N'Lesson26', NULL, N'1', N'2', N'11', N'60', NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'180', NULL, N'Lesson 22-1', NULL, N'1', N'2', N'9', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'186', NULL, N'PRU211m Lesson 1', NULL, NULL, N'17', NULL, N'60', N'2024-05-22 16:37:00.000', N'2006-07-20 16:37:02.000', NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'187', NULL, N'Lesson 28', NULL, N'1', N'2', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'188', NULL, N'Lesson 28-1', NULL, N'1', N'2', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'189', NULL, N'Lesson29', NULL, N'1', N'2', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'190', NULL, N'Lesson30', NULL, N'1', N'2', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'192', NULL, N'PRU211m lesson 2', NULL, NULL, N'17', NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'193', NULL, N'PRU211m lesson 3', NULL, N'1', N'17', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'194', NULL, N'PRU211m lesson 4', NULL, N'1', N'17', N'10', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'195', NULL, N'PRU211m lesson 5', NULL, N'1', N'17', N'9', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'199', N'9', N'Lesson29', NULL, NULL, N'2', N'10', N'3', N'2024-06-05 00:47:29.000', N'2024-07-04 00:47:30.000', N'1')
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'208', N'8', N'PT2', NULL, NULL, N'3', N'2', N'90', N'2024-05-08 22:04:28.000', N'2024-05-31 22:04:31.000', N'1')
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'217', N'9', N'Lesson 28-1', NULL, NULL, N'2', N'10', N'1', N'2024-05-01 20:12:09.000', N'2024-05-30 20:12:10.000', N'1')
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'218', NULL, N'PT1', NULL, N'1', N'3', N'14', NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Exam] ([ExamId], [ClassId], [ExamName], [Description], [isPractice], [SubjectId], [QuestionCount], [TimeCount], [CreatedDate], [EndDate], [IsActive]) VALUES (N'220', N'8', N'PT1', NULL, NULL, N'3', N'14', N'90', N'2024-05-01 22:40:58.000', N'2024-05-31 22:41:02.000', N'1')
GO

SET IDENTITY_INSERT [dbo].[Exam] OFF
GO


-- ----------------------------
-- Table structure for ExamKnowledge
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamKnowledge]') AND type IN ('U'))
	DROP TABLE [dbo].[ExamKnowledge]
GO

CREATE TABLE [dbo].[ExamKnowledge] (
  [ExamKnowledgeId] int  IDENTITY(1,1) NOT NULL,
  [LessonId] int  NULL,
  [Answer] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Knowledge] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SubjectId] int  NULL
)
GO

ALTER TABLE [dbo].[ExamKnowledge] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ExamKnowledge
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ExamKnowledge] ON
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'4', N'46', N'B. System', N'Unity has a complex and powerful __ for creating and combining particles to give you all sorts of special effects?', N'16')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'13', N'21', NULL, N'Which of the following is INCORRECT about the LogCat tool? (Choose 3 answers)', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'22', N'21', N'D. Dễ bị đàn áp', N'Tại sao các phong trào yêu nước trước khi Đảng Cộng sản Việt Nam ra đời đều thất bại? ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'23', N'21', N'D. Tổ chức chuẩn bị', N'Nguyễn Ái Quốc đã chuẩn bị những gì cho sự ra đời của Đảng Cộng sản Việt Nam? ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'24', N'21', N'A. Nền tảng cho sự hình thành', N'Vai trò và đường lối chính trị của Hội Việt Nam cách mạng thanh niên và sự ra đời của ba tổ chức cộng sản ở Việt Nam? ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'25', N'21', N' C. Lãnh đạo tài ba', N'Những yếu tố nào đã đóng vai trò quan trọng trong việc Đảng Cộng sản Việt Nam ra đời và giành chính quyền?  ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'26', N'21', N'A. Lịch sử phát triển ', N'Đối tượng nghiên cứu của môn học Lịch sử Đảng Cộng sản Việt Nam là gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'27', N'21', N' A. Truyền đạt kiến thức ', N'Chức năng và nhiệm vụ của môn học Lịch sử Đảng Cộng sản Việt Nam là gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'28', N'21', N'D. Tất cả các phương pháp', N'Phương pháp nghiên cứu và học tập môn Lịch sử Đảng Cộng sản Việt Nam là gì?  ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'29', N'21', N' A. Hiểu biết về lịch sử', N'Mục đích của môn học Lịch sử Đảng Cộng sản Việt Nam là gì?  ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'30', N'21', N' A. Đánh dấu sự bắt đầu', N'Tại sao tháng 2-1930 được coi là thời điểm quan trọng trong lịch sử của Đảng Cộng sản Việt Nam? ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'31', N'26', N'D. Chủ nghĩa tư bản', N'Yếu tố nào sau đây không phải là cơ sở hình thành tư tưởng Hồ Chí Minh?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'32', N'26', N'B. Khi ông ra đi tìm đường cứu nước', N'Quá trình hình thành và phát triển tư tưởng Hồ Chí Minh bắt đầu từ thời điểm nào?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'33', N'26', N'D. Cả ba giá trị trên', N'Giá trị tư tưởng Hồ Chí Minh đối với cách mạng Việt Nam là gì?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'34', N'26', N'C. Ảnh hưởng toàn cầu', N'Tư tưởng Hồ Chí Minh có giá trị như thế nào đối với sự phát triển tiến bộ của nhân loại?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'35', N'26', N'D. Cả ba tư tưởng trên', N'Nguyễn Ái Quốc đã học hỏi và tiếp thu những tư tưởng nào để hình thành nên tư tưởng của mình?  ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'36', N'26', N'D. Cả ba yếu tố trên', N'Tư tưởng Hồ Chí Minh về độc lập dân tộc và chủ nghĩa xã hội dựa trên nền tảng nào?    ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'37', N'26', N'C. Phải đoàn kết dân tộc', N'Tư tưởng Hồ Chí Minh về con đường giải phóng dân tộc nhấn mạnh điều gì?    ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'38', N'26', N'A. Văn hóa Đông Tây', N'Hồ Chí Minh tiếp thu những giá trị văn hóa nào để phát triển tư tưởng của mình?    ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'39', N'26', N'C. Nâng cao đạo đức cách mạng', N'Tư tưởng Hồ Chí Minh về xây dựng Đảng nhấn mạnh điều gì?    ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'40', N'26', N'Delegates', N'At the heart of events are', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'41', N'26', N'A. Tạo niềm tin cho các dân tộc bị áp bức', N'Giá trị của tư tưởng Hồ Chí Minh đối với phong trào giải phóng dân tộc trên thế giới là gì?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'44', N'27', N'AcceptButton', N'Which property of Form allows to set the button on the Form that is clicked when user press the Enter key?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'45', N'27', N' B. Tập trung dân chủ', N'Hồ Chí Minh cho rằng Đảng Cộng sản Việt Nam phải làm gì để luôn vững mạnh?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'46', N'27', N'A. Tạm thời', N'Hồ Chí Minh xác định vai trò lãnh đạo của Đảng Cộng sản Việt Nam là gì?    ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'47', N'27', N'B. Chủ nghĩa Marx-Lenin', N'Hồ Chí Minh nhấn mạnh điều gì là nền tảng tư tưởng của Đảng?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'48', N'27', N'C. Kiểm điểm và phê bình', N'Hồ Chí Minh cho rằng Đảng Cộng sản Việt Nam phải luôn luôn làm gì để tồn tại và phát triển?    ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'49', N'27', N'B. Gần gũi và tin cậy ', N'Theo Hồ Chí Minh, Đảng Cộng sản Việt Nam phải có mối quan hệ như thế nào với nhân dân?  ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'50', N'27', N'C. Đảm bảo niềm tin của nhân dân ', N'Hồ Chí Minh khẳng định Đảng phải trong sạch và vững mạnh để làm gì?  ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'51', N'27', N'B. Mục tiêu hàng đầu', N'Hồ Chí Minh coi việc nâng cao đời sống nhân dân là gì trong công cuộc xây dựng chủ nghĩa xã hội?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'52', N'27', N'B. Chủ nghĩa Marx-Lenin', N'Theo Hồ Chí Minh, Đảng phải luôn kiên định với điều gì?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'53', N'27', N'B. Quyết định', N'Hồ Chí Minh cho rằng sự lãnh đạo của Đảng là yếu tố gì đối với cách mạng Việt Nam? ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'54', N'27', N' B. Xây dựng chủ nghĩa xã hội', N'Hồ Chí Minh xác định mục tiêu của Đảng Cộng sản Việt Nam là gì?   ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'55', N'27', N'C. Luôn kiểm điểm và phê bình', N'Hồ Chí Minh khẳng định rằng Đảng Cộng sản Việt Nam phải làm gì để giữ vững sự lãnh đạo?  ', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'60', N'88', N'Yes', N'By default can we delete a folder that contains subdirectories and files?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'61', N'88', N'This file will be opened to append data', N'When using Filelnfo.OpenO method with FileMode is Create, if the file already exists.', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'62', N'88', N'Session_Start()', N'Which event handler is called when the web application is shutting down?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'63', N'88', N'False', N'Thread is executed when we create a new instance of a Thread object', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'64', N'88', N'Label', N'Which control combines the features of the TextBox and the ListBox controls?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'65', N'88', N'Cookie', N'Which variables can be used by all users and in all pages?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'66', N'117', N'<major>.<minor>.<revision>', N'What is the standard format of a NET assembly''s version number?', N'1')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'109', N'22', N'A. Hệ thống các quan điểm về cách mạng và phát triển đất nước của Hồ Chí Minh.', N'Tư tưởng Hồ Chí Minh là gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'110', N'22', N'A. Giải phóng dân tộc, giải phóng giai cấp, giải phóng con người.', N'Mục tiêu của tư tưởng Hồ Chí Minh là gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'111', N'22', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh bắt nguồn từ đâu?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'112', N'22', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh về con người có nội dung gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'113', N'22', N'D. Tất cả các đáp án trên.', N'Hồ Chí Minh nhấn mạnh điều gì trong xây dựng Đảng Cộng sản Việt Nam?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'114', N'22', N'C. Cách mạng toàn diện, lâu dài và có kế hoạch.', N'Theo tư tưởng Hồ Chí Minh, cách mạng phải được tiến hành như thế nào?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'115', N'22', N'D. Tất cả các đáp án trên.', N'Hồ Chí Minh coi trọng điều gì trong quan hệ quốc tế?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'116', N'22', N'C. Kinh tế đa thành phần có sự quản lý của nhà nước.', N'Theo Hồ Chí Minh, nền kinh tế Việt Nam cần phát triển như thế nào?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'117', N'22', N'A. Giáo dục toàn diện về đức, trí, thể, mỹ.', N'Tư tưởng Hồ Chí Minh về giáo dục nhấn mạnh điều gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'119', N'51', N'EntityRepository DAO', N'What are components in Room?', N'16')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'120', N'50', N'SQlite database', N'How to store heavy structured data in android?', N'16')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'121', N'27', N'D. Tất cả các phương pháp trên.', N'Phương pháp nghiên cứu tư tưởng Hồ Chí Minh là gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'122', N'27', N'D. Tất cả các yếu tố trên.', N'Phương pháp luận trong nghiên cứu tư tưởng Hồ Chí Minh bao gồm những yếu tố nào?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'123', N'27', N'A. Vì nó cung cấp nền tảng lý luận cho đường lối và chính sách của Đảng và Nhà nước.', N'Tại sao việc nghiên cứu tư tưởng Hồ Chí Minh lại quan trọng đối với sự phát triển của Việt Nam?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'124', N'27', N'A. Phân tích các sự kiện lịch sử có liên quan đến cuộc đời và hoạt động của Hồ Chí Minh.', N'Phương pháp nghiên cứu lịch sử trong nghiên cứu tư tưởng Hồ Chí Minh là gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'125', N'27', N'D. Tất cả các đáp án trên.', N'Phương pháp phân tích nội dung trong nghiên cứu tư tưởng Hồ Chí Minh bao gồm những gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'126', N'27', N'A. Phương pháp so sánh đối chiếu.', N'Một trong những phương pháp nghiên cứu tư tưởng Hồ Chí Minh là gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'127', N'27', N'D. Tất cả các yếu tố trên.', N'Nghiên cứu tư tưởng Hồ Chí Minh cần phải kết hợp với yếu tố nào?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'128', N'27', N'A. Hiểu rõ hơn về tư tưởng và quan điểm của Hồ Chí Minh.', N'Phương pháp tiếp cận tư tưởng Hồ Chí Minh thông qua các tài liệu gốc giúp làm gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'129', N'27', N'A. Phương pháp phân tích nội dung.', N'Tư tưởng Hồ Chí Minh về đạo đức cách mạng có thể được nghiên cứu thông qua phương pháp nào?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'130', N'27', N'A. Góp phần nâng cao nhận thức chính trị cho cán bộ, đảng viên và nhân dân.', N'Việc nghiên cứu tư tưởng Hồ Chí Minh có ý nghĩa gì đối với công tác giáo dục chính trị tư tưởng?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'131', N'28', N'D. Tất cả các đáp án trên.', N'Việc học tập tư tưởng Hồ Chí Minh giúp gì cho sinh viên?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'132', N'28', N'D. Tất cả các đáp án trên.', N'Ý nghĩa của việc học tập tư tưởng Hồ Chí Minh đối với sự phát triển đất nước là gì?
', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'133', N'28', N'D. Tất cả các đáp án trên.', N'Việc học tập tư tưởng Hồ Chí Minh có ý nghĩa gì đối với việc xây dựng đạo đức con người Việt Nam?
', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'134', N'28', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh về giáo dục có ý nghĩa gì?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'135', N'28', N'D. Tất cả các đáp án trên.', N'Học tập tư tưởng Hồ Chí Minh giúp sinh viên rèn luyện kỹ năng gì?
', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'136', N'28', N'D. Tất cả các đáp án trên.', N'Việc học tập tư tưởng Hồ Chí Minh có ý nghĩa như thế nào đối với công tác cán bộ?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'137', N'28', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh về con đường phát triển đất nước có ý nghĩa gì?
', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'138', N'28', N'D. Tất cả các đáp án trên.', N'Học tập tư tưởng Hồ Chí Minh có tác dụng gì đối với việc bảo vệ Tổ quốc?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'139', N'28', N'D. Tất cả các đáp án trên.', N'Việc học tập tư tưởng Hồ Chí Minh có ý nghĩa như thế nào đối với việc xây dựng xã hội?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'140', N'28', N'D. Tất cả các đáp án trên.', N'Học tập tư tưởng Hồ Chí Minh giúp ích gì cho sự nghiệp công nghiệp hóa, hiện đại hóa đất nước?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'141', N'29', N'D. Tất cả các đáp án trên.', N'Cơ sở nào là nguồn gốc cơ bản hình thành tư tưởng Hồ Chí Minh?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'142', N'29', N'B. Chủ nghĩa Marx-Lenin.', N'Tư tưởng Hồ Chí Minh chịu ảnh hưởng lớn nhất từ tư tưởng nào?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'143', N'28', N'D. Tất cả các đáp án trên.', N'Yếu tố nào của truyền thống văn hóa Việt Nam ảnh hưởng đến tư tưởng Hồ Chí Minh?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'144', N'29', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh về giải phóng dân tộc chịu ảnh hưởng từ đâu?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'145', N'29', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh về con người chịu ảnh hưởng từ nền tảng văn hóa nào?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'146', N'29', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh về đoàn kết dân tộc và quốc tế chịu ảnh hưởng từ đâu?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'147', N'28', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh về xây dựng nhà nước pháp quyền có cơ sở từ đâu?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'148', N'29', N'B. Chủ nghĩa Marx-Lenin.', N'Trong tư tưởng Hồ Chí Minh, yếu tố nào đóng vai trò quyết định nhất trong sự nghiệp giải phóng dân tộc?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'149', N'29', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh về độc lập dân tộc gắn liền với chủ nghĩa xã hội chịu ảnh hưởng từ đâu?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'150', N'29', N'D. Tất cả các đáp án trên.', N'Yếu tố nào của tư tưởng Hồ Chí Minh góp phần vào việc xây dựng nền giáo dục Việt Nam?', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'151', N'87', N'C. Creating video games', N'What is Unity primarily used for?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'152', N'87', N'C. C#', N'Which programming language is commonly used in Unity development?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'153', N'87', N'D. Multiple platforms including Windows, iOS, and Android', N'Which of the following platforms does Unity support for game deployment?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'154', N'87', N'D. Bolt', N'What is the name of the visual scripting tool often used in Unity for creating gameplay logic without coding?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'155', N'87', N'B. Mesh Renderer', N'Which component in Unity is used to represent 3D models and game objects?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'156', N'87', N'C. A reusable game object template', N'What does "Prefab" refer to in Unity?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'157', N'87', N'A. Occlusion Culling', N'Which feature in Unity is used for optimizing game performance by selectively rendering objects based on distance from the camera?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'158', N'87', N'C. Gravity', N'Which of the following is NOT a component of Unity''s physics engine?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'159', N'87', N'B. A single level or environment in a game', N'In Unity, what does the term "Scene" refer to?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'160', N'87', N'C. Unity Technologies', N'Which of these companies developed Unity?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'161', N'30', N'D. Tất cả các đáp án trên.', N'Tư tưởng Hồ Chí Minh được hình thành và phát triển trong bối cảnh lịch sử nào?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'162', N'30', N'A. 1911', N'Thời gian Nguyễn Ái Quốc bắt đầu hoạt động cách mạng và tìm đường cứu nước là vào năm nào?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'163', N'30', N'A. Tìm hiểu chủ nghĩa Marx-Lenin.', N'Sự kiện nào đánh dấu bước ngoặt trong nhận thức tư tưởng của Hồ Chí Minh về con đường cứu nước?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'164', N'30', N'B. 1919', N'Nguyễn Ái Quốc đã gửi bản Yêu sách của nhân dân An Nam đến Hội nghị Versailles vào năm nào?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'165', N'30', N'B. 1921', N'Nguyễn Ái Quốc tham gia sáng lập Hội Liên hiệp các dân tộc bị áp bức ở châu Á vào năm nào?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'166', N'30', N'B. 1920', N'Nguyễn Ái Quốc tham gia sáng lập Đảng Cộng sản Pháp vào năm nào?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'167', N'30', N'C. 1923', N'Nguyễn Ái Quốc trở thành thành viên của Quốc tế Cộng sản vào năm nào?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'168', N'31', N'A. Đường Kách Mệnh', N'Tác phẩm nào của Hồ Chí Minh nêu rõ con đường cách mạng giải phóng dân tộc ở Việt Nam?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'169', N'30', N'B. Đảng Cộng sản Đông Dương', N'Năm 1930, Nguyễn Ái Quốc đã lãnh đạo việc thành lập tổ chức nào?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'170', N'30', N'C. Việt Nam Độc lập Đồng minh Hội (Việt Minh)', N'Năm 1941, Nguyễn Ái Quốc trở về nước và sáng lập tổ chức nào để lãnh đạo cuộc đấu tranh giải phóng dân tộc?

', N'2')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'171', N'87', N'C. Concept and idea generation', N'What is the first step in the game development process?', N'17')
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'172', NULL, N'C. Developing the game story', N'In the pre-production phase of game development, which of the following is crucial?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'173', NULL, N'D. Game design document (GDD)', N'What document outlines the main characters, plot, and gameplay mechanics in a game?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'174', NULL, N'B. Production', N'Which phase involves creating the actual models, sounds, and textures for the game?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'175', NULL, N'B. Testing game mechanics and ideas', N'What is the purpose of the prototyping phase in game development?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'176', NULL, N'C. Post-production', N'During which phase is bug fixing and optimization primarily performed?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'177', NULL, N'B. Detailed character backgrounds and plot development', N'Which of the following is essential when writing a game story?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'178', NULL, N'B. Engaging and relatable characters', N'What is a key component of creating a compelling game story?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'179', NULL, N'C. To visually plan the narrative and sequences', N'In game development, what is the main purpose of a storyboard?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'180', NULL, N'B. It provides insights for improving gameplay and fixing issues', N'Why is user feedback important in the game development process?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'181', NULL, N'B. A container for components', N'What is a GameObject in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'182', NULL, N'B. A part of a GameObject that defines its behavior and appearance', N'What is a Component in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'183', NULL, N'C. A 2D image used for characters, backgrounds, and other visual elements', N'What is a Sprite in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'184', NULL, N'B. A sequence of images or frames', N'What is an Animation in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'185', NULL, N'B. A specific frame in an animation that defines the start or end of a transition', N'What is a KeyFrame in animation?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'186', NULL, N'B. A reusable GameObject template', N'What are Prefabs in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'187', NULL, N'B. A piece of code that controls the behavior of GameObjects', N'What is a Script in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'188', NULL, N'A. A single level or environment in a game', N'What is a Scene in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'189', NULL, N'B. Any file that can be used in a game, including images, sounds, and scripts', N'What are Assets in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'190', NULL, N'A. A type of GameObject that defines the viewpoint through which the player sees the game', N'What is a Camera in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'191', NULL, N'B. Defining the position, rotation, and scale of a GameObject', N'What is the Transform component in Unity primarily used for?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'192', NULL, N'C. Modify the rotation values in the Transform component', N'How do you rotate a GameObject around its own axis in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'193', NULL, N'A. Transform.RotateAround', N'Which method can be used to rotate a GameObject around a specific point in Unity using code?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'194', NULL, N'B. A reusable game object template', N'What is a Prefab in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'195', NULL, N'B. By dragging the GameObject from the Hierarchy window to the Project window', N'How do you save a GameObject as a Prefab in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'196', NULL, N'B. By dragging the Prefab from the Project window to the Scene view or Hierarchy window', N'How can you create a new GameObject from a Prefab using the Unity Editor?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'197', NULL, N'A. Instantiate()', N'Which method in C# is used to instantiate a GameObject from a Prefab?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'198', NULL, N'A. By passing position and rotation parameters to the Instantiate() method', N'How do you specify the position and rotation when instantiating a Prefab in Unity using code?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'199', NULL, N'C. They do not affect the Prefab asset unless explicitly applied', N'What happens to changes made to a Prefab instance in the Scene?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'200', NULL, N'A. By selecting the Prefab instance and choosing "Apply" in the Inspector window', N'How can you apply changes made to a Prefab instance back to the Prefab asset?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'201', NULL, N'C. By using the Vector3.Lerp method', N'How do you move a GameObject to a specific position over time in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'202', NULL, N'C. Rigidbody2D', N'Which Unity component allows a GameObject to interact with the physics engine in 2D?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'203', NULL, N'B. Input.GetAxis()', N'What method can be used to move a GameObject using the arrow keys?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'204', NULL, N'B. By selecting the GameObject, then adding the Rigidbody2D component from the Inspector', N'How do you add a Rigidbody2D component to a GameObject in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'206', NULL, N'B. By setting the GameObject''s velocity or using AddForce() with a Rigidbody2D component', N'How can you move a GameObject using physics in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'215', NULL, NULL, N'Cơ sở nào là nguồn gốc cơ bản hình thành tư tưởng Hồ Chí Minh?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'216', NULL, NULL, N'Tư tưởng Hồ Chí Minh chịu ảnh hưởng lớn nhất từ tư tưởng nào?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'217', NULL, NULL, N'Yếu tố nào của truyền thống văn hóa Việt Nam ảnh hưởng đến tư tưởng Hồ Chí Minh?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'218', NULL, NULL, N'Tư tưởng Hồ Chí Minh về giải phóng dân tộc chịu ảnh hưởng từ đâu?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'219', NULL, NULL, N'Tư tưởng Hồ Chí Minh về con người chịu ảnh hưởng từ nền tảng văn hóa nào?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'220', NULL, NULL, N'Tư tưởng Hồ Chí Minh về đoàn kết dân tộc và quốc tế chịu ảnh hưởng từ đâu?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'221', NULL, NULL, N'Tư tưởng Hồ Chí Minh về xây dựng nhà nước pháp quyền có cơ sở từ đâu?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'222', NULL, NULL, N'Trong tư tưởng Hồ Chí Minh, yếu tố nào đóng vai trò quyết định nhất trong sự nghiệp giải phóng dân tộc?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'223', NULL, NULL, N'Tư tưởng Hồ Chí Minh về độc lập dân tộc gắn liền với chủ nghĩa xã hội chịu ảnh hưởng từ đâu?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'224', NULL, NULL, N'Yếu tố nào của tư tưởng Hồ Chí Minh góp phần vào việc xây dựng nền giáo dục Việt Nam?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'235', NULL, N'Văn hoá dân chủ, tiến bộ của Pháp', N'Văn hoá phương Tây nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh trước khi người ra đi tìm đường cứu nước?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'236', NULL, N'1914-1917', N'Nguyễn Tất Thành ở Anh vào thời gian nào?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'237', NULL, N'Tiếng Pháp', N'Ngoại ngữ nào sau đây được Hồ Chí Minh sử dụng trong thời gian học tập ở trường Quốc học Huế?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'238', NULL, N'Phù hợp với điều kiện thực tế nước ta', N'Theo Hồ Chí Minh, ưu điểm lớn nhất của chủ nghĩa Tam dân của Tôn Trung Sơn là gì?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'239', NULL, N'Tiếp thu một bộ phận của chủ nghĩa Mác-Lênin', N'Tư tưởng Hồ Chí Minh hình thành trên cơ sở:', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'240', NULL, N'Tư tưởng văn hoá dân chủ và cách mạng của cách mạng Pháp và cách mạng Mỹ', N'Một trong những giá trị của văn hoá phương Tây được Hồ Chí Minh tiếp thu để hình thành tư tưởng của mình là', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'241', NULL, N'5', N'Tư tưởng Hồ Chí Minh được hình thành và phát triển qua mấy giai đoạn?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'242', NULL, N'Cùng với chủ nghĩa Mác - Lênin, tư tưởng Hồ Chí Minh là nền tảng tư tưởng và kim chỉ nam cho hành động của Đảng ta', N'Chọn phương án trả lời đúng nhất?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'243', NULL, N'1890 đến 1911', N'Giai đoạn nào sau đây hình thành tư tưởng yêu nước và ý chí cứu nước của Hồ Chí Minh?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'244', NULL, N'1924', N'Để chuẩn bị thành lập Đảng Cộng sản Việt Nam, Nguyễn Ái Quốc đã từ Liên Xô về Trung Quốc năm nào?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'245', NULL, N'Kinh nghiệm các cuộc cách mạng điển hình ở phương ĐôngLý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'Yếu tố nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh:', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'246', NULL, N'Kinh nghiệm các cuộc cách mạng điển hình ở phương ĐôngLý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'Yếu tố nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh:', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'256', NULL, N'', N'Which property of Form allows to set the button on the Form that is clicked when user press the Enter key?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'261', NULL, N'1911 đến 1920', N'Giai đoạn nào sau đây Hồ Chí Minh tìm thấy con đường cứu nước giải phóng dân tộc?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'263', NULL, N'D. Tất cả các đáp án trên.', N'Theo Hồ Chí Minh, văn hóa có vai trò gì trong phát triển xã hội?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'264', NULL, N'B. By setting the GameObject''s velocity or using AddForce() with a Rigidbody2D component', N'How can you move a GameObject using physics in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'267', NULL, N'B. By setting the GameObject''s velocity or using AddForce() with a Rigidbody2D component', N'How can you move a GameObject using physics in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'268', NULL, N'B. By setting the GameObject''s velocity or using AddForce() with a Rigidbody2D component', N'How can you move a GameObject using physics in Unity?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'269', NULL, NULL, N'Việc học tập tư tưởng Hồ Chí Minh giúp gì cho sinh viên?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'270', NULL, NULL, N'Ý nghĩa của việc học tập tư tưởng Hồ Chí Minh đối với sự phát triển đất nước là gì?
', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'271', NULL, NULL, N'Việc học tập tư tưởng Hồ Chí Minh có ý nghĩa gì đối với việc xây dựng đạo đức con người Việt Nam?
', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'272', NULL, NULL, N'Tư tưởng Hồ Chí Minh về giáo dục có ý nghĩa gì?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'273', NULL, NULL, N'Học tập tư tưởng Hồ Chí Minh giúp sinh viên rèn luyện kỹ năng gì?
', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'274', NULL, NULL, N'Việc học tập tư tưởng Hồ Chí Minh có ý nghĩa như thế nào đối với công tác cán bộ?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'275', NULL, NULL, N'Tư tưởng Hồ Chí Minh về con đường phát triển đất nước có ý nghĩa gì?
', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'276', NULL, NULL, N'Học tập tư tưởng Hồ Chí Minh có tác dụng gì đối với việc bảo vệ Tổ quốc?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'277', NULL, NULL, N'Việc học tập tư tưởng Hồ Chí Minh có ý nghĩa như thế nào đối với việc xây dựng xã hội?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'278', NULL, NULL, N'Học tập tư tưởng Hồ Chí Minh giúp ích gì cho sự nghiệp công nghiệp hóa, hiện đại hóa đất nước?

', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'279', NULL, N'10 năm', N'Hồ Chí Minh mất bao nhiêu năm bôn ba nước ngoài để tìm đường cứu nước?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'280', NULL, N'Văn hoá dân chủ, tiến bộ của Pháp', N'Văn hoá phương Tây nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh trước khi người ra đi tìm đường cứu nước?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'281', NULL, N'1912-1913', N'Nguyễn Tất Thành ở Anh vào thời gian nào?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'282', NULL, N'Tiếng Pháp', N'Ngoại ngữ nào sau đây được Hồ Chí Minh sử dụng trong thời gian học tập ở trường Quốc học Huế?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'283', NULL, N'Phù hợp với điều kiện thực tế nước ta', N'Theo Hồ Chí Minh, ưu điểm lớn nhất của chủ nghĩa Tam dân của Tôn Trung Sơn là gì?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'284', NULL, N'Tiếp thu một bộ phận của chủ nghĩa Mác-Lênin', N'Tư tưởng Hồ Chí Minh hình thành trên cơ sở:', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'285', NULL, N'Tư tưởng văn hoá dân chủ và cách mạng của cách mạng Pháp và cách mạng Mỹ', N'Một trong những giá trị của văn hoá phương Tây được Hồ Chí Minh tiếp thu để hình thành tư tưởng của mình là', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'286', NULL, N'5', N'Tư tưởng Hồ Chí Minh được hình thành và phát triển qua mấy giai đoạn?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'287', NULL, N'Cùng với chủ nghĩa Mác - Lênin, tư tưởng Hồ Chí Minh là nền tảng tư tưởng và kim chỉ nam cho hành động của Đảng ta', N'Chọn phương án trả lời đúng nhất?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'288', NULL, N'1890 đến 1911', N'Giai đoạn nào sau đây hình thành tư tưởng yêu nước và ý chí cứu nước của Hồ Chí Minh?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'289', NULL, N'1924', N'Để chuẩn bị thành lập Đảng Cộng sản Việt Nam, Nguyễn Ái Quốc đã từ Liên Xô về Trung Quốc năm nào?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'290', NULL, N'Kinh nghiệm các cuộc cách mạng điển hình ở phương ĐôngLý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'Yếu tố nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh:', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'291', NULL, N'Kinh nghiệm các cuộc cách mạng điển hình ở phương ĐôngLý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', N'Yếu tố nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh:', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'292', NULL, N'1911 đến 1920', N'Giai đoạn nào sau đây Hồ Chí Minh tìm thấy con đường cứu nước giải phóng dân tộc?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'294', NULL, NULL, N'Hồ Chí Minh mất bao nhiêu năm bôn ba nước ngoài để tìm đường cứu nước?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'295', NULL, NULL, N'Văn hoá phương Tây nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh trước khi người ra đi tìm đường cứu nước?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'296', NULL, NULL, N'Nguyễn Tất Thành ở Anh vào thời gian nào?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'297', NULL, NULL, N'Ngoại ngữ nào sau đây được Hồ Chí Minh sử dụng trong thời gian học tập ở trường Quốc học Huế?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'298', NULL, NULL, N'Theo Hồ Chí Minh, ưu điểm lớn nhất của chủ nghĩa Tam dân của Tôn Trung Sơn là gì?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'299', NULL, NULL, N'Tư tưởng Hồ Chí Minh hình thành trên cơ sở:', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'300', NULL, NULL, N'Một trong những giá trị của văn hoá phương Tây được Hồ Chí Minh tiếp thu để hình thành tư tưởng của mình là', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'301', NULL, NULL, N'Tư tưởng Hồ Chí Minh được hình thành và phát triển qua mấy giai đoạn?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'302', NULL, NULL, N'Chọn phương án trả lời đúng nhất?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'303', NULL, NULL, N'Giai đoạn nào sau đây hình thành tư tưởng yêu nước và ý chí cứu nước của Hồ Chí Minh?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'304', NULL, NULL, N'Để chuẩn bị thành lập Đảng Cộng sản Việt Nam, Nguyễn Ái Quốc đã từ Liên Xô về Trung Quốc năm nào?', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'305', NULL, NULL, N'Yếu tố nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh:', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'306', NULL, NULL, N'Yếu tố nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh:', NULL)
GO

INSERT INTO [dbo].[ExamKnowledge] ([ExamKnowledgeId], [LessonId], [Answer], [Knowledge], [SubjectId]) VALUES (N'307', NULL, NULL, N'Giai đoạn nào sau đây Hồ Chí Minh tìm thấy con đường cứu nước giải phóng dân tộc?', NULL)
GO

SET IDENTITY_INSERT [dbo].[ExamKnowledge] OFF
GO


-- ----------------------------
-- Table structure for ExamResult
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamResult]') AND type IN ('U'))
	DROP TABLE [dbo].[ExamResult]
GO

CREATE TABLE [dbo].[ExamResult] (
  [ExamResultId] int  IDENTITY(1,1) NOT NULL,
  [AccountId] int  NULL,
  [ExamId] int  NULL,
  [UserExamId] int  NULL,
  [Score] float(53)  NULL,
  [RemainingTime] int  NULL,
  [CompletionTime ] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[ExamResult] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ExamResult
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ExamResult] ON
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'142', N'2052', NULL, N'109', N'0', NULL, N'2024-05-19 12:00:00.4344949')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'143', N'2052', NULL, N'109', N'0', NULL, N'2024-05-19 12:00:12.7964833')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'145', N'2052', NULL, N'109', N'0', NULL, N'2024-05-19 12:22:47.4002483')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'150', N'2', NULL, N'112', N'5.56', NULL, N'2024-05-19 05:45:10.1464307')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'152', N'3', NULL, N'125', N'2.67', NULL, N'2024-05-19 06:22:33.6732757')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'153', N'3', NULL, N'125', N'0', NULL, N'2024-05-19 13:23:34.8284811')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'181', N'3', NULL, N'125', N'0.67', NULL, N'2024-05-22 04:02:35.6870798')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'190', N'6', NULL, N'129', N'0', NULL, N'2024-05-22 16:01:25.0819210')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'191', N'6', NULL, N'129', N'0', NULL, N'2024-05-22 16:01:27.6568213')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'193', N'6', NULL, N'129', N'2.58', NULL, N'2024-05-22 12:45:06.9298524')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'194', N'6', NULL, N'129', N'0', NULL, N'2024-05-22 12:46:13.1402063')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'195', N'6', NULL, N'129', N'0.32', NULL, N'2024-05-22 12:46:24.0151399')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'202', N'4', NULL, N'138', N'0', NULL, N'2024-05-23 00:21:44.0332480')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'203', N'4', NULL, N'138', N'0', NULL, N'2024-05-23 00:36:19.0192363')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'205', N'6', N'199', NULL, N'0', N'178', N'2024-05-23 00:47:41.6149632')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'209', N'6', NULL, N'139', N'0', NULL, N'2024-05-23 03:34:46.5992851')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'210', N'6', NULL, N'139', N'0', NULL, N'2024-05-23 03:35:12.2588813')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'211', N'6', NULL, N'139', N'0', NULL, N'2024-05-23 03:36:49.9322686')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'220', N'4', N'208', NULL, N'5', N'5391', N'2024-05-23 15:08:45.3449872')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'221', N'4', NULL, N'140', N'1.67', NULL, N'2024-05-23 15:11:42.6364807')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'222', N'4', NULL, N'140', N'3.33', NULL, N'2024-05-23 15:12:59.0193724')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'230', N'2063', NULL, N'142', N'2', NULL, N'2024-05-24 15:13:02.3355271')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'231', N'2063', NULL, N'142', N'0', NULL, N'2024-05-24 15:29:32.7789949')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'232', N'2063', NULL, N'142', N'0', NULL, N'2024-05-24 15:30:41.1143267')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'233', N'2063', NULL, N'142', N'0', NULL, N'2024-05-24 15:34:18.3610789')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'234', N'2063', NULL, N'142', N'0', NULL, N'2024-05-24 15:34:29.4599162')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'235', N'2059', NULL, N'143', N'1.43', NULL, N'2024-05-24 15:38:23.7180909')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'237', N'2059', N'220', NULL, N'0.71', N'5395', N'2024-05-24 23:07:59.8484527')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'238', N'2059', N'220', NULL, N'0', N'5398', N'2024-05-24 23:08:09.3394042')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'239', N'2059', N'220', NULL, N'3.57', N'5365', N'2024-05-24 23:08:52.9637081')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'241', N'6', N'220', NULL, N'0', N'5399', N'2024-05-24 16:09:49.0075841')
GO

INSERT INTO [dbo].[ExamResult] ([ExamResultId], [AccountId], [ExamId], [UserExamId], [Score], [RemainingTime], [CompletionTime ]) VALUES (N'242', N'6', N'220', NULL, N'0', N'5398', N'2024-05-24 16:09:53.8963863')
GO

SET IDENTITY_INSERT [dbo].[ExamResult] OFF
GO


-- ----------------------------
-- Table structure for ExamResultReview
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ExamResultReview]') AND type IN ('U'))
	DROP TABLE [dbo].[ExamResultReview]
GO

CREATE TABLE [dbo].[ExamResultReview] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [ExamId] int  NULL,
  [UeId] int  NULL,
  [SelectedAnswerIds] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SelectedAnswerValues] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ExamResultId] int  NULL
)
GO

ALTER TABLE [dbo].[ExamResultReview] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ExamResultReview
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ExamResultReview] ON
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'171', NULL, N'125', N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]', N'[[1883,0],[1906,0],[1911,0],[1895,0],[1877,0],[1904,0],[1926,0],[1920,0],[1951,0],[1955,0],[1944,0],[1977,0],[1988,0],[1982,0],[1974,0]]', N'181')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'180', NULL, N'129', N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'190')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'181', NULL, N'129', N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'191')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'183', NULL, N'129', N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]', N'[[1885,0],[1903,0],[1892,0],[1881,0],[1899,0],[1896,0],[1879,0],[1906,0],[1912,0],[1924,0],[1939,0],[0],[1936,0],[1947,0],[1952,0],[1943,0],[1956,0],[1932,0],[1915,0],[1926,0],[1970,0],[1964,0],[2001,0],[2009,0],[1988,0],[1994,0],[1981,0],[2006,0],[1972,0],[1986,0],[1997,0]]', N'193')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'184', NULL, N'129', N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'194')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'185', NULL, N'129', N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[2000,0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'195')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'192', NULL, N'138', N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'202')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'193', NULL, N'138', N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'203')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'195', N'199', NULL, N'[1,2,3,4,5,6,7,8,9,10]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'205')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'199', NULL, N'139', N'[1,2,3,4,5,6]', N'[[0],[0],[0],[0],[0],[0]]', N'209')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'200', NULL, N'139', N'[1,2,3,4,5,6]', N'[[1902,0],[1892,0],[0],[0],[0],[0]]', N'210')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'201', NULL, N'139', N'[1,2,3,4,5,6]', N'[[1901,0],[1889,0],[1888,0],[1911,0],[1881,0],[1879,0]]', N'211')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'210', N'208', NULL, N'[1,2]', N'[[2948,0],[2950,0]]', N'220')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'211', NULL, N'140', N'[1,2,3,4,5,6]', N'[[2401,0],[2390,0],[2373,0],[1913,0],[1917,0],[1950,0]]', N'221')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'212', NULL, N'140', N'[1,2,3,4,5,6]', N'[[2403,0],[2391,0],[2373,0],[1915,0],[1919,0],[1951,0]]', N'222')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'220', NULL, N'142', N'[1,2,3,4,5]', N'[[1896,0],[1878,0],[1884,0],[0],[1906,0]]', N'230')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'221', NULL, N'142', N'[1,2,3,4,5]', N'[[1895,0],[1878,0],[1881,0],[0],[1907,0]]', N'231')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'222', NULL, N'142', N'[1,2,3,4,5]', N'[[0],[0],[0],[0],[0]]', N'232')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'223', NULL, N'142', N'[1,2,3,4,5]', N'[[1895,0],[0],[0],[0],[0]]', N'233')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'224', NULL, N'142', N'[1,2,3,4,5]', N'[[0],[0],[0],[0],[0]]', N'234')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'225', NULL, N'143', N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14]', N'[[3699,0],[3672,0],[3675,0],[1925,0],[1942,0],[1914,0],[1917,0],[1933,0],[1930,0],[1937,0],[1953,0],[3213,0],[1922,0],[1946,0]]', N'235')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'226', N'220', NULL, N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14]', N'[[3758,0],[3761,0],[3766,0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'237')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'227', N'220', NULL, N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'238')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'228', N'220', NULL, N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14]', N'[[3757,0],[3761,0],[3765,0],[3770,0],[3773,0],[3776,0],[3779,0],[3783,0],[3787,0],[3790,0],[3793,0],[3796,0],[3799,3800,0],[0]]', N'239')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'229', N'220', NULL, N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'241')
GO

INSERT INTO [dbo].[ExamResultReview] ([Id], [ExamId], [UeId], [SelectedAnswerIds], [SelectedAnswerValues], [ExamResultId]) VALUES (N'230', N'220', NULL, N'[1,2,3,4,5,6,7,8,9,10,11,12,13,14]', N'[[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0],[0]]', N'242')
GO

SET IDENTITY_INSERT [dbo].[ExamResultReview] OFF
GO


-- ----------------------------
-- Table structure for Flashcard
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Flashcard]') AND type IN ('U'))
	DROP TABLE [dbo].[Flashcard]
GO

CREATE TABLE [dbo].[Flashcard] (
  [FlashcardId] int  IDENTITY(1,1) NOT NULL,
  [FlashcardName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SubjectId] int  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] int  NULL
)
GO

ALTER TABLE [dbo].[Flashcard] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Flashcard
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Flashcard] ON
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'1', N'PRM392 - PT1', N'16', N'PT1', N'2')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'2', N'WDU203c', NULL, N'WDU203c', N'2')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'4', N'Maths  ', N'2', N'Review 2', N'2')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'5', N'TRS6', N'3', N'Part 1 and 2 in sentences', N'2')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'6', N'PRN231', N'17', NULL, N'2')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'7', N'Biology Practice test', N'3', NULL, N'2')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'1016', N'MLN131', N'3', NULL, N'2')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'1024', N'PRJ301', N'33', NULL, N'2')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'1041', N'pt2 PRJ301', N'17', NULL, N'4')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'1055', N'MAS202', N'34', NULL, N'3')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'1057', N'HCM202 PT1 thêm', N'2', NULL, N'4')
GO

INSERT INTO [dbo].[Flashcard] ([FlashcardId], [FlashcardName], [SubjectId], [Description], [UserId]) VALUES (N'1058', N'SWD391 FE', N'0', NULL, N'3')
GO

SET IDENTITY_INSERT [dbo].[Flashcard] OFF
GO


-- ----------------------------
-- Table structure for Knowledge
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Knowledge]') AND type IN ('U'))
	DROP TABLE [dbo].[Knowledge]
GO

CREATE TABLE [dbo].[Knowledge] (
  [KnowledgeId] int  IDENTITY(1,1) NOT NULL,
  [SubjectId] int  NULL,
  [Knowledge] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Explanation] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Answer] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [FlashcardId] int  NULL,
  [LessonId] int  NULL
)
GO

ALTER TABLE [dbo].[Knowledge] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Knowledge
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Knowledge] ON
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'1', NULL, N'Which of the below choices is the best answer to fill the empty space in the following sentence? If you want to give all text widgets in an app the same format such as font color, font size, and font family, you should add the style attribute to the TextView XML tags in layout file and set the attribute value to the same style name. You should define that style by adding a new style tag inside _______________.A. AndroidManifest.xml fileB. MainActivity.java or MainActivity.kt fileC. styles.xml fileD. activity_main.xml file', NULL, N'A', N'1', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2', NULL, N'To preserve the visible size of your Ul on screens with different densities, you must design your Ul using density-(A)__________ pixels (dp) as your unit of measurement. One dp is a virtual pixel unit that''s roughly equal to one pixel on a (B) ____________ -density screen (160dpi; the "baseline" density). Android translates this value to the appropriate number of real pixels for each other density.A. A.independent, B.highB. A.independent, B.mediumC. A.resolution, B.mediumD. A.independent, B.normal', NULL, N'C', N'1', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3', NULL, N'What is the purpose of super.onCreate in android?A. To create an activityB. To create a graphical window for subclassC. It allows the developers to write the programD. None', NULL, N'B', N'1', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'19', NULL, N'Which of the following is NOT a reason why building products with great UX is hard?
a. You are not the user
b. Computers are weird
c. Software is (usually) complex
d. There is no known process that we can follow to create good UX', NULL, N'C', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'25', NULL, N'True or false: You need to have a degree in psychology in order to understand the principles behind good UX.
a. True
b. False', NULL, N'B', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'35', NULL, N'vvvvvvvvv', NULL, N'vvvvvvvvvv', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'36', NULL, N'zzzzzzzz', NULL, N'zzzzzzzzzzzz', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'37', NULL, N'vnvn', NULL, N'vnvn', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'38', NULL, N'vnvn', NULL, N'vnn', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'41', NULL, N'18 x 5', NULL, N'90', N'4', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'42', NULL, N'7 x 26', NULL, N'182', N'4', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'43', NULL, N'A lot of injustice was ........ upon black people in America.', NULL, N'inflict', N'5', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'44', NULL, N'The "bad seed" in the brain is ready to ............. its problematic form to other proteins or even break others apart.', NULL, N'propagate', N'5', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'45', NULL, N'Choose the INCORRECT information about .NET Standard

a. All of the others.

b. The .NET Standard is a formal specification of .NET APIs that are intended to be available on .NET Core, .NET6. The motivation behind the .NET Standard is establishing greater uniformity in the .NET ecosystem.

c. None of the others.

d. The .NET Standard is a formal specification of .NET APIs that are intended to be available on all .NET implementations (.NET Core, .NET Framework, etc.) The motivation behind the .NET Standard is establishing greater uniformity in the .NET ecosystem.', NULL, N'tétt6', N'6', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'46', NULL, N'tsetto6', NULL, N'of6', N'6', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'48', NULL, N'A plant, such as an iris, that reproduces asexually most of the time probably
A) is found in a changing environment.
B) produces offspring that move into new environments.
C) lacks the ability to make flowers.
D) forms spores.
E) has offspring that live in the same environment as the parents.', NULL, N'E', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'53', NULL, N'qưe', NULL, N'qưe', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'1039', NULL, N'1', NULL, N'b', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'1040', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'1042', NULL, N'2', NULL, N'b', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'1043', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2041', NULL, N'Many believe that the ........... of cancer is increasing', NULL, N'incident', N'5', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2042', NULL, N'Về mặt thực tiễn, việc nghiên cứu chủ nghĩa xã hội khoa học có ý nghĩa gì?
A. Thấy rõ khoảng cách giữa lý luận chủ nghĩa xã hội khoa học và thực tiển vận dụng nó
B. Sự sụp đổ của Liên Xô và Đông Âu là do đã nhận thức và hành động trên nhiều vấn đề trái với chủ nghĩa xã
hội khoa học trái với chủ nghĩa Mác - Lênin chứ không phải là do đi theo chủ nghĩa xã hội khoa học làm cho
các nước này khủng hoảng
C. Cần có bản lĩnh vững vàng, sáng suốt và sáng tạo trong việc vận dụng chủ nghĩa xã hội khoa học vào bối
cảnh lịch sử cu thế của từng quốc gia, tránh giảo điều, bảo thủ, duy ý chỉ
D. Tất cả các đáp án đều đùng', NULL, N'D', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2043', NULL, N'Việc thực hiện chức năng nào của gia đình quyết định mật độ dân cư và nguồn lực lao động của một quốc gia
và quốc tế?
A. Chức năng kinh tế và tổ chức tiêu dùng
B. Chức năng định cư
C. Chức năng tái sản xuất ra con người
D. Chức năng giáo dục, nuôi dưỡng', NULL, N'C', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2044', NULL, N'Đâu không phải là một trong những điểm tương đối ổn định của giai cấp công nhân ngày nay so với thế kỉ XIX?
A. Giai cấp công nhân vẫn là lực lượng sản xuất hàng đầu của xã hội hiện đại
B. Giai cấp công nhân vẫn bị chủ nghĩa tư bản và giai cấp tư sản bóc lột giá trị thặng du
C. Giai cấp công nhân vẫn có lợi ích cơ bản xung đột với lợi ích cơ bản của giai cấp tư sản
D. Giai cấp công nhân vẫn làm việc với cường độ cao, trình độ lao động ngày càng yếu kém', NULL, N'D', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2046', NULL, N'True or false: "User Experience" only describes the experience that people have while actually using a product, and not other related experiences like acquiring the product or fixing it when it breaks.
a. True
b. False', NULL, N'B', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2050', NULL, N'True or false: One of your goals in designing products with a good user experience should be to fail as early and often as possible.
a. True
b. False', NULL, N'A', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2051', N'16', N'Which of the following is INCORRECT about the LogCat tool? (Choose 3 answers)
A. LogCat UI tool is availiable inside Android Studio.
B. You can create a log in your application using Log.v(String, String)
C. Each log message hag a tag
D. Only one of your applications can create log entries, and it should be component class(Activity, Service,..ect)', NULL, N'ABC', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2052', N'16', N'Which of the following is CORRECT about the Toast class? (Choose 3 answers)
A. You cannot a custom layout for a Toast
B. A Toast can only created by an Activity class
C. There no need to close or hide a Toast, since it closes automatically.
D. A Toast is displayed for only one of the following periods: Toast.LENGHT_SHORT or Toast.LENGHT_LONG', NULL, N'ACD', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2053', N'16', N'Which of the following information CANNOT be included in the Manifest file?
A. The activities containes in the application
B. The permissions required by the application
C. The application''s minimun SDK version required
D. The handset model compatible with your application', NULL, N'D', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2054', N'16', N'Which of the following classes should be extended to create a custom view?
A. View
B. ViewGroup
C. Context
D. Activity', NULL, N'A', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2055', N'16', N'Which of the following is a correct constructer for ArrayAdapter? (Choose 3 answers)
A. ArayAdapter(Context context)
B. ArayAdapter(Context context, int recourse)
C.ArayAdapter(Context context, int resourse, int textViewResourceId)
D.ArayAdapter(Context context, int ressourse, List<T>items)', NULL, N'BCD', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2056', N'17', N'Unity has a complex and powerful __ for creating and combining particles to give you all sorts of special effects?
A. Framework
B. System
C. Script
D. All of the above', NULL, N'B', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2057', N'17', N'The UI system allows you to create ____ fast and intuitively. This is an introduction to the major features of Unity''s UI system?
A. user interfaces
B. audio interfaces
C. Users interfaces
D. All of the above', NULL, N'A', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2058', N'17', N'What are the Scene navigation tools?
A. pan
B. orbit
C. zoom
D. play', NULL, N'BC', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2059', N'17', N'You will see this system in other 2D elements that you work with in Unity, like _____ (GUI) elements?
A. Google User Interface
B. Graphical User Interface
C. Good User Interface
D. All of the above', NULL, N'B', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2060', N'17', N'Using the following code, How to disable keyboard input when user is typing?
A.
void Update () { if ((Input.GetButtonUp("M"))){ GameObject go = EventSystem.current.currentSelectedGameObject; InputField inputField = null; //creating dummy, null, InputField component if (go!= null) { inputField = go.GetComponent(); } if (inputField==null) {Globals.lockmouse = !Globals.lockmouse;} } }
B.
public interface IBlah { UnityEvent thisEventHasToBeImplemented { get; } } public class Blah : IBlah { UnityEvent _event = new UnityEvent(); UnityEvent thisEventHasToBeImplemented { get { return _event; } } }
C. Both
D. None of the above', NULL, N'A', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2061', N'18', N'There are two categories of data-centered architecture

A. Batch sequential and Repository
B. Pipe-filter and Batch sequential
C. Repository and Blackboard
D. Blackboard and Pipe-filter', NULL, N'C', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2062', N'18', N'Sam realized that her DeliveryDriver class had some behaviour and attributes that could be shared by other classes, like BusDriver and TaxiDriver, so she made a class called Driver that these classes inherited behaviour from. Which object-oriented design principle did she use?

A. abstraction
B. encapsulation
C. decomposition
D. generalization', NULL, N'D', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2063', N'18', N'Which of these UML diagrams might be useful for the logical view of a system?

A. Class diagram and Sequence diagram
B. Sequence diagram and Deployment diagram
C. State diagram and Class diagram
D. Deployment diagram and State diagram', NULL, N'C', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2064', N'18', N'There is a common technique that used in event architectures to indicate whether or not a particular resource is being accessed by another process at that moment. What is it called?

A. semaphore
B. access switch
C. toggle
D. occupied', NULL, N'B', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2065', N'18', N'What is NOT the essential parts of an HTTP request?

A. A blank space
B. A message body
C. Headers
D. Request-line', NULL, N'A', NULL, NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2072', NULL, N'Which of the following statements about Web Container is true? Select one:

a. Container is a program, which manages the execution of servlets
b. A Web application is accessible to all users connected to the Web
c. The performance of a servlet is independent of the efficiency of the container
d. The Web Container takes request from a servlet and passes it to a Web Server for processing
e. None of the others', NULL, N'a', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2073', NULL, N'Which of the following represents the XML equivalent of this statement <%@ include file="a.jsp"%> .
Select one correct statement.
Select one:

a. <jsp:include page="a.jsp"/>
b. There is no XML equivalent of include directive.
c. <jsp:directive.include file="a.jsp"/>
d. None of the others
e. <jsp:include file="a.jsp"/>', NULL, N'c', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2074', NULL, N'Which of the following attributes of the Page directive is used to specify the page to display errors which may occur in the JSP page? Select one:

a. excption
b. isErrorPage
c. Error
d. None of the others
e. errorPage', NULL, N'c', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'2075', NULL, N'Name the implicit variable available to JSP pages that may be used to access all the other implicit objects. Select one:

a. pageContext
b. request
c. response
d. page
e. out', NULL, N'a', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3114', NULL, N'A model of the design process that shows both the iterative nature and also how it progresses towards an end goal is:
a. The spiral model
b. The waterfall model
c. The hub-and-spoke model
d. The wave model', NULL, N'A', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3115', NULL, N'Interviews, Observations, Surveys, User Testing, and Inspection Methods are all examples of:
a. Common UX mistakes
b. UX Design methods
c. UX Research methods
d. UX Marketing methods', NULL, N'C', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3122', NULL, N'38 x 9', NULL, N'342', N'4', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3137', NULL, N'Which of the following questions would be most relevant to the UX criterion of "Adoptability"?
a. Where do users currently look for products or services like the one we will offer?
b. Do users prefer bright or muted colors for graphics in this product category?
c. How much would people be willing to pay for the product or service we plan to offer?
d. What percentage of people succeed in completing key tasks using the product?', NULL, N'A', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3151', NULL, N'Giai đoạn nào sau đây tư tưởng Hồ Chí Minh tiếp tục phát triển, hoàn thiện?
a. 1945 đến 1960
b. 1930 đến 1969
c. 1945 đến 1969
d. 1930 đến 1945', NULL, N'a', N'1041', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3152', NULL, N'Giai đoạn nào sau đây Hồ Chí Minh tìm thấy con đường cứu nước giải phóng dân tộc?
a. 1911 đến 1930
b. 1911 đến 1920
c. 1911 đến 1935
d. 1930 đến 1945', NULL, N'b', N'1041', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3153', NULL, N'Văn hoá phương Tây nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh trước khi người ra đi tìm đường cứu nước?
a. Văn hoá dân chủ, tiến bộ của Đức
b. Văn hoá dân chủ, tiến bộ của Pháp
c. Văn hoá dân chủ, tiến bộ của Nga
d. Văn hóa dân chủ, tiến bộ của Anh', NULL, N'c', N'1041', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3154', NULL, N'In Unity, what is a GameObject? 
A. A code file 
B. A physical file in the project 
C. An entity in the game scene 
D. A menu option', NULL, N'd', N'1041', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3155', NULL, N'What does the term "gameplay mechanics" refer to? 
A. The narrative structure of the game 
B. The rules and systems that govern player interactions 
C. The marketing strategies for the game 
D. The soundtrack of the game', NULL, N'a', N'1041', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3170', NULL, N'Which of the following is not part of a typical UX design process?
a. Understanding the problem
b. Generating possible solutions
c. Establishing the sale price for a product
d. Assessing prototypes and finding new problems', NULL, N'C', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3171', NULL, N'_____________ means "to make an idea real or concrete."
a. Assessment
b. Communication
c. Reification
d. Reflection', NULL, N'C', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3172', NULL, N'According to Bill Moggridge, "A representation of a design, made before the final solution exists" is called a:
a. Time capsule
b. Prototype
c. Brainstorm
d. Design representation', NULL, N'B', N'2', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3173', NULL, N'Android is based on which kernel?

A. Linux kernel
B. MAC kernel
C. Windows kernel
D. Hybrid Kernel', NULL, N'A', N'1', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3174', NULL, N'Android SDK platform is a set of libraries and APIs that provide necessary classes, methods and interfaces to develop Android applications and allow you to compile your code.

A. True
B. False', NULL, N'A', N'1', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3175', NULL, N'If you want to increase the whitespace between widgets, you will need to use the _____________ property.

A. android:distance
B. android:text-align
C. android:margin
D. android:autoText', NULL, N'C', N'1', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3176', NULL, N'Which one is make the size of an element in the layout fit with the children of its?

A. match-parent
B. fixed
C. wrap-constraint
D. wrap-content', NULL, N'D', N'1', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3177', NULL, N'78 x 7', NULL, N'546
', N'4', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3178', NULL, N'An analysis has ................. another reason of cancer.', NULL, N'bring to light', N'5', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3179', NULL, N'Cancer has ............. as a disease of epidemic proportions.', NULL, N'take the stage', N'5', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3180', NULL, N'............. studies and erroneous warnings have caused the panic about cancer in the society.', NULL, N'skewed', N'5', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3181', NULL, N'2 x 0', NULL, N'0', N'4', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3214', NULL, N'An oak tree is a
A) sporophyte.
B) gametophyte.
C) gamete.
D) spore.
E) zygote.', NULL, N'A', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3231', NULL, N'The sexual life cycle of plants is described as alternation of generations because it alternates between
A) male plants and female plants.
B) reproductive plants and vegetative plants.
C) eggs and sperm.
D) sporophytes and gametophytes.
E) flowers and spores.', NULL, N'D', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3232', NULL, N'The sporophyte produces
A) spores by mitosis.
B) spores by meiosis.
C) gametes by mitosis.
D) gametes by meiosis.
E) gametes by mitosis, followed by meiosi', NULL, N'D', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3233', NULL, N'Spores and gametes are both haploid reproductive cells. What is the difference between the two?
A) Spores germinate and grow into a multicellular haploid gametophyte, and gametes fuse to form a diploid zygote.
B) Spores fuse to form a diploid zygote that eventually becomes the sporophyte, gametes.
C) Spores are found only in plants that reproduce asexually, and gametes are found only in plants that reproduce sexually.
D) Gametes germinate and grow into a multicellular haploid gametophyte, and spores carry out fertilization.', NULL, N'c', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3234', NULL, N'In the alternation of generations, what is formed when a spore germinates?
A) A plant that produces spores when mature.
B) An increased number of spores.
C) A plant that meiotically produces sex cells.
D) A haploid stage called the gametophyte.
E) A haploid stage called the sporophyte.', NULL, N'C', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3235', NULL, N'________ results in the production of spores in flowering plants.
A) Fertilization
B) Germination
C) Meiosis
D) Spermatogenesis
E) Mitosis', NULL, N'B', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3236', NULL, N'In flowering plants, the sperm does not have to swim to the egg. The sperm reaches the eggs by
A) wind pollination.
B) a pollen tube.
C) burrowing through the embryo sac wall.
D) cell division within the spore case.
E) digestion of the seed coat.', NULL, N'B', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3237', NULL, N'A pollen grain is actually the
A) male gametophyte.
B) female gametophyte.', NULL, N'A', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3238', NULL, N'Conifers do not have flowers to attract pollinators. Instead, fertilization occurs
A) via wind pollination.
B) as the sperm and egg unite inside the woody cone.
C) when the endosperm takes the place of the male gametes.
D) when insects coated with pollen are trapped in the sticky resin.
E) when birds transfer pollen in their droppings after eating the pine seeds.', NULL, N'A', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3239', NULL, N'Grass flowers lack petals and sepals. Which of the following statements is TRUE?
A) These flowers are pollinated at night, so they don''t benefit from showy petals or sepals.
B) They are pollinated by flies, which don''t require showy, scented petals.
C) They are imperfect flowers lacking stamen or carpals.
D) They are incomplete flowers lacking one or more floral parts.', NULL, N'd', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3240', NULL, N'Flowers that make pollen, but not ovules, lack
A) petals.
B) sepals.
C) stamens.
D) carpels.
E) filaments.', NULL, N'D', N'7', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3241', NULL, N'Đâu là một trong những nội dung của mối quan hệ lớn trong xây dựng chủ nghĩa xã hội ở Việt Nam hiện nay?
A. Giữa tăng trưởng kinh tế, thực hiện tiến bộ, công bằng xã hội, bảo vệ môi trường sống
B. Giữa tăng trường kinh tế và phát triển văn hóa, thực hiện tiến bộ, bảo vệ môi trường, y tế, giáo dục
C. Giữa tăng trưởng kinh tế và phát triển văn hóa, thực hiện tiến bộ, công bằng xã hội, bảo vệ môi trường
D. Giữa tăng trưởng kinh tế và phát triển văn hóa, thực hiện tiên bộ, công bằng xã hội', NULL, N'B', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3242', NULL, N'Theo VILênin, nguyên tắc cao nhất của chuyên chính vô sản ở Nga khi thực hiện cách mạng tháng Mười và các giai đoạn sau đó là gì?
A. Duy trì khối liên minh giữa giai cấp vô sản và nông dân đề giai cấp vô sản có thể giữ được vai trò lãnh đạo
B. Duy trì trấn áp giai cấp, duy trì quyền lãnh đạo duy nhất của giai cấp công nhân
C. Duy trì khối liên minh tất cả giai cấp, tầng lớp sau khi đã giành được chính quyền
D. Điều hòa mâu thuẫn giữa các giai cấp, bảo đảm các bên có quyền lợi và nghĩa vụ như nhau', NULL, N'A', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3243', NULL, N'Cơ cấu xã hội - giai cấp trong thời kì quá độ lên chủ nghĩa xã hội có sự đan xen giữa cái cũ và cái mới, biểu
hiện về mặt kinh tế của nó là gì?
A. Tồn tại kết cấu kinh tế nhiều thành phần
B. Tồn tại nhiều giai cấp, tầng lớp đối lập với nhau.
C. Tồn tại nhiều chủ sở hữu trong cùng một doanh nghiệp
D. Tồn tại nhiều hình thức liên doanh, liên kết tư bản nước ngoài', NULL, N'C', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3244', NULL, N'Trong các chế độ xã hội trước, sự thống trị của người đàn ông trong gia đình là kết quả của việc gì?
A. Của sự thống trị về kinh tế
B. Của sự phát triển chế độ quân chủ
C. Của sự thống trị về văn hóa
D. Của sự thống trị về chính trị', NULL, N'A', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3245', NULL, N'Tác phẩm nào đành đầu sự ra đời của chủ nghĩa xã hội khoa học?
A. Tuyên ngôn của Đảng Cộng sản
B. Tình cảnh nước Anh
C. Bộ Tư bản
D. Góp phần phê phân triết họ', NULL, N'A', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3246', NULL, N'Sau khi chế độ xã hội chủ nghĩa Liên Xô và Đông Âu sụp đổ, chủ nghĩa xã hội khoa học được bổ sung và phát
triển như thế nào?
A. Được giới tri thức thế giới nghiên cứu như một học thuyết đã lỗi thời
B. Được các nước xã hội chủ nghĩa bổ sung và phát triển trong tình hình mới, phù hợp với bối cảnh tùng nước
C. Các nước tư bản chủ nghĩa nghiên cứu chủ nghĩa xã hội khoa học như một học thuyết nhằm khắc phục các khuyết tật của thời đại mới
D. Được dung hòa cùng với các học thuyết tư sản khác', NULL, N'B', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3247', NULL, N'Các quan hệ gia đình biến đổi, phát triển phụ thuộc vào điều gì?
A. Trình độ phát triển kinh tế và thể chế chính trị - xã hội
B. Số lượng thành viên trong gia đình
C. Điều kiện kinh tế của từng cá nhân trong gia đình
D. Các yếu tố đạo đức của một xã hội', NULL, N'A', N'1016', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3261', NULL, N'123', NULL, N'123', N'6', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3262', NULL, N'123', NULL, N'123', N'6', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3263', NULL, N'Parking at a large university has become a very big problem. University administrators are interested in determining the average parking time (e.g. the time it takes a student to find a parking spot) of its students. An administrator inconspicuously followed 210 students and carefully recorded their parking times. Identify the population of interest to the university administration.

a. the students that park at the university between 9 and 10 AM on Wednesdays
b. the entire set of faculty, staff, and students that park at the university
c. the parking times of the 210 students from whom the data were collected
d. the parking times of the entire set of students that park at the university', NULL, N'D', N'1055', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3267', NULL, N'Nguyễn Ái Quốc đọc "Sơ thảo lần thứ nhất những luận cương về vấn đề dân tộc và vấn đề thuộc địa" của Lênin vào thời gian nào?
a. 7/1917
b. 7/1918
c. 7/1919
d. 7/1920', NULL, N'd', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3268', NULL, N'Bảo Le Paria (Người Cùng khổ) do Nguyễn Ái Quốc đồng sáng lập, ra số đầu tiên khi nào?
A. 1/4/1922
B. 30/12/1920
C. 1/4/1923
D. 1/4/1921', NULL, N'A', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3269', NULL, N'QN=2 Hồ Chí Minh mất bao nhiêu năm bôn ba nước ngoài để tìm đường cứu nước?
a. 10 năm
b. 25 năm
c. 30 năm
d. 35 năm', NULL, N'C', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3270', NULL, N'QN=12 Tư tưởng Hồ Chí Minh được hình thành và phát triển qua mấy giai đoạn?
a. 3
b. 4
c. 5
d. 6', NULL, N'C', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3271', NULL, N'Chọn phương án trả lời đúng nhất?
a. Chủ nghĩa Mác - Lênin là nền tảng tư tưởng, kim chỉ nam cho hành động của Đảng
b. Tư tưởng Hồ Chí Minh là nền tảng tư tưởng, kim chỉ nam cho hành động của Đảng
c. Cùng với chủ nghĩa Mác - Lênin, tư tưởng Hồ Chí Minh là nền tảng tư tưởng và kim chỉ nam cho hành động của Đảng ta', NULL, N'C', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3272', NULL, N'Giai đoạn nào sau đây hình thành tư tưởng yêu nước và ý chí cứu nước của Hồ Chí Minh?
a. 1911 đến 1920
b. 1921 đến 1930
c. 1930 đến 1945
d. 1890 đến 1911', NULL, N'D', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3273', NULL, N'Để chuẩn bị thành lập Đảng Cộng sản Việt Nam, Nguyễn Ái Quốc đã từ Liên Xô về Trung Quốc năm nào?
a. 1925
b. 1927
c. 1923
d. 1924', NULL, N'd', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3274', NULL, N'"Luận cương của V.I. Lênin làm cho tôi rất cảm động, phấn khởi, sáng tỏ, tin tưởng biết bao. Tôi vui mừng đến phát khóc lên. Ngồi một mình trong buồng mà tôi nói to lên như đang nói trước quần chúng đông đảo: hỡi đồng bào bị đọa đày đau khổ! Đây là cái cần thiết cho chúng ta, đây là con đường giải phóng chúng ta" Nguyễn Ái Quốc nói câu ấy khi đang ở đâu?
a. Anh
b. Trung Quốc
c. Pháp
d. Liên Xô', NULL, N'c', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3275', NULL, N'Yếu tố nào sau đây ảnh hưởng đến sự hình thành tư tưởng Hồ Chí Minh:
a. Lý luận và kinh nghiệm các cuộc cách mạng điển hình phương Tây
b. Kinh nghiệm các cuộc cách mạng điển hình ở phương Đông
c. Lý luận và thực tiễn các cuộc cách mạng điển hình trên thế giới', NULL, N'C', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3276', NULL, N'Giá trị đạo đức nào sau đây ảnh hưởng chủ yếu đến sự hình thành tư tưởng Hồ Chí Minh?
a. Đạo đức Thiên chúa giáo
b. Đạo đức Phật giáo
c. Đạo đức Nho giáo', NULL, N'C', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3277', NULL, N'Nguyễn Ái Quốc đến Liên Xô lần đầu khi nào?
a. 1921
b. 1922
c. 1923
d. 1924', NULL, N'c', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3278', NULL, N'Hồ Chí Minh không thừa nhận bản thân mình là:
a. Nhà khoa học
b. Nhà thơ
c. Nhà soạn nhac
d. Nhà chính trị chuyên nghiệp', NULL, N'b', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3279', NULL, N'Giai đoạn nào sau đây Hồ Chí Minh vượt qua thử thách, kiên trì giữ vững lập trường cách mạng?
a. 1911 đến 1920
b. 1921 đến 1930
c. 1930 đến 1945
d. 1890 đến 1911', NULL, N'c', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3280', NULL, N'Nguyễn Tất Thành tham dự cuộc biểu tình chống thuế của nông dân tỉnh Thừa Thiên vào thời gian nào?
a. 5/1905
b. 5/1906
c. 5/1908
d. 6/1911', NULL, N'c', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3281', NULL, N'Hồ Chí Minh cho rằng bản chất của thực dân Pháp và phát xít Nhật:
A. Khác nhau
B. Tất cả phương án đều sai
C. Rất đặc biệt
D. Chẳng khác gì nhau', NULL, N'D', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3282', NULL, N'Một trong những yêu cầu cơ bản trong nghiên cứu tư tưởng Hồ Chí Minh là:
a. Đảm bảo thống nhất nguyên tắc tính Đảng và tính khoa học
b. Đảm bảo thống nhất nguyên tắc tính Nhà nước và tính khoa học
c. Đảm bảo thống nhất nguyên tắc tính Đảng và tính Nhà nước
d. Đảm bảo thống nhất nguyên tắc tính triết học và tính khoa học', NULL, N'a', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3283', NULL, N'Ngoại ngữ nào sau đây được Hồ Chí Minh học đầu tiên?
a. Tiếng Anh
b. Tiếng Pháp
c. Tiếng Trung
d. Tiếng Nga', NULL, N'c', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3284', NULL, N'Nguồn gốc nào sau đây quyết định tư tưởng Hồ Chí Minh:
a. Tư tưởng Tam dân của Tôn Trung Sơn
b. Tư tưởng của Khổng tử
c. Tư tưởng của chủ nghĩa Mác-Lênin
d. Tư tưởng của Giêsu', NULL, N'c', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3285', NULL, N'Nguyên tắc cơ bản nào sau đây cần phải quán triệt trong nghiên cứu tư tưởng Hồ Chí Minh?
a. Quan điểm kế thừa và phát triển
b. Quan điểm kế thừa và toàn diện
c. Quan điểm cách mạng và cụ thể
d. Quan điểm toàn diện và cụ thể', NULL, N'A', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3286', NULL, N'Người thầy giáo đầu tiên của Hồ Chí Minh là ai?
a. Vương Thúc Quý
b. Phan Bội Châu
c. Nguyễn Sinh Sắc
d. Phan Châu Trình', NULL, N'c', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3287', NULL, N'Nguyễn Ái Quốc tham dự Đại hội Tua, tán thành Quốc tế 3, tham gia thành lập Đảng Cộng sản Pháp thời gian nào?
a. 12/1921
b. 12/1918
c. 12/1919
d. 12/1920', NULL, N'd', N'1057', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3289', NULL, N'The peak shopping time at home improvement store is between 8 11:00 am on Saturday mornings. Management at the home improvement store randomly selected 150 customers last Saturday morning and decided to observe their shopping habits. They recorded the number of items that a sample of the customers purchased as well as the total time the customers spent in the store. Identify the types of variables recorded by the home improvement store.

a. number of items - discrete; total time - discrete
b. number of items - continuous; total time - continuous
c. number of items - continuous; total time - discrete
d. number of items - discrete; total time - continuous', NULL, N'D', N'1055', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3290', NULL, N'Which of the following statement is an expression in scripting element? Select one:

a. <%= for(int i=0; i<n; i++) {out.println(i)} %>
b. <%= x + y - 8 %>
c. All of the others
d. <%= x + y; %>', NULL, N'b', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3291', NULL, N'Given a JSP code fragment <% int a = Integer.parseInt("a"); %> Choose the correct statement Select one:

a. The code is generated in jspInit method by JSP enginer
b. None of the others
c. The code is generated in _jspService method by JSP engine
d. The code is generated besides of _jspService method by JSP engine', NULL, N'c', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3292', NULL, N'Which of the following statements about Request and Response message structure is false? Select one:

a. Request message structure consists of request line and header information
b. Request line returns the User-Agent along with the Accept header
c. Header information in response message contains information such as server, last modified date, content-length and content type
d. None of the others', NULL, N'b', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3293', NULL, N'Assume that you need to write a JSP page that adds numbers from one to ten, and then print the output.

<% int sum = 0;
for(j = 0; j < 10; j++) { %>
<% // XXX --- Add j to sum %>
<% } %>
<% // YYY --- Display ths sum %>

Which statement when placed at the location XXX can be used to compute the sum.
Select the one correct statement Select one:

a. = sum = sum + j;
b. sum = sum + j
c. = sum = sum + j
d. sum = sum + j;', NULL, N'b', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3294', NULL, N'Which of the following statements about the Servlet is false? Select one:

a. Servlets are portable
b. Initialization code in servlets is executed every time the program is made to run
c. None of the others
d. Servlets are easy to use', NULL, N'b', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3295', NULL, N'A JSP page needs to perform some operations before servicing the first request. Where can this be done? Select one:

a. within the page directive of the JSP page
b. within a method called jspInit
c. within a scriptlet at the top of the JSP page
d. within the XML element', NULL, N'b', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3296', NULL, N'In a JSP life cycle, which of the following phases produces a Java Servlet (with extension *.java) file? Select one:

a. None of the others
b. Initialization
c. Instantiation
d. Compilation
e. Translation', NULL, N'e', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3297', NULL, N'Given a JSP error page, which implicit object refers to the uncaught Throwable that resulted in the page being invoked? Select one:

a. request.exception
b. error
c. throwable
d. None of the others
e. exception', NULL, N'e', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3298', NULL, N'A JSP page needs to generate an XML file. Which attribute of page directive may be used to specify that the JSP page is generating an XML file? Select one:

a. <%@page contentType ="text/html">
b. None of the others
c. <%@page contentType ="html/xml">
d. <%@page contentType ="xml">
e. <%@page contentType ="text/xml">', NULL, N'e', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3299', NULL, N'Which of the following request dispatching techniques can be used to include the content of another servlet into the current output stream? Select one:

a. include
b. forward
c. None of the others.
d. redirect', NULL, N'a', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3300', NULL, N'Consider the description:

-The method is called by the servlet container in response to a client request
- The method is implemented in HttpServlet classes
- The method accepts a HttpServletRequest and HttpServletResponse as parameters
- The method dispatches to the appropriate doXXX() methods
- The method is one of important methods in Servlet Life Cycle
What''s the method''s name?

Select one:

a. service
b. None of the others
c. processRequest
d. doPost
e. doGet', NULL, N'a', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3301', NULL, N'Which object(s) can be used in JSP without declaring or initializing?
Select one:

a. Server object
b. Java objects
c. Request object
d. Implicit objects
e. None of the others
', NULL, N'd', N'1024', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3302', NULL, N'Which architecture style supports scalability and reliability better?
A. Buffered message-based architecture (2)
B. Both (1) and (2) are the same
C. Non-buffered Event-based architecture (1)', NULL, N'A', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3303', NULL, N'Architecture Styles contribute to which of the following?
A. Software Connectors
B. Software Quality Attributes
C. None of the others
D. Software Elements', NULL, N'B', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3304', NULL, N'Which of the following is a INCORRECT description about component in Component-based architecture?
A. A Component is NOT a modular.
B. A Component is a deployable software package.
C. A Component is a reusable set of well-defined functionalities.
D. A Component is a plug-and-play element.', NULL, N'A', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3305', NULL, N'In Non-Buffered Event-Based Architecture, The Event Source class must NOT provide which mechanism below?
A. The action in the handleEvent() method to respond to incoming events.
B. Register or Deregister event targets
C. To notify event targets of the occurrence of the event', NULL, N'A', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3306', NULL, N'Compare with object oriented design, component oriented design is
A. High time to market by reuse of existing components.
B. More reliability by reuse of existing components.
C. High development cost by reuse of existing components.', NULL, N'B', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3307', NULL, N'Which of the following is the CORRECT statement about Component-based architecture?
A. It divides the system into 3 partitions: Model, View and Controller.
B. It divides the system into sub-systems which will be deployed.
C. It divides the system into 2 partitions: Event and Event Listener.
D. It divides the problem into sub-problems each associated with component partitions', NULL, N'D', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3308', NULL, N'Which is the best answer for the meaning of the description of the class diagram below.
A. There are two kinds of Person: Student and Professor, each person lives at only.
B. There are two kinds of Person: Student and Professor. There is no more than or
C. A person lives at only one address and there are no more than one person living...
D. There is a Person inheritance from Student and Professor, the person lives at...', NULL, N'C', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3309', NULL, N'What is CORRECT statement about Inheritance?
A. It refers to ability of an object which can be contained inside another object.
B. It is called information hiding, the purpose of it is to separate interface from implementation.
C. It refers to the ability of an object to behave differently and assume different forms based on its inheritance hierarchy.
D. It allows software reuse, hence improving the effectiveness of software development.', NULL, N'D', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3310', NULL, N'Which of the followings are categorized into Hierarchical architecture styles?
A. Hierarchical structure, Layered, Master-Slave, Virtual Machine
B. Client-server, Hierarchical structure, Broker, Service Oriented
C. Client-server, Layered, Broker, Virtual Machine
D. Client-server, Multi-tier, Hierarchical structure, Service Oriented.', NULL, N'A', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3311', NULL, N'Which of the following is the management structure?
A. It is a software architecture design description in which software code units like binary code files, software modules, or software component deployment units.
B. It is a software architecture design description in which the software elements are threads, processes, sessions, transactions, objects, or software component at execution time.
C It is a software architecture design description in which an allocation structure may also be used to describe the project management structure.
D. It is a software architecture design description in which software code units like source code files, software modules, or software component deployment units.', NULL, N'C', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3312', NULL, N'Which of the followings is a style of distributed architecture?
A. Multi-tier architecture
B. MVC architecture
C. Repository architecture
D. Virtual Machine architecture', NULL, N'A', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3313', NULL, N'Availability belongs to which of the following quality attributes group?
A. Business attributes
B. Implementation attributes
C Runtime attributes', NULL, N'C', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3314', NULL, N'Package diagram is grouped in which of following UML diagrams category?
A. Construction Diagrams
B. Behavioral Diagrams
C. Activity Diagrams
D. Structural Diagrams', NULL, N'D', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3315', NULL, N'Which of the following is the CORRECT statement about passive filter?
A. It works with a passive pipe which provides read/write mechanisms for pulling and pushing.
B. It is adopted on the Pipe and Filter mechanism in unix.
C. It works with active pipes that pull data out from a filter and push data into the next filter.
D. It pulls in data and push out the transformed data (pull/push)', NULL, N'C', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3316', NULL, N'In a large complex information system where many software component clients need to access to it in different ways, which architecture style will you apply?
A. Process Control architecture
B. Repository architecture
C. Batch sequential architecture
D. Blackboard architecture', NULL, N'B', N'1058', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3320', NULL, N'Which of the following is a discrete quantitative variable?

a. The volume of water released from a dam
b. The distance you drove yesterday.
c. The Dow Jones Industrial average
d. The number of employees of an insurance company', NULL, N'D', N'1055', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3321', NULL, N'Which of the following is a continuous quantitative variable?

a. The number of employees of an insurance company
b. The color of a student''s eyes
c. The amount of milk produced by a cow in one 24-hour period
d. The number of gallons of milk sold at the local grocery store yesterday', NULL, N'c', N'1055', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3322', NULL, N'Which of the following is appropriate for displaying data collected on the different brands of mobile students at a major university use? Select one:

a. A Pareto chart
b. A two-way classification table
c. A histogram
d. A scatter plot', NULL, N'a', N'1055', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3323', NULL, N'Researchers are concerned that the weight of the average American school child is increasing implying, among other things, that children''s clothing should be manufactured and marketed in larger sizes. If X is the weight of school children sampled in a nationwide study without rounding, then X is an example of: Select one:

a. a categorical variable
b. a discrete variable
c. a continuous variable
d. a table of random numbers', NULL, N'C', N'1055', NULL)
GO

INSERT INTO [dbo].[Knowledge] ([KnowledgeId], [SubjectId], [Knowledge], [Explanation], [Answer], [FlashcardId], [LessonId]) VALUES (N'3324', NULL, N'An employee at the local ice cream parlor asks three customers if they like chocolate ice cream. What is the population?

a. three selected customers
b. all customers
c. all women customers
d. all men customers', NULL, N'B', N'1055', NULL)
GO

SET IDENTITY_INSERT [dbo].[Knowledge] OFF
GO


-- ----------------------------
-- Table structure for Lesson
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Lesson]') AND type IN ('U'))
	DROP TABLE [dbo].[Lesson]
GO

CREATE TABLE [dbo].[Lesson] (
  [LessonId] int  IDENTITY(1,1) NOT NULL,
  [Topic] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Subject_id] int  NOT NULL,
  [Order] float(53)  NOT NULL
)
GO

ALTER TABLE [dbo].[Lesson] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Lesson
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Lesson] ON
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'21', N'Giới thiệu môn học 1', N'2', N'1')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'22', N'I. Khái niệm tư tưởng Hồ Chí Minh', N'2', N'2')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'26', N'II. Đối tượng nghiên cứu', N'2', N'3')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'27', N'III. Phương pháp nghiên cứu', N'2', N'4')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'28', N'IV. Ý nghĩa của việc học tập môn học tư tưởng Hồ Chí Minh', N'2', N'5')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'29', N'I. Cơ sở hình thành tư tưởng Hồ Chí Minh', N'2', N'6')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'30', N'II. Quá trình hình thành và phát triển tư tưởng Hồ Chí Minh', N'2', N'7')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'31', N'III. Giá trị tư tưởng Hồ Chí Minh', N'2', N'8')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'32', N'I. Tư tưởng Hồ Chí Minh về độc lập dân tộc', N'2', N'9')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'33', N'II. Tư tưởng Hồ Chí Minh về chủ nghĩa xã hội và xây dựng chủ nghĩa xã hội ở Việt Nam', N'2', N'12')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'34', N'I. Đối tượng nghiên cứu của môn học Lịch sử Đảng Cộng sản Việt Nam', N'3', N'1')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'35', N'II. Chức năng, nhiệm vụ của môn học Lịch sử Đảng Cộng sản Việt Nam', N'3', N'2')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'36', N'III. Phương pháp nghiên cứu, học tập môn Lịch sử Đảng Cộng sản Việt Nam', N'3', N'3')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'37', N'IV. Mục đích, yêu cầu của môn học Lịch sử Đảng Cộng sản Việt Nam', N'3', N'4')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'38', N'I. Đảng Cộng sản Việt Nam ra đời và Cương lĩnh chính trị đầu tiên của Đảng (tháng 2-1930)', N'3', N'5')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'40', N'II. Đảng lãnh đạo đấu tranh giành chính quyền (1930 - 1945)', N'3', N'6')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'41', N'I. Đảng lãnh đạo xây dựng, bảo vệ chính quyền cách mạng và kháng chiến chống thực dân Pháp xâm lược (1945 - 1954)', N'3', N'7')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'42', N'II. Lãnh đạo xây dựng chủ nghĩa xã hội ở miền Bắc và kháng chiến chống đế quốc Mỹ xâm lược, giải phóng miền Nam, thống nhất đất nước (1954 - 1975)', N'3', N'8')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'43', N'I. Đảng lãnh đạo cả nước xây dựng chủ nghĩa xã hội và bảo vệ Tổ quốc (1975 - 1986)', N'3', N'9')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'44', N'Đảng lãnh đạo cả nước quá độ lên chủ nghĩa xã hội và tiến hành công cuộc đổi mới (1975 - 2018)', N'3', N'10')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'46', N'Mobile Development Overview
Android Introduction', N'16', N'1')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'47', N'Android Studio', N'16', N'2')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'48', N'Android Application Structure', N'16', N'3')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'49', N'Build the first application', N'16', N'4')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'50', N'Simple UI Widgets', N'16', N'5')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'51', N'Using UI in application', N'16', N'6')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'52', N'Layout manager (LinearLayout, Relative Layout,…)', N'16', N'7')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'53', N'Layout manager (cont''d)', N'16', N'8')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'54', N'Styles', N'16', N'9')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'55', N'Themes', N'16', N'10')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'56', N'Binding Views', N'16', N'11')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'57', N'Handling actions on Views', N'16', N'12')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'58', N'Activity', N'16', N'13')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'59', N'Android application Lifecyle', N'16', N'14')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'60', N'Intents', N'16', N'15')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'61', N'Linking Activities Using Intents', N'16', N'16')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'62', N'RecyclerView', N'16', N'17')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'63', N'Implementing RecyclerView', N'16', N'18')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'64', N'Display pictures on UI', N'16', N'19')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'65', N'Android Menu', N'16', N'20')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'87', N'Course Introduction', N'17', N'1')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'88', N'Module 1: Starting to Program', N'17', N'2')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'89', N'Module 2: Data Types, Variables, and Constants', N'17', N'3')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'90', N'Module 3: Classes and Objects', N'17', N'4')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'91', N'Module 4: Unity 2D Basics and Selection', N'17', N'5')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'92', N'Module 5: Unity Input', N'17', N'6')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'93', N'Module 6: Arrays, Lists, and Iteration', N'17', N'7')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'94', N'Module 7: Abstraction and Console App Classes', N'17', N'8')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'95', N'Module 8: Methods and Unity Classes', N'17', N'9')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'96', N'Module 9: Strings, Text IO, and Audio', N'17', N'10')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'97', N'Coin magnet', N'17', N'11')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'98', N'Trình bày kịch bản game của project', N'17', N'12')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'99', N'Làm project', N'17', N'13')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'100', N'Báo cáo tiến độ lần 1', N'17', N'14')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'101', N'Làm project', N'17', N'15')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'102', N'Báo cáo tiến độ lần 2', N'17', N'16')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'103', N'Làm project', N'17', N'17')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'104', N'Báo cáo tiến độ lần 3', N'17', N'18')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'105', N'Demo sản phẩm cuối', N'17', N'19')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'106', N'Demo sản phẩm cuối', N'17', N'20')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'107', N'I. Sự ra đời của chủ nghĩa xã hội khoa học', N'18', N'1')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'108', N'II. Các giai đoạn phát triển cơ bản của chủ nghĩa xã hội khoa học', N'18', N'2')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'109', N'III. Đối tượng, phương pháp và ý nghĩa của việc nghiên cứu chủ nghĩa xã hội khoa học', N'18', N'3')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'110', N'I. Quan điểm cơ bản chủ nghĩa Mác – Lênin về giai cấp công nhân và sứ mệnh lịch sử thế giới của giai cấp công nhân', N'18', N'4')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'111', N'II. Giai cấp công nhân và việc thực hiện sứ mệnh lịch sử của giai cấp công nhân hiện nay', N'18', N'5')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'112', N'III. Sứ mệnh lịch sử của giai cấp công nhân Việt Nam', N'18', N'6')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'113', N'I. Chủ nghĩa xã hội', N'18', N'7')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'114', N'II. Thời kỳ quá độ lên chủ nghĩa xã hội', N'18', N'8')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'115', N'III. Quá độ lên chủ nghĩa xã hội ở Việt Nam', N'18', N'9')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'116', N'I. Dân chủ và dân chủ xã hội chủ nghĩa', N'18', N'10')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'117', N'II. Nhà nước xã hội chủ nghĩa', N'1', N'1')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'119', N'III. Dân chủ xã hội chủ nghĩa và nhà nước pháp quyền xã hội chủ nghĩa ở Việt Nam', N'1', N'2')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'120', N'II. Dân chủ xã hội chủ nghĩa và nhà nước pháp quyền xã hội chủ nghĩa ở Việt Nam', N'1', N'3')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'121', N'I. Cơ cấu xã hội - giai cấp trong thời kỳ quá độ lên chủ nghĩa xã hội', N'1', N'4')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'122', N'II. Liên minh giai cấp, tầng lớp trong thời kỳ quá độ lên chủ nghĩa xã hội', N'1', N'5')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'123', N'III. Cơ cấu xã hội - giai cấp và liên minh giai cấp, tầng lớp trong thời kỳ quá độ lên chủ nghĩa xã hội ở Việt Nam', N'1', N'6')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'124', N'I. Dân tộc trong thời kỳ quá độ lên chủ nghĩa xã hội', N'1', N'7')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'125', N'II. Tôn giáo trong thời kì quá độ lên chủ nghĩa xã hội', N'1', N'8')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'126', N'III. Quan hệ dân tộc và tôn giáo ở Việt Nam', N'1', N'9')
GO

INSERT INTO [dbo].[Lesson] ([LessonId], [Topic], [Subject_id], [Order]) VALUES (N'127', N'I. Khái niệm, vị trí và chức năng của gia đình', N'1', N'10')
GO

SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO


-- ----------------------------
-- Table structure for Question
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Question]') AND type IN ('U'))
	DROP TABLE [dbo].[Question]
GO

CREATE TABLE [dbo].[Question] (
  [ExamId] int  NOT NULL,
  [ExamKnowledgeId] int  NOT NULL,
  [QuestionId] int  IDENTITY(1,1) NOT NULL
)
GO

ALTER TABLE [dbo].[Question] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Question
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Question] ON
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'127', N'22', N'82')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'127', N'23', N'83')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'127', N'24', N'84')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'127', N'25', N'85')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'127', N'26', N'86')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'127', N'27', N'87')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'127', N'28', N'88')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'127', N'29', N'89')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'127', N'30', N'90')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'31', N'91')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'32', N'92')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'33', N'93')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'34', N'94')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'35', N'95')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'36', N'96')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'37', N'97')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'38', N'98')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'39', N'99')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'128', N'41', N'101')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'45', N'105')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'46', N'106')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'47', N'107')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'48', N'108')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'49', N'109')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'50', N'110')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'51', N'111')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'52', N'112')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'53', N'113')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'54', N'114')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'131', N'55', N'115')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'180', N'109', N'169')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'180', N'110', N'170')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'180', N'111', N'171')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'180', N'112', N'172')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'180', N'113', N'173')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'180', N'114', N'174')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'180', N'115', N'175')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'180', N'116', N'176')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'121', N'181')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'122', N'182')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'123', N'183')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'124', N'184')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'125', N'185')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'126', N'186')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'127', N'187')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'128', N'188')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'129', N'189')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'187', N'130', N'190')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'131', N'191')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'132', N'192')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'133', N'193')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'134', N'194')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'135', N'195')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'136', N'196')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'137', N'197')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'138', N'198')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'139', N'199')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'188', N'140', N'200')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'141', N'201')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'142', N'202')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'143', N'203')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'144', N'204')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'145', N'205')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'146', N'206')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'147', N'207')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'148', N'208')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'149', N'209')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'189', N'150', N'210')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'151', N'211')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'152', N'212')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'153', N'213')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'154', N'214')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'155', N'215')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'156', N'216')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'157', N'217')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'158', N'218')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'159', N'219')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'186', N'160', N'220')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'161', N'221')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'162', N'222')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'163', N'223')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'164', N'224')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'165', N'225')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'166', N'226')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'167', N'227')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'168', N'228')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'169', N'229')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'190', N'170', N'230')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'171', N'231')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'172', N'232')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'173', N'233')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'174', N'234')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'175', N'235')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'176', N'236')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'177', N'237')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'178', N'238')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'179', N'239')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'192', N'180', N'240')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'181', N'241')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'182', N'242')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'183', N'243')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'184', N'244')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'185', N'245')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'186', N'246')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'187', N'247')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'188', N'248')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'189', N'249')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'193', N'190', N'250')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'191', N'251')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'192', N'252')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'193', N'253')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'194', N'254')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'195', N'255')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'196', N'256')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'197', N'257')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'198', N'258')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'199', N'259')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'194', N'200', N'260')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'195', N'201', N'261')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'195', N'202', N'262')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'195', N'203', N'263')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'195', N'204', N'264')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'195', N'206', N'266')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'215', N'275')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'216', N'276')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'217', N'277')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'218', N'278')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'219', N'279')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'220', N'280')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'221', N'281')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'222', N'282')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'223', N'283')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'199', N'224', N'284')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'180', N'263', N'323')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'195', N'264', N'324')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'195', N'267', N'327')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'195', N'268', N'328')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'269', N'329')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'270', N'330')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'271', N'331')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'272', N'332')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'273', N'333')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'274', N'334')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'275', N'335')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'276', N'336')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'277', N'337')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'217', N'278', N'338')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'279', N'339')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'280', N'340')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'281', N'341')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'282', N'342')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'283', N'343')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'284', N'344')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'285', N'345')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'286', N'346')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'287', N'347')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'288', N'348')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'289', N'349')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'290', N'350')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'291', N'351')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'218', N'292', N'352')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'294', N'354')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'295', N'355')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'296', N'356')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'297', N'357')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'298', N'358')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'299', N'359')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'300', N'360')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'301', N'361')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'302', N'362')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'303', N'363')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'304', N'364')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'305', N'365')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'306', N'366')
GO

INSERT INTO [dbo].[Question] ([ExamId], [ExamKnowledgeId], [QuestionId]) VALUES (N'220', N'307', N'367')
GO

SET IDENTITY_INSERT [dbo].[Question] OFF
GO


-- ----------------------------
-- Table structure for Role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Role]') AND type IN ('U'))
	DROP TABLE [dbo].[Role]
GO

CREATE TABLE [dbo].[Role] (
  [RoleId] int  IDENTITY(1,1) NOT NULL,
  [RoleName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] bit  NOT NULL
)
GO

ALTER TABLE [dbo].[Role] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Role] ON
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description], [Status]) VALUES (N'1', N'Admin', NULL, N'1')
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description], [Status]) VALUES (N'2', N'Manager', NULL, N'1')
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description], [Status]) VALUES (N'3', N'Teacher', NULL, N'1')
GO

INSERT INTO [dbo].[Role] ([RoleId], [RoleName], [Description], [Status]) VALUES (N'4', N'Student', NULL, N'1')
GO

SET IDENTITY_INSERT [dbo].[Role] OFF
GO


-- ----------------------------
-- Table structure for Semester
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Semester]') AND type IN ('U'))
	DROP TABLE [dbo].[Semester]
GO

CREATE TABLE [dbo].[Semester] (
  [SemesterId] int  IDENTITY(1,1) NOT NULL,
  [SemesterName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Semester] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Semester
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Semester] ON
GO

INSERT INTO [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (N'2', N'SUMMER2021')
GO

INSERT INTO [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (N'3', N'FALL2022')
GO

INSERT INTO [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (N'4', N'SPRING2022')
GO

INSERT INTO [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (N'5', N'SUMMER2022')
GO

INSERT INTO [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (N'7', N'SPRING2023')
GO

INSERT INTO [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (N'8', N'SUMMER2023')
GO

INSERT INTO [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (N'9', N'FALL2023')
GO

INSERT INTO [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (N'10', N'SPRING2024')
GO

INSERT INTO [dbo].[Semester] ([SemesterId], [SemesterName]) VALUES (N'18', N'FALL2021')
GO

SET IDENTITY_INSERT [dbo].[Semester] OFF
GO


-- ----------------------------
-- Table structure for Subject
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Subject]') AND type IN ('U'))
	DROP TABLE [dbo].[Subject]
GO

CREATE TABLE [dbo].[Subject] (
  [SubjectId] int  IDENTITY(1,1) NOT NULL,
  [SubjectName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [AccountId] int  NULL,
  [SubjectCode] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Status] bit  NULL,
  [Description] varchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Subject] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Subject
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Subject] ON
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'1', N'History of CPV - Lịch sử Đảng Cộng Sản Việt Nam', N'3', N'VNR202', N'1', N'')
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'2', N'HCM Ideology - Tư tưởng Hồ Chí Minhh', N'3', N'HCM202', N'1', N'')
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'3', N'Scientific socialism - Chủ nghĩa xã hội khoa học', N'3', N'MLN131', N'1', N'')
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'16', N'Mobile Programming - Lập trình mobile', N'3', N'PRM392', N'1', N'')
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'17', N'C# Programming and Unity - Lập trình C# và Unity', N'3', N'PRU211m', N'1', N'')
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'18', N' Philosophy of Marxism – Leninism - Triết học Mác - Lê-nin', N'3', N'MLN111', N'1', N'')
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'22', N'Software Architecture and Design_Kiến trúc và thiết kế phần mềm', N'3', N'SWD392', N'1', NULL)
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'23', N'Triết học mác Lênnin', N'3', N'VNR202', N'1', NULL)
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'30', N'KLDA - Đồ án tốt nghiệp', N'3', N'SEP490', N'1', NULL)
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'31', N'Đồ án tốt nghiệp _ SEP _ 490', N'3', N'SEP491', N'1', N'<p>Do An Tot Nghiep Ky Spring</p><p>&nbsp;</p>')
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'32', N'Introduction to Computer Science-Nhập môn khoa học máy tính', N'3', N'CSI106', N'1', NULL)
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'33', N'Java Web Application Development-Phát triển ứng dụng Java web', N'3', N'PRJ302', N'1', NULL)
GO

INSERT INTO [dbo].[Subject] ([SubjectId], [SubjectName], [AccountId], [SubjectCode], [Status], [Description]) VALUES (N'34', N'Statistics & Probability-Xác suất thống kê', N'3', N'MAS291', N'1', NULL)
GO

SET IDENTITY_INSERT [dbo].[Subject] OFF
GO


-- ----------------------------
-- Table structure for UserExam
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UserExam]') AND type IN ('U'))
	DROP TABLE [dbo].[UserExam]
GO

CREATE TABLE [dbo].[UserExam] (
  [UserId] int  NOT NULL,
  [QuestionCount] int  NULL,
  [ExamName] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UEId] int  IDENTITY(1,1) NOT NULL
)
GO

ALTER TABLE [dbo].[UserExam] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserExam
-- ----------------------------
SET IDENTITY_INSERT [dbo].[UserExam] ON
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'2052', N'32', N'My Test ', N'109')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'2', N'9', N'PT5', N'112')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'3', N'15', N'Do My Self', N'125')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'6', N'31', N'Test 3', N'129')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'6', N'18', N'dddd', N'130')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'3', N'19', N'My Test ', N'135')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'3', N'41', N'My Test ', N'136')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'3', N'9', N'My Test ', N'137')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'4', N'22', N'My Test ', N'138')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'6', N'6', N'PT 3', N'139')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'4', N'6', N'Test Assignment 4', N'140')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'2063', N'5', N'PT 3', N'142')
GO

INSERT INTO [dbo].[UserExam] ([UserId], [QuestionCount], [ExamName], [UEId]) VALUES (N'2059', N'14', N'Exam by me', N'143')
GO

SET IDENTITY_INSERT [dbo].[UserExam] OFF
GO


-- ----------------------------
-- Table structure for UserQuestion
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[UserQuestion]') AND type IN ('U'))
	DROP TABLE [dbo].[UserQuestion]
GO

CREATE TABLE [dbo].[UserQuestion] (
  [UserId] int  NULL,
  [UEId] int  NULL,
  [ExamKnowledgeId] int  NULL,
  [UQid] int  IDENTITY(1,1) NOT NULL
)
GO

ALTER TABLE [dbo].[UserQuestion] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of UserQuestion
-- ----------------------------
SET IDENTITY_INSERT [dbo].[UserQuestion] ON
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'28', N'505')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'26', N'506')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'30', N'507')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'22', N'508')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'29', N'509')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'25', N'510')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'27', N'511')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'24', N'512')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'23', N'513')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'32', N'514')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'39', N'515')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'34', N'516')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'41', N'517')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'37', N'518')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'33', N'519')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'35', N'520')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'36', N'521')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'38', N'522')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'31', N'523')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'40', N'524')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'53', N'525')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'48', N'526')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'55', N'527')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'52', N'528')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'54', N'529')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'46', N'530')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'45', N'531')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'50', N'532')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'44', N'533')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'49', N'534')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'47', N'535')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2052', N'109', N'51', N'536')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2', N'112', N'26', N'568')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2', N'112', N'24', N'569')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2', N'112', N'29', N'570')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2', N'112', N'28', N'571')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2', N'112', N'25', N'572')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2', N'112', N'27', N'573')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2', N'112', N'30', N'574')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2', N'112', N'23', N'575')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2', N'112', N'22', N'576')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'24', N'577')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'23', N'578')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'27', N'579')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'30', N'580')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'25', N'581')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'22', N'582')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'26', N'583')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'29', N'584')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'28', N'585')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'39', N'586')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'32', N'587')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'33', N'588')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'41', N'589')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'40', N'590')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'37', N'591')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'38', N'592')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'36', N'593')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'34', N'594')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'31', N'595')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'35', N'596')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'54', N'597')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'45', N'598')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'55', N'599')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'44', N'600')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'51', N'601')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'46', N'602')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'50', N'603')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'47', N'604')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'52', N'605')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'48', N'606')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'49', N'607')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'29', N'608')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'30', N'609')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'27', N'610')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'22', N'611')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'25', N'612')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'23', N'613')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'28', N'614')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'24', N'615')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'26', N'616')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'34', N'617')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'39', N'618')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'38', N'619')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'31', N'620')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'35', N'621')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'37', N'622')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'41', N'623')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'40', N'624')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'32', N'625')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'33', N'626')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'36', N'627')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'44', N'628')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'54', N'629')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'52', N'630')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'49', N'631')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'48', N'632')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'53', N'633')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'50', N'634')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'51', N'635')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'55', N'636')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'46', N'637')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'23', N'638')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'26', N'639')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'29', N'640')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'22', N'641')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'27', N'642')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'36', N'643')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'38', N'644')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'40', N'645')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'32', N'646')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'35', N'647')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'37', N'648')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'39', N'649')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'34', N'650')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'31', N'651')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'33', N'652')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'41', N'653')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'46', N'654')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'47', N'655')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'53', N'656')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'55', N'657')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'50', N'658')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'54', N'659')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'45', N'660')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'26', N'661')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'28', N'662')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'24', N'663')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'22', N'664')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'23', N'665')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'29', N'666')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'25', N'667')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'27', N'668')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'30', N'669')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'30', N'679')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'24', N'680')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'25', N'681')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'22', N'682')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'29', N'683')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'38', N'684')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'33', N'685')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'37', N'686')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'39', N'687')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'34', N'688')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'31', N'689')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'41', N'690')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'36', N'691')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'40', N'692')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'35', N'693')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'32', N'694')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'54', N'695')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'51', N'696')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'50', N'697')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'55', N'698')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'48', N'699')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'46', N'700')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'49', N'701')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'53', N'702')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'45', N'703')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'44', N'704')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'52', N'705')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'47', N'706')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'23', N'750')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'24', N'751')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'30', N'752')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'25', N'753')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'28', N'754')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'55', N'755')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'52', N'756')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'50', N'757')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'49', N'758')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'23', N'759')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'29', N'760')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'30', N'761')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'26', N'762')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'22', N'763')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'28', N'764')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'34', N'765')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'32', N'766')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'40', N'767')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'41', N'768')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'38', N'769')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'47', N'770')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'50', N'771')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'48', N'772')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'125', N'46', N'773')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'27', N'774')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'29', N'775')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'22', N'776')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'28', N'777')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'26', N'778')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'35', N'779')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'31', N'780')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'34', N'781')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'33', N'782')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'39', N'783')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'54', N'784')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'47', N'785')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'55', N'786')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'50', N'787')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'53', N'788')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'45', N'789')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'51', N'790')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'25', N'791')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'23', N'792')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'22', N'793')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'29', N'794')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'28', N'795')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'26', N'796')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'30', N'797')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'24', N'798')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'27', N'799')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'39', N'800')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'32', N'801')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'38', N'802')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'34', N'803')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'35', N'804')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'40', N'805')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'41', N'806')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'37', N'807')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'31', N'808')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'33', N'809')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'36', N'810')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'53', N'811')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'52', N'812')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'48', N'813')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'44', N'814')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'46', N'815')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'55', N'816')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'51', N'817')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'54', N'818')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'47', N'819')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'45', N'820')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'50', N'821')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'49', N'822')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'30', N'823')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'24', N'824')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'28', N'825')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'29', N'826')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'25', N'827')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'26', N'828')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'22', N'829')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'23', N'830')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'27', N'831')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'31', N'832')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'36', N'833')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'33', N'834')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'35', N'835')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'32', N'836')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'34', N'837')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'39', N'838')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'41', N'839')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'38', N'840')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'40', N'841')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'37', N'842')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'53', N'843')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'49', N'844')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'47', N'845')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'52', N'846')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'48', N'847')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'54', N'848')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'44', N'849')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'50', N'850')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'45', N'851')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'46', N'852')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'109', N'55', N'853')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'24', N'854')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'28', N'855')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'25', N'856')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'23', N'857')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'27', N'858')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'26', N'859')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'22', N'860')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'29', N'861')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'30', N'862')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'33', N'863')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'37', N'864')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'32', N'865')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'36', N'866')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'39', N'867')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'40', N'868')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'38', N'869')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'41', N'870')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'35', N'871')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'31', N'872')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'34', N'873')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'45', N'874')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'44', N'875')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'53', N'876')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'55', N'877')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'50', N'878')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'51', N'879')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'48', N'880')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'54', N'881')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'46', N'882')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'49', N'883')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'129', N'52', N'884')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'24', N'885')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'25', N'886')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'29', N'887')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'22', N'888')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'30', N'889')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'27', N'890')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'36', N'891')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'41', N'892')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'51', N'893')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'47', N'894')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'53', N'895')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'54', N'896')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'45', N'897')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'52', N'898')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'44', N'899')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'46', N'900')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'49', N'901')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'130', N'50', N'902')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'119', N'903')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'114', N'905')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'120', N'906')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'115', N'907')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'110', N'908')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'109', N'909')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'113', N'910')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'116', N'911')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'112', N'912')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'111', N'913')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'117', N'914')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'140', N'915')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'132', N'916')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'136', N'917')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'134', N'918')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'137', N'919')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'135', N'920')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'139', N'921')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'138', N'922')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'131', N'923')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'133', N'924')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'27', N'925')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'26', N'926')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'24', N'927')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'28', N'928')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'23', N'929')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'29', N'930')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'22', N'931')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'30', N'932')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'25', N'933')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'133', N'934')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'132', N'935')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'136', N'936')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'140', N'937')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'134', N'938')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'138', N'939')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'137', N'940')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'135', N'941')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'139', N'942')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'130', N'131', N'943')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'115', N'944')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'119', N'945')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'110', N'946')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'109', N'947')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'116', N'948')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'111', N'949')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'120', N'950')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'114', N'951')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'117', N'952')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'113', N'953')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'112', N'954')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'136', N'956')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'139', N'957')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'134', N'958')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'137', N'959')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'135', N'960')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'132', N'961')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'140', N'962')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'138', N'963')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'133', N'964')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'109', N'131', N'965')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'22', N'966')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'30', N'967')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'26', N'968')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'28', N'969')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'27', N'970')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'23', N'971')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'25', N'972')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'24', N'973')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'29', N'974')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'140', N'975')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'136', N'976')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'131', N'977')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'139', N'978')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'135', N'979')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'134', N'980')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'133', N'981')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'132', N'982')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'138', N'983')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'135', N'137', N'984')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'29', N'985')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'22', N'986')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'28', N'987')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'26', N'988')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'30', N'989')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'23', N'990')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'27', N'991')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'25', N'992')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'24', N'993')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'136', N'994')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'135', N'995')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'132', N'996')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'137', N'997')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'139', N'998')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'140', N'999')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'138', N'1000')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'134', N'1001')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'131', N'1002')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'133', N'1003')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'50', N'1004')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'121', N'1005')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'129', N'1006')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'44', N'1007')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'45', N'1008')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'55', N'1009')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'125', N'1010')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'52', N'1011')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'127', N'1012')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'123', N'1013')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'53', N'1014')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'49', N'1015')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'124', N'1016')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'54', N'1017')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'46', N'1018')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'130', N'1019')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'122', N'1020')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'48', N'1021')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'128', N'1022')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'126', N'1023')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'51', N'1024')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'136', N'47', N'1025')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'137', N'27', N'1026')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'137', N'26', N'1027')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'137', N'30', N'1028')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'137', N'28', N'1029')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'137', N'29', N'1030')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'137', N'25', N'1031')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'137', N'23', N'1032')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'137', N'22', N'1033')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'3', N'137', N'24', N'1034')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'114', N'1035')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'110', N'1036')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'120', N'1037')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'115', N'1038')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'111', N'1039')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'113', N'1041')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'117', N'1042')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'109', N'1043')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'119', N'1044')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'112', N'1045')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'116', N'1046')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'161', N'1047')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'165', N'1048')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'162', N'1049')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'169', N'1050')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'168', N'1051')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'163', N'1052')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'167', N'1053')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'164', N'1054')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'166', N'1055')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'138', N'170', N'1056')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'139', N'28', N'1057')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'139', N'25', N'1058')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'139', N'24', N'1059')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'139', N'30', N'1060')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'6', N'139', N'23', N'1061')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'140', N'116', N'1063')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'140', N'113', N'1064')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'140', N'109', N'1065')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'140', N'31', N'1066')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'140', N'32', N'1067')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'4', N'140', N'40', N'1068')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2063', N'142', N'26', N'1070')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2063', N'142', N'22', N'1071')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2063', N'142', N'23', N'1072')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2063', N'142', N'13', N'1073')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2063', N'142', N'29', N'1074')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'116', N'1075')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'109', N'1076')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'110', N'1077')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'34', N'1078')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'38', N'1079')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'31', N'1080')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'32', N'1081')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'36', N'1082')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'35', N'1083')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'37', N'1084')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'41', N'1085')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'40', N'1086')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'33', N'1087')
GO

INSERT INTO [dbo].[UserQuestion] ([UserId], [UEId], [ExamKnowledgeId], [UQid]) VALUES (N'2059', N'143', N'39', N'1088')
GO

SET IDENTITY_INSERT [dbo].[UserQuestion] OFF
GO


-- ----------------------------
-- Auto increment value for Account
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Account]', RESEED, 2063)
GO


-- ----------------------------
-- Primary Key structure for table Account
-- ----------------------------
ALTER TABLE [dbo].[Account] ADD CONSTRAINT [PK__Account__349DA5A6F712406A] PRIMARY KEY CLUSTERED ([AccountId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AnswerOption
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AnswerOption]', RESEED, 3804)
GO


-- ----------------------------
-- Primary Key structure for table AnswerOption
-- ----------------------------
ALTER TABLE [dbo].[AnswerOption] ADD CONSTRAINT [PK__AnswerOp__CEB739B63F07E6C7] PRIMARY KEY CLUSTERED ([AnswerOptionId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Class
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Class]', RESEED, 1041)
GO


-- ----------------------------
-- Primary Key structure for table Class
-- ----------------------------
ALTER TABLE [dbo].[Class] ADD CONSTRAINT [PK__Class__CB1927C0D2EEF311] PRIMARY KEY CLUSTERED ([ClassId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Triggers structure for table ClassUser
-- ----------------------------
CREATE TRIGGER [dbo].[trg_AfterDeleteClassUser]
ON [dbo].[ClassUser]
WITH EXECUTE AS CALLER
FOR DELETE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ClassId INT;

    -- Lấy ClassId của bản ghi vừa bị xóa
    SELECT @ClassId = ClassId
    FROM deleted;

    -- Giảm giá trị của trường Capacity trong bảng Class
    UPDATE Class
    SET Capacity = Capacity - 1
    WHERE ClassId = @ClassId;
END
GO

CREATE TRIGGER [dbo].[trg_AfterInsertClassUser]
ON [dbo].[ClassUser]
WITH EXECUTE AS CALLER
FOR INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Tạo một bảng tạm thời để lưu trữ số lượng người trong mỗi lớp
    DECLARE @TempTable TABLE (ClassId INT, NumberOfPeople INT);

    -- Đếm số lượng người trong mỗi lớp và lưu vào bảng tạm thời
    INSERT INTO @TempTable (ClassId, NumberOfPeople)
    SELECT ClassId, COUNT(AccountId) AS NumberOfPeople
    FROM classuser
    GROUP BY ClassId;

    -- Cập nhật giá trị của trường Capacity trong bảng Class
    UPDATE Class
    SET Capacity = t.NumberOfPeople
    FROM Class c
    INNER JOIN @TempTable t ON c.ClassId = t.ClassId;
END;
GO

CREATE TRIGGER [dbo].[trg_BeforeInsertClassUser]
ON [dbo].[ClassUser]
WITH EXECUTE AS CALLER
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @IsTeacher BIT;

    -- Kiểm tra xem người dùng có RoleId = 3 hay không và thiết lập giá trị IsTeacher
    INSERT INTO ClassUser (ClassId, AccountId, IsTeacher, IsActive)
    SELECT i.ClassId, i.AccountId, 
           CASE 
               WHEN a.RoleId = 3 THEN 1
               ELSE 0
           END AS IsTeacher,
           i.IsActive
    FROM inserted i
    JOIN Account a ON i.AccountId = a.AccountId;
END;
GO


-- ----------------------------
-- Primary Key structure for table ClassUser
-- ----------------------------
ALTER TABLE [dbo].[ClassUser] ADD CONSTRAINT [PK_ClassUser] PRIMARY KEY CLUSTERED ([ClassId], [AccountId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Exam
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Exam]', RESEED, 220)
GO


-- ----------------------------
-- Primary Key structure for table Exam
-- ----------------------------
ALTER TABLE [dbo].[Exam] ADD CONSTRAINT [PK__Exam__297521C7E9E3F5CC] PRIMARY KEY CLUSTERED ([ExamId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ExamKnowledge
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ExamKnowledge]', RESEED, 307)
GO


-- ----------------------------
-- Primary Key structure for table ExamKnowledge
-- ----------------------------
ALTER TABLE [dbo].[ExamKnowledge] ADD CONSTRAINT [PK__ExamKnow__75CBCA4CA8E34461] PRIMARY KEY CLUSTERED ([ExamKnowledgeId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ExamResult
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ExamResult]', RESEED, 242)
GO


-- ----------------------------
-- Primary Key structure for table ExamResult
-- ----------------------------
ALTER TABLE [dbo].[ExamResult] ADD CONSTRAINT [PK__ExamResu__3DBFDE269B0968F0] PRIMARY KEY CLUSTERED ([ExamResultId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ExamResultReview
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ExamResultReview]', RESEED, 230)
GO


-- ----------------------------
-- Primary Key structure for table ExamResultReview
-- ----------------------------
ALTER TABLE [dbo].[ExamResultReview] ADD CONSTRAINT [PK__ExamResu__3214EC07D778DE41] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Flashcard
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Flashcard]', RESEED, 1063)
GO


-- ----------------------------
-- Primary Key structure for table Flashcard
-- ----------------------------
ALTER TABLE [dbo].[Flashcard] ADD CONSTRAINT [PK__Flashcar__D36F857277C8B1DC] PRIMARY KEY CLUSTERED ([FlashcardId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Knowledge
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Knowledge]', RESEED, 3381)
GO


-- ----------------------------
-- Primary Key structure for table Knowledge
-- ----------------------------
ALTER TABLE [dbo].[Knowledge] ADD CONSTRAINT [PK__Knowledg__FF28F84973E3EDF1] PRIMARY KEY CLUSTERED ([KnowledgeId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Lesson
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Lesson]', RESEED, 128)
GO


-- ----------------------------
-- Primary Key structure for table Lesson
-- ----------------------------
ALTER TABLE [dbo].[Lesson] ADD CONSTRAINT [PK__Lesson__B084ACD01F494616] PRIMARY KEY CLUSTERED ([LessonId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Question
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Question]', RESEED, 367)
GO


-- ----------------------------
-- Primary Key structure for table Question
-- ----------------------------
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [PK__Question__0DC06FAC31F71CC5] PRIMARY KEY CLUSTERED ([QuestionId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Role
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Role]', RESEED, 11)
GO


-- ----------------------------
-- Primary Key structure for table Role
-- ----------------------------
ALTER TABLE [dbo].[Role] ADD CONSTRAINT [PK__Role__8AFACE1AA02822FA] PRIMARY KEY CLUSTERED ([RoleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Semester
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Semester]', RESEED, 19)
GO


-- ----------------------------
-- Primary Key structure for table Semester
-- ----------------------------
ALTER TABLE [dbo].[Semester] ADD CONSTRAINT [PK_Semeter] PRIMARY KEY CLUSTERED ([SemesterId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Subject
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Subject]', RESEED, 34)
GO


-- ----------------------------
-- Primary Key structure for table Subject
-- ----------------------------
ALTER TABLE [dbo].[Subject] ADD CONSTRAINT [PK__Subject__AC1BA3A8C4CFEEB1] PRIMARY KEY CLUSTERED ([SubjectId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for UserExam
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[UserExam]', RESEED, 143)
GO


-- ----------------------------
-- Primary Key structure for table UserExam
-- ----------------------------
ALTER TABLE [dbo].[UserExam] ADD CONSTRAINT [PK__UserExam__B6E17FF000018AB5] PRIMARY KEY CLUSTERED ([UEId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for UserQuestion
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[UserQuestion]', RESEED, 1088)
GO


-- ----------------------------
-- Primary Key structure for table UserQuestion
-- ----------------------------
ALTER TABLE [dbo].[UserQuestion] ADD CONSTRAINT [PK__UserQues__B7E3A27643C31889] PRIMARY KEY CLUSTERED ([UQid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table Account
-- ----------------------------
ALTER TABLE [dbo].[Account] ADD CONSTRAINT [FK_Account_Role] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([RoleId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AnswerOption
-- ----------------------------
ALTER TABLE [dbo].[AnswerOption] ADD CONSTRAINT [FK__AnswerOpt__Knowl__6C190EBB] FOREIGN KEY ([ExamKnowledgeId]) REFERENCES [dbo].[ExamKnowledge] ([ExamKnowledgeId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Class
-- ----------------------------
ALTER TABLE [dbo].[Class] ADD CONSTRAINT [FK_Class_Semester] FOREIGN KEY ([SemesterId]) REFERENCES [dbo].[Semester] ([SemesterId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Class] ADD CONSTRAINT [FK_Class_Subject] FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subject] ([SubjectId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ClassUser
-- ----------------------------
ALTER TABLE [dbo].[ClassUser] ADD CONSTRAINT [FK_ClassUser_Account] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ClassUser] ADD CONSTRAINT [FK_ClassUser_Class] FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Exam
-- ----------------------------
ALTER TABLE [dbo].[Exam] ADD CONSTRAINT [FK__Exam__SubjectId__0A9D95DB] FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subject] ([SubjectId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Exam] ADD CONSTRAINT [FK__Exam__ClassId__73BA3083] FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ExamKnowledge
-- ----------------------------
ALTER TABLE [dbo].[ExamKnowledge] ADD CONSTRAINT [FK__ExamKnowl__Lesso__45BE5BA9] FOREIGN KEY ([LessonId]) REFERENCES [dbo].[Lesson] ([LessonId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ExamKnowledge] ADD CONSTRAINT [FK__ExamKnowl__Subje__498EEC8D] FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subject] ([SubjectId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ExamResult
-- ----------------------------
ALTER TABLE [dbo].[ExamResult] ADD CONSTRAINT [FK__ExamResul__Accou__339FAB6E] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ExamResult] ADD CONSTRAINT [FK__ExamResul__ExamI__3493CFA7] FOREIGN KEY ([ExamId]) REFERENCES [dbo].[Exam] ([ExamId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ExamResult] ADD CONSTRAINT [FK__ExamResul__UserE__3587F3E0] FOREIGN KEY ([UserExamId]) REFERENCES [dbo].[UserExam] ([UEId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ExamResultReview
-- ----------------------------
ALTER TABLE [dbo].[ExamResultReview] ADD CONSTRAINT [FK_ExamResult_Exam] FOREIGN KEY ([ExamId]) REFERENCES [dbo].[Exam] ([ExamId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ExamResultReview] ADD CONSTRAINT [FK_ExamResult_UserExam] FOREIGN KEY ([UeId]) REFERENCES [dbo].[UserExam] ([UEId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ExamResultReview] ADD CONSTRAINT [FK__ExamResul__ExamR__40F9A68C] FOREIGN KEY ([ExamResultId]) REFERENCES [dbo].[ExamResult] ([ExamResultId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Flashcard
-- ----------------------------
ALTER TABLE [dbo].[Flashcard] ADD CONSTRAINT [FK_Subject] FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subject] ([SubjectId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Flashcard] ADD CONSTRAINT [FK_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Account] ([AccountId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Flashcard] NOCHECK CONSTRAINT [FK_Subject]
GO

ALTER TABLE [dbo].[Flashcard] NOCHECK CONSTRAINT [FK_User]
GO


-- ----------------------------
-- Foreign Keys structure for table Knowledge
-- ----------------------------
ALTER TABLE [dbo].[Knowledge] ADD CONSTRAINT [FK_Flashcard] FOREIGN KEY ([FlashcardId]) REFERENCES [dbo].[Flashcard] ([FlashcardId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Knowledge] ADD CONSTRAINT [FK_Lesson] FOREIGN KEY ([LessonId]) REFERENCES [dbo].[Lesson] ([LessonId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Knowledge] ADD CONSTRAINT [FK__Knowledge__Subje__5629CD9C] FOREIGN KEY ([SubjectId]) REFERENCES [dbo].[Subject] ([SubjectId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Lesson
-- ----------------------------
ALTER TABLE [dbo].[Lesson] ADD CONSTRAINT [Subject_id] FOREIGN KEY ([Subject_id]) REFERENCES [dbo].[Subject] ([SubjectId]) ON DELETE NO ACTION ON UPDATE CASCADE
GO


-- ----------------------------
-- Foreign Keys structure for table Question
-- ----------------------------
ALTER TABLE [dbo].[Question] ADD CONSTRAINT [FK__Question__ExamId__14270015] FOREIGN KEY ([ExamId]) REFERENCES [dbo].[Exam] ([ExamId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Question] ADD CONSTRAINT [FK__Question__Knowle__151B244E] FOREIGN KEY ([ExamKnowledgeId]) REFERENCES [dbo].[ExamKnowledge] ([ExamKnowledgeId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Subject
-- ----------------------------
ALTER TABLE [dbo].[Subject] ADD CONSTRAINT [FK_Subject_Account1] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table UserExam
-- ----------------------------
ALTER TABLE [dbo].[UserExam] ADD CONSTRAINT [FK__UserExam__UserId__60A75C0F] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Account] ([AccountId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table UserQuestion
-- ----------------------------
ALTER TABLE [dbo].[UserQuestion] ADD CONSTRAINT [FK__UserQuest__UserI__6383C8BA] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Account] ([AccountId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[UserQuestion] ADD CONSTRAINT [FK__UserQuesti__UEId__2EDAF651] FOREIGN KEY ([UEId]) REFERENCES [dbo].[UserExam] ([UEId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[UserQuestion] ADD CONSTRAINT [FK__UserQuest__Knowl__06CD04F7] FOREIGN KEY ([ExamKnowledgeId]) REFERENCES [dbo].[ExamKnowledge] ([ExamKnowledgeId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

