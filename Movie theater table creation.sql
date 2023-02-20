create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

create table tickets (
	ticket_id SERIAL primary key,
	film_name VARCHAR(100),
	order_date DATE default CURRENT_DATE,
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(10,2),
	film_id INTEGER
);

create table concession (
	item_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	sub_total numeric(8,2),
	total_cost numeric(10,2)
);

create table movies (
	film_id SERIAL primary key,
	film_name VARCHAR(100),
	film_time DATE default CURRENT_DATE,
	foreign key(film_id) references tickets(ticket_id)
);

create table payment (
	payment_id SERIAL primary key,
	customer_id integer,
	ticket_id integer,
	item_id integer,
	staff_id VARCHAR(15),
	foreign key(item_id) references concession(item_id)
);

select * from customer 


