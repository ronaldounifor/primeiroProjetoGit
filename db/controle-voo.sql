CREATE DATABASE aeroporto;

USE aeroporto;

#1. Um vôo possui um número, data e hora de partida, data e hora de chegada,
#local de partida (aeroporto, cidade e país), local de chegada (aeroporto,
#cidade e país). Um vôo é identificado por seu número.
CREATE TABLE Aeroporto (
Codigo int,
Nome varchar(20),
Cidade varchar(30) NOT NULL,
Pais varchar(20) NOT NULL,
PRIMARY KEY(Codigo)
);

CREATE TABLE Voo (
Numero int,
DataPartida datetime NOT NULL,
DataChegada datetime NOT NULL,
LocalPartida int,
LocalChegada int,
PRIMARY KEY (Numero),
FOREIGN KEY (LocalPartida) REFERENCES Aeroporto(Codigo),
FOREIGN KEY (LocalChegada) REFERENCES Aeroporto(Codigo)
);

#2. Um avião possui modelo e quantidade de passageiros. O modelo identifica o
#avião.
CREATE TABLE Aviao (
Modelo varchar(15),
QuantidadePassageiros int,
PRIMARY KEY(Modelo)
);

#3. Um vôo possui um avião. Um avião pode ser utilizado em vários vôos.
ALTER TABLE Voo
ADD COLUMN Aviao varchar(15),
ADD FOREIGN KEY(Aviao) REFERENCES Aviao(Modelo);

#4. Um passageiro possui cpf, nome e endereço.
CREATE TABLE Passageiro(
CPF int,
Nome varchar(50),
Endereco varchar(75),
PRIMARY KEY(CPF)
);
ALTER TABLE Passageiro
CHANGE COLUMN Nome Nome varchar(50) NOT NULL;

#5. Um passageiro pode voar em vários vôos diferentes. Um vôo tem vários
#passageiros diferentes.
CREATE TABLE Reserva(
CPFPassageiro int NOT NULL,
NumeroVoo int NOT NULL,
FOREIGN KEY (CPFPassageiro) REFERENCES Passageiro(CPF),
FOREIGN KEY (NumeroVoo) REFERENCES Voo(Numero)
);

#6. Pilotos e tripulantes são funcionários da empresa. Um funcionário possui
#matrícula única, nome e salário.
CREATE TABLE Funcionario(
Matricula int,
Nome varchar(50) NOT NULL,
Salario float,
PRIMARY KEY(Matricula)
);

#7. Um vôo poderá ter vários tripulantes, que poderão participar de outros vôos.
CREATE TABLE Tripulantes(
MatriculaFuncionario int,
NumeroVoo int NOT NULL,
FOREIGN KEY (MatriculaFuncionario) REFERENCES Funcionario(Matricula),
FOREIGN KEY (NumeroVoo) REFERENCES Voo(Numero)
);
ALTER TABLE Tripulantes
CHANGE COLUMN MatriculaFuncionario MatriculaFuncionario int NOT NULL;

#8. Um vôo terá um único capitão, que poderá pilotar outros vôos.
ALTER TABLE Voo
ADD Capitao int NOT NULL,
ADD FOREIGN KEY(Capitao) REFERENCES Funcionario(Matricula);