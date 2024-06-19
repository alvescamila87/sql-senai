CREATE DATABASE Clinica;
USE Clinica;

-- Tabela de Ambulatorios
CREATE TABLE Ambulatorios (
    nroa INT PRIMARY KEY,
    andar INT NOT NULL,
    capacidade SMALLINT NOT NULL
);

-- Tabela de Medicos
CREATE TABLE Medicos (
    codm INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    especialidade CHAR(20),
    CPF NUMERIC(11) UNIQUE,
    cidade VARCHAR(30),
    nroa INT,
    FOREIGN KEY (nroa) REFERENCES Ambulatorios(nroa)
);

-- Tabela de Pacientes
CREATE TABLE Pacientes (
    codp INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    cidade VARCHAR(30),
    CPF NUMERIC(11) UNIQUE,
    doenca VARCHAR(40)
);

-- Tabela de Consultas
CREATE TABLE Consultas (
    codm INT,
    codp INT,
    data DATE,
    hora TIME,
    PRIMARY KEY (codm, codp, data, hora),
    FOREIGN KEY (codm) REFERENCES Medicos(codm),
    FOREIGN KEY (codp) REFERENCES Pacientes(codp)
);

-- Tabela de Funcionarios
CREATE TABLE Funcionarios (
    codf INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    cidade VARCHAR(30),
    salario NUMERIC(10,2),
    CPF NUMERIC(11) UNIQUE,
    nroa INT,
    FOREIGN KEY (nroa) REFERENCES Ambulatorios(nroa)
);
