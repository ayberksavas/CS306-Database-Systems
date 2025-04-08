DELIMITER $$
CREATE TRIGGER logWatchSale
AFTER UPDATE ON _WATCH_
FOR EACH ROW
BEGIN
    IF OLD.order_id IS NULL AND NEW.order_id IS NOT NULL THEN
        INSERT INTO _WATCH_LOG_ (watch_id, watch_name, order_id)
        VALUES (NEW.watch_id, NEW.watch_name, NEW.order_id);
    END IF;
END$$

DELIMITER ;