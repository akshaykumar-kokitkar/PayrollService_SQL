use payroll_service

create table employee_payroll
(
 id INT IDENTITY(1,1) primary key,
 name VARCHAR(100) NOT NULL,
 salary MONEY NOT NULL,
 StartDate date NOT NULL
)
GO

select * from employee_payroll;

insert into employee_payroll values
('Billi',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-13'),
('Charlie',300000.0,'2021-05-21')