CREATE TRIGGER sales_bi_trigger
BEFORE INSERT ON wine_sales
FOR EACH ROW
DECLARE
	v_price		wine.bottle_price%TYPE;
BEGIN
	SELECT bottle_price
		INTO v_price
	FROM wine
	WHERE wine.wine_code =:new.wine_code;

	:new.euro_value := :new.quantity * v_price;
END;
/

