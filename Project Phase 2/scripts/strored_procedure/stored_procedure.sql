DELIMITER $$

CREATE PROCEDURE GetStock(IN model_name CHAR(20))
BEGIN
    SELECT watch_name, COUNT(*) AS available_stock
    FROM _WATCH_
    WHERE watch_name = model_name AND order_id IS NULL
    GROUP BY watch_name;
END$$

DELIMITER ;