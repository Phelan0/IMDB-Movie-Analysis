use IMDB_Movie_Sales

------ Xem qua dữ liệu
select * from movie_data

------ Xác nhận các phim có tối đa là 3 thể loại
select 
    max(len(Genre) - len(replace(Genre, ';', '')) + 1) as MaxCommaCount
from movie_data;

------ Tách thể loại phim làm 3 cột là thể loại chính, thể loại phụ, thể loại bổ trợ và đưa vào bảng tạm 'temp'
with SplitGenre as (
    select 
        Rank,
        trim(value) as split_genre_value,  
        row_number() over(partition by Rank order by (select null)) as rn
    from movie_data
    cross apply string_split(Genre, ';')
)
select 
    md.Rank,
    max(case when sg.rn = 1 then sg.split_genre_value end) as Primary_Genre,
    max(case when sg.rn = 2 then sg.split_genre_value end) as Secondary_Genre,
    max(case when sg.rn = 3 then sg.split_genre_value end) as Tertiary_Genre
into #temp
from movie_data md
left join SplitGenre sg on md.Rank = sg.Rank
group by md.Rank

------ Kiểm tra lại dữ liệu của bảng tạm temp
select *
from #temp
order by Rank 

------ Thêm 3 cột để chứa 3 trường dữ liệu vừa tách bên trên cho bảng gốc
alter table movie_data
add Primary_Genre varchar(50),
Secondary_Genre varchar(50),
Tertiary_Genre varchar(50)

------ Đưa 3 trường dữ liệu vào bảng gốc
update md
set md.Primary_Genre = t.Primary_Genre,
    md.Secondary_Genre = t.Secondary_Genre,
    md.Tertiary_Genre = t.Tertiary_Genre
from movie_data md
inner join #temp t on md.Rank = t.Rank;

------ Tách chuỗi cho trường diễn viên và tạo bảng mới để lưu dữ liệu diễn viên sau khi tách chuỗi
select md.Rank,
trim(a.value) as Star
into actors_name
from movie_data md
cross apply string_split(md.Actors, ';') as a;

------ Kiểm tra lại bảng diễn viên
select * from actors_name
order by Rank

select * from movie_data

------ Sửa dữ liệu trường Title
update movie_data
set Title = case 
	when Rank = 240 then 'The Host (2013)'
	when Rank = 633 then 'The Host (2016)'
	else Title
end

------ Bổ sung dữ liệu thiếu cho trường Revenue_Millions và Metascore
update movie_data
set Revenue_Millions = round(rand(checksum(newid())) * 100, 2)
where Revenue_Millions is null;

update movie_data
set Metascore = round(rand(checksum(newid())) * 70, 2)
where Metascore is null;
