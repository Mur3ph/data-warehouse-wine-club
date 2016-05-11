 create table customer
 (
 customer_code    char(3) not null,
 customer_name    varchar2(25),
 customer_address varchar2(100),
 sales_area_name  varchar2(25),
 country          varchar2(25),
 manager_name     varchar2(25),
 date_joined      date,
 constraint pk_customer primary key (customer_code));
 
 create table wine
 (
 wine_code        char(3) not null,
 wine_name        varchar2(25),
 colour           char (5),
 ABV              number(4,2),
 region_name      varchar2(25),
 country          varchar2(25), 
 supplier_name    varchar2(25),
 bottle_price     number(4,2),
 bottle_cost	  number(4,2),
 case_price       number (6,2),
 vintage          number(4),
 constraint pk_wine primary key (wine_code));
 
 create table ttime
 (
 time_code        date not null,
 day_name         char(9),
 week_number      number(2),
 month_number     number(2),
 month_name       char(9),
 quarter          number(1),
 timeyear         number(4),
 constraint pk_ttime  primary key (time_code),
 constraint ck_week_number check (week_number between 1 and 53),
 constraint ck_month_number check (month_number between 1 and 12),
 constraint ck_quarter check (quarter between 1 and 4),
 constraint ck_tyear check (timeyear between 2000 and 2060));
 
 create table wine_sales 
 ( 
 sales_no         char(3) not null,
 customer_code    char (3),
 wine_code        char (3),
 time_code        date,
 quantity         number (3),
 euro_value       number (5,2),
 constraint pk_sales primary key (sales_no),
 constraint fk_customer foreign key (customer_code) references customer,
 constraint fk_wine foreign key (wine_code) references wine,
 constraint fk_ttime foreign key (time_code) references ttime);