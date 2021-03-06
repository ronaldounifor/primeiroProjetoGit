CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE EDITORA (
CODIGO INT AUTO_INCREMENT,
NOME VARCHAR(80) NOT NULL,
PRIMARY KEY(CODIGO)
);

CREATE TABLE ASSUNTO (
SIGLA CHAR(1),
DESCRICAO VARCHAR(80) NOT NULL,
PRIMARY KEY(SIGLA)
);

CREATE TABLE LIVRO (
CODIGO INT AUTO_INCREMENT,
TITULO VARCHAR(80) NOT NULL,
PRECO DECIMAL(10,2) NOT NULL,
LANCAMENTO DATE,
COD_ASSUNTO CHAR(1),
COD_EDITORA INT,
PRIMARY KEY(CODIGO),
FOREIGN KEY(COD_ASSUNTO) REFERENCES ASSUNTO(SIGLA),
FOREIGN KEY(COD_EDITORA) REFERENCES EDITORA(CODIGO)
);

INSERT INTO EDITORA(NOME) VALUES ('Mirandela Editora');
INSERT INTO EDITORA(NOME) VALUES ('Editora Vila-Norte');
INSERT INTO EDITORA(NOME) VALUES ('Editora Ilhas Tijuca');
INSERT INTO EDITORA(NOME) VALUES ('Maria José Editora');

INSERT INTO ASSUNTO(SIGLA, DESCRICAO) VALUES ('B', 'Banco de Dados');
INSERT INTO ASSUNTO(SIGLA, DESCRICAO) VALUES ('P', 'Programação');
INSERT INTO ASSUNTO(SIGLA, DESCRICAO) VALUES ('R', 'Redes');
INSERT INTO ASSUNTO(SIGLA, DESCRICAO) VALUES ('S', 'Sistemas Operacionais');

INSERT INTO LIVRO(TITULO, PRECO, LANCAMENTO, COD_ASSUNTO, COD_EDITORA) VALUES ('Banco de Dados para a Web', 31.20, DATE_FORMAT('10/01/1999', '%d/%m/%Y'), 'B', 1);
INSERT INTO LIVRO(TITULO, PRECO, LANCAMENTO, COD_ASSUNTO, COD_EDITORA) VALUES ('Programando em Linguagem C', 30.00, DATE_FORMAT('01/10/1997', '%d/%m/%Y'), 'P', 1);
INSERT INTO LIVRO(TITULO, PRECO, LANCAMENTO, COD_ASSUNTO, COD_EDITORA) VALUES ('Programando em Linguagem C++', 111.50, DATE_FORMAT('01/11/1998', '%d/%m/%Y'), 'P', 1);
INSERT INTO LIVRO(TITULO, PRECO, LANCAMENTO, COD_ASSUNTO, COD_EDITORA) VALUES ('Banco de Dados na Bioinformática', 48.00, NULL, 'B', 1);
INSERT INTO LIVRO(TITULO, PRECO, LANCAMENTO, COD_ASSUNTO, COD_EDITORA) VALUES ('Redes de Computadores', 42.00, DATE_FORMAT('01/09/1996', '%d/%m/%Y'), 'R', 1);

DESCRIBE LIVRO;
SELECT * FROM LIVRO;
SELECT * FROM LIVRO WHERE PRECO >= 30 AND PRECO <= 100;
SELECT * FROM LIVRO WHERE PRECO BETWEEN 30 AND 100;

SELECT * FROM LIVRO WHERE CODIGO IN (1, 2, 3, 4);
SELECT * FROM LIVRO WHERE CODIGO = 1 OR CODIGO = 2 OR CODIGO = 3 OR CODIGO = 4;

SELECT * FROM LIVRO WHERE CODIGO IN (1);
SELECT * FROM LIVRO WHERE CODIGO = 1;

SELECT COD_ASSUNTO AS Codigo, COUNT(*) As Total
FROM LIVRO
GROUP BY COD_ASSUNTO
HAVING COUNT(*) > 1;

SELECT * FROM LIVRO;
SELECT * FROM EDITORA;
SELECT * FROM ASSUNTO;

SELECT L.TITULO, E.NOME FROM LIVRO L JOIN EDITORA E ON L.COD_EDITORA = E.Codigo;