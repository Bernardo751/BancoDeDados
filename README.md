# BancoDeDados

## Escola
conceitual https://app.brmodeloweb.com/#!/publicview/69d7c2cce56bc192cf505cc7

lógico https://app.brmodeloweb.com/#!/publicview/69d7c384e56bc192cf505d88



## Imobiliária 
conceitual https://app.brmodeloweb.com/#!/publicview/69b2979825dde5c84617f607

lógico https://app.brmodeloweb.com/#!/publicview/69d7c338e56bc192cf505d3d




## streamtec
conceitual https://app.brmodeloweb.com/#!/publicview/69d7c18de56bc192cf505b87

lógico https://app.brmodeloweb.com/#!/publicview/69d7c1e8e56bc192cf505be4

## clínica veterinária
conceitual https://app.brmodeloweb.com/#!/publicview/69d7c18de56bc192cf505b87

lógico https://app.brmodeloweb.com/#!/publicview/69df6860e33b4dc332f92e3b

## Skin Canvas
conceitual https://app.brmodeloweb.com/#!/publicview/69fcab489ae9da54107999bd

lógico  https://app.brmodeloweb.com/#!/publicview/69fcab619ae9da54107999c4

## Fisíco

CREATE TABLE cliente (
idcliente INT PRIMARY KEY,
cpf VARCHAR(14),
cidade VARCHAR(100),
uf CHAR(2),
telefone VARCHAR(20),
idade INT,
nome VARCHAR(255) NOT NULL
);

CREATE TABLE tatuador (
id_tatuador INT PRIMARY KEY,
email VARCHAR(255),
cpf VARCHAR(14),
nome VARCHAR(255),
data_contrato DATE,
telefone VARCHAR(20),
tempo_atuacao INT
);

CREATE TABLE estilo (
nome_estilo VARCHAR(100) PRIMARY KEY,
descricao VARCHAR(255)
);

CREATE TABLE senioridade (
codsenioridade INT PRIMARY KEY,
nome VARCHAR(100)
);

CREATE TABLE agendamento (
id_agendamento INT PRIMARY KEY,
id_tatuador INT,
data_hora DATETIME,
valor DECIMAL(10,2),
descricao VARCHAR(255),

CONSTRAINT fk_agendamento_tatuador
FOREIGN KEY (id_tatuador)
REFERENCES tatuador(id_tatuador)
);

CREATE TABLE possui (
idcliente INT,
id_agendamento INT,

PRIMARY KEY (idcliente, id_agendamento),

CONSTRAINT fk_possui_cliente
FOREIGN KEY (idcliente)
REFERENCES cliente(idcliente),

CONSTRAINT fk_possui_agendamento
FOREIGN KEY (id_agendamento)
REFERENCES agendamento(id_agendamento)
);

CREATE TABLE possui1 (
id_tatuador INT,
nome_estilo VARCHAR(100),

PRIMARY KEY (id_tatuador, nome_estilo),

CONSTRAINT fk_possui1_tatuador
FOREIGN KEY (id_tatuador)
REFERENCES tatuador(id_tatuador),
CONSTRAINT fk_possui1_estilo
        FOREIGN KEY (nome_estilo)
        REFERENCES estilo(nome_estilo)
);

CREATE TABLE possui2 (
codsenioridade INT,
id_tatuador INT,

PRIMARY KEY (codsenioridade, id_tatuador),

CONSTRAINT fk_possui2_senioridade
FOREIGN KEY (codsenioridade)
REFERENCES senioridade(codsenioridade),

CONSTRAINT fk_possui2_tatuador
FOREIGN KEY (id_tatuador)
REFERENCES tatuador(id_tatuador)
);



