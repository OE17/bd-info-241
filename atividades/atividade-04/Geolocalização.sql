-- Criação da tabela Estado
CREATE TABLE Estado (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Inserção de registros na tabela Estado
INSERT INTO Estado (nome) VALUES ('Ceará');

-- Criação da tabela MesoRegiao
CREATE TABLE MesoRegiao (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    estado_id INTEGER NOT NULL,
    FOREIGN KEY(estado_id) REFERENCES Estado(id)
);

-- Inserção de registros na tabela MesoRegiao
INSERT INTO MesoRegiao (nome, estado_id) VALUES ('Jaguaribe', 1);

-- Criação da tabela MicroRegiao
CREATE TABLE MicroRegiao (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    mesoregiao_id INTEGER NOT NULL,
    FOREIGN KEY(mesoregiao_id) REFERENCES MesoRegiao(id)
);

-- Inserção de registros na tabela MicroRegiao
INSERT INTO MicroRegiao (nome, mesoregiao_id) VALUES ('Litoral de Aracati', 1);
INSERT INTO MicroRegiao (nome, mesoregiao_id) VALUES ('Baixo Jaguaribe', 1);
INSERT INTO MicroRegiao (nome, mesoregiao_id) VALUES ('Médio Jaguaribe', 1);
INSERT INTO MicroRegiao (nome, mesoregiao_id) VALUES ('Serra do Pereiro', 1);

-- Criação da tabela Municipio
CREATE TABLE Municipio (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    microregiao_id INTEGER NOT NULL,
    FOREIGN KEY(microregiao_id) REFERENCES MicroRegiao(id)
);

-- Inserção de registros na tabela Municipio
-- Litoral de Aracati
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Aracati', 1);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Fortim', 1);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Icapuí', 1);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Itaiçaba', 1);

-- Baixo Jaguaribe
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Alto Santo', 2);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Ibicuitinga', 2);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Jaguaruana', 2);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Limoeiro do Norte', 2);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Morada Nova', 2);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Palhano', 2);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Quixeré', 2);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Russas', 2);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('São João do Jaguaribe', 2);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Tabuleiro do Norte', 2);

-- Médio Jaguaribe
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Jaguaretama', 3);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Jaguaribara', 3);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Jaguaribe', 3);

-- Serra do Pereiro
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Ereré', 4);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Iracema', 4);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Pereiro', 4);
INSERT INTO Municipio (nome, microregiao_id) VALUES ('Potiretama', 4);

-- Criação da tabela IFCampus
CREATE TABLE IFCampus (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    endereco TEXT NOT NULL,
    longitude FLOAT NOT NULL,
    latitude FLOAT NOT NULL,
    municipio_id INTEGER NOT NULL,
    FOREIGN KEY(municipio_id) REFERENCES Municipio(id)
);

-- Criação da tabela EscolaCampo
CREATE TABLE EscolaCampo (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    endereco TEXT NOT NULL,
    longitude FLOAT NOT NULL,
    latitude FLOAT NOT NULL,
    municipio_id INTEGER NOT NULL,
    FOREIGN KEY(municipio_id) REFERENCES Municipio(id)
);

-- Criação da tabela Assentamento
CREATE TABLE Assentamento (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    endereco TEXT NOT NULL,
    longitude FLOAT NOT NULL,
    latitude FLOAT NOT NULL,
    municipio_id INTEGER NOT NULL,
    FOREIGN KEY(municipio_id) REFERENCES Municipio(id)
);
