drop database bancoTeste;
create database bancoTeste;
use bancoTeste;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Matérias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Matérias` (
  `idMatérias` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomeMatérias` VARCHAR(45) NOT NULL,
  `cargaHorária` INT(3) UNSIGNED NOT NULL COMMENT 'De no mínimo 40 horas',
  PRIMARY KEY (`idMatérias`),
  CONSTRAINT carga_minima CHECK (`cargaHorária` > 40))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Professor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Professor` (
  `numeroMatricula` INT(4) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`numeroMatricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cursos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cursos` (
  `idCursos` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomeCurso` VARCHAR(45) NOT NULL,
  `cargaHorária` INT(4) ZEROFILL UNSIGNED NOT NULL DEFAULT 3600,
  `Professor_Coordenador` INT(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`idCursos`),
  INDEX `fk_Cursos_Professor1_idx` (`Professor_Coordenador` ASC) VISIBLE,
  CONSTRAINT `fk_Cursos_Professor1`
    FOREIGN KEY (`Professor_Coordenador`)
    REFERENCES `mydb`.`Professor` (`numeroMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cursos_has_Matérias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cursos_has_Matérias` (
  `Cursos_idCursos` INT UNSIGNED NOT NULL,
  `Matérias_idMatérias` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Cursos_idCursos`, `Matérias_idMatérias`),
  INDEX `fk_Cursos_has_Matérias_Matérias1_idx` (`Matérias_idMatérias` ASC) VISIBLE,
  INDEX `fk_Cursos_has_Matérias_Cursos_idx` (`Cursos_idCursos` ASC) VISIBLE,
  CONSTRAINT `fk_Cursos_has_Matérias_Cursos`
    FOREIGN KEY (`Cursos_idCursos`)
    REFERENCES `mydb`.`Cursos` (`idCursos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cursos_has_Matérias_Matérias1`
    FOREIGN KEY (`Matérias_idMatérias`)
    REFERENCES `mydb`.`Matérias` (`idMatérias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Disciplina` (
  `idDisciplina` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Professor_numeroMatricula` INT(4) UNSIGNED NOT NULL,
  `Matérias_idMatérias1` INT UNSIGNED NOT NULL,
  `qntdVagas` INT(2) NOT NULL COMMENT 'Deve ter no máximo 60 vagas.',
  PRIMARY KEY (`idDisciplina`),
  INDEX `fk_Disciplina_Professor1_idx` (`Professor_numeroMatricula` ASC) VISIBLE,
  INDEX `fk_Disciplina_Matérias1_idx` (`Matérias_idMatérias1` ASC) VISIBLE,
  CONSTRAINT `fk_Disciplina_Professor1`
    FOREIGN KEY (`Professor_numeroMatricula`)
    REFERENCES `mydb`.`Professor` (`numeroMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Disciplina_Matérias1`
    FOREIGN KEY (`Matérias_idMatérias1`)
    REFERENCES `mydb`.`Matérias` (`idMatérias`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT vagasMáximas CHECK (`qntdVagas` <= 60))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Alunos` (
  `idAlunos` INT UNSIGNED NOT NULL,
  `Cursos_idCursos1` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idAlunos`),
  INDEX `fk_Alunos_Cursos1_idx` (`Cursos_idCursos1` ASC) VISIBLE,
  CONSTRAINT `fk_Alunos_Cursos1`
    FOREIGN KEY (`Cursos_idCursos1`)
    REFERENCES `mydb`.`Cursos` (`idCursos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Emails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Emails` (
  `nomeEmails` VARCHAR(45) NOT NULL,
  `Alunos_idAlunos` INT UNSIGNED NOT NULL,
  `Professor_numeroMatricula` INT(4) UNSIGNED NOT NULL,
  PRIMARY KEY (`nomeEmails`),
  INDEX `fk_Emails_Alunos1_idx` (`Alunos_idAlunos` ASC) VISIBLE,
  INDEX `fk_Emails_Professor1_idx` (`Professor_numeroMatricula` ASC) VISIBLE,
  CONSTRAINT `fk_Emails_Alunos1`
    FOREIGN KEY (`Alunos_idAlunos`)
    REFERENCES `mydb`.`Alunos` (`idAlunos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Emails_Professor1`
    FOREIGN KEY (`Professor_numeroMatricula`)
    REFERENCES `mydb`.`Professor` (`numeroMatricula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Alunos_has_Disciplina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Alunos_has_Disciplina` (
  `Alunos_idAlunos` INT UNSIGNED NOT NULL,
  `Disciplina_idDisciplina` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Alunos_idAlunos`, `Disciplina_idDisciplina`),
  INDEX `fk_Alunos_has_Disciplina_Disciplina1_idx` (`Disciplina_idDisciplina` ASC) VISIBLE,
  INDEX `fk_Alunos_has_Disciplina_Alunos1_idx` (`Alunos_idAlunos` ASC) VISIBLE,
  CONSTRAINT `fk_Alunos_has_Disciplina_Alunos1`
    FOREIGN KEY (`Alunos_idAlunos`)
    REFERENCES `mydb`.`Alunos` (`idAlunos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Alunos_has_Disciplina_Disciplina1`
    FOREIGN KEY (`Disciplina_idDisciplina`)
    REFERENCES `mydb`.`Disciplina` (`idDisciplina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
