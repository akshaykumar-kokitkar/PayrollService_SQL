use payroll_service

create table employee_payroll
(
 id INT IDENTITY(1,1) primary key,
 name VARCHAR(100) NOT NULL,
 salary MONEY NOT NULL,
 StartDate date NOT NULL
)
GO

insert into employee_payroll values
('Billi',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-13'),
('Charlie',300000.0,'2021-05-21')

select * from employee_payroll;

select salary from employee_payroll where name = 'billi'

select salary from employee_payroll
WHERE StartDate BETWEEN CAST('2018-01-01'
AS DATE) AND GETDATE();

ALTER TABLE employee_payroll
ADD gender char(2)

update employee_payroll set Gender = 'M' where name = 'Billi' or name = 'Charlie'or name = 'Mark';
update employee_payroll set Gender = 'F' where name = 'Terisa';