CREATE DATABASE LOJA;

USE LOJA;

CREATE TABLE DEPARTAMENTOS(
Codigo INT AUTO_INCREMENT,
Nome varchar(40) NOT NULL,
Localizacao varchar(80),
CodigoFuncionarioGerente INT NOT NULL,
PRIMARY KEY(Codigo)
);

CREATE TABLE FUNCIONARIOS(
Codigo INT AUTO_INCREMENT,
PrimeiroNome varchar(40) NOT NULL,
SegundoNome char(1) NOT NULL,
UltimoNome varchar(40) NOT NULL,
DataNasci DATE NOT NULL,
CPF INT NOT NULL,
RG INT NOT NULL,
ENDERECO varchar(80),
CEP INT,
Cidade varchar(40),
Fone INT,
CodigoDepartamento INT NOT NULL,
Funcao varchar(40),
Salario decimal(5,2),
PRIMARY KEY(Codigo),
FOREIGN KEY(CodigoDepartamento) REFERENCES DEPARTAMENTOS(Codigo)
);

ALTER TABLE DEPARTAMENTOS
ADD CONSTRAINT FOREIGN KEY(CodigoFuncionarioGerente) REFERENCES FUNCIONARIOS(Codigo);

ALTER TABLE DEPARTAMENTOS
CHANGE COLUMN CodigoFuncionarioGerente CodigoFuncionarioGerente INT NULL;

-- 1. Insira três departamentos
INSERT INTO DEPARTAMENTOS(Nome, Localizacao, CodigoFuncionarioGerente) VALUES ('RH', 'Sala 1', NULL);
INSERT INTO DEPARTAMENTOS(Nome, Localizacao, CodigoFuncionarioGerente) VALUES ('P&D', 'Sala 2', NULL);
INSERT INTO DEPARTAMENTOS(Nome, Localizacao, CodigoFuncionarioGerente) VALUES ('MD', 'Sala 5', NULL);

-- 2. Insira 12 funcionários, quatro em cada departamento
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Arnaldo', 'P', 'Silva', str_to_date('01/01/1989', '%d/%m/%Y'), 222, 222, 'Rua Alegria', 60160060, 'Fortaleza', 99999999, 1, 'Assistente', 25.50);
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Reinaldo', 'P', 'Silva', str_to_date('02/02/1988', '%d/%m/%Y'), 333, 333, 'Rua Arco Iris', 60160060, 'Fortaleza', 99999998, 1, 'Adjunto', 35.50);
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Robvaldo', 'P', 'Silva', str_to_date('03/03/1987', '%d/%m/%Y'), 444, 444, 'Rua Felicidade', 60160060, 'Fortaleza', 99999977, 1, 'Assistente', 30.00);
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Reginaldo', 'P', 'Silva', str_to_date('04/04/1986', '%d/%m/%Y'), 555, 555, 'Rua Brasil', 60160060, 'Fortaleza', 55555555, 1, 'Gerente', 52.75);

INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Pedro', 'P', 'Silva', str_to_date('11/11/1999', '%d/%m/%Y'), 666, 666, 'Rua Alegria', 60160060, 'Fortaleza', 88888888, 2, 'Assistente', 15.50);
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Paulo', 'P', 'Silva', str_to_date('12/12/1998', '%d/%m/%Y'), 777, 777, 'Rua Arco Iris', 60160060, 'Fortaleza', 88888887, 2, 'Adjunto', 25.50);
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Pablo', 'P', 'Silva', str_to_date('10/10/1997', '%d/%m/%Y'), 888, 888, 'Rua Felicidade', 60160060, 'Fortaleza', 88888886, 2, 'Assistente', 20.00);
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Penelope', 'P', 'Silva', str_to_date('09/09/1996', '%d/%m/%Y'), 999, 999, 'Rua Brasil', 60160060, 'Fortaleza', 88888885, 2, 'Gerente', 42.75);

INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Ana', 'P', 'Silva', str_to_date('20/08/1979', '%d/%m/%Y'), 1010, 1010, 'Rua Alegria', 60160777, 'Recife', 44444444, 3, 'Assistente', 35.50);
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Anna', 'P', 'Silva', str_to_date('20/07/1978', '%d/%m/%Y'), 1111, 1111, 'Rua Arco Iris', 60160777, 'Recife', 44444445, 3, 'Adjunto', 45.50);
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Ane', 'P', 'Silva', str_to_date('20/06/1977', '%d/%m/%Y'), 1212, 1212, 'Rua Felicidade', 60160777, 'Recife', 44444446, 3, 'Assistente', 40.00);
INSERT INTO FUNCIONARIOS(PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, ENDERECO, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario) VALUES ('Anne', 'P', 'Silva', str_to_date('20/05/1976', '%d/%m/%Y'), 1313, 1313, 'Rua Brasil', 60160777, 'Recife', 44444447, 3, 'Gerente', 62.75);

SELECT * FROM DEPARTAMENTOS;
SELECT * FROM FUNCIONARIOS;

UPDATE DEPARTAMENTOS
SET Codigo = 1
WHERE Codigo = 4;

SELECT F.RG, D.Nome FROM FUNCIONARIOS F JOIN DEPARTAMENTOS D ON F.CodigoDepartamento = D.Codigo;
