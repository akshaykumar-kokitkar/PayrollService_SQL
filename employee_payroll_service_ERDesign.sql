use payroll_service
select * from employee_payroll

alter table employee_payroll add phone varchar(250);
alter table employee_payroll add address varchar (250);
alter table employee_payroll add department varchar(250);

alter table employee_payroll add
constraint DefaultDepartment_constraint default 'CS' for department

alter table employee_payroll add
constraint DefaultAddress_constraint default 'Mumbai' for address

EXEC sp_reanme 'employee_payroll.salary','basic_pay','col';

alter table employee_payroll add taxable_pay float, income_tax float, net_pay float;


update employee_payroll set deductions=1500, taxable_pay=0, net_pay=50000, income_tax=50000 where name = 'Billi';
update employee_payroll set deductions=2000, taxable_pay=0, net_pay=70000, income_tax=30000 where name = 'Terisa';
update employee_payroll set deductions=1000, taxable_pay=0, net_pay=80000, income_tax=50000 where name = 'Charlie';
update employee_payroll set deductions=1400, taxable_pay=0, net_pay=40000, income_tax=50000 where name = 'Terisa';


update employee_payroll set department = 'sales' where name = 'Terisa' 
insert into employee_payroll(name,department,Gender,basic_pay,StartDate) values
('Terisa','Marketing','F', 200000.0,'2021-05-23')