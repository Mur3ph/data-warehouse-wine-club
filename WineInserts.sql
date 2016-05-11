--create trigger wine_bi_trigger
--before insert on wine
--for each row
--declare
--    v_case_price    wine.case_price%TYPE;
--begin 
--    :NEW.case_price := :new.bottle_price * 11;
--end;


insert into wine (wine_code,wine_name,colour,abv,region_name,country,supplier_name,bottle_price,bottle_cost,vintage)
values ('W01','San Bianca','White',6.3,'North','Spain','San Vino',8.49,6.00,1997);

insert into wine (wine_code,wine_name,colour,abv,region_name,country,supplier_name,bottle_price,bottle_cost,vintage)
values ('W02','San Rosa','Rose',5.1,'North','Spain','San Vino',7.99,5.50,1998);

insert into wine (wine_code,wine_name,colour,abv,region_name,country,supplier_name,bottle_price,bottle_cost,vintage)
values ('W03','San Vino','Red',8.2,'North','Spain','San Vino',8.99,6.00,2001);

insert into wine (wine_code,wine_name,colour,abv,region_name,country,supplier_name,bottle_price,bottle_cost,vintage)
values ('W04','Vin Blanc','White',6.1,'South','France','M Poirot',6.99,4.99,2001);

insert into wine (wine_code,wine_name,colour,abv,region_name,country,supplier_name,bottle_price,bottle_cost,vintage)
values ('W05','Vin Blanc','White',6.1,'South','France','M Poirot',6.50,4.99,2001);

insert into wine (wine_code,wine_name,colour,abv,region_name,country,supplier_name,bottle_price,bottle_cost,vintage)
values ('W06','Vin Rosa','Rose',6.1,'South','France','M Poirot',7.99,5.99,2001);

insert into wine (wine_code,wine_name,colour,abv,region_name,country,supplier_name,bottle_price,bottle_cost,vintage)
values ('W07','Vin Rouge','Red',6.1,'South','France','M Poirot',9.99,7.50,2001);

COMMIT;

SELECT * FROM wine;

