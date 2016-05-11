-- "Set scan off" turns off substitution variables. 
Set scan off; 

CREATE OR REPLACE PROCEDURE CREATE_CALENDAR (v_start_date IN varchar2,v_end_date IN varchar2)
is
  v_insert_dow	varchar2(9);
  v_insert_date date;
  v_num_inserted	number;
begin	

-- Start date and End Date should be in ddmmyyyy format
dbms_output.put_line('Invoking Create Working Days procedure CREATE_WORKINGDAYS');

-- returning dates
dbms_output.put_line('Start date = '||v_start_date);
dbms_output.put_line('End date = '||v_end_date);

-- deleting any existnig dates
dbms_output.put_line('Deleting any existing dates');
delete from ttime
where time_code >= to_date(v_start_date,'ddmmyyyy')
and time_code <=  to_date(v_end_date,'ddmmyyyy');

dbms_output.put_line('Deleted record count='||SQL%ROWCOUNT);
	
v_insert_date := to_date(v_start_date,'ddmmyyyy');

loop
	
	-- if weekend do not insert, just increment
	--v_insert_dow := to_char(v_insert_date,'DAY');
	--if v_insert_dow = 'SATURDAY ' or v_insert_dow = 'SUNDAY   ' then
	--	v_insert_date := v_insert_date + 1;
	--else
		-- inserting next date
		dbms_output.put_line('inserting date = '||to_char(v_insert_date,'DAY')||' - '||v_insert_date);
		insert into ttime(time_code, day_name, week_number, month_number,month_name, quarter,timeyear) 
		values (v_insert_date, to_char(v_insert_date,'DAY'),to_number(to_char(v_insert_date,'WW')),to_number(to_char(v_insert_date,'MM')),to_char(v_insert_date,'MONTH'),to_number(to_char(v_insert_date,'Q')),to_number(to_char(v_insert_date,'YYYY')));
		v_insert_date := v_insert_date + 1;
	--end if;

	exit when v_insert_date > to_date(v_end_date,'ddmmyyyy');
	
end loop;

select count(time_code) into v_num_inserted from ttime
where time_code >= to_date(v_start_date,'ddmmyyyy')
and time_code <=  to_date(v_end_date,'ddmmyyyy');

dbms_output.put_line('Records inserted='||v_num_inserted);

commit;

end;
/

