--CREATE TRIGGER sales_bi_trigger
--BEFORE INSERT ON wine_sales
--FOR EACH ROW
--DECLARE
--	v_price		wine.bottle_price%TYPE;
--BEGIN
--	SELECT bottle_price
--		INTO v_price
--	FROM wine
--	WHERE wine.wine_code =:new.wine_code;

--	:new.euro_value := :new.quantity * v_price;
--END;


insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S01','C01','W01','01-aug-05',6);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S02','C06','W01','01-aug-05',6);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S03','C01','W03','12-aug-05',10);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S04','C02','W02','21-aug-05',12);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S05','C04','W05','01-sep-05',12);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S06','C02','W01','01-sep-05',10);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S07','C01','W06','13-sep-05',16);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S08','C05','W02','21-sep-05',20);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S09','C03','W03','21-sep-05',30);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S10','C02','W06','10-oct-05',15);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S11','C04','W04','12-oct-05',16);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S12','C01','W07','14-oct-05',18);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S13','C07','W01','14-oct-05',20);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S14','C06','W05','15-oct-05',22);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S15','C03','W02','16-oct-05',13);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S16','C01','W03','21-oct-05',26);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S17','C07','W07','21-oct-05',12);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S18','C04','W01','29-oct-05',12);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S19','C02','W07','30-oct-05',12);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S20','C03','W05','01-nov-05',20);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S21','C01','W02','01-nov-05',20);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S22','C01','W04','16-nov-05',12);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S23','C06','W03','23-nov-05',12);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S24','C05','W06','01-dec-05',6);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S25','C07','W07','01-dec-05',6);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S26','C03','W02','01-dec-05',24);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S27','C01','W03','09-dec-05',24);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S28','C06','W06','09-dec-05',24);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S29','C07','W01','15-dec-05',24);

insert into wine_sales (sales_no,customer_code,wine_code,time_code,quantity)
values ('S30','C02','W02','16-dec-05',24);

COMMIT;

SELECT * FROM wine_sales;


