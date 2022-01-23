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

