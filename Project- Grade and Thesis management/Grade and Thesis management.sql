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
  1Insert into HOIDONG_GV(MSHD,MSGV)   Values ('1','1')
  2Insert into HOIDONG_GV(MSHD,MSGV)   Values ('1','2')
  3Insert into HOIDONG_GV(MSHD,MSGV)   Values ('1','3')
  4Insert into HOIDONG_GV(MSHD,MSGV)   Values ('1','4')
  5Insert into HOIDONG_GV(MSHD,MSGV)   Values ('2','3')
  6Insert into HOIDONG_GV(MSHD,MSGV)   Values ('2','2')
  7Insert into HOIDONG_GV(MSHD,MSGV)   Values ('2','5')
  8Insert into HOIDONG_GV(MSHD,MSGV)   Values ('2','4')
  9Insert into HOIDONG_GV(MSHD,MSGV)   Values ('3','1')
  10Insert into HOIDONG_GV(MSHD,MSGV)   Values ('3','2')
  11Insert into HOIDONG_GV(MSHD,MSGV)   Values ('3','3')
  12Insert into HOIDONG_GV(MSHD,MSGV)   Values ('3','4')
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
