Таблица `device_user`

| Название   | Описание       | Тип данных | Ограничение |
|---------------|----------------|----------|-------------|
| personal_id   | Идентификатор | int | PRIMARY KEY |
| first_name    | Имя |  varchar(50) | NOT NULL |
| sur_name | Фамилия | varchar(50) | NOT NULL |
| phone_number  | Номер телефона | varchar(50) | NOT NULL |
| employment_date | Дата приема на работу | timestamp | NOT NULL |
| is_fired | Уволен/не уволен     | boolean | NOT NULL |
| department_id | Идентификатор департамента | int | FOREIGN KEY NOT NULL |

Таблица `department`

| Название   | Описание       | Тип данных | Ограничение |
|---------------|----------------|----------|-------------|
| id | Идентификатор | int | PRIMARY KEY |
| name | Название департамента | varchar(50) | NOT NULL|
| address | Адрес департамента | varchar(200) | NOT NULL |
| budget | Бюджет департамента | int | NOT NULL |

Таблица `status`
| Название   | Описание       | Тип данных | Ограничение |
|---------------|----------------|----------|-------------|
| id | Идентификатор | int | PRIMARY KEY |
| event_description | Описание события | varchar(300) NOT NULL |

Таблица `event`, scd2

| Название   | Описание       | Тип данных | Ограничение |
|---------------|----------------|----------|-------------|
| id | Идентификатор | int | PRIMARY KEY |
| device_id | Идентификатор устройства | int | FOREIGN KEY NOT NULL |
| status_id | Идентификатор статуса | int | FOREIGN KEY NOT NULL |
| date_start | Дата события | timestamp | NOT NULL |
| date_end | Дата следующего события | timestamp |  |
| device_user_id | Идентификатор пользователя | int | FOREIGN KEY |

Таблица `device_last_event`

| Название   | Описание       | Тип данных | Ограничение |
|---------------|----------------|----------|-------------|
| device_id | Идентификатор устройства | int | PRIMARY KEY |
| last_event_id | Идентификатор последнего события | int | FOREIGN KEY NOT NULL |


Таблица `manufacturer`

| Название   | Описание       | Тип данных | Ограничение |
|---------------|----------------|----------|-------------|
| id | Идентификатор | int | PRIMARY KEY |
| name | Название производителя | varchar(50) | NOT NULL |
| discount | Размер скидки | int | NOT NULL |


Таблица `equipment_group`

| Название   | Описание       | Тип данных | Ограничение |
|---------------|----------------|----------|-------------|
| id | Идентификатор | int | PRIMARY KEY |
| name | Название группы | varchar(50) | NOT NULL |
| categories | Категории | varchar(50) | NOT NULL |


Таблица `device`

| Название   | Описание       | Тип данных | Ограничение |
|---------------|----------------|----------|-------------|
| id | Идентификатор | int | PRIMARY KEY |
| reg_id | Учетный номер | varchar(50) | NOT NULL |
| model_name | Название модели | varchar(50) | NOT NULL |
| equipment_group_id | Идентификатор группы | int | FOREIGN KEY NOT NULL |
| manufacturer_id | Идентификатор производителя | int | FOREIGN KEY NOT NULL |
| price | Цена в $ | int | NOT NULL |
| mtbf | Среднее время наработки на отказ в часах | float ||
| cpu_series | Серия процессора | varchar(50) ||
| cpu_frequency | Частота процессора в GHz | float ||
| storage_capacity | Объем накопителя | int ||
| ram_capacity | Объем ОЗУ | int ||
| diagonal_size | Размер диагонали | float ||
| resolution | Разрешение | varchar(50) ||
| is_color | Цветной/черно-белый | boolean ||
| can_scan | Есть сканер | boolean ||
| printing_speed_ppm | Скорость печати | int ||
| printing_format_a4 | Поддерживает/не поддерживает формат печати A4 | boolean ||
| printing_format_a5 | Поддерживает/не поддерживает формат печати A5 | boolean ||
| printing_format_a3 | Поддерживает/не поддерживает формат печати A3 | boolean ||


