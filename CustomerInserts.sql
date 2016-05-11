--delete from customer;

insert into customer (
    customer_code,
    customer_name,
    customer_address,
    sales_area_name,
    country,
    manager_name,
    date_joined)
values (
    'C01',
    'Bernard Breen',
    '6, Woodbrook, Cork',
    'Woodland',
    'Ireland',
    'Elmer Fudd',
    '12-feb-1999');
 
insert into customer (
    customer_code,
    customer_name,
    customer_address,
    sales_area_name,
    country,
    manager_name,
    date_joined)
values (
    'C02',
    'Roger Rogers',
    '2, The Warren, Fieldstown',
    'Farmland',
    'Ireland',
    'Fintan Giles',
    '16-Oct-1999');

insert into customer (
    customer_code,
    customer_name,
    customer_address,
    sales_area_name,
    country,
    manager_name,
    date_joined)
values (
    'C03',
    'Bunny Flynn',
    '6, The Warren, Fieldstown',
    'Farmland',
    'Ireland',
    'Fintan Giles',
    '1-jan-2001');
    
insert into customer (
    customer_code,
    customer_name,
    customer_address,
    sales_area_name,
    country,
    manager_name,
    date_joined)
values (
    'C04',
    'Dolores Drake',
    'Pond Road, Lakeshore',
    'Farmland',
    'Ireland',
    'Fintan Giles',
    '10-sep-2001');

insert into customer (
    customer_code,
    customer_name,
    customer_address,
    sales_area_name,
    country,
    manager_name,
    date_joined)
values (
    'C05',
    'Greta Green',
    '6, Woodlane, Cork',
    'Woodland',
    'Ireland',
    'Elmer Fudd',
    '12-jan-2002');
    
insert into customer (
    customer_code,
    customer_name,
    customer_address,
    sales_area_name,
    country,
    manager_name,
    date_joined)
values (
    'C06',
    'James Green',
    '10, Main Street, Cork',
    'Woodland',
    'Ireland',
    'Elmer Fudd',
    '30-Jun-2002');
    
insert into customer (
    customer_code,
    customer_name,
    customer_address,
    sales_area_name,
    country,
    manager_name,
    date_joined)
values (
    'C07',
    'Billy Wright',
    '12, Wright Lane, Cork',
    'Woodland',
    'Ireland',
    'Elmer Fudd',
    '22-Dec-2003');   

COMMIT;

SELECT * FROM customer;

