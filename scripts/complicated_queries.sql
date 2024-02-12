--to list all devices with users' names ordered by last_event and user_name
select d.id, s.event_description, du.first_name, du.sur_name
from device d
join device_last_event dle on d.id = dle.device_id
join event he on dle.last_event_id = he.id
join status s on he.status_id = s.id
left join device_user du on he.device_user_id = du.personal_id
order by s.event_description desc, du.first_name, du.sur_name;

--to get number of all devices grouped by status if this number is not 0
select s.event_description, count(dle.device_id) as device_count
from device_last_event dle
join event he on dle.last_event_id = he.id
join status s on he.status_id = s.id
group by s.id
order by device_count desc;

--to get number of devices for each manufacturer and each group in it
select m.name, eg.name, count(d.id) over (partition by m.id) as device_count
from device d
join manufacturer m on d.manufacturer_id = m.id
join equipment_group eg on d.equipment_group_id = eg.id
order by m.name desc;

--to get number of devices being used right now by some device_user in descending order
select personal_id, first_name, sur_name, count(device_id) as device_count
from device_user du
join event on event.device_user_id = du.personal_id
join status on event.status_id = status.id
where status.event_description = 'In use' and event.date_end is null
group by personal_id
order by count(device_id) desc;

--to rank damaged devices by price
select reg_id, model_name, price, rank() over(order by price desc) as device_rank
from device
join device_last_event dle on dle.device_id = device.id
join event on event.id = dle.last_event_id
join status on status.id = event.status_id
where status.event_description = 'Damaged';

--to rank devices by price in each category
with device_full_info as (
	select reg_id, model_name, price, eg.name as group_name, st.event_description as status, device.equipment_group_id as eq_group_id from device
	join device_last_event dle on dle.device_id = device.id
	join event ev on ev.id = dle.last_event_id
	join status st on st.id = ev.status_id
	join equipment_group eg on eg.id = device.equipment_group_id
	order by eg.id
)
select reg_id, model_name, price, group_name, status, rank() over(partition by eq_group_id order by price desc) as device_rank  from device_full_info;

--to rank by summary price for each user
--and get only users who have equipment worth more than 1000$
with device_user_summary_price as (
	select personal_id, first_name, sur_name, sum(d.price) as sum_price
	from device_user du
	left join event ev on du.personal_id = ev.device_user_id -- many events!
	join device d on d.id = ev.device_id
	where ev.date_end is null
	group by du.personal_id
	having sum(d.price) > 1000
	order by sum_price desc
)
select *, rank() over(order by sum_price desc) as device_user_rank
from device_user_summary_price;

--to check which models break often
select d.reg_id, d.model_name, count(d.id) as breakdowns_number
from event ev
join device d on d.id = ev.device_id
join status st on st.id = ev.status_id
where st.event_description = 'Damaged'
group by d.id;


--to get summary prices for departments
with device_user_summary_price as (
	select personal_id, first_name, sur_name, department_id as dep_id, sum(d.price) as sum_price
	from device_user du
	left join event ev on du.personal_id = ev.device_user_id -- many events!
	join device d on d.id = ev.device_id
	where ev.date_end is null
	group by du.personal_id
	order by sum_price desc
)
select dep.name, dep.budget, sum(sum_price) as sum_dep_price
from device_user_summary_price as users_sums
join department dep on users_sums.dep_id = dep.id
group by dep.id
