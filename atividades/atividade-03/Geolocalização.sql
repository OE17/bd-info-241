-- Criação da tabela Estado
CREATE TABLE IF NOT EXISTS Estado (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- Inserção de registros na tabela Estado
INSERT INTO Estado (nome) VALUES ('Ceará');

-- Criação da tabela MesoRegiao
CREATE TABLE IF NOT EXISTS MesoRegiao (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    estado_id INTEGER NOT NULL,
    FOREIGN KEY(estado_id) REFERENCES Estado(id)
);

-- Inserção de registros na tabela MesoRegiao
INSERT INTO MesoRegiao (nome, estado_id) VALUES ('Jaguaribe', 1);

-- Criação da tabela MicroRegiao
CREATE TABLE IF NOT EXISTS MicroRegiao (
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
CREATE TABLE IF NOT EXISTS Municipio (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    microregiao_id INTEGER NOT NULL,
    latitude REAL,
    longitude REAL,
    FOREIGN KEY(microregiao_id) REFERENCES MicroRegiao(id)
);

-- Inserção de registros na tabela Municipio
-- Litoral de Aracati
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Aracati', 1, -4.570438, -37.774587);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Fortim', 1, -4.4527563502777285, -37.80429370703002);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Icapuí', 1, -4.724228586980959, -37.42544205609747);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Itaiçaba', 1, -4.675489812037201, -37.82110073060839);

-- Baixo Jaguaribe
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Alto Santo', 2, -5.521015153342664, -38.27096892987657);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Ibicuitinga', 2, -4.972954, -38.636856);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Jaguaruana', 2, -4.837639630745704, -37.78248936080315);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Limoeiro do Norte', 2, -5.138134, -38.098526);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Morada Nova', 2, -5.10562, -38.3671);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Palhano', 2, -4.746492, -37.963600);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Quixeré', 2, -5.072136, -37.985573);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Russas', 2, -4.938355378830736, -37.97199042431729);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('São João do Jaguaribe', 2, -5.272674, 38.272762);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Tabuleiro do Norte', 2, -5.229084, -38.129425);

-- Médio Jaguaribe
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Jaguaretama', 3, -5.613075081484771, -38.76258001912323);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Jaguaribara', 3, -5.461081359569713, -38.461720767312656);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Jaguaribe', 3, -5.888654938571367, -38.6233537882674);

-- Serra do Pereiro
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Ereré', 4, -6.0308659, -38.3496844);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Iracema', 4, -5.8095792, -38.3052673);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Pereiro', 4, -6.0465091, -38.4609008);
INSERT INTO Municipio (nome, microregiao_id, latitude, longitude) VALUES ('Potiretama', 4, -5.7228027, -38.1561586);
