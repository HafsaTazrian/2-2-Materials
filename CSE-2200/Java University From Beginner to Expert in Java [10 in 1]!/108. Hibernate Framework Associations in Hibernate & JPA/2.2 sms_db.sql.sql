-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema sms_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sms_db` DEFAULT CHARACTER SET latin1 ;
USE `sms_db` ;

-- -----------------------------------------------------
-- Table `sms_db`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sms_db`.`User` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `version` INT NOT NULL DEFAULT 0,
  `deleted` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_user`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sms_db`.`Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sms_db`.`Address` (
  `id_address` INT NOT NULL AUTO_INCREMENT,
  `street_name` VARCHAR(45) NOT NULL,
  `street_number` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `version` INT NOT NULL DEFAULT 0,
  `deleted` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_address`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sms_db`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sms_db`.`Student` (
  `id_student` INT NOT NULL AUTO_INCREMENT,
  `id_user` INT NULL,
  `id_address` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `version` INT NOT NULL DEFAULT 0,
  `deleted` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_student`),
  INDEX `fk_student_user` (`id_user` ASC),
  INDEX `fk_student_address` (`id_address` ASC),
  CONSTRAINT `fk_student_user`
    FOREIGN KEY (`id_user`)
    REFERENCES `sms_db`.`User` (`id_user`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_student_address`
    FOREIGN KEY (`id_address`)
    REFERENCES `sms_db`.`Address` (`id_address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sms_db`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sms_db`.`Course` (
  `id_course` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `schedule` VARCHAR(45) NULL,
  `price` FLOAT NULL,
  `version` INT NOT NULL DEFAULT 0,
  `deleted` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_course`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sms_db`.`Assignation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `sms_db`.`Assignation` (
  `id_assignation` INT NOT NULL AUTO_INCREMENT,
  `id_student` INT NOT NULL,
  `id_course` INT NOT NULL,
  `start_date` DATETIME NULL,
  `finish_date` DATETIME NULL,
  `version` INT NOT NULL DEFAULT 0,
  `deleted` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_assignation`),
  INDEX `fk_Assignation_Student` (`id_student` ASC),
  INDEX `fk_Assignation_Course` (`id_course` ASC),
  CONSTRAINT `fk_Assignation_Student`
    FOREIGN KEY (`id_student`)
    REFERENCES `sms_db`.`Student` (`id_student`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Assignation_Course`
    FOREIGN KEY (`id_course`)
    REFERENCES `sms_db`.`Course` (`id_course`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
