ALTER TABLE farmer ADD CONSTRAINT uk_phone UNIQUE (phone);

ALTER TABLE product MODIFY id INT AUTO_INCREMENT;

ALTER TABLE record 
ADD CONSTRAINT fk_record_product 
FOREIGN KEY (product_id) REFERENCES product(id);


