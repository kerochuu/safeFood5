USE `safefood` ;
CREATE TABLE IF NOT EXISTS `safefood`.`notice` (
  `notice_code` INT(11) NOT NULL AUTO_INCREMENT,
  
  
  
  `notice_title` VARCHAR(200) NULL DEFAULT NULL,
  `notice_content` VARCHAR(1000) NULL DEFAULT NULL,
  
  `notice_date` datetime DEFAULT NULL,
  PRIMARY KEY (`notice_code`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;


ALTER TABLE `safefood`.`user` 
ADD COLUMN `list` VARCHAR(400) NULL AFTER `user_likelist`;