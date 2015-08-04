#!/bin/sh
mysql -D qgk -u qgk_user -pPASSWORD << EOF

use qgk;

CREATE TABLE users (
	id int NOT NULL AUTO_INCREMENT,
	email  varchar(60) NOT NULL,
	ripple varchar(60) NOT NULL,
	fname varchar(60) NOT NULL,
	lname varchar(60) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE public (
	id int NOT NULL AUTO_INCREMENT,
	user_id int NOT NULL AUTO_INCREMENT,
	key varchar(60) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE private (
	id int NOT NULL AUTO_INCREMENT,
	key varchar(60) NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE redeem (
	id int NOT NULL AUTO_INCREMENT
	PRIMARY KEY(id)
);

#Create a MySQL Database with four total tables using the structure from mysql_setup.sh: public, private, redeem, 
#and users.

#Primary key IDs auto increment as an integer and are not null. Foreign keys for public_id and private_id both 
#correlate to redeem_id, the intersection table.

#Insert into public table the public keys and the private table into the private keys

#Create redeem table, PK id auto increment int not_null, FK public and private_id. This is the intersection table for
#linking the public and private keys together.

#Create users table: PK user_id ai int not_null, email not_null varchar60, ripple not_null varchar 60, fname not_null 
#varchar60, lname not_null varchar60, FK public_id
EOF