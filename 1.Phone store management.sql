Insert into [dbo].[Phone] (
[PhoneID],
[Tittle],
[Description],
[Price],
[BrandID],
[DistributorID],
[Size],
[CheckInDate],
[CameraDescription],[ScreenSize],[ItemDimensions],[ItemWeight],[OperatingSystemID],[TypeID]) 
Values ('001',N'Nokia 0909', N'Very good', '9000','001','001','20cm*90cm','15-Sep-2018','Beautiful','10cm*60cm','4D','153g','005','CCC')
Insert into [dbo].[Phone] ([PhoneID],[Tittle],[Description],[Price],[BrandID],[DistributorID],[Size],[CheckInDate],[CameraDescription],[ScreenSize],[ItemDimensions],[ItemWeight],[OperatingSystemID],[TypeID]) 
Values ('002',N'Iphone 0909', N'Very nice','8000','003','002','50cm*30cm', '15-Jun-2018','Bad','50cm*30cm','4D','123g','002','CH')
Insert into [dbo].[Phone] ([PhoneID],[Tittle],[Description],[Price],[BrandID],[DistributorID],[Size],[CheckInDate],[CameraDescription],[ScreenSize],[ItemDimensions],[ItemWeight],[OperatingSystemID],[TypeID]) 
Values ('003',N'Samsum 0909', N'Very cool','5000','002','003','50cm*50cm','15-May-2018','Nice','10cm*20cm','4D','198g','001','MMM')
Insert into [dbo].[Phone] ([PhoneID],[Tittle],[Description],[Price],[BrandID],[DistributorID],[Size],[CheckInDate],[CameraDescription],[ScreenSize],[ItemDimensions],[ItemWeight],[OperatingSystemID],[TypeID]) 
Values ('004',N'Huawei 0909', N'Very cheap', '4000','004','004','10cm*90cm','10-Jan-2019','Awful','50cm*90cm','4D','109g','003','MT')
Insert into [dbo].[Phone] ([PhoneID],[Tittle],[Description],[Price],[BrandID],[DistributorID],[Size],[CheckInDate],[CameraDescription],[ScreenSize],[ItemDimensions],[ItemWeight],[OperatingSystemID],[TypeID]) 
Values ('005',N'Sony 0909',  N'Very expensive','7000','005','005','60cm*60cm','10-Dec-2001','Halow','50cm*60cm','4D','191g','004','MTM')
Select * from [dbo].[Phone]
where [Description] like '%Good%' 

Insert into [dbo].[Sales] ([Saleprice],[CheckOutDate],[PhoneID])
Values ('11000','10-Jul-2019','001')
Insert into [dbo].[Sales] ([Saleprice],[CheckOutDate],[PhoneID])
Values ('20000','20-Jul-2019','002')
Insert into [dbo].[Sales] ([Saleprice],[CheckOutDate],[PhoneID])
Values ('19000','15-Jul-2019','003')
Insert into [dbo].[Sales] ([Saleprice],[CheckOutDate],[PhoneID])
Values ('15000','11-Jul-2019','004')
Insert into [dbo].[Sales] ([Saleprice],[CheckOutDate],[PhoneID])
Values ('14000','12-Jul-2019','005')
Insert into [dbo].[Sales] ([Saleprice],[CheckOutDate],[PhoneID])
Values ('14000','12-Jun-2019','006')

Select * from [dbo].[Sales]


select * from 

update  [dbo].[Phone] set [Description]= 'Slightly Good'
where [PhoneID]= '002'

Select Sum([Saleprice]) 'MonthlyRevenue' 
From Sales 
where [CheckOutDate] between '01-Jul-2019' and '31-Jul-2019'


Select Sum([Saleprice]) 'MonthlyRevenue' 
From Sales 
where month( [CheckOutDate])=7 and year ( [CheckOutDate])=2019

Select * From Sales 
where month( [CheckOutDate])=7 and year ( [CheckOutDate])=2019



Select [PhoneID],[Tittle],[Description], [Price],[BrandName],
Phone.BrandID
 from [dbo].[Phone], [dbo].[Brand], [dbo].[Distributor]
 where [Brand].BrandID = [Phone].BrandID
 and [Phone].DistributorID= Distributor.DistributorID


 Select [PhoneID],[Tittle],[Description], [Price],[BrandName],[DistributorName],Phone.BrandID
 from [Phone] join [Brand] on
 [Brand].BrandID = [Phone].BrandID
join Distributor  on
 Phone.DistributorID = Distributor.DistributorID
