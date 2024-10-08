# 🎬IMDB Movie Analysis

## ✏️Table of contents:
[1. Project Name](#1-project-name)  
[2. Summary](#2-summary)  
[3. Data source](#3-data-source)  
[4. Tools and analysis method](#4-tools-and-analysis-method)  
[5. Implementation](#5-implementation)  
[6. Dashboard](#6-dashboard)  
[7. Results and Findings](#7-results-and-findings)  
[8. Conclusion](#8-conclusion)  
[9. Recommendations](#9-recommendations)

## 1. Project Name  
### 📍Phân tích các bộ phim chiếu rạp phổ biến nhất từ năm 2006 đến 2016

## 2. Summary
Tìm hiểu về sự thay đổi và phát triển của ngành điện ảnh bằng việc phân tích xu hướng làm phim, hành vi xem phim của khán giả

## 3. Data source 
Đây là tập dữ liệu chứa các bộ phim chiếu rạp phổ biến nhất tù năm 2006 đến 2016 với các thông tín chính như đạo diễn, diễn viên, doanh thu, thể loại,... Nguồn dataset: https://www.kaggle.com/datasets/PromptCloudHQ/imdb-data

Chú thích ý nghĩa các trường dữ liệu:
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

## 4. Tools and analysis method  
- SQL Server
  * Sử dụng DQL (Data Query Language): select
  * Sử dụng DDL (Data Definition Language): create, alter
  * Sử dụng DML (Data Manipulation Language): update
  * Sử dụng join: inner join
  * Sử dụng String Function: String_split
- Power BI
  * Sử dụng Mathematical Functions (Hàm toán học):

## 5. Implementation  
 
## 6. Dashboard

## 7. Results and Findings 

## 8. Conclusion  

## 9. Recommendations
