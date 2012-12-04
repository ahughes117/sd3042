/* This function calculates and applies a discount to the booking that comply with the  * conditions below: * 10% for the 3rd visit * 20% for the 6th visit * 30% for the 9th visit */CREATE OR REPLACE TRIGGER DISCOUNTBEFORE INSERT ON "NH_BOOKING"FOR EACH ROWDECLARE	v_instances INTEGER;BEGIN	--by using mod we limit it to 9 instances	SELECT MOD(COUNT(*), 9)	INTO v_instances	FROM NH_BOOKING	WHERE CustomerID = :NEW.CustomerID;	  --hacking around the mutating trigger error.  --instead of updating after the table,  --we check before doing a minus 1	IF (v_instances = 2) THEN    :NEW.Price := :NEW.Price - 0.1*:NEW.Price;		DBMS_OUTPUT.PUT_LINE('3 Visits in a row, apply 10% discount');	ELSIF (v_instances = 5) THEN    :NEW.Price := :NEW.Price - 0.2*:NEW.Price;		DBMS_OUTPUT.PUT_LINE('6 Visits in a row, apply 20% discount');	ELSIF (v_instances = 8) THEN    :NEW.Price := :NEW.Price - 0.3*:NEW.Price;		DBMS_OUTPUT.PUT_LINE('9 Visits in a row, apply 30% discount');	END IF;END;