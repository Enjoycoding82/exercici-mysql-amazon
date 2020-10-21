-- MySQL Workbench Synchronization
-- Generated: 2020-10-21 10:05
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Mariajo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `amazon`.`cataleg-llibres` 
CHANGE COLUMN `isbn_llibre` `isbn_llibre` INT(11) NOT NULL COMMENT 'el id único del llibre' ,
CHANGE COLUMN `títol_llibre` `títol_llibre` VARCHAR(45) NOT NULL COMMENT 'el títol del llibre' ,
CHANGE COLUMN `preu` `preu` DECIMAL NOT NULL COMMENT 'el preu del llibre' ;

ALTER TABLE `amazon`.`autors` 
CHANGE COLUMN `direcció` `direcció` VARCHAR(45) NOT NULL COMMENT 'la direcció de l\'autor' ;

ALTER TABLE `amazon`.`usuaris` 
CHANGE COLUMN `nom` `nom` VARCHAR(85) NOT NULL COMMENT 'nom de l\'usuari' ,
CHANGE COLUMN `email` `email` VARCHAR(255) NOT NULL COMMENT 'correu electrònic de l\'usuari, que no es pot repetir' ,
CHANGE COLUMN `contrasenya` `contrasenya` VARCHAR(30) NOT NULL COMMENT 'contrasenya de l\'usuari' ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
