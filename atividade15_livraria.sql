/* Criação do banco de dados */
DROP DATABASE IF EXISTS livraria;
CREATE DATABASE livraria DEFAULT CHARACTER SET latin1;
USE livraria;

/* Tabela autor */
DROP TABLE IF EXISTS autor;
CREATE TABLE autor (
  idautor int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(100) DEFAULT NULL,
  email varchar(100) DEFAULT NULL,
  PRIMARY KEY (idautor)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

/* Tabela cliente */
DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente (
  idcliente int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  telefone varchar(45) DEFAULT NULL,
  PRIMARY KEY (idcliente)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

/* Tabela editora */
DROP TABLE IF EXISTS editora;
CREATE TABLE editora (
  ideditora int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  fone varchar(30) DEFAULT NULL,
  PRIMARY KEY (ideditora)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

/* Tabela genero */
DROP TABLE IF EXISTS genero;
CREATE TABLE genero (
  idgenero int(11) NOT NULL AUTO_INCREMENT,
  descricao varchar(100) DEFAULT NULL,
  PRIMARY KEY (idgenero)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

/* Tabela livro */
DROP TABLE IF EXISTS livro;
CREATE TABLE livro (
  idlivro int(11) NOT NULL AUTO_INCREMENT,
  titulo varchar(100) NOT NULL,
  preco float DEFAULT NULL,
  estoque int(11) DEFAULT '0',
  idgenero int(11) NOT NULL,
  ideditora int(11) NOT NULL,
  PRIMARY KEY (idlivro),
  KEY fk_livro_genero (idgenero),
  KEY fk_livro_editora (ideditora),
  CONSTRAINT fk_livro_genero FOREIGN KEY (idgenero) REFERENCES genero (idgenero),
  CONSTRAINT fk_livro_editora FOREIGN KEY (ideditora) REFERENCES editora (ideditora)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

/* Tabela escreve */
DROP TABLE IF EXISTS escreve;
CREATE TABLE escreve (
  idlivro int(11) NOT NULL,
  idautor int(11) NOT NULL,
  PRIMARY KEY (idlivro, idautor),
  KEY fk_escreve_autor (idautor),
  CONSTRAINT fk_escreve_livro FOREIGN KEY (idlivro) REFERENCES livro (idlivro),
  CONSTRAINT fk_escreve_autor FOREIGN KEY (idautor) REFERENCES autor (idautor)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/* Tabela venda */
DROP TABLE IF EXISTS venda;
CREATE TABLE venda (
  idvenda int(11) NOT NULL AUTO_INCREMENT,
  data date DEFAULT NULL,
  total float DEFAULT '0',
  idcliente int(11) NOT NULL,
  PRIMARY KEY (idvenda),
  KEY fk_venda_cliente (idcliente),
  CONSTRAINT fk_venda_cliente FOREIGN KEY (idcliente) REFERENCES cliente (idcliente)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

/* Tabela itens_da_venda */
DROP TABLE IF EXISTS itens_da_venda;
CREATE TABLE itens_da_venda (
  idvenda int(11) NOT NULL,
  idlivro int(11) NOT NULL,
  qtd int(11) DEFAULT '0',
  subtotal float DEFAULT '0',
  PRIMARY KEY (idvenda, idlivro),
  KEY fk_itens_da_venda_venda (idvenda),
  KEY fk_itens_da_venda_livro (idlivro),
  CONSTRAINT fk_itens_da_venda_venda FOREIGN KEY (idvenda) REFERENCES venda (idvenda),
  CONSTRAINT fk_itens_da_venda_livro FOREIGN KEY (idlivro) REFERENCES livro (idlivro)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

