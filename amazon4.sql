-- MySQL Workbench Synchronization
-- Generated: 2020-10-21 10:18
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Mariajo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `amazon`.`factures` 
DROP FOREIGN KEY `fk_factures_cataleg-llibres1`;

ALTER TABLE `amazon`.`cataleg-llibres` 
CHANGE COLUMN `títol_llibre` `titol_llibre` VARCHAR(45) NOT NULL COMMENT 'el títol del llibre' ,
CHANGE COLUMN `preu` `preu` DECIMAL NOT NULL COMMENT 'el preu del llibre' , RENAME TO  `amazon`.`cataleg_llibres` ;

ALTER TABLE `amazon`.`factures` 
ADD CONSTRAINT `fk_factures_cataleg-llibres1`
  FOREIGN KEY (`cataleg-llibres_isbn_llibre`)
  REFERENCES `amazon`.`cataleg_llibres` (`isbn_llibre`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
