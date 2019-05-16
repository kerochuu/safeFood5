USE `safefood` ;
CREATE TABLE IF NOT EXISTS `safefood`.`eat` (
  `eat_code` INT(11) NOT NULL AUTO_INCREMENT,
  `eat_user_id` VARCHAR(40) NULL DEFAULT NULL,
  `eat_food_code` INT(11) DEFAULT NULL,
  `eat_food_name` VARCHAR(200) NULL DEFAULT NULL,
  
  PRIMARY KEY (`eat_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `safefood`.`jjim` (
  `jjim_code` INT(11) NOT NULL AUTO_INCREMENT,
  `jjim_user_id` VARCHAR(40) NULL DEFAULT NULL,
  `jjim_food_code` INT(11) DEFAULT NULL,
  `jjim_food_name` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`jjim_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `safefood`.`value` (
  `value_code` INT(11) NOT NULL AUTO_INCREMENT,
  `value_user_id` varchar(40) DEFAULT NULL,
  
  `value_calory` INT(11) DEFAULT NULL,
  `value_carbo` INT(11) DEFAULT NULL,
  `value_protein` INT(11) DEFAULT NULL,
  `value_fat` INT(11) DEFAULT NULL,
  `value_natrium` INT(11) DEFAULT NULL,
            
  PRIMARY KEY (`value_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;

