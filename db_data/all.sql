/*
-- Query: select * from `ticketing_system`.`passenger`
LIMIT 0, 1000

-- Date: 2017-11-19 13:29
*/
INSERT INTO `passenger` (`idpassenger`,`first_name`,`last_name`,`dob`,`nic`,`phone`) VALUES (1,'Mihiran','Hasalanka','15/02/1995','950461578v','0713089299');
INSERT INTO `passenger` (`idpassenger`,`first_name`,`last_name`,`dob`,`nic`,`phone`) VALUES (2,'Harsha','Koshila','01/12/1993','93463726v','0716357288');
INSERT INTO `passenger` (`idpassenger`,`first_name`,`last_name`,`dob`,`nic`,`phone`) VALUES (3,'Dihan','Kodithuwakku','12/05/1994','943677628v','0772347822');
INSERT INTO `passenger` (`idpassenger`,`first_name`,`last_name`,`dob`,`nic`,`phone`) VALUES (4,'Ashan','Abeyweera','04/06/1994','948725367v','0723785210');
INSERT INTO `passenger` (`idpassenger`,`first_name`,`last_name`,`dob`,`nic`,`phone`) VALUES (5,'Chandana','Batagoda','22/01/1990','903782567v','0758367298');



/*
-- Query: select * from `ticketing_system`.`token`
LIMIT 0, 1000

-- Date: 2017-11-19 13:32
*/
INSERT INTO `token` (`idtoken`,`issued_date`,`expiry_date`) VALUES (1,'01/11/2017','01/11/2020');
INSERT INTO `token` (`idtoken`,`issued_date`,`expiry_date`) VALUES (2,'02/11/2017','02/11/2020');
INSERT INTO `token` (`idtoken`,`issued_date`,`expiry_date`) VALUES (3,'03/11/2017','02/11/2020');
INSERT INTO `token` (`idtoken`,`issued_date`,`expiry_date`) VALUES (4,'04/11/2017','04/11/2020');
INSERT INTO `token` (`idtoken`,`issued_date`,`expiry_date`) VALUES (5,'05/11/2017','05/11/2020');




/*
-- Query: SELECT * FROM `ticketing_system`.`login`
LIMIT 0, 1000

-- Date: 2017-11-19 17:33
*/
INSERT INTO `login` (`idlogin`,`username`,`password`,`email`,`type`) VALUES (1,'mh','123','mihiran.wije@gmail.com','passenger');
INSERT INTO `login` (`idlogin`,`username`,`password`,`email`,`type`) VALUES (2,'harsha','123','harshakoshila@gmail.com','passenger');
INSERT INTO `login` (`idlogin`,`username`,`password`,`email`,`type`) VALUES (3,'dihan','123','dihan@gmail.com','passenger');
INSERT INTO `login` (`idlogin`,`username`,`password`,`email`,`type`) VALUES (4,'omal','123','omal@gmail.com','manager');
INSERT INTO `login` (`idlogin`,`username`,`password`,`email`,`type`) VALUES (5,'shehan','123','shehan@gmail.com','manager');



/*
-- Query: SELECT * FROM `ticketing_system`.`regular_passenger`
LIMIT 0, 1000

-- Date: 2017-11-19 17:32
*/
INSERT INTO `regular_passenger` (`idregular_passenger`,`city`,`passenger_id`,`login_id`) VALUES (1,'Colombo',1,1);
INSERT INTO `regular_passenger` (`idregular_passenger`,`city`,`passenger_id`,`login_id`) VALUES (2,'Matara',3,2);
INSERT INTO `regular_passenger` (`idregular_passenger`,`city`,`passenger_id`,`login_id`) VALUES (3,'Galle',5,3);



/*
-- Query: SELECT * FROM `ticketing_system`.`transport_managers`
LIMIT 0, 1000

-- Date: 2017-11-19 17:31
*/
INSERT INTO `transport_managers` (`idtransport_managers`,`name`,`area`,`login_id`) VALUES (1,'Omal Waidyarathna','Colombo',4);
INSERT INTO `transport_managers` (`idtransport_managers`,`name`,`area`,`login_id`) VALUES (2,'Shehan Bhashitha','Matara',5);



/*
-- Query: select * from `ticketing_system`.`visitor`
LIMIT 0, 1000

-- Date: 2017-11-19 13:33
*/
INSERT INTO `visitor` (`idvisitor`,`visiting_country`,`passenger_id`) VALUES (1,'Sri Lanka',2);
INSERT INTO `visitor` (`idvisitor`,`visiting_country`,`passenger_id`) VALUES (2,'Sri Lanka',4);



/*
-- Query: select * from `ticketing_system`.`regular_token`
LIMIT 0, 1000

-- Date: 2017-11-19 13:30
*/
INSERT INTO `regular_token` (`idregular_token`,`passenger_id`,`token_id`) VALUES (1,1,1);
INSERT INTO `regular_token` (`idregular_token`,`passenger_id`,`token_id`) VALUES (2,2,2);
INSERT INTO `regular_token` (`idregular_token`,`passenger_id`,`token_id`) VALUES (3,3,3);



/*
-- Query: select * from `ticketing_system`.`prepaid_token`
LIMIT 0, 1000

-- Date: 2017-11-19 13:30
*/
INSERT INTO `prepaid_token` (`idprepaid_token`,`token_id`,`credit_limit`,`balance`,`visitor_id`) VALUES (1,4,'10000','7500',1);
INSERT INTO `prepaid_token` (`idprepaid_token`,`token_id`,`credit_limit`,`balance`,`visitor_id`) VALUES (2,5,'5000','5000',2);



/*
-- Query: select * from `ticketing_system`.`account`
LIMIT 0, 1000

-- Date: 2017-11-19 13:28
*/
INSERT INTO `account` (`idaccount`,`regular_token`,`balance`,`created_date`) VALUES (1,1,'2500','01/11/2017');
INSERT INTO `account` (`idaccount`,`regular_token`,`balance`,`created_date`) VALUES (2,2,'1000','02/11/2017');
INSERT INTO `account` (`idaccount`,`regular_token`,`balance`,`created_date`) VALUES (3,3,'540','03/11/2017');




/*
-- Query: select * from `ticketing_system`.`token_reader`
LIMIT 0, 1000

-- Date: 2017-11-19 13:32
*/
INSERT INTO `token_reader` (`idtoken_reader`,`bus_number`,`type`) VALUES (1,'NA-1234','Smart Card Reader');
INSERT INTO `token_reader` (`idtoken_reader`,`bus_number`,`type`) VALUES (2,'NB-5476','Barcode Reader');
INSERT INTO `token_reader` (`idtoken_reader`,`bus_number`,`type`) VALUES (3,'NC-8465','Smart Card Reader');
INSERT INTO `token_reader` (`idtoken_reader`,`bus_number`,`type`) VALUES (4,'ND-9367','QRcode Reader');
INSERT INTO `token_reader` (`idtoken_reader`,`bus_number`,`type`) VALUES (5,'NA-1267','Smart Card Reader');
