-- MySQL Script generated by MySQL Workbench
-- Sat 02 Jul 2016 06:04:38 AM AMT
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema parica_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema parica_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `parica_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `parica_db` ;

-- -----------------------------------------------------
-- Table `parica_db`.`contato`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parica_db`.`contato` (
  `ct_id` INT(5) ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '',
  `ct_lagradouro` VARCHAR(45) NOT NULL COMMENT '',
  `ct_numero` CHAR(4) NOT NULL COMMENT '',
  `ct_bairro` VARCHAR(45) NULL COMMENT '',
  `ct_cidade` VARCHAR(45) NOT NULL COMMENT '',
  `ct_estado` VARCHAR(3) NULL COMMENT '',
  `ct_email` VARCHAR(255) NULL COMMENT '',
  `ct_tel_1` CHAR(11) NULL COMMENT '00000000000',
  `ct_tel_2` CHAR(11) NULL COMMENT '',
  PRIMARY KEY (`ct_id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `parica_db`.`turma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parica_db`.`turma` (
  `tu_id` INT(5) ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '',
  `tu_nome` VARCHAR(45) NOT NULL COMMENT '',
  `tu_turno` CHAR(1) NOT NULL COMMENT '0 = Matutino\n1 = Vespertino\n2 = Noturno',
  `tu_ano` CHAR(4) NOT NULL COMMENT '',
  PRIMARY KEY (`tu_id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `parica_db`.`aluno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parica_db`.`aluno` (
  `al_id` INT(6) ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '',
  `al_nome_aluno` VARCHAR(60) NOT NULL COMMENT '',
  `al_nome_mae` VARCHAR(60) NOT NULL COMMENT '',
  `al_nome_pai` VARCHAR(60) NOT NULL COMMENT '',
  `al_cpf_aluno` CHAR(11) NULL COMMENT '',
  `al_cpf_mae` CHAR(11) NOT NULL COMMENT '',
  `al_cpf_pai` CHAR(11) NULL COMMENT '',
  `al_rg_aluno` CHAR(9) NULL COMMENT '',
  `al_rg_mae` CHAR(9) NOT NULL COMMENT '',
  `al_rg_pai` CHAR(9) NULL COMMENT '',
  `al_cert_nasc` CHAR(32) NOT NULL COMMENT '',
  `al_pcd` INT(1) UNSIGNED NOT NULL COMMENT '0 = Não\n1 = Sim',
  `al_naturalidade` VARCHAR(45) NULL COMMENT '',
  `al_nacionalidade` VARCHAR(45) NULL COMMENT '',
  `al_obs` TEXT NULL COMMENT '',
  `al_img_aluno` VARCHAR(50) NULL COMMENT '',
  `al_dt_nasc` DATE NOT NULL COMMENT '',
  `al_dt_matricula` DATETIME NULL COMMENT '',
  `al_ct_id` INT(5) ZEROFILL NOT NULL COMMENT '',
  `al_orgExp` CHAR(4) NULL COMMENT '',
  `al_situacao` INT(1) NULL COMMENT '1 = NOVO\n2 = TRANSFERIDO\n3 = DESISTENTE\n4 = REPETENTE',
  `al_estadoCivil` INT(1) NULL COMMENT '1 = SOLTEIRO\n2 = CASADO\n3 = DIVORCIADO\n4 = VIÚVO\n5 = ESTÁVEL',
  `al_tu_id` INT(5) ZEROFILL NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`al_id`)  COMMENT '',
  UNIQUE INDEX `al_cpf_aluno_UNIQUE` (`al_cpf_aluno` ASC)  COMMENT '',
  UNIQUE INDEX `al_cpf_mae_UNIQUE` (`al_cpf_mae` ASC)  COMMENT '',
  UNIQUE INDEX `al_cpf_pai_UNIQUE` (`al_cpf_pai` ASC)  COMMENT '',
  UNIQUE INDEX `al_rg_aluno_UNIQUE` (`al_rg_aluno` ASC)  COMMENT '',
  UNIQUE INDEX `al_rg_mae_UNIQUE` (`al_rg_mae` ASC)  COMMENT '',
  UNIQUE INDEX `al_rg_pai_UNIQUE` (`al_rg_pai` ASC)  COMMENT '',
  UNIQUE INDEX `al_cert_nasc_UNIQUE` (`al_cert_nasc` ASC)  COMMENT '',
  INDEX `fk_aluno_contato1_idx` (`al_ct_id` ASC)  COMMENT '',
  INDEX `fk_aluno_turma1_idx` (`al_tu_id` ASC)  COMMENT '',
  CONSTRAINT `fk_aluno_contato1`
    FOREIGN KEY (`al_ct_id`)
    REFERENCES `parica_db`.`contato` (`ct_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_aluno_turma1`
    FOREIGN KEY (`al_tu_id`)
    REFERENCES `parica_db`.`turma` (`tu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `parica_db`.`cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parica_db`.`cargo` (
  `ca_id` INT(5) ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '',
  `ca_nome` VARCHAR(60) NULL COMMENT '',
  `ca_salario` DECIMAL(10,2) NULL COMMENT '',
  `ca_turno` CHAR(3) NULL COMMENT '0 = Matutino\n1 = Vespertino\n2 = Noturno',
  PRIMARY KEY (`ca_id`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `parica_db`.`colaborador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parica_db`.`colaborador` (
  `co_id` INT(5) ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '',
  `co_nome` VARCHAR(45) NULL COMMENT '',
  `co_cpf` VARCHAR(45) NULL COMMENT '',
  `co_rg` VARCHAR(45) NULL COMMENT '',
  `cargo_ca_id` INT(5) ZEROFILL NOT NULL COMMENT '',
  PRIMARY KEY (`co_id`)  COMMENT '',
  INDEX `fk_colaborador_cargo1_idx` (`cargo_ca_id` ASC)  COMMENT '',
  CONSTRAINT `fk_colaborador_cargo1`
    FOREIGN KEY (`cargo_ca_id`)
    REFERENCES `parica_db`.`cargo` (`ca_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `parica_db`.`materia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parica_db`.`materia` (
  `ma_id` INT(5) ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '',
  `ma_nome` VARCHAR(45) NOT NULL COMMENT '',
  `ma_co_id` INT(5) ZEROFILL NOT NULL COMMENT '',
  `ma_tu_id` INT(5) ZEROFILL NOT NULL COMMENT '',
  PRIMARY KEY (`ma_id`, `ma_co_id`)  COMMENT '',
  INDEX `fk_materia_colaborador1_idx` (`ma_co_id` ASC)  COMMENT '',
  INDEX `fk_materia_turma1_idx` (`ma_tu_id` ASC)  COMMENT '',
  CONSTRAINT `fk_materia_colaborador1`
    FOREIGN KEY (`ma_co_id`)
    REFERENCES `parica_db`.`colaborador` (`co_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_materia_turma1`
    FOREIGN KEY (`ma_tu_id`)
    REFERENCES `parica_db`.`turma` (`tu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `parica_db`.`boletim`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parica_db`.`boletim` (
  `bo_id` INT(5) ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '',
  `bo_n1` DECIMAL(4,2) NULL DEFAULT 0 COMMENT '',
  `bo_n2` DECIMAL(4,2) NULL DEFAULT 0 COMMENT '',
  `bo_n3` DECIMAL(4,2) NULL DEFAULT 0 COMMENT '',
  `bo_n4` DECIMAL(4,2) NULL DEFAULT 0 COMMENT '',
  `bo_f1` INT(2) NULL DEFAULT 0 COMMENT '',
  `bo_f2` INT(2) NULL DEFAULT 0 COMMENT '',
  `bo_f3` INT(2) NULL DEFAULT 0 COMMENT '',
  `bo_f4` INT(2) NULL DEFAULT 0 COMMENT '',
  `bo_ma_id` INT(5) ZEROFILL NOT NULL COMMENT '',
  `bo_al_id` INT(6) ZEROFILL NOT NULL COMMENT '',
  PRIMARY KEY (`bo_id`, `bo_al_id`)  COMMENT '',
  INDEX `fk_boletim_materia1_idx` (`bo_ma_id` ASC)  COMMENT '',
  INDEX `fk_boletim_aluno1_idx` (`bo_al_id` ASC)  COMMENT '',
  CONSTRAINT `fk_boletim_materia1`
    FOREIGN KEY (`bo_ma_id`)
    REFERENCES `parica_db`.`materia` (`ma_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_boletim_aluno1`
    FOREIGN KEY (`bo_al_id`)
    REFERENCES `parica_db`.`aluno` (`al_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
