/* Inserting triggers first */
@ d:\github\sd3042\ahughes_workfiles\db_scripts\proc\ai_trigger.sql;
@ d:\github\sd3042\ahughes_workfiles\db_scripts\proc\discount_trigger.sql;
@ d:\github\sd3042\ahughes_workfiles\db_scripts\proc\stock_trigger.sql;

/* Inserting functions. new_booking makes use of isRoomAvailable, so be careful on the order*/
@ d:\github\sd3042\ahughes_workfiles\db_scripts\proc\isRoomAvailable.sql;
@ d:\github\sd3042\ahughes_workfiles\db_scripts\proc\new_booking.sql;
