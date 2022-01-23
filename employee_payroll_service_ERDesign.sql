use payroll_service
select * from employee_payroll

alter table employee_payroll add phone varchar(250);
alter table employee_payroll add address varchar (250);
alter table employee_payroll add department varchar(250);

alter table employee_payroll add
constraint DefaultDepartment_constraint default 'CS' for department

alter table employee_payroll add
constraint DefaultAddress_constraint default 'Mumbai' for address
