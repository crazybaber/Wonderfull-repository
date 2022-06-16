create table emploees(
	id serial primary key,
	emploee_name Varchar(50) not null
);



insert into emploees (emploee_name)
values ('Bolt_Ivan');

insert into emploees (emploee_name)
values  ('Ramon Baker'),
		('Lukas Jenkins'),
		('Edward Scott'),
		('Quent Clark'),
		('Chase Thomas'),
		('Wilder Smith'),
		('Ximenez Williams'),
		('Luke Powell'),
		('Quintyn Hayes'),
		('Yitzchak Alexander'),
		('Dominick Edwards'),
		('Zain Gray'),
		('Urias Reed'),
		('Landon Cook'),
		('Price Murphy'),
		('Holland Bryant'),
		('Corbin Hill'),
		('Emiliano Martinez'),
		('Yanni Phillips'),
		('Nixon Adams'),
		('Henley Mitchell'),
		('Xu Martinez'),
		('Leighton Washington'),
		('Odin Price'),
		('Uria Griffin'),
		('Walter Wright'),
		('Gary Bell'),
		('Maximilian Garcia'),
		('Phillip Reed'),
		('August Miller'),
		('Gilbert Diaz'),
		('Edison Price'),
		('Verney Rodriguez'),
		('Virgil Rodriguez'),
		('Brinley Perry'),
		('Xeno Jones'),
		('Terrance Taylor'),
		('Roland Foster'),
		('DeAndre Garcia'),
		('Thomas Hall'),
		('Muhammad Gray'),
		('Milo Campbell'),
		('Vidal James'),
		('Xandro Cox'),
		('Wallace Walker'),
		('Braxton Cook'),
		('Kye Griffin'),
		('Lucas Rodriguez'),
		('Javier Lopez'),
		('Gilbert Reed'),
		('Elian Williams'),
		('Ty Alexander'),
		('Nicholas Turner'),
		('Urbain Moore'),
		('Ryker Rogers'),
		('Soren Young'),
		('Frederick Adams'),
		('Allen Harris'),
		('Jace Diaz'),
		('Cayden Martinez'),
		('Khalil Peterson'),
		('Jeremy Perez'),
		('Hayes Kelly'),
		('Vermont Torres'),
		('Lennox Kelly'),
		('Leonardo Bailey'),
		('Chase Williams'),
		('Giovanni Diaz'),
		('Zeus Clark');

create table salary(
	id serial primary key,
	monthly_salary Int not null
);

insert into salary(monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

select * from salary;

create table emploee_salary(
	id serial  primary key,
	emploee_id Int not null unique,
	salary_id Int not null
);

select * from emploee_salary;

insert into emploee_salary(emploee_id, salary_id) 
values 	(21, 61),
		(22, 62),
		(23, 63),
		(24, 64),
		(25, 65),
		(26, 66),
		(27, 67),
		(28, 68),
		(29, 69),
		(30, 70),
		(1, 11),
		(2, 12),
		(3, 13),
		(4, 14),
		(5, 15),
		(6, 16),
		(7, 17),
		(8, 18),
		(9, 19),
		(10, 20),
		(41, 31),
		(42, 32),
		(43, 33),
		(44, 34),
		(45, 35),
		(46, 36),
		(47, 37),
		(48, 38),
		(49, 39),
		(50, 40),
		(81, 51),
		(82, 52),
		(83, 53),
		(84, 54),
		(85, 55),
		(86, 56),
		(87, 57),
		(88, 58),
		(89, 59),
		(90, 60);
	

create table roles(
	id serial  primary key,
	role_name int not null unique
	);

alter table roles 
alter column role_name type Varchar(30);

insert into roles (role_name)
values	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');


select * from roles_emploee;

create table roles_emploee (
	id serial primary key,
	emploee_id Int not null unique,
	role_id Int not null,
	foreign key (emploee_id)
		references emploees(id),
	foreign key (role_id)
		references roles(id)
);

insert into roles_emploee (emploee_id, role_id)
values  (70, 20),
		(69, 19),
		(68, 18),
		(67, 17),
		(66, 16),
		(65, 15),
		(64, 14),
		(63, 13),
		(62, 12),
		(61, 11),
		(50, 10),
		(49, 9),
		(48, 8),
		(47, 7),
		(46, 6),
		(45, 5),
		(44, 4),
		(43, 3),
		(42, 2),
		(41, 1),
		(1, 20),
		(2, 19),
		(3, 18),
		(4, 17),
		(5, 16),
		(6, 15),
		(7, 14),
		(8, 13),
		(9, 12),
		(10, 11),
		(11, 10),
		(12, 9),
		(13, 8),
		(14, 8),
		(15, 6),
		(16, 5),
		(17, 4),
		(18, 3),
		(19, 2),
		(20, 1);
		
