Create table table_name
(
ColumnName DataType (Size),
ColumnName DataType (Size),
.... 
Constraint NameConstraint Primary Key (1 of the ColumnName above)  
)


Create table CHUYENNGANH1
(
MSCN SMALLINT,
TENCN VARCHAR (30)
Constraint PK_CHUYENNGANH Primary Key (MSCN)  
)

Create table DETAI
(
MSDT CHAR(6),
TENDT VARCHAR (30)
Constraint PK_DETAI Primary Key (MSDT)  


Create table GIAOVIEN
(
MSGV SMALLINT ,
TENGV VARCHAR (30) NOT NULL,
DIACHI VARCHAR (50) NOT NULL,
SODT VARCHAR (10) NOT NULL,
MSHHAM SMALLINT ,
NAMHH SMALLDATETIME NOT NULL
Constraint PK_GIAOVIEN Primary Key (MSGV), 
Constraint FK_NAMHH Foreign Key (MSHHAM) References [HOCHAM] ([MSHHAM])
)


Create table HOCHAM
(
MSHHAM SMALLINT,
TENHH VARCHAR (20) NOT NULL
Constraint PK_HOCHAM Primary Key (MSHHAM)  
)

Create table HOCVI
(
MSHV SMALLINT,
TENHV VARCHAR (20) NOT NULL
Constraint PK_HOCVI Primary Key (MSHV)  
)


Create table SINHVIEN
(
MSSV VARCHAR (6),
TENSV VARCHAR (30) NOT NULL,
DIACHI VARCHAR(50) NOT NULL,
LOP VARCHAR(6) NOT NULL,
SODT VARCHAR(10) 
Constraint PK_SINHVIEN Primary Key (MSSV)  
)


Create table HOIDONG
(
MSHD SMALLINT,
PHONG SMALLINT,
TGBD SMALLDATETIME,
NGAYHD SMALLDATETIME NOT NULL,
TINHTRANG VARCHAR(30) NOT NULL,
MSGV SMALLINT,
DIEM FLOAT NOT NULL
Constraint PK_MSHD5 Primary Key (MSHD),
Constraint FK_MSGV5 Foreign Key (MSGV) References [GIAOVIEN] ([MSGV])
)


Create table SV_DETAI
(
MSSV VARCHAR (6),
MSDT CHAR (6)
Constraint FK_MSSV8 Foreign Key (MSSV)References [SINHVIEN] ([MSSV]),
Constraint FK_MSDT8 Foreign Key (MSDT)References [DETAI] ([MSDT])
)


Create table GV_HDDT
(
MSGV SMALLINT,
MSDT CHAR (6),
DIEM FLOAT NOT NULL
Constraint PK_MSGV1 Primary Key (MSGV, MSDT)
)




Create table GV_HV_CN
(
MSGV SMALLINT,
MSHV SMALLINT,
MSCN SMALLINT,
NAM SMALLDATETIME NOT NULL, 
Constraint PK_MSGV2 Primary Key (MSGV,MSHV,MSCN)
)



Create table GV_PBDT
(
MSGV SMALLINT,
MSDT CHAR (6),
DIEM FLOAT NOT NULL,
Constraint PK_MSGV3 Primary Key (MSGV,MSDT)
)


Create table GV_UVDT
(
MSGV SMALLINT,
MSDT CHAR (6),
DIEM FLOAT NOT NULL,
Constraint PK_MSGV4 Primary Key (MSGV,MSdt)
)



Create table HOIDONG_DT
(
MSHD SMALLINT,
MSDT CHAR (6),
QUYETDINH CHAR (10)
Constraint PK_MSHD6 Primary Key (MSHD,MSDT)

)


Create table HOIDONG_GV
(
MSHD SMALLINT,
MSGV SMALLINT
Constraint PK_MSHD7 Primary Key (MSHD,MSGV) 
)







	1.
Insert into SINHVIEN(MSSV,TENSV,DIACHI, LOP,SODT)
Values ('97TH01','Nguyen Van An','12 NTMK','97TH01','9688543')
Insert into SINHVIEN(MSSV,TENSV,DIACHI, LOP,SODT)
Values ('97TH02','Tran Hung','13/4 LCT','97TH01','8453443')
Insert into SINHVIEN(MSSV,TENSV,DIACHI, LOP,SODT)
Values ('97TH03','Le Thuy Hang','20 Pateur','97TH01','8544457')
Insert into SINHVIEN(MSSV,TENSV,DIACHI, LOP,SODT)
Values ('97TH04','Ngo Khoa','54/12 LHP','97TH02','8545439')
Insert into SINHVIEN(MSSV,TENSV,DIACHI, LOP,SODT)
Values ('97TH05','Pham Tài','12 HBT','97TH02','9149023')
Insert into SINHVIEN(MSSV,TENSV,DIACHI, LOP,SODT)
Values ('97TH06','Đinh Tien','31 THĐ','97TH01','8956123')
	Select * from SINHVIEN


	2.
Insert into DETAI(MSDT,TENDT)
Values ('97001','Quan ly thu vien') 
Insert into DETAI(MSDT,TENDT)
Values ('97002','Nhan dang van tay') 
Insert into DETAI(MSDT,TENDT)
Values ('97003','Ban đau gia tren mang') 
Insert into DETAI(MSDT,TENDT)
Values ('97004','Quan ly sieu thi') 
Insert into DETAI(MSDT,TENDT)
Values ('97005','Xu ly anh') 
	Select * from DETAI


	3.
Insert into SV_DETAI(MSSV,MSDT)
Values ('97TH01','97004') 
Insert into SV_DETAI(MSSV,MSDT)
Values ('97TH02','97005') 
Insert into SV_DETAI(MSSV,MSDT)
Values ('97TH03','97001') 
Insert into SV_DETAI(MSSV,MSDT)
Values ('97TH04','97002') 
Insert into SV_DETAI(MSSV,MSDT)
Values ('97TH05','97003') 
Insert into SV_DETAI(MSSV,MSDT)
Values ('97TH06','97005') 
	Select * from SV_DETAI


	4.
Insert into HOCHAM(MSHHAM,TENHH)
Values ('1','Pho Giao Su') 
Insert into HOCHAM(MSHHAM,TENHH)
Values ('2','Giao Su')
	Select * from HOCHAM


	5.
Insert into GIAOVIEN(MSGV,TENGV,DIACHI,SODT,MSHHAM,NAMHH)
Values ('1','Nguyen Van A','11 NVĐ','8754321','1','1996') 
Insert into GIAOVIEN(MSGV,TENGV,DIACHI,SODT,MSHHAM,NAMHH)
Values ('2','Tran Thu Trang','56 XVNT','8964334','1','1996') 
Insert into GIAOVIEN(MSGV,TENGV,DIACHI,SODT,MSHHAM,NAMHH)
Values ('3','Le Trung','12/5 CMTT','87903561','1','1996') 
Insert into GIAOVIEN(MSGV,TENGV,DIACHI,SODT,MSHHAM,NAMHH)
Values ('4','Nguyen Thi Loan','321 BTX','8012864','2','1997') 
Insert into GIAOVIEN(MSGV,TENGV,DIACHI,SODT,MSHHAM,NAMHH)
Values ('5','Chu V Tien','1/60 TVĐ','8157906','2','1997') 
	Select * from GIAOVIEN


	6.
Insert into HOCVI(MSHV,TENHV)
Values ('1','KS') 
Insert into HOCVI(MSHV,TENHV)
Values ('2','CN') 
Insert into HOCVI(MSHV,TENHV)
Values ('3','Th.S') 
Insert into HOCVI(MSHV,TENHV)
Values ('4','TS') 
Insert into HOCVI(MSHV,TENHV)
Values ('5','TSKH') 
	Select* from HOCVI


	7
Insert into CHUYENNGANH1(MSCN,TENCN)
Values ('1','He thong thong tin') 
Insert into CHUYENNGANH1(MSCN,TENCN)
Values ('2','Mang') 
Insert into CHUYENNGANH1(MSCN,TENCN)
Values ('3','Do hoa') 
Insert into CHUYENNGANH1(MSCN,TENCN)
Values ('4','Cong nghe phan mem')
	Select* from CHUYENNGANH1


	8
Insert into GV_HV_CN(MSGV,MSHV,MSCN,NAM)
Values ('1','1','1','1999')
Insert into GV_HV_CN(MSGV,MSHV,MSCN,NAM)
Values ('1','1','2','1999')
Insert into GV_HV_CN(MSGV,MSHV,MSCN,NAM)
Values ('1','2','1','1998')
Insert into GV_HV_CN(MSGV,MSHV,MSCN,NAM)
Values ('2','3','2','1997')
Insert into GV_HV_CN(MSGV,MSHV,MSCN,NAM)
Values ('3','2','4','1997')
Insert into GV_HV_CN(MSGV,MSHV,MSCN,NAM)
Values ('4','3','2','1996')
	Select* from GV_HV_CN



	9
Insert into GV_HDDT(MSGV,MSDT,DIEM)
Values ('1','97001','7')
Insert into GV_HDDT(MSGV,MSDT,DIEM)
Values ('2','97002','8')
Insert into GV_HDDT(MSGV,MSDT,DIEM)
Values ('5','97330','9')
Insert into GV_HDDT(MSGV,MSDT,DIEM)
Values ('4','97004','8.5')
Insert into GV_HDDT(MSGV,MSDT,DIEM)
Values ('3','97005','7')
	Select* from GV_HDDT

	10
Insert into GV_PBDT(MSGV,MSDT,DIEM)
Values ('1','97005','5')
Insert into GV_PBDT(MSGV,MSDT,DIEM)
Values ('2','97001','7')
Insert into GV_PBDT(MSGV,MSDT,DIEM)
Values ('5','97004','6')
Insert into GV_PBDT(MSGV,MSDT,DIEM)
Values ('4','97003','8')
Insert into GV_PBDT(MSGV,MSDT,DIEM)
Values ('3','97002','8')
	Select* from GV_PBDT


	11
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('5','97005','6')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('2','97005','5')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('4','97005','5')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('3','97001','7')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('4','97001','7')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('5','97001','8')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('3','97001','10')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('1','97003','7')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('2','97003','7')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('1','97004','8')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('2','97004','9')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('3','97004','5')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('1','97002','9')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('4','97002','9')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('5','97002','6')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('1','97006','7')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('2','97006','7')
Insert into GV_UVDT(MSGV,MSDT,DIEM)
Values ('4','97006','7')
	Select* from GV_UVDT



	12
Insert into HOIDONG(MSHD,PHONG,TGBD,NGAYHD,TINHTRANG,MSGV)
Values ('1','002','7:30','30-Oct-2001','That','1')
Insert into HOIDONG(MSHD,PHONG,TGBD,NGAYHD,TINHTRANG,MSGV)
Values ('2','002','7:00','30-Oct-2001','Thu','2')
Insert into HOIDONG(MSHD,PHONG,TGBD,NGAYHD,TINHTRANG,MSGV)
Values ('3','003','8:00','31-Oct-2001','','3')
	Select* from HOIDONG

	13
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('1','1')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('1','2')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('1','3')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('1','4')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('2','3')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('2','2')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('2','5')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('2','4')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('3','1')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('3','2')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('3','3')
Insert into HOIDONG_GV(MSHD,MSGV)   Values ('3','4')
	select * from HOIDONG_GV


	14
Insert into HOIDONG_DT(MSHD,MSdt,QUYETDINH)   Values ('1','97001','Duoc')
Insert into HOIDONG_DT(MSHD,MSdt,QUYETDINH)   Values ('1','97002','Duoc')
Insert into HOIDONG_DT(MSHD,MSdt,QUYETDINH)   Values ('2','97003','Khong')
Insert into HOIDONG_DT(MSHD,MSdt,QUYETDINH)   Values ('2','97004','Khong')
Insert into HOIDONG_DT(MSHD,MSdt,QUYETDINH)   Values ('1','97005','Duoc')
Insert into HOIDONG_DT(MSHD,MSdt,QUYETDINH)   Values ('3','97001','Khong')
Insert into HOIDONG_DT(MSHD,MSdt,QUYETDINH)   Values ('3','97002','Duoc')
Insert into HOIDONG_DT(MSHD,MSdt,QUYETDINH)   Values ('3','97004','Khong')
	select * from HOIDONG_DT





Create view VW_GetAllDetai
as  
	select  * from DETAI  


	select * from [dbo].[VW_GetAllDetai]


Create procedure SP_GetStudentInfoByID
@MaSoSinhVien char (6) 
as 
begin 
select * from [SINHVIEN] where [MSSV]=@MaSoSinhVien
end 

Execute SP_GetStudentInfoByID '001345'


select * from SINHVIEN

Declare @MaSV char (6)
set @MaSV='97TH03'
Execute SP_GetStudentInfoByID @MaSV

SP_HelpText [SP_GetStudentInfoByID]

ALTER procedure SP_GetStudentInfoByID
@MaSoSinhVien char (6) 
as 
begin 
	select MSSV + '_' + TENSV [Ma so va Ten], SODT from [SINHVIEN] 
	where [MSSV]=@MaSoSinhVien
end 





Drop table [dbo].[adasdasdas]
