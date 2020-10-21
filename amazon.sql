-- MySQL Workbench Synchronization
-- Generated: 2020-10-21 09:46
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Mariajo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `amazon` DEFAULT CHARACTER SET utf8mb4 ;

CREATE TABLE IF NOT EXISTS `amazon`.`cataleg-llibres` (
  `isbn_llibre` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'el id único del llibre',
  `títol_llibre` VARCHAR(45) NOT NULL COMMENT 'el títol del llibre',
  `unitats-disp` INT(11) NULL DEFAULT NULL COMMENT 'quates unitats en queden d\'aquest llibre',
  `preu` DECIMAL NOT NULL COMMENT 'el preu del llibre',
  `autors_id_autor` INT(11) NOT NULL,
  PRIMARY KEY (`isbn_llibre`),
  INDEX `títol` (`títol_llibre` ASC) VISIBLE,
  INDEX `fk_cataleg-llibres_autors_idx` (`autors_id_autor` ASC) VISIBLE,
  CONSTRAINT `fk_cataleg-llibres_autors`
    FOREIGN KEY (`autors_id_autor`)
    REFERENCES `amazon`.`autors` (`id_autor`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `amazon`.`autors` (
  `id_autor` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'l\'id únic d\'un autor, que s\'autoincrementa',
  `direcció` VARCHAR(45) NOT NULL COMMENT 'la direcció de l\'autor',
  `quantitat_llibres` INT(11) NULL DEFAULT NULL COMMENT 'quants llibres té aquest autor en el nostre catáleg',
  PRIMARY KEY (`id_autor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `amazon`.`usuaris` (
  `id_usuari` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'id únic de l\'usuari',
  `nom` VARCHAR(85) NOT NULL COMMENT 'nom de l\'usuari',
  `email` VARCHAR(255) NOT NULL COMMENT 'correu electrònic de l\'usuari, que no es pot repetir',
  `contrasenya` VARCHAR(30) NOT NULL COMMENT 'contrasenya de l\'usuari',
  PRIMARY KEY (`id_usuari`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `id_usuari_UNIQUE` (`id_usuari` ASC) VISIBLE,
  INDEX `nom` (`nom` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

CREATE TABLE IF NOT EXISTS `amazon`.`factures` (
  `id_factura` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id de la factura que se va autoincrementant',
  `data` DATETIME NOT NULL COMMENT 'Data en la qual es genera la factura',
  `usuaris_id_usuari` INT(11) NOT NULL,
  `cataleg-llibres_isbn_llibre` INT(11) NOT NULL,
  PRIMARY KEY (`id_factura`, `usuaris_id_usuari`, `cataleg-llibres_isbn_llibre`),
  INDEX `fk_factures_usuaris1_idx` (`usuaris_id_usuari` ASC) VISIBLE,
  INDEX `fk_factures_cataleg-llibres1_idx` (`cataleg-llibres_isbn_llibre` ASC) VISIBLE,
  CONSTRAINT `fk_factures_usuaris1`
    FOREIGN KEY (`usuaris_id_usuari`)
    REFERENCES `amazon`.`usuaris` (`id_usuari`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_factures_cataleg-llibres1`
    FOREIGN KEY (`cataleg-llibres_isbn_llibre`)
    REFERENCES `amazon`.`cataleg-llibres` (`isbn_llibre`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
