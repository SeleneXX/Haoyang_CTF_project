create database `ctf` default character set utf8 collate utf8_general_ci;

use ctf;

CREATE TABLE admin (
  `id` int NOT NULL auto_increment primary key,
  `username` varchar(64),
  `password` varchar(64) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE product_id (
  `id` int NOT NULL auto_increment primary key,
  `product_name` varchar(32),
  `factory` varchar(32),
  `contact_info` varchar(64)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO admin (`username`, `password`) VALUES ('CTF_123sdffsct','jghaunrmatr12,12');
INSERT INTO product_id (`product_name`, `factory`, `contact_info`) VALUES('coke', 'MA_factory', '1112223333');
INSERT INTO product_id (`product_name`, `factory`, `contact_info`) VALUES('sprite', 'CA_factory', '0001112222');
INSERT INTO product_id (`product_name`, `factory`, `contact_info`) VALUES('chips', 'NY_factory', '2223334444');
INSERT INTO product_id (`product_name`, `factory`, `contact_info`) VALUES('popcorn', 'PA_factory', '3334445555');
INSERT INTO product_id (`product_name`, `factory`, `contact_info`) VALUES('coffee', 'NJ_factory', '4445556666');
