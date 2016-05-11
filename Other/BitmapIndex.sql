DROP INDEX jolliffj.customernation_bidx;


CREATE BITMAP INDEX jolliffj.customernation_bidx ON jolliffj.sscustomer(custnation)
NOLOGGING COMPUTE STATISTICS;