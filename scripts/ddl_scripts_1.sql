drop table if exists status cascade;
drop table if exists manufacturer cascade;
drop table if exists department cascade;
drop table if exists device_user cascade;
drop table if exists device cascade;
drop table if exists event cascade;
drop table if exists equipment_group cascade;
drop table if exists device_last_event cascade;
drop trigger if exists update_after_event_insert_trigger on event;
drop trigger if exists insert_device_last_event_trigger on device;

create table status (
	id int primary key,
	event_description varchar(300) not null
);

create table manufacturer (
	id int primary key,
	name varchar(50) not null,
	discount int not null
);

create table department (
	id serial primary key,
	name varchar(50) not null,
	address varchar(200) not null,
	budget int not null
);

create table device_user (
	personal_id int primary key,
	first_name varchar(50) not null,
	sur_name varchar(50) not null,
	phone_number varchar(50) not null,
	employment_date timestamp not null,
	is_fired boolean not null,
	department_id int not null,
	constraint fk_user_department
		foreign key (department_id)
		references department (id)
);


create table equipment_group (
    id serial primary key,
    name varchar(50) not null,
    categories varchar(200) not null
);

create table device (
    id serial primary key,
	reg_id varchar(50) not null,
    model_name varchar(50) not null,
    equipment_group_id int not null,
    manufacturer_id int not null,
    price int not null,
    mtbf float, -- in hours
    cpu_series varchar(50),
    cpu_frequency float,
    storage_capacity int,
    ram_capacity int,
    diagonal_size float,
    resolution varchar(50),
    is_color boolean,
    can_scan boolean,
    printing_speed_ppm int,
    printing_format_a4 boolean,
    printing_format_a5 boolean,
    printing_format_a3 boolean,
    constraint fk_device_model_group
        foreign key (equipment_group_id)
        references equipment_group (id),
    constraint fk_device_model_manufacturer
        foreign key (manufacturer_id)
        references manufacturer (id)
);


create table event (
    id serial,
    device_id int not null,
    status_id int not null,
    date_start timestamp not null,
	date_end timestamp,
    device_user_id int,
	primary key(id, date_start),
    constraint fk_event_device
        foreign key (device_id)
        references device (id),
	constraint fk_event_status
        foreign key (status_id)
        references status (id),
	constraint fk_event_user
		foreign key (device_user_id)
		references device_user (personal_id)
);

create table device_last_event (
	device_id int primary key,
	last_event_id int,
	event_start timestamp,
	constraint fk_device_device
		foreign key (device_id)
		references device (id),
	constraint fk_device_event
		foreign key (last_event_id, event_start)
		references event (id, date_start)
);
