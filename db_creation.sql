SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE SCHEMA IF NOT EXISTS `ticketing_system` DEFAULT CHARACTER SET utf8 ;
USE `ticketing_system` ;

-- -----------------------------------------------------
-- Table `ticketing_system`.`login`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`login` (
  `idlogin` INT(11) NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(45) NULL DEFAULT NULL ,
  `password` VARCHAR(45) NULL DEFAULT NULL ,
  `email` VARCHAR(100) NULL DEFAULT NULL ,
  `type` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`idlogin`) )
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`passenger`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`passenger` (
  `idpassenger` INT(11) NOT NULL AUTO_INCREMENT ,
  `first_name` VARCHAR(45) NULL DEFAULT NULL ,
  `last_name` VARCHAR(45) NULL DEFAULT NULL ,
  `dob` VARCHAR(45) NULL DEFAULT NULL ,
  `nic` VARCHAR(45) NULL DEFAULT NULL ,
  `phone` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`idpassenger`) )
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`regular_passenger`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`regular_passenger` (
  `idregular_passenger` INT(11) NOT NULL AUTO_INCREMENT ,
  `city` VARCHAR(45) NULL DEFAULT NULL ,
  `passenger_id` INT(11) NOT NULL ,
  `login_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`idregular_passenger`) ,
  INDEX `passenger_id` (`passenger_id` ASC) ,
  INDEX `R_login_id` (`login_id` ASC) ,
  CONSTRAINT `R_login_id`
    FOREIGN KEY (`login_id` )
    REFERENCES `ticketing_system`.`login` (`idlogin` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `passenger_id`
    FOREIGN KEY (`passenger_id` )
    REFERENCES `ticketing_system`.`passenger` (`idpassenger` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`token`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`token` (
  `idtoken` INT(11) NOT NULL ,
  `issued_date` VARCHAR(45) NULL DEFAULT NULL ,
  `expiry_date` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`idtoken`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`regular_token`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`regular_token` (
  `idregular_token` INT(11) NOT NULL AUTO_INCREMENT ,
  `passenger_id` INT(11) NULL DEFAULT NULL ,
  `token_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`idregular_token`) ,
  INDEX `regular_passenger_id` (`passenger_id` ASC) ,
  INDEX `regular_token_id` (`token_id` ASC) ,
  CONSTRAINT `regular_passenger_id`
    FOREIGN KEY (`passenger_id` )
    REFERENCES `ticketing_system`.`regular_passenger` (`idregular_passenger` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `regular_token_id`
    FOREIGN KEY (`token_id` )
    REFERENCES `ticketing_system`.`token` (`idtoken` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`account`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`account` (
  `idaccount` INT(11) NOT NULL AUTO_INCREMENT ,
  `regular_token` INT(11) NULL DEFAULT NULL ,
  `balance` VARCHAR(45) NULL DEFAULT NULL ,
  `created_date` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`idaccount`) ,
  INDEX `account_regular_token` (`regular_token` ASC) ,
  CONSTRAINT `account_regular_token`
    FOREIGN KEY (`regular_token` )
    REFERENCES `ticketing_system`.`regular_token` (`idregular_token` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`time_table`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`time_table` (
  `idtime_table` INT(11) NOT NULL AUTO_INCREMENT ,
  `bus_number` VARCHAR(45) NULL DEFAULT NULL ,
  `route` VARCHAR(45) NULL DEFAULT NULL ,
  `duration` VARCHAR(45) NULL DEFAULT NULL ,
  `date` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`idtime_table`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`journey`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`journey` (
  `idjourney` INT(11) NOT NULL AUTO_INCREMENT ,
  `start_location` VARCHAR(45) NULL DEFAULT NULL ,
  `start_time` VARCHAR(45) NULL DEFAULT NULL ,
  `destination` VARCHAR(45) NULL DEFAULT NULL ,
  `end_time` VARCHAR(45) NULL DEFAULT NULL ,
  `status` VARCHAR(45) NULL DEFAULT NULL ,
  `passenger_id` INT(11) NULL DEFAULT NULL ,
  `fare` DECIMAL(10,0) NULL DEFAULT NULL ,
  `time_table` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`idjourney`) ,
  INDEX `journey_passenger_id` (`passenger_id` ASC) ,
  INDEX `time_table` (`time_table` ASC) ,
  CONSTRAINT `time_table`
    FOREIGN KEY (`time_table` )
    REFERENCES `ticketing_system`.`time_table` (`idtime_table` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `journey_passenger_id`
    FOREIGN KEY (`passenger_id` )
    REFERENCES `ticketing_system`.`passenger` (`idpassenger` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`payment`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`payment` (
  `idpayment` INT(11) NOT NULL AUTO_INCREMENT ,
  `account` INT(11) NULL DEFAULT NULL ,
  `date` VARCHAR(45) NULL DEFAULT NULL ,
  `type` VARCHAR(45) NULL DEFAULT NULL ,
  `card_number` INT(11) NULL DEFAULT NULL ,
  `recharge_amount` DECIMAL(10,0) NULL DEFAULT NULL ,
  PRIMARY KEY (`idpayment`) ,
  INDEX `account` (`account` ASC) ,
  CONSTRAINT `account`
    FOREIGN KEY (`account` )
    REFERENCES `ticketing_system`.`account` (`idaccount` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`visitor`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`visitor` (
  `idvisitor` INT(11) NOT NULL AUTO_INCREMENT ,
  `visiting_country` VARCHAR(45) NULL DEFAULT NULL ,
  `passenger_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`idvisitor`) ,
  INDEX `Vpassenger_id` (`passenger_id` ASC) ,
  CONSTRAINT `Vpassenger_id`
    FOREIGN KEY (`passenger_id` )
    REFERENCES `ticketing_system`.`passenger` (`idpassenger` )
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`prepaid_token`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`prepaid_token` (
  `idprepaid_token` INT(11) NOT NULL AUTO_INCREMENT ,
  `token_id` INT(11) NULL DEFAULT NULL ,
  `credit_limit` DECIMAL(10,0) NULL DEFAULT NULL ,
  `balance` DECIMAL(10,0) NULL DEFAULT NULL ,
  `visitor_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`idprepaid_token`) ,
  INDEX `Prepaid_token_id` (`token_id` ASC) ,
  INDEX `Prepaid_visitor_id` (`visitor_id` ASC) ,
  CONSTRAINT `Prepaid_visitor_id`
    FOREIGN KEY (`visitor_id` )
    REFERENCES `ticketing_system`.`visitor` (`idvisitor` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Prepaid_token_id`
    FOREIGN KEY (`token_id` )
    REFERENCES `ticketing_system`.`token` (`idtoken` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`token_reader`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`token_reader` (
  `idtoken_reader` INT(11) NOT NULL AUTO_INCREMENT ,
  `bus_number` VARCHAR(45) NULL DEFAULT NULL ,
  `type` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`idtoken_reader`) )
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`reader_reads_token`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`reader_reads_token` (
  `idreader_reads_token` INT(11) NOT NULL AUTO_INCREMENT ,
  `token_id` INT(11) NULL DEFAULT NULL ,
  `reader_id` INT(11) NULL DEFAULT NULL ,
  `journey_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`idreader_reads_token`) ,
  INDEX `R_token_id` (`token_id` ASC) ,
  INDEX `R_reader_id` (`reader_id` ASC) ,
  INDEX `R_journey_id` (`journey_id` ASC) ,
  CONSTRAINT `R_journey_id`
    FOREIGN KEY (`journey_id` )
    REFERENCES `ticketing_system`.`journey` (`idjourney` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `R_reader_id`
    FOREIGN KEY (`reader_id` )
    REFERENCES `ticketing_system`.`token_reader` (`idtoken_reader` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `R_token_id`
    FOREIGN KEY (`token_id` )
    REFERENCES `ticketing_system`.`token` (`idtoken` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `ticketing_system`.`transport_managers`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `ticketing_system`.`transport_managers` (
  `idtransport_managers` INT(11) NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL DEFAULT NULL ,
  `area` VARCHAR(45) NULL DEFAULT NULL ,
  `login_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`idtransport_managers`) ,
  INDEX `login_id` (`login_id` ASC) ,
  CONSTRAINT `login_id`
    FOREIGN KEY (`login_id` )
    REFERENCES `ticketing_system`.`login` (`idlogin` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
