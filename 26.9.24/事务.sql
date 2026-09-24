ALTER TABLE farmer
ADD COLUMN 存款 DOUBLE;

UPDATE farmer
SET 存款=2500000
WHERE id IN(1,2,3);

START TRANSACTION;
UPDATE farmer SET 存款 = 存款 - 200 WHERE `name`='小明';
UPDATE farmer SET 存款 = 存款 + 200 WHERE `name`='李明';
COMMIT;