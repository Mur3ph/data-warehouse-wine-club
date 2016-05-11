insert into customer_source
(CustId, CustName, CustPhone, CustStreet, CustCity, CustState, CustZip, CustNation)
values ('C0954327','Sheri Gordon', '(303)123-1234','1 Main Street.','Littleton','CO','80129-5543','USA');
insert into customer_source
(CustId, CustName, CustPhone, CustStreet, CustCity, CustState, CustZip, CustNation)
values ('C1010398','Jim Glussman','(303)333-3333','1432 E. Ravenna','Denver','CO','80111-0033','USA');
insert into customer_source
(CustId, CustName, CustPhone, CustStreet, CustCity, CustState, CustZip, CustNation)
values ('C9999999','Jim Glussman','(303)333-3333','1432 E. Ravenna','Denver','CO','80111-0033','USA');


MERGE INTO sscustomer a
	USING customer_source b
	ON (a.CustId = b.CustId)
	WHEN MATCHED THEN
		UPDATE SET 	a.CustName = b.Custname,
				a.CustPhone = b.CustPhone,
				a.CustStreet = b.CustStreet,
				a.CustCity = b.CustCity,
				a.CustState = b.CustState,
				a.CustZip = b.CustZip,
				a.CustNation = b.CustNation
	WHEN NOT MATCHED THEN
		INSERT (CustId, CustName, CustPhone, CustStreet, CustCity, CustState, CustZip, CustNation)
		VALUES(b.CustId, b.CustName, b.CustPhone, b.CustStreet, b.CustCity, b.CustState, b.CustZip, b.CustNation);
