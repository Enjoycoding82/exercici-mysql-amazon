-- MySQL Workbench Synchronization
-- Generated: 2020-10-21 09:49
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Mariajo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `amazon`  DEFAULT COLLATE utf8mb4_general_ci ;

ALTER TABLE `amazon`.`cataleg-llibres` 
COLLATE = utf8mb4_general_ci ,
CHANGE COLUMN `preu` `preu` DECIMAL NOT NULL COMMENT 'el preu del llibre' ;

ALTER TABLE `amazon`.`autors` 
COLLATE = utf8mb4_general_ci ,
ADD COLUMN `nom_autor` VARCHAR(255) NOT NULL COMMENT 'nom de l\'autor' AFTER `id_autor`;

ALTER TABLE `amazon`.`usuaris` 
COLLATE = utf8mb4_general_ci ;

ALTER TABLE `amazon`.`factures` 
COLLATE = utf8mb4_general_ci ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
