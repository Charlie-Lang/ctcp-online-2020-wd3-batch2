-- http://127.0.0.1/phpmyadmin/
CREATE TABLE tbl_sample1 (fld_name VARCHAR(20));

CREATE TABLE tbl_sample2 (
	fld_product VARCHAR(75) NOT NULL
	, fld_category VARCHAR(30) NOT NULL
	, fld_price FLOAT(20,4) NOT NULL
	, fld_quantity INT NOT NULL 
);

--INSERT = INPUT DATA TO 

CREATE TABLE tbl_sample3 (
	fld_id INT NOT NULL AUTO_INCREMENT 
	, fld_product VARCHAR(75) NOT NULL 
	, fld_category VARCHAR(30) NOT NULL 
	, fld_price FLOAT(20,4) NOT NULL 
	, fld_quantity INT NOT NULL 
	, PRIMARY KEY (fld_id)
);
--to next
