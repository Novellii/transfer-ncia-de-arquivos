drop database if exists restaurante;
create database restaurante;
use restaurante;

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
-- Table `mydb`.`CLientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CLientes` (
  `idCLientes` INT(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `mesa` INT(2) UNSIGNED ZEROFILL NOT NULL,
  `nome` VARCHAR(255) NULL,
  `cpf` VARCHAR(14) NULL,
  `endereço` VARCHAR(512) NULL,
  PRIMARY KEY (`idCLientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Atendente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Atendente` (
  `idAtendente` INT(3) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `salario` FLOAT(10,2) NOT NULL,
  `telefone1` VARCHAR(20) NOT NULL,
  `telefone2` VARCHAR(20) NULL,
  PRIMARY KEY (`idAtendente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pedidos` (
  `idPedidos` INT(10) UNSIGNED ZEROFILL NOT NULL,
  `CLientes_idCLientes` INT(10) UNSIGNED ZEROFILL NOT NULL,
  `Atendente_idAtendente` INT(3) UNSIGNED ZEROFILL NOT NULL,
  `inicioPedido` TIMESTAMP NOT NULL,
  `finalPedido` TIMESTAMP NULL,
  `duracao` TIME GENERATED ALWAYS AS (second(finalPedido) - second(inicioPedido)) STORED NULL,
  PRIMARY KEY (`idPedidos`),
  INDEX `fk_Pedidos_Atendente1_idx` (`Atendente_idAtendente` ASC) VISIBLE,
  INDEX `fk_Pedidos_CLientes1_idx` (`CLientes_idCLientes` ASC) VISIBLE,
  CONSTRAINT `fk_Pedidos_Atendente1`
    FOREIGN KEY (`Atendente_idAtendente`)
    REFERENCES `mydb`.`Atendente` (`idAtendente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_CLientes1`
    FOREIGN KEY (`CLientes_idCLientes`)
    REFERENCES `mydb`.`CLientes` (`idCLientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Produtos` (
  `idProdutos` INT(10) UNSIGNED ZEROFILL NOT NULL,
  `nome` VARCHAR(255) NOT NULL,
  `preço` FLOAT(10,2) UNSIGNED NOT NULL,
  PRIMARY KEY (`idProdutos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pedidos_Produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pedidos_Produtos` (
  `Pedidos_idPedidos` INT(10) UNSIGNED ZEROFILL NOT NULL,
  `Produtos_idProdutos` INT(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`Pedidos_idPedidos`, `Produtos_idProdutos`),
  INDEX `fk_Pedidos_Produtos_Produtos1_idx` (`Produtos_idProdutos` ASC) VISIBLE,
  CONSTRAINT `fk_Pedidos_Produtos_Pedidos`
    FOREIGN KEY (`Pedidos_idPedidos`)
    REFERENCES `mydb`.`Pedidos` (`idPedidos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_Produtos_Produtos1`
    FOREIGN KEY (`Produtos_idProdutos`)
    REFERENCES `mydb`.`Produtos` (`idProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
