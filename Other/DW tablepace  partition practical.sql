SELECT tablespace_name FROM user_tablespaces;

DROP TABLE SSSales1;

DROP TABLESPACE TBS01 INCLUDING CONTENTS;

DROP TABLESPACE TBS02 INCLUDING CONTENTS;

CREATE TABLESPACE TBS01
DATAFILE 'C:\oracle\product\10.2.0\oradata\orcl\SALESA.DBF' SIZE 10M;

CREATE TABLESPACE TBS02
DATAFILE 'C:\oracle\product\10.2.0\oradata\orcl\SALESB.DBF' SIZE 10M;

--ALTER TABLESPACE TBS01
--RENAME DATAFILE 'C:\oracle\product\10.2.0\oradata\orcl\SALESA.DBF' TO 'C:\oracle\product\10.2.0\oradata\orcl\SALES01.DBF';

ALTER USER jolliffj QUOTA UNLIMITED ON TBS01;

ALTER USER jolliffj QUOTA UNLIMITED ON TBS02;


CREATE TABLE SSSales1
( 	SalesNo 	INTEGER NOT NULL,
  	SalesUnits	INTEGER NOT NULL,
        SalesDollar    	DECIMAL(12,2) NOT NULL,
	SalesCost	DECIMAL(12,2) NOT NULL,
	CustId		CHAR(8) NOT NULL,
	ItemId		CHAR(8) NOT NULL,
	StoreId		CHAR(8) NOT NULL,
	TimeNo		INTEGER NOT NULL,
 CONSTRAINT PK1SSSales PRIMARY KEY (SalesNo),
 CONSTRAINT FK1SSCustId FOREIGN KEY (CustId) REFERENCES SSCustomer,
 CONSTRAINT FK1SSItemId FOREIGN KEY (ItemId) REFERENCES SSItem,
 CONSTRAINT FK1SSStoreId FOREIGN KEY (StoreId) REFERENCES SSStore,
 CONSTRAINT FK1SSTimeId FOREIGN KEY (TimeNo) REFERENCES SSTime )
PARTITION BY RANGE (TimeNo)
	(  PARTITION SALES_P1 VALUES LESS THAN (50)
		TABLESPACE TBS01,
	    PARTITION SALES_P2 VALUES LESS THAN (100)
		TABLESPACE TBS02);