DROP TABLE IF EXISTS ticketing;

CREATE TABLE ticketing (
	admits INT NOT NULL,
	usedate TIMESTAMP NOT NULL,
	plu VARCHAR NOT NULL,
	pluname VARCHAR NOT NULL,
	accesscode INT NOT NULL,
	accesscodegroup VARCHAR NOT NULL,
	accesscodename VARCHAR NOT NULL,
	usageid INT NOT NULL,
	saledatetime TIMESTAMP NOT NULL,
	salenode INT NOT NULL,
	zipcode INT NOT NULL,
	city VARCHAR NOT NULL,
	county VARCHAR NOT NULL,
	stateloc VARCHAR NOT NULL,
	subgroup VARCHAR NOT NULL,
	maingroup VARCHAR NOT NULL,
	PRIMARY KEY (usageid)	
);