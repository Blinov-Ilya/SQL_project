insert into status (id, event_description) values
(1, 'In use'),
(2, 'Available'),
(3, 'Under maintenance'),
(4, 'Damaged'),
(5, 'Disposed');

insert into manufacturer (id, name, discount) values
(1, 'Apple', 10),
(2, 'Samsung', 15),
(3, 'Dell', 18),
(4, 'HP', 20),
(5, 'Lenovo', 30),
(6, 'Asus', 5),
(7, 'Microsoft', 13),
(8, 'Sony', 17),
(9, 'LG', 12),
(10, 'Acer', 23),
(11, 'Logitech', 8),
(12, 'Epson', 14),
(13, 'Bose', 11),
(14, 'Redmond', 3);

insert into department (name, address, budget) values
('Marketing', '123 Main Street, New York, NY', 5000),
('Sales', '1944 Broadway, New York, NY', 7500),
('IT', '789 Oak Street, San Francisco, CA', 10000),
('Human Resources', '1010 Maple Street, Chicago, IL', 4000),
('Finance', '612 Walnut Street, Boston, MA', 8000);

insert into device_user values
(1, 'John', 'Smith', '+14155550000', '2019-01-01 00:00:00', false, 1),
(2, 'Michael', 'Johnson', '+13105550000', '2018-05-15 00:00:00', false, 2 ),
(3, 'William', 'Brown', '+14085550000', '2017-07-11 00:00:00', false, 3),
(4, 'James', 'Jones', '+16085550000', '2018-10-30 00:00:00', false, 1),
(5, 'Robert', 'Miller', '+16175550000', '2019-09-10 00:00:00', true, 3),
(6, 'John ', 'Davis', '+14155551111', '2019-12-21 00:00:00', false, 2),
(7, 'Michael', 'Wilson', '+14085552000', '2018-02-20 00:00:00', false, 1),
(8, 'David', 'Moore', '+14025553000', '2018-08-16 00:00:00', false, 3),
(9, 'Richard', 'Taylor', '+15555541000', '2017-04-10 00:00:00', false, 2),
(10, 'Joseph', 'Anderson', '+19095551000', '2019-07-01 00:00:00', true, 2),
(11, 'Thomas', 'Thomas', '+16175552222', '2019-11-15 00:00:00', false, 3),
(12, 'Charles', 'Jackson', '+16175553333', '2020-01-30 00:00:00', false, 2),
(13, 'Christopher', 'White', '+14085554444', '2019-03-12 00:00:00', false, 3),
(14, 'Daniel', 'Harris', '+18285556666', '2018-06-25 00:00:00', false, 2),
(15, 'Matthew', 'Martin', '+14025557777', '2017-09-15 00:00:00', true, 2),
(16, 'Anthony', 'Thompson', '+14085559876', '2020-03-01 00:00:00', false, 2),
(17, 'Donald', 'Walker', '+16175554444', '2018-10-18 00:00:00', false, 2),
(18, 'Mark', 'Young', '+15125559999', '2019-06-12 00:00:00', false, 2),
(19, 'Paul', 'King', '+16505558888', '2018-02-10 00:00:00', false, 1),
(20, 'Steven', 'Ryan', '+17015508975', '2017-05-05 00:00:00', false, 2),
(21, 'Ronald', 'Scott', '+13105552100', '2017-02-15 00:00:00', false, 4),
(22, 'Timothy', 'Phillips', '+17015504200', '2016-08-30 00:00:00', false, 5),
(23, 'Jason', 'Campbell', '+17734557589', '2019-03-15 00:00:00', false, 4),
(24, 'Brian', 'Mitchell', '+16045665498', '2018-01-15 00:00:00', false, 1),
(25, 'Andrew', 'Richards', '+14085550987', '2018-04-17 00:00:00', false, 5),
(26, 'Nicholas', 'Gonzales', '+17734552455', '2017-11-18 00:00:00', false, 4),
(27, 'Jonathan', 'Reed', '+13104556722', '2017-10-17 00:00:00', false, 1),
(28, 'Brandon', 'Cook', '+16045481749', '2016-12-16 00:00:00', false, 5),
(29, 'Ryan', 'Morgan', '+14154477321', '2018-05-01 00:00:00', false, 3),
(30, 'Justin', 'Bell', '+14082323341', '2018-03-08 00:00:00', false, 2),
(31, 'Eric', 'Roberts', '+16504448790', '2017-10-28 00:00:00', false, 4),
(32, 'Daniel', 'Gray', '+14081222376', '2017-07-04 00:00:00', false, 5),
(33, 'Jacob', 'Nelson', '+17015421132', '2018-11-15 00:00:00', false, 1),
(34, 'Adam', 'Rose', '+17088879308', '2017-06-11 00:00:00', false, 4),
(35, 'Jordan', 'Sullivan', '+14024548821', '2018-01-10 00:00:00', false, 3),
(36, 'Stephen', 'Ortiz', '+14095535589', '2017-09-19 00:00:00', false, 2),
(37, 'Ethan', 'Garcia', '+13475887989', '2017-04-01 00:00:00', false, 5),
(38, 'Alexander', 'Murphy', '+13123552901', '2016-07-21 00:00:00', false, 4),
(39, 'Thomas', 'Jones', '+19095589480', '2017-10-10 00:00:00', false, 1),
(40, 'Aaron', 'Rodriguez', '+14095569931', '2018-12-04 00:00:00', false, 3);

insert into equipment_group (name, categories) values
('Computers', 'PCs, Laptops, Tablets'),
('Display devices', 'TVs, Monitors'),
('Office equipment', 'Printer, Scanner'),
('Other', 'All remaining devices');

insert into device (id, reg_id, model_name, equipment_group_id, manufacturer_id, price, mtbf, cpu_series, cpu_frequency, storage_capacity,
						  ram_capacity, diagonal_size, resolution, is_color, can_scan, printing_speed_ppm, printing_format_a4,
						  printing_format_a5, printing_format_a3)
values
(1, 'DVC-0293-AB54-6D22-BC84-1E2F-8E47-12CA', 'MacBook Pro', 1, 1, 1999, null, 'Intel Core i7', 2.6, 512, 16, null, null, true, false, null, null, null, null),
(2, '7BCC-3C84-5A6F-ED01-9A12-8BCC-6E2D', 'Dell Ultrasharp U2720Q', 2, 3, 549, null, null, null, null, null, 27, '3840x2160', true, false, null, null, null, null),
(3, '4E6A-8F23-21C5-AB59-36D8-9C1E-BE72', 'HP OfficeJet Pro 9015e', 3, 4, 229, 20000, null, null, null, null, null, null, true, true, 22, true, true, false),
(4, '19FC-3A75-65D4-0B28-72AC-9F31-4C6A', 'Logitech MX Master 3', 4, 11, 99, null, null, null, null, null, null, null, null, false, null, null, null, null),
(5, 'B6D4-EF8A-149C-21A6-5D37-9C8D-7E3F', 'Lenovo IdeaPad Flex 5', 1, 5, 699, null, 'Intel Core i5', 1.0, 512, 8, 14, '1920x1080', true, false, null, null, null, null),
(6, '8C1D-7E2F-9A54-0B6C-3391-A5D8-F4B9', 'Samsung Galaxy Tab S7', 2, 2, 549, null, 'Qualcomm Snapdragon 865+', 3.1, 128, 6, 11, '2560x1600', true, false, null, null, null, null),
(7, '9A5C-6D3F-40E8-1B7A-2C94-8FED-7B21', 'Epson EcoTank ET-3760', 3, 12, 379, 30000, null, null, null, null, null, null, true, true, 15, true, true, false),
(8, 'E2D3-6AF9-4C81-0B72-91A5-3D7C-8E6B', 'Bose QuietComfort 35 II', 4, 13, 299, null, null, null, null, null, null, null, false, false, null, null, null, null),
(9, '5B6C-1A2F-83D9-9074-6E8C-5D3A-F7B1', 'Microsoft SurfaceLaptop 4', 1, 7, 999, null, 'Intel Core i7', 1.3, 512, 16, 13.5, '2256x1504', true, false, null, null, null, null),
(10, 'C4D2-7A5F-31E8-6B9C-50A2-8D74-E3B9', 'LG UltraFine 5K Display', 2, 9, 1299, null, null, null, null, null, 27, '5120x2880', true, false, null, true, true, false),
(11, 'F8A1-9C6E-4D5B-21E8-7B39-0A2D-6F87', 'Dell XPS 13', 1, 3, 1399, null, 'Intel Core i7', 1.8, 512, 16, 13.4, '1920x1200', true, false, null, null, null, null),
(12, '3D7A-9E8C-1F5B-0A2D-64C9-8B7F-2E13', 'HP Envy Desktop', 1, 4, 899, null, 'AMD Ryzen 7', 3.6, 1024, 16, null, null, true, false, null, null, null, null),
(13, '6F8E-1A5B-9C0D-7E2F-3D8A-4B6C-5E19', 'Asus ZenBook 13', 1, 6, 899, null, 'Intel Core i5', 1.6, 256, 8, 13.3, '1920x1080', true, false, null, null, null, null),
(14, '0A5D-9C8E-6F1B-3A7C-2D4E-81F9-B72A', 'Sony Bravia X900H', 2, 8, 999, null, null, null, null, null, 65, '3840x2160', true, false, null, null, null, null),
(15, '5A9C-6E3D-0F1B-87A4-29D8-BE7C-1F63', 'Acer Aspire 5', 1, 10, 549, null, 'AMD Ryzen 5', 2.1, 256, 8, 15.6, '1920x1080', true, false, null, null, null, null),
(16, '7D8A-2C5F-9E1B-0A6D-4B3C-5E8F-91A7', 'MacBook Pro', 1, 1, 1999, null, 'Intel Core i7', 2.6, 512, 16, null, null, true, false, null, null, null, null),
(17, '1A2F-5E9C-8D7B-03EA-6C4D-9F6A-7B21', 'HP OfficeJet Pro 9015e', 3, 4, 229, 20000, null, null, null, null, null, null, true, true, 22, true, true, false),
(18, '4D7E-6A5F-83C1-09BA-2E8D-1F7C-9A63', 'Samsung Galaxy Tab S7', 2, 2, 549, null, 'Qualcomm Snapdragon 865+', 3.1, 128, 6, 11, '2560x1600', true, false, null, null, null, null),
(19, '2E6A-9C5F-1D8B-0A3E-7B9C-4F6A-8D21', 'Logitech MX Master 3', 4, 11, 99, null, null, null, null, null, null, null, null, false, null, null, null, null),
(20, '8F5A-1D7C-2A3E-6B9F-50A1-8E4D-7C29', 'Lenovo IdeaPad Flex 5', 1, 5, 699, null, 'Intel Core i5', 1.0, 512, 8, 14, '1920x1080', true, false, null, null, null, null);





-----------------------HISTORY-------------------------
-- Device 1:
-- In use -> Damaged -> Under maintenance -> Available (4)

-- Device 2:
-- In use -> Available -> In use (3)

-- Device 3:
-- In use -> Available (2)

-- Device 4:
-- Available -> In use -> Damaged -> Under maintenance -> Available (5)

-- Device 5:
-- In use -> Available -> In use -> Damaged -> Disposed (5)

-- Device 6:
-- In use -> Available -> In use -> Damaged -> Under maintenance (5)

-- Device 7:
-- In use -> Available -> In use -> Damaged -> Under maintenance -> Available (6)

-- Device 8:
-- In use -> Available -> In use -> Available -> In use (5)

-- Device 9:
-- In use -> Available -> In use -> Damaged (4)

-- Device 10:
-- In use -> Available -> In use -> Damaged -> Under maintenance -> Available -> In use (6)

-- Device 11:
-- Available -> In use -> Damaged (3)

-- Device 12:
-- In use -> Available -> In use -> Available (4)

-- Device 13:
-- Available -> In use -> Available -> In use -> Damaged (5)

-- Device 14:
-- In use -> Available -> In use -> Available -> In use (5)

-- Device 15:
-- In use -> Damaged (2)

-- Device 16:
-- Available -> In use -> Damaged -> Under maintenance (4)

-- Device 17:
-- In use -> Available(2)

-- Device 18:
-- Available -> In use -> Damaged -> Under maintenance -> Available (5)

-- Device 19:
-- In use -> Available -> In use -> Damaged -> Under maintenance(5)

-- Device 20:
-- In use -> Available -> In use (3)


insert into event
values
(default, 1, 1, '2021-01-01 08:00', '2021-01-15 12:00', 13),
(default, 1, 4, '2021-01-15 12:00', '2021-02-19 17:00', null),
(default, 1, 3, '2021-02-19 17:00', '2021-06-02 08:00', null),
(default, 1, 2 , '2021-06-02 08:00', null, null),

(default, 2, 1, '2021-01-02 08:00', '2021-01-22 12:00', 14),
(default, 2, 2, '2021-01-22 12:00', '2021-03-15 08:00', null),
(default, 2, 1, '2021-03-15 08:00', null, 27),

(default, 3, 1, '2021-01-03 08:00', '2021-06-23 12:00', 36),
(default, 3, 2, '2021-06-23 12:00', null, null),

(default, 4, 2, '2021-01-01 08:00', '2021-02-10 17:00', null),
(default, 4, 1, '2021-02-10 17:00', '2021-04-30 08:00', 18),
(default, 4, 3, '2021-04-30 08:00', '2021-08-09 17:00', null),
(default, 4, 2, '2021-08-09 17:00', null, null),

(default, 5, 1, '2021-01-05 08:00', '2021-03-07 12:00', 19),
(default, 5, 2, '2021-03-07 12:00', '2021-05-09 17:00', null),
(default, 5, 1, '2021-05-09 17:00', '2021-06-07 08:00', 37),
(default, 5, 4, '2021-06-07 08:00', '2021-07-18 17:00', null),
(default, 5, 5, '2021-07-18 17:00', null, null),

(default, 6, 1, '2021-01-06 08:00', '2021-02-10 12:00', 27),
(default, 6, 2, '2021-02-10 12:00', '2021-03-24 17:00', null),
(default, 6, 1, '2021-03-24 17:00', '2021-05-14 08:00', 15),
(default, 6, 4, '2021-05-14 08:00', '2021-06-30 17:00', null),
(default, 6, 3, '2021-06-30 17:00', null, null),

(default, 7, 1, '2021-01-07 08:00', '2021-02-11 12:00', 31),
(default, 7, 2, '2021-02-11 12:00', '2021-04-09 17:00', null),
(default, 7, 1, '2021-04-09 17:00', '2021-05-09 08:00', 13),
(default, 7, 4, '2021-05-09 08:00', '2021-07-09 17:00', null),
(default, 7, 3, '2021-07-09 17:00', '2021-08-19 08:00', null),
(default, 7, 2, '2021-08-19 08:00', null, null),

(default, 8, 1, '2021-01-08 08:00', '2021-03-11 12:00', 5),
(default, 8, 2, '2021-03-11 12:00', '2021-05-20 17:00', null),
(default, 8, 1, '2021-05-20 17:00', '2021-07-17 08:00', 9),
(default, 8, 2, '2021-07-17 08:00', '2021-09-04 17:00', null),
(default, 8, 1, '2021-09-04 17:00', null, 8),

(default, 9, 1, '2021-01-09 08:00', '2021-03-12 12:00', 4),
(default, 9, 2, '2021-03-12 12:00', '2021-05-11 17:00', null),
(default, 9, 1, '2021-05-11 17:00', '2021-07-10 08:00', 12),
(default, 9, 4, '2021-07-10 08:00', null, null),

(default, 10, 1, '2021-01-10 08:00', '2021-02-20 12:00', 1),
(default, 10, 2, '2021-02-20 12:00', '2021-04-19 17:00', null),
(default, 10, 1, '2021-04-19 17:00', '2021-06-27 08:00', 7),
(default, 10, 4, '2021-06-27 08:00', '2021-08-15 17:00', null),
(default, 10, 3, '2021-08-15 17:00', '2021-10-03 08:00', null),
(default, 10, 1, '2021-10-03 08:00', null, 11),

(default, 11, 2, '2021-01-11 08:00', '2021-03-14 17:00', null),
(default, 11, 1, '2021-03-14 17:00', '2021-05-24 12:00', 21),
(default, 11, 4, '2021-05-24 12:00', null, null),

(default, 12, 1, '2021-01-12 08:00', '2021-03-15 12:00', 23),
(default, 12, 2, '2021-03-15 12:00', '2021-05-23 17:00', null),
(default, 12, 1, '2021-05-23 17:00', '2021-07-21 08:00', 22),
(default, 12, 2, '2021-07-21 08:00', null, null),

(default, 13, 2, '2021-01-13 08:00', '2021-03-16 12:00', null),
(default, 13, 1, '2021-03-16 12:00', '2021-05-25 17:00', 26),
(default, 13, 2, '2021-05-25 17:00', '2021-07-23 08:00', null),
(default, 13, 1, '2021-07-23 08:00', '2021-09-11 17:00', 24),
(default, 13, 4, '2021-09-11 17:00', null, null),

(default, 14, 1, '2021-01-14 08:00', '2021-03-17 12:00', 38),
(default, 14, 2, '2021-03-17 12:00', '2021-05-25 17:00', null),
(default, 14, 1, '2021-05-25 17:00', '2021-07-23 08:00', 30),
(default, 14, 2, '2021-07-23 08:00', '2021-09-12 17:00', null),
(default, 14, 1, '2021-09-12 17:00', null, 32),

(default, 15, 1, '2021-01-15 08:00', '2021-03-18 12:00', 33),
(default, 15, 4, '2021-03-18 12:00', null, null),

(default, 16, 2, '2021-01-16 08:00', '2021-03-19 17:00', null),
(default, 16, 1, '2021-03-19 17:00', '2021-05-28 12:00', 40),
(default, 16, 4, '2021-05-28 12:00', '2021-07-26 08:00', null),
(default, 16, 3, '2021-07-26 08:00', '2021-09-14 17:00', null),
(default, 16, 2, '2021-09-14 17:00', null, null),

(default, 17, 1, '2021-01-17 08:00', '2021-03-20 12:00', 16),
(default, 17, 2, '2021-03-20 12:00', null, null),

(default, 18, 2, '2021-01-18 08:00', '2021-03-21 17:00', null),
(default, 18, 1, '2021-03-21 17:00', '2021-05-29 12:00', 29),
(default, 18, 4, '2021-05-29 12:00', '2021-07-27 08:00', null),
(default, 18, 3, '2021-07-27 08:00', '2021-09-15 17:00', null),
(default, 18, 2, '2021-09-15 17:00', null, null),

(default, 19, 1, '2021-01-19 08:00', '2021-03-22 12:00', 25),
(default, 19, 2, '2021-03-22 12:00', '2021-05-31 17:00', null),
(default, 19, 1, '2021-05-31 17:00', '2021-07-29 08:00', 17),
(default, 19, 4, '2021-07-29 08:00', '2021-09-16 17:00', null),
(default, 19, 3, '2021-09-16 17:00', null, null),

(default, 20, 1, '2021-01-20 08:00', '2021-03-23 12:00', 20),
(default, 20, 2, '2021-03-23 12:00', '2021-05-21 17:00', null),
(default, 20, 1, '2021-05-21 17:00', null, 32);

insert into device_last_event values
(1, 4),
(2, 7),
(3, 9),
(4, 13),
(5, 18),
(6, 23),
(7, 29),
(8, 34),
(9, 38),
(10, 44),
(11, 47),
(12, 51),
(13, 56),
(14, 61),
(15, 63),
(16, 68),
(17, 70),
(18, 75),
(19, 80),
(20, 83);

