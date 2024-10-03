# 🎬IMDB Movie Analysis

## ✏️Các thao tác chính bao gồm
Dự án này tập trung vào việc phân tích dữ liệu phim gồm 1000 bộ phim phổ biến nhất trên IMDB trong 10 năm (2006 - 2016). Các thao tác chính bao gồm:
- Sử dụng DQL(Data Query Language) để truy vấn kiểm tra dữ liệu
- Sử dụng DDL (Data Definition Language) để định nghĩa dữ liệu
- Sử dụng String Function để tách thể loại phim, tách chuỗi diễn viên thành các trường riêng biệt và tạo bảng riêng cho diễn viên
- Sử dụng DML(Data Manipulation Language) để sửa đổi và bổ sung dữ liệu thiếu trong các trường quan trọng
- Sử dụng Power BI để trực quan hóa dữ liệu từ đó có thể thấy được rõ hơn về sự thay đổi trong ngành điện ảnh cũng như xu hướng xem phim của khán giả.

## ✏️Thông tin dữ liệu (Dataset)
- Rank: Số thứ tự phim (mỗi phim là 1 rank khác nhau)
- Title: Tên của bộ phim
- Description: Tóm tắt phim ngắn gọn chỉ bằng một câu
- Genre: Danh sách các thể loại được phân tách bằng dấu phẩy được sử dụng để phân loại phim
- Director: Tên của đạo diễn bộ phim
- Actors: Danh sách các ngôi sao chính của bộ phim được phân tách bằng dấu phẩy
- Year: Năm phát hành của bộ phim dưới dạng số nguyên
- Runtime: Thời lượng của bộ phim tính bằng phút 
- Rating: Đánh giá của người dùng cho bộ phim từ 0-10 
- Votes: Số phiếu bầu 
- Revenue: Doanh thu phim tính bằng triệu
- Metascrore: Điểm trung bình tổng hợp của các nhà phê bình từ 0 đến 100.

🔗🔗🔗Bảng và trường dữ liệu được tạo thêm:
- Các trường tạo thêm vào bảng gốc (movie_data)
  - Primary_Genre: Thể loại chính của phim (chắc chắn có)
  - Secondary_Genre: Thể loại phụ của phim (có thể có hoặc không)
  - Tertiary_Genre: Thể loại bổ trợ của phim (có thể có hoặc không)
- Bảng và dữ liệu tạo thêm (actors_name)
  - Rank: Lấy từ bảng gốc
  - Star: Tên diễn viên (Nhiều diễn viên có thể có cùng 1 Rank)
