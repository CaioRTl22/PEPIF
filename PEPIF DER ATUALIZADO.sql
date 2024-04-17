-- MySQL Script generated by MySQL Workbench
-- Wed Apr 17 11:06:55 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_pepif
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_pepif
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_pepif` DEFAULT CHARACTER SET utf8 ;
USE `db_pepif` ;

-- -----------------------------------------------------
-- Table `db_pepif`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pepif`.`tb_usuario` (
  `email_usuario` VARCHAR(250) NOT NULL,
  `nome_usuario` VARCHAR(250) NOT NULL,
  `senha_usuario` VARCHAR(250) NOT NULL,
  `genero_usuario` VARCHAR(250) NOT NULL,
  `foto_usuario` BLOB NULL,
  PRIMARY KEY (`email_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pepif`.`tb_aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pepif`.`tb_aluno` (
  `tb_usuario` VARCHAR(250) NOT NULL,
  `turma_curso_usuario` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`tb_usuario`),
  CONSTRAINT `fk_tb_aluno_tb_usuario1`
    FOREIGN KEY (`tb_usuario`)
    REFERENCES `db_pepif`.`tb_usuario` (`email_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_pepif`.`tb_docente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pepif`.`tb_docente` (
  `cargo_usuario` VARCHAR(250) NOT NULL,
  `tb_usuario_email_usuario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`tb_usuario_email_usuario`),
  CONSTRAINT `fk_tb_docente_tb_usuario`
    FOREIGN KEY (`tb_usuario_email_usuario`)
    REFERENCES `db_pepif`.`tb_usuario` (`email_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
