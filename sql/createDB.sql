-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema safefood
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema safefood
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `safefood` DEFAULT CHARACTER SET utf8 ;
USE `safefood` ;

-- -----------------------------------------------------
-- Table `safefood`.`food`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `safefood`.`food` (
  `food_code` INT(11) NOT NULL,
  `food_name` VARCHAR(100) NOT NULL,
  `serving_wt` DOUBLE NULL DEFAULT NULL,
  `nutr_cont1` DOUBLE NULL DEFAULT NULL,
  `nutr_cont2` DOUBLE NULL DEFAULT NULL,
  `nutr_cont3` DOUBLE NULL DEFAULT NULL,
  `nutr_cont4` DOUBLE NULL DEFAULT NULL,
  `nutr_cont5` DOUBLE NULL DEFAULT NULL,
  `nutr_cont6` DOUBLE NULL DEFAULT NULL,
  `nutr_cont7` DOUBLE NULL DEFAULT NULL,
  `nutr_cont8` DOUBLE NULL DEFAULT NULL,
  `nutr_cont9` DOUBLE NULL DEFAULT NULL,
  `food_maker` VARCHAR(45) NULL DEFAULT NULL,
  `food_material` VARCHAR(2000) NULL DEFAULT NULL,
  `food_image` VARCHAR(150) NULL DEFAULT NULL,
  `food_allergy` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`food_code`, `food_name`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `safefood`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `safefood`.`user` (
  `user_code` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` VARCHAR(45) NOT NULL,
  `user_pw` VARCHAR(45) NULL DEFAULT NULL,
  `user_name` VARCHAR(45) NULL DEFAULT NULL,
  `user_phone` VARCHAR(45) NULL DEFAULT NULL,
  `user_address` VARCHAR(100) NULL DEFAULT NULL,
  `user_eatlist` VARCHAR(100) NULL DEFAULT NULL,
  `user_allergy` VARCHAR(500) NULL DEFAULT NULL,
  `user_likelist` VARCHAR(400) NULL DEFAULT NULL,
  PRIMARY KEY (`user_code`, `user_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `safefood`.`qna`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `safefood`.`qna` (
  `qna_code` INT(11) NOT NULL,
  `qna_text` VARCHAR(800) NULL DEFAULT NULL,
  `user_user_code` INT(11) NOT NULL,
  `user_user_id` VARCHAR(45) NOT NULL,
  `qna_parent` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`qna_code`),
  INDEX `fk_qna_user_idx` (`user_user_code` ASC, `user_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_qna_user`
    FOREIGN KEY (`user_user_code` , `user_user_id`)
    REFERENCES `safefood`.`user` (`user_code` , `user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
