create DATABASE Fornecedor_alimenticio;
USE Fornecedor_alimenticio;

CREATE TABLE Cliente(
    ID INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255),
    CPF VARCHAR(11),
    PRIMARY KEY (ID)
);

CREATE TABLE Produto(
    ID VARCHAR(20) NOT NULL,
    Nome VARCHAR(255),
    PRIMARY KEY(iD)
);

CREATE TABLE Atendimento(
    ID INT NOT NULL AUTO_INCREMENT,
    Local VARCHAR(255),
    Data DATETIME,
    ClienteID INT NOT NULL,
    CRMMedico VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ID),
    FOREIGN KEY(CRMProduto) REFERENCES Produto(CRM)
);

INSERT INTO Cliente (Nome,CPF) VALUES
('Romarinho', '12312312312'),
('Otavio', '32132132132'),
('Andre', '0654654464'),
('Lourival', '12312312312'),
('Otavio', '32132132132'),
('Thiago', '34534534534');

INSERT INTO Produto (Nome,ID) VALUES
('Pipoca', '01'),
('Docê de Leite', '02'),
('Manteiga', '03'),
('Patél', '04'),
('Hot dog', '00005'),
('Cachorro quente', '00006');

INSERT INTO Atendimento (Local, Data, PacienteID, CRMMedico)VALUES
('Supermercado', '2022-05-25 08:30:05',1,'00003'),
('Padaria', '2022-05-27 10:00:05',2,'00003'),
('Restaurante', '2022-06-15 13:34:05',3,'00002'),
('Lanchonete', '2022-07-01 07:30:05',3,'00002'),
('Praça de alimentação', '2022-08-14 14:30:05',1,'00001'),
('Barraquinha de hotdog', '2022-09-12 15:30:05',2,'00001');

SELECT * FROM Atendimento
INNER JOIN Cliente
ON Atendimento.ClienteID = Cliente.ID
INNER JOIN Produto
ON Atendimento.CRMProduto = Produto.CRM
WHERE Cliente.Nome = 'Andre';