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
  * Sử dụng Hàm tổng hợp (Aggregation functions): COUNTROWS()
  * Sử dụng Hàm bảng (Table functions): DISTINCT(), UNION(), VALUES()

## 5. Implementation
- Chuẩn bị và làm sạch dữ liệu: Sử dụng SQL để tách chuỗi các trường thể loại và diễn viên, tạo bảng chứa dữ liệu diễn viên
- Phân tích: Phân tích sự thay đổi và phát triển của ngành điện ảnh từ các bộ phim chiếu rạp phổ biến qua các chiều của người xem, diễn viên, đạo diễn
- Trực quan hóa dữ liệu: Sử dụng Power BI xây dựng các biểu đồ trực quan hóa các dữ liệu liên quan và ảnh hưởng tới các chiều phân tích
 
## 6. Dashboard
![Screenshot 2024-10-09 161619](https://github.com/user-attachments/assets/613d9695-6d7c-4e64-891c-b72ca5aae804)

![Screenshot 2024-10-09 161633](https://github.com/user-attachments/assets/e6a6d148-f787-4604-bfef-cc40d96ea110)

![Screenshot 2024-10-09 161647](https://github.com/user-attachments/assets/d59ac77d-3859-447e-9017-77cf0b171254)

![Screenshot 2024-10-09 161658](https://github.com/user-attachments/assets/f318bb91-82d1-4744-a91d-270bf8694e6c)

## 7. Results and Findings 
- Góc nhìn tổng quan:
  * Số lượng phim được sản xuất và lọt vào top phim nổi bật của IMDB từ 2006 đến 2016 có xu hướng tăng dần và tăng mạnh trong năm 2016.
  * Có tổng cộng 21 thể loại phim nhưng chỉ có 13 thể loại trong đó là thể loại phim chính.
  * 3 Thể loại phim được sản xuất nhiều nhất là Action, Drama, Comedy với tỉ lệ lần lượt là 29.3%, 19.5% và 17.5% trên tổng các thể loại phim.
  * 3 thể loại phim có doanh thu trung bình cao nhất là Animation, Action, Adventure.
  * Thời lượng phim trung bình của các thể loại kéo dài từ khoảng 96 phút đến 123 phút trải đều cho các thể loại. Có thể nhìn sự chênh lệch rõ nhất qua 2 thể loại là Biography và Thriller có sự chênh lệch về thời lượng trung bình là 30 phút.
  * Điểm Metascore và Rating trung bình theo từng thể loại phim chính có sự tương đồng nhau.
- Khác giả:
  * 3 thể loại phim được đánh giá theo điểm Rating trung bình cao nhất là Animation, Biography, Drama.
  * Lượng Votes và Rating trung bình trong năm 2015 và 2016 giảm mạnh.
  * Bộ phim duy nhất được 9 điểm Rating trong 10 năm là The Dark Knight thuộc thể loại Action.
  * Bộ phim duy nhất được 100 điểm Metascore (điểm tối đa) trong 10 năm là Boyhood thuộc thể loại Drama.
- Diễn viên:
  * Số lượng diễn viên tham gia các bộ phim nổi bật của IMDB từ 2006 đến 2016 có xu hướng tăng dần và tăng mạnh trong năm 2016.
  * Các diễn viên tham gia hơn 10 bộ phim tương đối nhiều nhưng chỉ vài diễn viên trong đó là tham gia hơn 5 thể loại phim chính khác nhau.
  * Diễn viên tham gia nhiều bộ phim có điểm Metascore lớn hơn 90 nhất là Kyle Chandler và Rooney Mara với 2 bộ phim.
  * Diễn viên tham gia nhiều bộ phim có điểm Rating lớn hơn 8 nhất là Leonardo DiCaprio với 5 bộ phim.
  * Diễn viên tham gia các bộ phim có doanh thu trung bình cao nhất là Robert Downey Jr với tổng doanh thu các bộ phim tham gia là 262 triệu đô.
- Đạo diễn:
  * Số lượng đạo diễn làm các bộ phim nổi bật của IMDB từ 2006 đến 2016 có xu hướng tăng dần và tăng mạnh trong năm 2016.
  * Có 5 đạo diễn làm nhiều hơn 5 bộ phim đứng đầu là Ridley Scott với 8 bộ phim, nhưng chỉ có 2 người trong số đó là làm nhiều hơn 3 thể loại phim khác nhau là Ridley Scott và M Night Shyamalan.
  * Đạo diễn làm nhiều bộ phim có điểm Metascore lớn hơn 90 nhất là Kathryn Bigelow với 2 bộ phim.
  * Đạo diễn làm nhiều bộ phim có điểm Rating lớn hơn 8 nhất là Christopher Nolan với 5 bộ phim.
  * Đạo diễn làm nhiều bộ phim có doanh thu trung bình cao nhất là Joss Whedon với tổng doanh thu các bộ phim là 541 triệu đô.
## 8. Conclusion  
- Trong 10 năm từ 2006 đến 2016, ngành điện ảnh đã có nhiều phát triển cả về số lượng lẫn chất lượng khi ngày càng nhiều bộ phim được lọt top phổ biến của IMDB.
- Xu hướng làm phim đã có sự thay đổi khi những năm gần đây số lượng phim về thể loại Crime và Adventure đã giảm đáng kể và tập trung vào 3 thể loại chính là Action, Drama, Comedy.
- Năm 2006 2 thể loại được đánh giá tốt nhất theo điểm Rating là Crime và Drama. Nhưng trong 5 năm gần nhất thì Animation và Biography liên tục đứng top 1 và 2 cho thấy xu hướng thể loại phim ưu thích của khán giả đã có sự thay đổi rõ rệt.
- Điểm Rating và Votes trong năm 2015 và 2016 giảm mạnh nguyên nhân là do một số nền tảng đã điều chỉnh hệ thống đánh giá, làm cho việc đánh giá trở nên nghiêm ngặt hơn, đồng thời thời gian đó cũng là sự phát triển của nhiều nền tảng khác như Netflex khiến khán giả có ít động lực hơn để đánh giá và bình chọn phim trên IMDB.
- Đa số phần lớn nhóm diễn viên và đạo diễn được khán giả yêu thích nhất khác với nhóm diễn viên và đạo diễn được các nhà phê bình đánh giá cao nhất.
- Độ yêu thích của khán giả đối với diễn viên và đạo diễn không có ảnh hưởng quá nhiều tới doanh thu của bộ phim khi nhóm các diễn viên, đạo diễn được yêu thích nhất đa số không nằm trong nhóm diễn viên, đạo diễn tham gia các bộ phim có doanh thu trung bình cao nhất. 
