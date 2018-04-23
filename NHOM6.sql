create database Nhom6_QuanLyBanHang
go
use Nhom6_QuanLyBanHang

create table Client
(
Client_id int primary key,
Fullname nvarchar(30),
Email nvarchar(30),

)
go

create table Purchase
(
Purchase_id int primary key,
Purchase_no nvarchar(15),
Client_id int,
constraint FK_Purchase_Client foreign key (Client_id) references Client(Client_id)
)
go

create table Product_category
(
Product_category_id int primary key,
Name nvarchar(50),
Partner_category_id int,

constraint FK_Product_category_Product_category_id foreign key (Partner_category_id) references Product_category(Product_category_id)
)
go

create table Product
(
Product_id int primary key,
Product_category_id int,
Name nvarchar(100),
Price decimal(12,2),
Descriptions nvarchar(1000),
image image,

constraint FK_Product_Product_category foreign key (Product_category_id) references Product_category(Product_category_id)
)
go

create table Purchase_items
(
Purchase_items_id int primary key,
Purchase_id int,
Product_id int,
amount int,

constraint FK_Purchase_items_Purchase foreign key (Purchase_id) references Purchase(Purchase_id),
constraint FK_Purchase_items_Product foreign key (Product_id) references Product(Product_id)
)
go
--client
insert into Client(Client_id,Fullname,Email) values(1,N'Nguyễn Trường Đăng','dangntph04788@fpt.edu.vn')
insert into Client(Client_id,Fullname,Email) values(2,N'Đặng Tùng Nam','namdt@fpt.edu.vn')
insert into Client(Client_id,Fullname,Email) values(3,N'Nguyễn Anh Văn','vanav@fpt.edu.vn')
insert into Client(Client_id,Fullname,Email) values(4,N'Phạm Thị Tâm','tampt@fpt.edu.vn')
insert into Client(Client_id,Fullname,Email) values(5,N'Hà Phương Bảo','baohp@fpt.edu.vn')
--purchase
insert into Purchase(purchase_id,purchase_no,Client_id) values(1,1,1)
insert into Purchase(purchase_id,purchase_no,Client_id) values(2,2,2)
insert into Purchase(purchase_id,purchase_no,Client_id) values(3,3,3)
insert into Purchase(purchase_id,purchase_no,Client_id) values(4,4,4)
insert into Purchase(purchase_id,purchase_no,Client_id) values(5,5,5)
--Product_category
insert into Product_category(Product_category_id,Name,Partner_category_id)
values(1,'AO',1)
insert into Product_category(Product_category_id,Name,Partner_category_id)
values(2,'QUAN',2)
insert into Product_category(Product_category_id,Name,Partner_category_id)
values(3,'MU',3)
insert into Product_category(Product_category_id,Name,Partner_category_id)
values(4,'GIAY',4)
insert into Product_category(Product_category_id,Name,Partner_category_id)
values(5,'PHUKIEN',5)
--product
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(1, 1, 'BASIC SPLATTER DENIM - BLUE', '645.00', 'Quần', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t45.5328-0/c0.0.540.540/p180x540/15729929_1431921380152601_3290349440166002688_n.jpg?oh=3fe3afdc5aced2cb5b3d1f46ca185caf&oe=5A2B77F0')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(2, 1, 'SPLATTER DENIM - BLUE', '645.00', 'Quần', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t45.5328-0/c0.0.540.540/p180x540/16175601_1263168040417065_674733353542352896_n.jpg?oh=2237b44adbb3481fe9f52e9d4b1ed051&oe=59F70CBE')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(3, 1, 'MILITARY ZIP PANTS', '585.00', 'Quần', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t45.5328-0/c0.0.540.540/p180x540/15696127_1199680660119887_541253668427530240_n.jpg?oh=15e23712567577b893417ae3188f9a66&oe=5A38D34A')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(4, 2, 'DAVID - MICHELANGELO', '340.00', 'Áo', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t45.5328-0/c0.0.540.540/p180x540/19982305_1850062961687403_285548761780846592_n.jpg?oh=48f049f528afc4d994b2f021f2305664&oe=59F82CF6')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(5, 2, 'TUPAC - ALL EYEZ ON ME', '340.00', 'Áo', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t45.5328-0/c0.0.540.540/p180x540/19981731_1358579680897821_1483170984629370880_n.jpg?oh=7c75b12dd937756136c991beefeb430b&oe=5A331665')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(6, 2, 'THE EVERYDAY JACKET', '695.00', 'Áo', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t45.5328-0/c0.0.540.540/p180x540/15696165_1081805611947411_656397974946971648_n.jpg?oh=5aa258bd68f5f3e9cb739380a060acb7&oe=5A2C5B19')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(7, 3, 'HATERS + ME CAP -RED','210.00', 'Mũ', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t45.5328-0/c0.0.540.540/p180x540/16175001_1170775842990841_1982294902238609408_n.jpg?oh=4d3618503827ed3c68d703d23569c3cc&oe=59F12366')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(8, 3, 'HATERS + ME CAP - GREY', '210.00', 'Mũ', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t45.5328-0/c0.0.540.540/p180x540/16175063_1326711740733067_5919590378528309248_n.jpg?oh=fdf800da4ae470fe6bc87f7edff43148&oe=59FB0EBA')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(9, 3, 'HATERS + ME CAP - BLUE', '0.00', 'Mũ', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t45.5328-0/c0.0.540.540/p180x540/15729829_1406330022753274_3834000404719337472_n.jpg?oh=3a97d16ba8ee1c76417b6d91785da5ac&oe=59FE6D38')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(12, 4, 'DAS_Tubular Invader', '765.00', 'Giày', 'http://cdn.nhanh.vn/cdn/store/6602/ps/20161126/tublarstrap_large_480x480.png')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(13, 4, 'Palladium', '648.00', 'Giày', 'http://cdn.nhanh.vn/cdn/store/6602/ps/20170106/images__1__225x225.jpg')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(14, 4, 'Y-3 Noci đen trắng', '1485.00', 'Giày', 'http://cdn.nhanh.vn/cdn/store/6602/ps/20161126/y_3_noci_0003_core_black_scarlet_white_36_260x260.jpg')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(15, 5, 'IF & Co - LINK ', '13500.00', 'Phụ kiện', 'https://cdn.shopify.com/s/files/1/0605/5905/products/0373a_Yellow_1024x1024.jpg?v=1488342216')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(16, 5, 'IF & Co - RING', '6000.00', 'Phụ kiện', 'https://cdn.shopify.com/s/files/1/0605/5905/products/0219a_Yellow_1024x1024.jpg?v=1488342224')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(17, 5, 'LOUIS VUITTON - WALLET', '370.00', 'Phụ kiện', 'http://uk.louisvuitton.com/images/is/image/lv/1/PP_VP_M/louis-vuitton-slender-wallet-damier-cobalt-lv-cup-small-leather-goods--N64010_PM2_Front%20view.jpg?wid=682&hei=682')
insert into Product(Product_id,Product_category_id,Name,Price,Descriptions,image)
values(18, 5, 'Fendi - scarves', '390.00', 'Phụ kiện', 'https://images.www.fendi.com/images/h39/hc2/8836128047134/FXS1242T4F0QA2_01_MediumSize#product-medium')


--purchase_items
insert into Purchase_items(Purchase_items_id,Purchase_id,Product_id,amount) 
values(1,1,1,2)
insert into Purchase_items(Purchase_items_id,Purchase_id,Product_id,amount) 
values(2,2,5,1)
insert into Purchase_items(Purchase_items_id,Purchase_id,Product_id,amount) 
values(3,3,4,3)
insert into Purchase_items(Purchase_items_id,Purchase_id,Product_id,amount) 
values(4,4,3,4)
insert into Purchase_items(Purchase_items_id,Purchase_id,Product_id,amount) 
values(5,5,2,5)
select * from Client
select * from Product
select * from Product_category
select * from Purchase
select * from Purchase_items


drop database Nhom6_QuanLyBanHang