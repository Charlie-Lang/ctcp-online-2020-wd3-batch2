--NOTE: all caplock is part of the SQL query unless stated otherwise		
--NOTE: UNDERLINED part is values from the table or your input		
		
INSERT INTO
	table_name
	(field_name_1	
	,field_name_2
	,. . .
	,field_name_last)
VALUES
	('value_1'
	,'value_2'
	,'. . .'
	,'value_last');

--*** Don't include the auto increment primary key		

--INSERT QUERY SAMPLE
INSERT INTO
	tbl_sample3
    (fld_product
    ,fld_category
    ,fld_price
    ,fld_quantity)
VALUES
	('Samyeong'
    ,'Instant Noodles'
    ,'25.50'
    ,'20')


--SELECT QUERY with chosen fields

SELECT
	fld_product
    ,fld_category
    ,fld_price
FROM
	tbl_sample3

--with sort

SELECT	
	*
FROM	
	tbl_sample3
ORDER BY
	fld_category

--with search

SELECT	
	*
FROM	
	tbl_sample3
WHERE
	fld_category = 'Instant Noodles'

--

SELECT	
	*
FROM	
	tbl_sample3
WHERE
	fld_price < 20

-- IN sample

SELECT * FROM tbl_sample3
WHERE fld_category IN ('Drinks','Spreads')

-- BETWEEN sample

SELECT * FROM tbl_sample3
WHERE fld_price BETWEEN 20 AND 100

-- LIKE sample 

SELECT * 
FROM tbl_sample3
WHERE
fld_product LIKE '%'

-- Any that begins with an N

SELECT * 
FROM tbl_sample3
WHERE
fld_product LIKE 'N%'

-- any that contains the word "Coffee"

SELECT * 
FROM tbl_sample3
WHERE
fld_product LIKE '%Coffee%'

-- find any instant noodles category with price less than or equal to 20

SELECT * FROM tbl_sample3 
WHERE 
	fld_category = 'Instant Noodles'
    AND
    fld_price <= 20

-- find all products with drink and spread as its category

SELECT * FROM tbl_sample3 
WHERE 
	fld_category = 'Instant Noodles'
    OR
    fld_category = 'Drinks'
