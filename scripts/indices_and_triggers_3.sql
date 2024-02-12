create index device_equipment_group_id_idx on device(equipment_group_id);
create index event_device_id_idx on event (status_id, device_id);

create or replace function update_device_last_event() returns trigger as $$
declare
	previous_last_event_id int;
begin
	select last_event_id into previous_last_event_id
	from device_last_event
	where device_id = new.device_id;
	
	update event
    set date_end = new.date_start
    where id = previous_last_event_id;
	
	update device_last_event
	set last_event_id = new.id
	where device_id = new.device_id;
	return new;
end;
$$ language plpgsql;

create trigger update_after_event_insert_trigger
after insert on event
for each row
execute function update_device_last_event();


create or replace function insert_device_last_event() returns trigger as $$
begin
  insert into device_last_event (device_id, last_event_id)
  values (new.id, null);

  return new;
end;
$$ language plpgsql;

create trigger insert_device_last_event_trigger
after insert on device
for each row
execute function insert_device_last_event();
