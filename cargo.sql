create database fact;
	use fact;
	create table datos(
			id	varchar(42) not null,
            company_name varchar(130) null,
            company_id varchar(42) not null,
            amount decimal(16,2) not null,
			status varchar(30) not null,
            created_at timestamp not null,
            paid_at timestamp null 
		);
        
        
	create table charges(
    		id	varchar(24) not null,
            amount decimal(16,2) not null,
			status varchar(30) not null,
            created_at timestamp not null,
            paid_at timestamp null 
		);

	create table companies(
			id	varchar(24) not null,
            company_name varchar(130) null,
            company_id varchar(24) not null
		);    
	
    	create table dataa(
			id	varchar(24) not null,
            company_name varchar(130) null,
            company_id varchar(24) not null,
            amount decimal(16,2) not null,
			status varchar(30) not null,
            created_at timestamp not null,
            paid_at timestamp null 
		);
        
        
        

SELECT companies.company_name, companies.company_id, charges.amount, charges.status, charges.created_at, charges.paid_at
FROM companies
JOIN charges
ON companies.id=charges.id;

CREATE VIEW companies_and_charges2 AS
SELECT *
FROM dataa;
select * from companies_and_charges2
WHERE created_at = '2019-04-14';
select * from companies_and_charges
WHERE created_at between 2019-01-01 and 2019-06-01;
