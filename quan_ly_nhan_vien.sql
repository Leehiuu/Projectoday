drop database if exists quan_ly_nhan_vien;
create database if not exists quan_ly_nhan_vien;
use quan_ly_nhan_vien;

drop table if exists departments;
create table if not exists departments(
department_id varchar(20) primary key,
department_name varchar(80),
location varchar(50)
);
insert into departments(department_id,department_name,location)
values
('SS1','Nhân sự','Tầng 1'),
('SS2','Kế toán','Tầng 2'),
('SS3','Hệ thống','Tầng 3'),
('SS4','Kiểm thử','Tầng 4'),
('SS5','Quản trị mạng','Tầng 5'),
('SS6','Phát triển','Tầng 6'),
('SS7','Maketing','Tầng 7'),
('SS8','Thiết kế','Tầng 8'),
('SS9','Bảo vệ','Tầng 9'),
('SS10','Kỹ thuật','Tầng 10');


drop table if exists employees;
create table if not exists employees(
employees_id varchar(20) primary key,
employees_name varchar(50),
gender varchar(20),
email varchar(50),
phone_number varchar(30),
employees_job varchar(50),
salary long,
department_id varchar(20),
constraint FK_employees_departments foreign key (department_id) references departments (department_id) 
);
insert into employees(employees_id,employees_name,gender,email,phone_number,employees_job,salary,department_id)
values
('H260499','Đào Văn Nghĩa','Nam','bkacadH1017201@gmail.com','0329384800','Trưởng phòng nhân sự',800,'SS1'),
('H260498','Trịnh Tiến Giang','Nam','bkacadH1017202@gmail.com','0329384801','Nhân sự 1',567,'SS1'),
('H260497','Phạm Hải Hưng','Nam','bkacadH1017203@gmail.com','0329384802','Nhân sự 2',567,'SS1'),
('H260495','Tạ Văn Khánh','Nam','bkacadH1017204@gmail.com','0329384803','Nhân sự 3',638,'SS1'),
('H260496','Phạm Văn Quý','Nam','bkacadH1017205@gmail.com','0329384804','Nhân sự 4',603,'SS1'),
('H112233','Lê Thị Hồng','Nữ','bkacadH112233@gmail.com','0329945002','Nhân sự 5',632,'SS1'),
('H260489','Nguyễn Anh Tuấn','Nam','bkacadH1017211@gmail.com','0329384810','Trưởng phòng kết toán',900,'SS2'),
('K1017212','Vũ Thị Thu Uyên','Nữ','bkacadK1017212@gmail.com','0329384811','Kế toán 1',543,'SS2'),
('K1017213','Đàm Thị Nga','Nữ','bkacadK1017213@gmail.com','0329384812','Kế toán 2',561,'SS2'),
('K1017214','Đinh Thu Thủy','Nữ','bkacadK1017214@gmail.com','0329384813','Kế toán 3',602,'SS2'),
('K1017215','Phạm Thị Như Quỳnh','Nữ','bkacadK1017215@gmail.com','0329384814','Kế toán 4',552,'SS2'),
('T1017221','Nguyễn Thị Hiền','Nữ','bkacadT1017221@gmail.com','0329384820','Trưởng phòng hệ thống',800,'SS3'),
('T1017222','Nguyễn Thị Hải Ly','Nữ','bkacadT1017222@gmail.com','0329384821','Hệ thống 1',609,'SS3'),
('T1017223','Lê Hồng Nhung','Nữ','bkacadT1017223@gmail.com','0329384822','Hệ thống 2',699,'SS3'),
('T1017224','Phùng Thị Non','Nữ','bkacadT1017224@gmail.com','0329384823','Hệ thống 3',658,'SS3'),
('T1017225','Phạm Thị Hường','Nữ','bkacadT1017225@gmail.com','0329384824','Hệ thống 4',520,'SS3'),
('V1017231','Vũ Thị Phương Anh','Nữ','bkacadV1017231@gmail.com','0329384830','Trưởng phòng kiểm thử',900,'SS4'),
('V1017232','Từ Thị Huyền','Nữ','sbkacadV1017232@gmail.com','0329384831','Kiểm thử 1',649,'SS4'),
('V1017233','Đoàn Thị Huyền','Nữ','bkacadV1017233@gmail.com','0329384832','Kiểm thử 2',526,'SS4'),
('V1017234','Trịnh Thị Dịu','Nữ','bkacadV1017234@gmail.com','0329384833','Kiểm thử 3',635,'SS4'),
('V1017235','Nguyễn Thị Yến','Nữ','bkacadV1017235@gmail.com','0329384834','Kiểm thử 4',688,'SS4'),
('Q1017241','Đào Ngọc Hoa','Nữ','bkacadQ1017241@gmail.com','0329384840','Trưởng phòng quản trị mạng',750,'SS5'),
('Q1017242','Nguyễn Thị Hương Mai','Nữ','bkacadQ1017242@gmail.com','0329384841','Quản trị mạng 1',545,'SS5'),
('Q1017243','Nguyễn Thị Hồng Ngọc','Nữ','bkacadQ1017243@gmail.com','0329384842','Quản trị mạng 2',657,'SS5'),
('Q1017244','Lê Thị Hồng','Nữ','bkacadQ1017244@gmail.com','0329384843','Quản trị mạng 3',632,'SS5'),
('Q1017245','Nguyễn Quang Huy','Nam','bkacadQ1017245@gmail.com','0329384844','Quản trị mạng 4',631,'SS5'),
('P1017251','Trịnh Tiến Giang','Nam','bkacadP1017251@gmail.com','0329384850','Trưởng phòng phát triển',1000,'SS6'),
('P1017252','Mai Thị Lý','Nữ','bkacadP1017252@gmail.com','0329384851','Phát triển 1',531,'SS6'),
('P1017253','Mai Thị Thanh Huyền','Nữ','bkacadP1017253@gmail.com','0329384852','Phát triển 2',644,'SS6'),
('P1017254','Nguyễn Thị Hồng Duyên','Nữ','bkacadP1017254@gmail.com','0329384853','Phát triển 3',684,'SS6'),
('P1017255','Nguyễn Thị Hồng Thắm','Nữ','bkacadP1017255@gmail.com','0329384854','Phát triển 4',588,'SS6'),
('M1017261','Trần Thị Hiền','Nữ','bkacadM1017261@gmail.com','0329384860','Trưởng phòng marketing',900,'SS7'),
('M1017262','Hoàng Thị Hương','Nữ','bkacadM1017262@gmail.com','0329384861','Marketing 1',521,'SS7'),
('M1017263','Bùi Thị Bích Loan','Nữ','bkacadM1017263@gmail.com','0329384862','Marketing 2',676,'SS7'),
('M1017264','Trần Thị Thu Ngân','Nữ','bkacadM1017264@gmail.com','0329384863','Marketing 3',664,'SS7'),
('M1017265','Trương Diệu Hương','Nữ','bkacadM1017265@gmail.com','0329384864','Marketing 4',636,'SS7'),
('V1017271','Nguyễn Thị Thanh','Nữ','bkacadV1017271@gmail.com','0329384870','Trưởng phòng thiết kế',800,'SS8'),
('V1017272','Bùi Minh Anh','Nữ','bkacadV1017272@gmail.com','0329384871','Thiết kế 1',659,'SS8'),
('V1017273','Ngô Thị Phương Nam','Nữ','bkacadV1017273@gmail.com','0329384872','Thiết kế 2',636,'SS8'),
('V1017274','Nguyễn Thị Hồng','Nữ','bkacadV1017274@gmail.com','0329384873','Thiết kế 3',606,'SS8'),
('V1017275','Mạc Thị Phương','Nữ','bkacadV1017275@gmail.com','0329384874','Thiết kế 4',552,'SS8'),
('B1017281','Nguyễn Thị Minh Phương','Nữ','sbkacadB1017281@gmail.com','0329384880','Trưởng phòng bảo vệ',800,'SS9'),
('B1017282','Trương Thị Diễm','Nữ','bkacadB1017282@gmail.com','0329384881','Bảo vệ 1',610,'SS9'),
('B1017283','Nguyễn Ánh Mây','Nữ','bkacadB1017283@gmail.com','0329384882','Bảo vệ 2',566,'SS9'),
('B1017284','Vũ Thị Thư','Nữ','bkacadgB1017284@gmail.com','0329384883','Bảo vệ 3',694,'SS9'),
('B1017285','Vũ Thị Phương Uyên','Nữ','bkacadB1017285@gmail.com','0329384884','Bảo vệ 4',550,'SS9'),
('K1017291','Nguyễn Thị Loan','Nữ','bkacadK1017291@gmail.com','0329384890','Trưởng phòng kỹ thuật',900,'SS10'),
('K123126','Đào Mai Phượng','Nữ','bkacadK1017292@gmail.com','0329384891','Kỹ thuật 1',671,'SS10'),
('K123125','Nguyễn Thị Thơm','Nữ','bkacadK1017293@gmail.com','0329384892','Kỹ thuật 2',531,'SS10'),
('K123124','Nguyễn Thị Thùy Linh','Nữ','bkacadK1017294@gmail.com','0329384893','Kỹ thuật 3',555,'SS10'),
('K123123','Đào Thị Phương Thảo','Nữ','bkacadK1017295@gmail.com','0329384894','Kỹ thuật 4',564,'SS10');

drop table if exists accounts;
create table if not exists accounts(
user_name varchar(30),
password_name varchar(30)
);
insert into accounts (user_name,password_name)
values

('adminss','ad11'),
('adminss2','ad22'),
('adminss3','ad33'),
('adminss4','ad44'),
('adminss5','ad55'),
('adminss6','ad66'),
('adminss7','ad77'),
('adminss8','ad88'),
('adminss9','ad99'),
('adminss10','ad1010');
--   update employees set department_id = null where department_id='BP1';

--  select * from employees;
--  select * from employees;
-- select count(employees_id) as 'Tổng nhân viên:' from employees where gender='Nam';
-- select count(employees_id) as 'Tổng nhân viên:' from employees where gender='Nữ';
