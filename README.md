# Chào mừng bạn đến với WEB CONTACT BOOK API 👋
  Ngày nay với sự phát triển không ngừng của khoa học máy tính. Một số công việc làm bằng thủ công vừa tốn công, tốn sức lại hao tốn quá nhiều thời gian dần dần được chuyển sang hệ thống tự động hoá, đem lại sự thuận tiện trong công việc cho con người cũng như góp phần làm cho cơ quan hoạt động mang tính chuyên nghiệp và hiệu quả hơn. Từ nhu cầu thực tế đó đã xuất hiện nhiều phần mềm và công cụ để quản lý và xử lý các công việc thay cho con người.
  
  Trong quản lý giáo dục, với số lượng học sinh ngày càng tăng thì việc tính điểm và xếp loại học tập cho học sinh vào cuối mỗi học kỳ, năm học ngày càng chiếm nhiều thời gian và tốn nhiều công sức của bộ phận giáo vụ và giáo viên phụ trách môn học. Do đó, xây dựng phần mềm “ Quản lý điểm số” cho một trường học nói chung và trường trung học phổ thông nói riêng là hết sức cần thiết nhằm tiết kiệm thời gian, công sức của giáo viên đồng thời tăng độ chính xác trong công tác tính điểm và xếp loại học sinh. Đây là một công cụ hỗ trợ cần thiết và hiệu quả, giúp cho công việc dễ dàng hơn, tiết kiệm được thời gian và công sức đáng kể.

![image](https://user-images.githubusercontent.com/61449720/89984959-74c47200-dca4-11ea-9c32-9983a2c84e26.png)

## ✨Giới thiệu sơ lược ứng dụng
-	Nhập thông tin học sinh khi mới vào trường
-	Phân lớp học sinh vào đầu năm học.
-	Nhập thông tin giáo viên và chuyên môn của giáo viên.
-	Phân công giảng dạy
-	Nhập điểm cho học sinh.
-	Tính điểm trung bình môn, trung bình học kỳ, điểm tổng kết cả năm và xếp loại học sinh.
-	Thống kê danh sách học sinh, danh sách giáo viên.
-	Tìm kiếm học sinh, tìm kiếm giáo viên.

# ✨Mô tả bài toán
Một học sinh khi mới vào trường sẽ được nhập thông tin cá nhân vào hệ thống các thông tin gồm: Họ và tên, giới tính, ngày sinh, dân tộc, tôn giáo, họ tên cha, nghề nghiệp cha, họ tên mẹ, nghề nghiệp mẹ vào đầu năm học học sinh sẽ được phân vào các lớp
  
-	Khối 10 thì phân theo dạng lớp mà học sinh đó đăng ký.
-	Khối 11 và 12 thì có thể được phân vào lớp cũ (ví dụ lớp 10A1 sẽ lên lớp 11A1) hoặc có thể được phân vào lớp khác (ví dụ lớp 10A1 lên 11A2) Với mỗi lớp sẽ lưu trữ các thông tin về lớp, sĩ số và giáo viên chủ nhiệm
 	Trong mỗi khối lớp có 4 dạng lớp: lớp A, B. Mỗi loại lớp có nhiều lớp.
-	Dạng lớp A: 
 Môn nâng cao: Toán, Lý, Hóa. 
 Môn cơ bản: Các môn còn lại.
-	Dạng lớp B:
Môn nâng cao: Toán, Hóa, Sinh. 
Môn cơ bản: Các môn còn lại.
  
- Trong một học kỳ các môn học sẽ có các hình thức kiểm tra như:
  o Kiểm tra thường xuyên: gồm kiểm tra miệng và kiểm tra 15 phút, 
  o Kiểm tra định kỳ: kiểm tra 1 tiết.
  o Kiểm tra học kỳ: thi
 (Trong đó, kiểm tra miệng (hệ số 1), 15 phút (hệ số 1), 1 tiết (hệ số 2) có thể có nhiều cột điểm. Riêng điểm “thi” (hệ số 3) chỉ có một cột duy nhất vào cuối học kỳ)
-	Sau mỗi học kỳ điểm trung bình môn của học kỳ và cả năm được tính như sau:
 + Điểm trung bình môn của học kỳ (ĐTBmhk) là điểm trung bình cộng của điểm các bài kiểm tra thường xuyên (KTtx), kiểm tra điều kiện (KTđk) và kiểm tra học kỳ (KThk).
 
    ![Diem_Tb](https://user-images.githubusercontent.com/61449720/89987323-11d4da00-dca8-11ea-99e1-da6e52f3c82a.PNG)

  + Điểm trung bình môn của cả năm (ĐTBmcn) là trung bình cộng của điểm trung bình môn học kỳ I (ĐTBmhkI) với điểm trung bình môn học kỳ II (ĐTBmhkII), trong đó ĐTBmhkII tính theo hệ số 2:

 ![DTBMHK](https://user-images.githubusercontent.com/61449720/89987482-5496b200-dca8-11ea-99cb-0aec27022c1e.PNG) 

a)	Điểm trung bình các môn học kỳ (ĐTBhk) là trung bình cộng của điểm trung bình môn học kỳ của tất cả các môn với hệ số(a, b….) của từng môn học:
							
![DTBHK](https://user-images.githubusercontent.com/61449720/89987964-11890e80-dca9-11ea-9b1f-0bb09b2f1d9b.PNG)

b)	Điểm trung bình các môn cả năm (ĐTBcn) là trung bình cộng của điểm trung bình cả năm của tất cả các môn học.

![image](https://user-images.githubusercontent.com/61449720/89988068-341b2780-dca9-11ea-94bf-5a9b9483932a.png)

c) Điểm trung bình các môn học kỳ hoặc cả năm môn học là số nguyên hoặc số thập phân được lấy đến chữ số thập phân thứ nhất sau khi đã làm tròn số.
 	Tiêu chuẩn xếp loại học lực theo học kỳ và theo năm học:
-	Loại Giỏi :
  + Điểm trung bình các môn học từ 8,0 trở lên và có 1 trong 2 môn toán và ngữ văn từ 8,0 trở lên.
  + Không có môn học nào có điểm trung bình dưới 6,5.
- Loại khá
  + Điểm trung bình các môn học từ 6,5 trở lên và có 1 trong 2 môn toán và ngữ văn từ 6,5 trở lên.
  + Không có môn học nào có điểm trung bình dưới 5,0.
- Loại trung bình
  + Điểm trung bình các môn học từ 5,0 trở lên và 1 trong 2 môn toán và ngữ văn từ 5,0 trở lên..
  + Không có môn nào có điểm trung bình dưới 3,5.
- Loại yếu
  + Điểm trung bình các môn học từ 3,5 trở lên.
  + Không có môn nào có điểm trung bình dưới 2,0.
  + Loại kém: các trường hợp còn lại.
- Đối tượng sử dụng
  o	Giáo viên dạy lớp nhập điểm cho học sinh.
  o	Phụ huynh và học sinh xem điểm.
  o	Ban giám hiệu có toàn quyền tác động vào hệ thống.
  
	Yêu cầu hệ thống
o	Có chế độ phân quyền cho các loại người dùng khác nhau.
o	Hỗ trợ nhập thông tin cơ bản của giáo viên dạy lớp và giáo viên chủ nhiệm.
o	Hỗ trợ nhập thông tin học sinh khi vào trường.
o	Hỗ trợ phân lớp học sinh vào đầu năm học.
o	Hỗ trợ nhập điểm cho học sinh.
o	Hỗ trợ thống kê điểm, xếp loại học lực của học sinh theo từng lớp

# Môi trường phát triển:
- Mô hình API
- Ngôn ngữ C#
- Microsoft SQL server 2019

# Quan hệ giữa các bảng
![dtb](https://user-images.githubusercontent.com/61449720/89989282-f0c1b880-dcaa-11ea-9ea1-f0287deefedb.PNG)

# Các tác giả
- Lê Duy - https://github.com/LeDuy1993
- Hồng Ân - https://github.com/hongann-295
- Trần Đức - https://github.com/tranhuuduc215
