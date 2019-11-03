1.
Select [TENDT],[TENSV],a.TENGV [GV Huong Dan], b.TENGV [GV Phan Bien ]
 from [DETAI] 
join [SV_DETAI] on
 [DETAI].MSDT = [SV_DETAI].MSDT
join [GV_HDDT] on
 [GV_HDDT].MSDT= [DETAI].MSDT
join [GV_PBDT] on
 [GV_PBDT].MSDT= [DETAI].MSDT 
 join [dbo].[SINHVIEN] on
 [dbo].[SINHVIEN].MSSV= [dbo].[SV_DETAI].MSSV
 join [GIAOVIEN] a on
 [GV_HDDT].MSGV= a.MSGV
 join [GIAOVIEN] b on
 [GV_PBDT].MSGV= b.MSGV






 

 2. 'Giao Vien Huong Dan vs Detai'
Select [TENGV],[TENDT]
 from  [dbo].[DETAI]
join [dbo].[GV_HDDT] on
 [dbo].[DETAI].MSDT = [dbo].[GV_HDDT].MSDT
join [dbo].[GIAOVIEN] on
[dbo].[GIAOVIEN].MSGV = [dbo].[GV_HDDT].MSGV



3.  'Giao Vien Phan Bien vs Detai'
Select [TENGV],[TENDT]
 from  [dbo].[DETAI]
join [dbo].[GV_PBDT] on
 [dbo].[DETAI].MSDT = [dbo].[GV_PBDT].MSDT
join [dbo].[GIAOVIEN] on
[dbo].[GIAOVIEN].MSGV = [dbo].[GV_PBDT].MSGV


4. 'Hoi Dong Giao Vien- Detai - Pass or Fail'
Select [MSHD],[dbo].[DETAI].[MSDT],[TENDT],[QUYETDINH] 
 from [dbo].[DETAI] join [dbo].[HOIDONG_DT] on
 [dbo].[DETAI].MSDT = [dbo].[HOIDONG_DT].MSDT


 5. 'Hoi Dong Detai- Detai -Diem'
 Select MSHD,[GV_UVDT].[MSDT],Avg([DIEM])
 from [HOIDONG_DT] join [GV_UVDT] on
[GV_UVDT].MSDT = [HOIDONG_DT].MSDT
Group by MSHD, [GV_UVDT].[MSDT]

 


  6. 'Hoi Dong- Ten- Phone Number'
Select [MSHD],TenGV, [DIACHI], [SODT]
from [dbo].[HOIDONG_GV] join [dbo].[GIAOVIEN] on
[dbo].[HOIDONG_GV].[MSGV]= [dbo].[GIAOVIEN].[MSGV]


7. 'Hoi Dong- Ten- Phone Number'
Select MSGV, Count (MSDT) [Number of Detai protected]
from  [dbo].[GV_HDDT]
Group by MSGV








Select * from [dbo].[GV_HDDT]