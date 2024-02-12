-- to get info about all available devices
select he.id, he.device_id, he.date_start, he.device_user_id from event as he
where he.status_id = (select status.id from status 
					  where status.event_description = 'Available')
					  and he.date_end is null;
			
-- to get info about all damaged devices but not under maintainance
select he.id, he.device_id, he.date_start from event as he
where he.status_id = (select status.id from status 
					  where status.event_description = 'Damaged')
					  and he.date_end is null;
		
-- to get all not fired staff
select personal_id, first_name, sur_name, phone_number, department_id, employment_date from device_user as du
where not du.is_fired;

-- to get all device models from manufacturer 'HP'
select * from device
where manufacturer_id = (select id from manufacturer as man
						where man.name = 'HP');

-- to set new price to macbook pro
update device
set price = 1799
where model_name = 'MacBook Pro';

-- to increase the budget of the department
update department
set budget = budget + 10000
where id = 3;

-- to change one's number
update device_user
set phone_number = '+14155475429'
where personal_id = 1;

-- happened new event with 18th device, it is now owned by user 38
update event
set date_end = '2021-10-05 12:00'
where device_id = 18 and date_end is null;

insert into event values 
(default, 18, 1, '2021-11-05 12:00', null, 39);

update device_last_event
set last_event_id = (select id from event as he
					 where he.device_id = 18 and he.date_end is null)
where device_id = 18;

-- select * from device_last_event;

-- select * from event
-- where device_id = 18
-- here the series of queries ends

-- to delete some manufacturer which was not used and suddenly refused to cooperate (due to sanctions, for example)
delete from manufacturer where name = 'Redmond';
