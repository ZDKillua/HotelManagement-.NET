﻿use master
create database QuanLyKhachSan
go

use QuanLyKhachSan
go

create table ChucVu
(
maCV varchar(10) primary key,
tenCV nvarchar(100)
)
go

create table KhachHang
(
CMND varchar(13) primary key,
tenKH nvarchar(100) not null,
diaChi nvarchar(100),
gioiTinh nvarchar(100),
SDT nvarchar(10),
loai nvarchar(50)
)
go

create table NhanVien
(
maNV varchar(10) primary key,
tenNV nvarchar(100) not null,
maCV varchar(10) not null,
gioiTinh nvarchar(20),
ngaySinh date,
ngayVaoLam date,
diaChi nvarchar(100),
SDT nvarchar(10),
tenDN varchar(50),
pass varchar(50),
constraint ChucVu_NhanVien foreign key (maCV) references ChucVu(maCV)
)
go

create table LoaiPhong
(
maLoai varchar(10) primary key,
tenLP nvarchar(100),
gia money
)
go

create table Phong
(
soPhong varchar(10) primary key,
tinhTrang nvarchar(50) not null,
maLoai varchar(10) not null,
constraint phong_maLP foreign key (maLoai) references LoaiPhong(maLoai)
)
go

create table HoaDon
(
maHD varchar(10) primary key,
CMND varchar(13) not null,
maNV varchar(10),
soPhong varchar(10) not null,
ngayDat date,
ngayTra date,
tienThanhToan money,
constraint Hoadon_maNV foreign key (maNV) references NhanVien(maNV),
constraint Hoadon_maPhong foreign key (soPhong) references Phong(soPhong),
constraint Hoadon_CMND foreign key (CMND) references KhachHang(CMND)
)
go

insert into ChucVu values
('CV01',N'Quản Lý'),
('CV02',N'Nhân Viên Lễ Tân'),
('CV03',N'Nhân Viên Phục Vụ'),
('CV04',N'Nhân Viên Phụ Bếp'),
('CV05',N'Nhân Viên Vệ Sinh')
Go


insert into KhachHang values
('031100004776',N'Vũ Thị Hải My',N'Hải Phòng',N'Nữ',N'0327567169','VIP'),
('031300001766',N'Đoàn Hùng Mạnh',N'Hải Phòng',N'Nam',N'0523897581','VIP'),
('001071000030',N'Trần Xuân Trường',N'Hà Nội',N'Nam',N'0865892941','VIP'),
('001301250721',N'Võ Hạ Anh',N'Hà Nội',N'Nữ',N'0987123757','VIP'),
('038108675763',N'Phạm Thị Thanh Lam',N'Thanh Hoá',N'Nữ',N'0962739160','VIP'),
('030861008133',N'Vũ Thu Bích',N'Hải Dương',N'Nữ',N'0377798312','VIP'),
('079090000555',N'Trần Minh Hùng',N'Hồ Chí Minh',N'Nam',N'0972532747','VIP'),
('079976578122',N'Nguyễn Thế Anh',N'Hồ Chí Minh',N'Nam',N'0328890344','VIP'),
('001987778913',N'Lương Quốc Anh',N'Hà Nội',N'Nam',N'0987114348','VIP'),
('031300012468',N'Vũ Thu Hạnh',N'Hải Phòng',N'Nữ',N'0972403477','VIP'),
('001100118903',N'Đoàn Châu Giang',N'Hà Nội',N'Nữ',N'0987139767','VIP'),
('001009991234',N'Đoàn Mai Hương',N'Hà Nội',N'Nữ',N'0346218888','VIP'),
('001019762789',N'Trần Hoàng Long',N'Hà Nội',N'Nam',N'0585288266','VIP'),
('035978981117',N'Tạ Thị Hằng',N'Hà Nam',N'Nữ',N'0585909765','VIP'),
('001000118903',N'Phạm Hồng Lam',N'Hà Nội',N'Nữ',N'0987139767','VIP'),
('027800006789',N'Nguyễn Hương Giang',N'Bắc Ninh',N'Nữ',N'0987118867','VIP'),
('054700027890',N'Phạm Nguyệt Minh',N'Phú Yên',N'Nữ',N'0972906651','VIP'),
('079189760086',N'Hoàng Đàm Hoài Lâm',N'Hồ Chí Minh',N'Nam',N'0523678457','VIP'),
('048987660986',N'Đặng Khắc Bình',N'Đà Nẵng',N'Nam',N'0346879670','VIP'),
('072098980989',N'Vũ Thúy Nga',N'Tây Ninh',N'Nữ',N'0972980671','VIP'),
('079098700789',N'Lưu Văn Hiếu',N'Hồ Chí Minh',N'Nam',N'0865087899','VIP'),
('079300001898',N'Lưu Việt Anh',N'Hồ Chí Minh',N'Nam',N'0987906541','VIP'),
('079389097812',N'Triệu Linh Hương',N'Hồ Chí Minh',N'Nữ',N'0328906781','VIP'),
('026200789871',N'Phạm Tuấn Trang',N'Vĩnh Phúc',N'Nam',N'0377907568','VIP'),
('056078907811',N'Đàm Thị Hạ',N'Khánh Hoà',N'Nữ',N'0332907335','VIP')


set dateformat DMY
insert into NhanVien values
('NV001',N'Vũ Văn Quỳnh','CV01',N'Nam','30/1/1999','23/8/2018',N'TPHCM',N'0998566480','NV01','123'),
('NV002',N'Tạ Thị Ánh Linh','CV02',N'Nữ','23/12/1999','21/10/2018',N'NGHỆ AN',N'0942306493','NV02','123'),
('NV003',N'Đặng Nguyễn Việt','CV02',N'Nam','4/7/1998','21/10/2018',N'HÀ TĨNH',N'0961244769','NV03','123'),
('NV004',N'Hà Nguyễn Anh Tuấn','CV03',N'Nam','23/7/2000','17/12/2018',N'TPHCM',N'0933411089','NV04','123'),
('NV005',N'Trần Thị Tuyết Mai','CV04',N'Nữ','13/9/2000','3/1/2019',N'KIÊN GIANG',N'0934362290','NV05','123'),
('NV006',N'Hồ Văn Hoàng','CV03','Nam',N'29/8/2001','8/4/2019',N'CÀ MAU',N'0352118894','NV06','123'),
('NV007',N'Nguyễn Ngọc Đại','CV03',N'Nam','21/3/2002','23/7/2019',N'HẢI PHÒNG',N'0934556192','NV07','123'),
('NV008',N'Nguyễn Thị Mai Linh','CV02',N'Nữ','19/10/2002','25/3/2020',N'CẦN THƠ',N'0523167228','NV08','123'),
('NV009',N'Đỗ Đức Mạnh','CV04',N'Nam','19/9/2001','13/4/2020',N'ĐÀ NẴNG',N'0645596770','NV09','123'),
('NV010',N'Nguyễn Việt Tuấn','CV04',N'Nam','19/9/2001','8/4/2019',N'HÀ NỘI',N'0636119090','NV10','123'),
('NV011',N'Mai Chánh An','CV05',N'Nữ','21/6/2002','22/4/2020',N'HUẾ',N'0966371559','NV11','123'),
('NV012',N'Nguyễn Mai Anh Tú','CV05',N'Nam','21/4/2002','22/4/2020',N'TRÀ VINH',N'0936331450','NV12','123')
gO


insert into LoaiPhong  values
('LP01',N'PHÒNG 1 NGƯỜI','500000'),
('LP02',N'PHÒNG 2 NGƯỜI','900000'),
('LP03',N'PHÒNG 4 NGƯỜI','1500000')

INSERT INTO Phong values
('101',N'Trống','LP01'),
('102',N'Trống','LP01'),
('103',N'Trống','LP02'),
('105',N'Trống','LP02'),
('201',N'Trống','LP03'),
('202',N'Trống','LP03'),
('203',N'Trống','LP03'),
('204',N'Trống','LP01'),
('205',N'Trống','LP01'),
('301',N'Trống','LP02'),
('302',N'Trống','LP02'),
('303',N'Trống','LP03'),
('304',N'Trống','LP03'),
('305',N'Trống','LP01'),
('401',N'Trống','LP02'),
('402',N'Trống','LP03'),
('403',N'Trống','LP03'),
('404',N'Trống','LP02'),
('405',N'Trống','LP01')
go

select * from ChucVu
select * from HoaDon
select * from KhachHang
select * from LoaiPhong
select * from NhanVien
select * from Phong
go


go
create trigger tri_NgayDatNgayTra_HoaDon on HoaDon for insert, delete, update as 
begin
	declare @Date_From DATE, @Date_To DATE

	if EXISTS(select * from inserted) and EXISTS(select * from deleted)
	begin
		set @Date_From=(SELECT ngayDat FROM inserted)
		set @Date_To=(SELECT ngayTra FROM inserted)

		if (Datediff(day, @Date_From, @Date_To) <= 0) 
		begin
			print 'Ngay tra phai lon hon ngay dat'
			rollback tran
		end
	end

	else if EXISTS(select * from inserted) 
	begin
		set @Date_From=(SELECT ngayDat FROM inserted)
		set @Date_To=(SELECT ngayTra FROM inserted)

		if (Datediff(day, @Date_From, @Date_To) <= 0) 
		begin
			print 'Ngay tra phai lon hon ngay dat'
			rollback tran
		end
	end
end
go

go
create trigger tienThanhToan_HoaDon on HoaDon 
for insert, update as 
begin
	update HoaDon
	set tienThanhToan = DATEDIFF(day, inserted.ngayDat, inserted.ngayTra) * (
		select gia
		from LoaiPhong lp join Phong p on lp.maLoai = p.maLoai
		where p.soPhong = inserted.soPhong
	)
	from inserted
	where inserted.maHD = HoaDon.maHD
end
go


go
create trigger tri_Phong_HoaDon on HoaDon 
for insert, delete, update as 
begin
	if EXISTS(select * from inserted) and EXISTS(select * from deleted)
	begin
		if not exists(
			select * 
			from inserted ins join deleted del
			on ins.soPhong = del.soPhong
		) 
		begin
			update Phong
			set TinhTrang = N'Có'
			where phong.soPhong = (
				select sophong
				from inserted
			)

			update Phong
			set TinhTrang = N'Trống'
			where phong.soPhong = (
				select soPhong
				from deleted
			)
		end
	end

	else if EXISTS(select * from inserted) 
	begin
		update Phong
		set TinhTrang = N'Có'
		where phong.soPhong = (
			select soPhong
			from inserted
		)
	end

	else if EXISTS(select * from deleted) 
	begin
		update Phong
		set TinhTrang = N'Trống'
		where phong.soPhong = (
			select soPhong
			from deleted
		)
	end
end

go
create trigger tri_Phong_HoaDon_Trung on HoaDon
instead of insert, update as
begin
		
	if exists (select * from inserted) and exists (select * from deleted)
	begin
		--select * from (
		--	select * from inserted
		--	except
		--	select * from HoaDon
		--) as temp

		--if (
		--	select count(*)
		--	from (
		--		select * from inserted
		--		union
		--		select * from HoaDon
		--	) as temp
		--	where temp.soPhong = (
		--		select soPhong
		--		from inserted
		--	)
		--) > 1
		--begin
		--	print 'Phòng này đã có khách'
		--	rollback tran
		--end

		if update (soPhong)
		begin
			if (
				select count(*)
				from (
					select * from inserted
					union
					select * from HoaDon
				) as temp
				where temp.soPhong = (
					select soPhong
					from inserted
				)
			) > 1
			begin
				print 'Phòng này đã có khách'
				rollback tran
			end
		end

		else 
		begin
			delete from HoaDon
			where maHD = (
				select maHD
				from deleted
			)

			insert into HoaDon
			select *
			from inserted
		end
	end

	else 
	begin
		if exists (
			select *
			from inserted ins join HoaDon hd
			on ins.soPhong = hd.soPhong
		) 
		begin
			print 'Phòng này đã có khách'
			rollback tran
		end

		else 
		begin
			insert into HoaDon
			select * 
			from inserted
		end
	end
end
go

update hoadon
set soPhong = '205'
where maHD = 'HD03'

update hoadon
set soPhong = '205'
where maHD = 'HD02'

update hoadon
set ngayTra = '2020-10-18'
where maHD = 'HD02'

select * from HoaDon



INSERT INTO HoaDon values
('HD01','031100004776','NV001','101','10/10/2020','13/10/2020', null)

INSERT INTO HoaDon values
('HD02','001000118903','NV002','103','10/10/2020','14/10/2020', null)

INSERT INTO HoaDon values
('HD03','030861008133','NV003','205','10/10/2020','15/10/2020', null)

INSERT INTO HoaDon values
('HD04','072098980989','NV004','202','10/10/2020','20/10/2020', null)

INSERT INTO HoaDon values
('HD05','031300001766','NV005','304','10/10/2020','21/10/2020', null)

INSERT INTO HoaDon values
('HD06','056078907811','NV006','301','10/10/2020','22/10/2020', null)

INSERT INTO HoaDon values
('HD07','072098980989','NV007','403','10/10/2020','23/10/2020', null)

INSERT INTO HoaDon values
('HD08','001071000030','NV008','402','10/10/2020','7/11/2020', null)

INSERT INTO HoaDon values
('HD09','001000118903','NV009','102','10/10/2020','15/11/2020', null)

INSERT INTO HoaDon values
('HD10','079098700789','NV010','303','10/10/2020','20/11/2020', null)
Go
