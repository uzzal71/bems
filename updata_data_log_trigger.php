<?php 

BEGIN 
SET @node = (SELECT `node` FROM tbl_data_update WHERE device_id = NEW.device_id AND site_id=NEW.site_id AND bank = NEW.bank AND node = NEW.node);

IF (NEW.node = @node) THEN
UPDATE tbl_data_update SET date_time = NOW(), volt = NEW.volt, temp = NEW.temp, amp = NEW.amp, ir = NEW.ir WHERE device_id = NEW.device_id AND site_id = NEW.site_id AND bank = NEW.bank AND node = NEW.node;
ELSE
INSERT INTO tbl_data_update (date_time, device_id, site_id, bank, node, volt, temp, amp, ir, status)VALUES(NOW(), NEW.device_id, NEW.site_id, NEW.bank, NEW.node, NEW.volt, NEW.temp, NEW.amp, NEW.ir, 1);
END IF;
END

 ?>


10.10.100.90
root
#Bang1@desh19


















<?php 

BEGIN 

SET @device_id = (SELECT node FROM tbl_data_update WHERE device_id = NEW.device_id AND site_id=NEW.site_id AND bank = NEW.bank AND node = 'NEW.node' ORDER BY id DESC LIMIT 1);

IF @device_id IS NULL THEN
INSERT INTO tbl_data_update (date_time, device_id, site_id, bank, node, volt, temp, amp, ir, status)VALUES(NOW(), NEW.device_id, NEW.site_id, NEW.bank, NEW.node, NEW.volt, NEW.temp, NEW.amp, NEW.ir, 1);
ELSE
UPDATE tbl_data_update SET date_time = NOW(), volt = NEW.volt, temp = NEW.temp, amp = NEW.amp, ir = NEW.ir WHERE device_id = NEW.device_id AND site_id = NEW.site_id AND bank = NEW.bank AND node = NEW.node;
END IF;
END

 ?>
