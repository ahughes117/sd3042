/* This function checks and returns the number of rows a particular query has.
 * This query is the one who checks if we have date - room clashes and returns
 * 0 if everything is alright (no rows fetched) and 1 if we need to check another 
  * time in the future.
 */
 
CREATE OR REPLACE FUNCTION
 isRoomAvailable(
	--input arguments: we only need room number and date (contains time)
	v_roomID IN INT,
	v_date IN NH_BOOKING."Date"%TYPE)
	--we return only whether we had rows or not.
	RETURN NUMBER
IS
	--output variable
	v_output NUMBER;
	
	--creating the cursor, using the suitable query
	--just selecting any integer type column, the result is not used
	CURSOR queryCursor IS
		SELECT RoomID
		FROM NH_BOOKING
		WHERE RoomID = v_roomID AND "Date" = v_date;
		
BEGIN

	--opening and iterating through cursor
	OPEN queryCursor;
	
	FETCH queryCursor INTO v_output;
	
	--if we have rows on resultset, means that the room is already booked.
	IF queryCursor%FOUND THEN
		v_output := 1;
	ELSE
		v_output := 0;
	END IF;
	
	--closing resources is a good habit
	CLOSE queryCursor;

--returning result
RETURN v_output;

EXCEPTION
WHEN OTHERS THEN
	raise_application_error(-20001, 'Critical Error, call ahughes ' || SQLERRM);
END;
