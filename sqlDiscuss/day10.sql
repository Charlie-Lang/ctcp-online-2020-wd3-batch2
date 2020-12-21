SELECT * FROM `tbl_sample3` WHERE fld_price >= 11 AND fld_price <= 20

--IS THE SAME AS:

SELECT * FROM `tbl_sample3` WHERE fld_price BETWEEN 11 AND 20 

--UPDATE QUERY
-- sample change Spread to Spreads
--8 	Chiz Whiz 	Spread 	67.0000 	10

UPDATE
	tbl_sample3
SET
	fld_category = 'Spreads'
WHERE
	fld_id = 8

--DELETE QUERY
--remove double entry

DELETE FROM tbl_sample3
WHERE fld_id = '9'

--more SELECT query sample

SELECT 
	fld_id
	, fld_product
	, fld_category
	, fld_price * fld_quantity
FROM tbl_sample3 WHERE 1

--

SELECT 
	fld_id
	, fld_product
	, fld_category
	, fld_price * fld_quantity
	, fld_price * fld_quantity * 1.1
FROM tbl_sample3 WHERE 1

--

SELECT 
	fld_id
	, fld_product
	, fld_category
	, fld_price * fld_quantity AS 'Total Price'
	, fld_price * fld_quantity * 1.1 AS 'Markup'
FROM tbl_sample3 WHERE 1

--CONCAT is to combine 2 or more fields and text

SELECT 
	fld_id
	, CONCAT( fld_category, ' - ', fld_product)
	, fld_price * fld_quantity AS 'Total Price'
	, fld_price * fld_quantity * 1.1 AS 'Markup'
FROM tbl_sample3 WHERE fld_price * fld_quantity * 1.1  > 700;

--COUNT

SELECT COUNT(*) FROM tbl_sample3;

--With search

SELECT COUNT(*) FROM tbl_sample3
WHERE fld_category = 'Spreads';

-- SUM

SELECT
	SUM(fld_price)
FROM tbl_sample3;

-- AVG

SELECT
	AVG(fld_price)
FROM tbl_sample3;

-- using MAX and MIN on fld_product

SELECT 
	fld_id
	, MAX(fld_product)
    , MIN(fld_product)
FROM tbl_sample3;

-- using MAX and MIN in fld_price

SELECT 
	fld_id
	, MAX(fld_price)
    , MIN(fld_price)
FROM tbl_sample3;

-- GROUP BY

SELECT 
	fld_category
FROM tbl_sample3
GROUP BY
	fld_category;

--

SELECT 
	fld_category
    , COUNT(*)
    , SUM(fld_price)
FROM tbl_sample3
GROUP BY
	fld_category;

--

SELECT 
	fld_category
    , COUNT(*)
    , SUM(fld_price * fld_quantity)
FROM tbl_sample3
GROUP BY
	fld_category
HAVING
	SUM(fld_price * fld_quantity) < 1000;

--

--JOINS SAMPLE

CREATE TABLE tbl_workers 
	( fld_wid INT NOT NULL AUTO_INCREMENT 
	, fld_Name VARCHAR(50) NOT NULL 
	, fld_address VARCHAR(50) NOT NULL 
	, fld_contact VARCHAR(30) NOT NULL 
	, fld_did INT NOT NULL 
	, PRIMARY KEY (fld_wid)
	) ENGINE = InnoDB;

CREATE TABLE tbl_department (
	fld_did int(11) NOT NULL
	,fld_dep_name varchar(50) NOT NULL
	,fld_dep_head varchar(50) NOT NULL
	,PRIMARY KEY (fld_did);
) 

INSERT INTO 
	tbl_workers
	(fld_Name
	, fld_address
	, fld_contact
	, fld_did) 
VALUES
	('sdf','16sdf','5532221','1')
	,('asd','23asd','5508062','1')
	,('fas','30fas','4656338','2')
	,('dfa','14dfa','2304208','3')
	,('sdf','71sdf','8612830','3')
	,('asd','27asd','3279802','3')
	,('sdf','20sdf','3083839','2')
	,('sad','53sad','9176374','1')
	,('cv','55cv','3832411','1')
	,('zx','59zx','7894839','1')
	,('qw','70qw','8652543','3')
	,('tret','32tret','5073897','2')
	,('hfg','83hfg','8342878','2')
	,('bvn','84bvn','8867053','2')
	,('ouio','57ouio','3574726','2')
	,('mari','44mari','8411616','4');

INSERT INTO 
	tbl_department 
	(fld_did
	, fld_dep_name
	, fld_dep_head) 
VALUES
	(1, 'props', 'jon'),
	(2, 'meals', 'jonny'),
	(3, 'entertainment', 'jon jon'),
	(5, 'maintenance', 'jj');

---

SELECT * 
FROM tbl_workers
JOIN tbl_department
ON tbl_workers.fld_did = tbl_department.fld_did;