create trigger wine_bi_trigger
before insert on wine
for each row
declare
    v_case_price    wine.case_price%TYPE;
begin 
    :NEW.case_price := :new.bottle_price * 11;
end;
/

