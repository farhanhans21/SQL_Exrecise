create table travel_mobil(
mobil varchar(40),
	hari varchar(10),
		pejumlahan int
)
insert into travel_mobil values
('honda','hari1',0)
('mitsubishi','hari1', 55),
('mitsubishi','hari2', 100),
('mitsubishi','hari3', 200),
('kawasaki','hari1', 0),
('honda','hari2', 50),
('honda','hari3', 50),
('honda','hari4', 100)

select *from travel_mobil

alter table travel_mobil rename column pejumlahan to jumlah_jarak

select *,
(jumlah_jarak - lag(jumlah_jarak,1,0)
				over(partition by mobil order by hari)) as jarak_tempuh_perhari

from travel_mobil
order by mobil



