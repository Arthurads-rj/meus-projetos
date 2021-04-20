CREATE DATABASE [fazenda-bd]

CREATE TABLE FUNCIONÁRIOS (
    ID_Func int IDENTITY NOT NULL PRIMARY KEY,
    Nome_Func NVARCHAR (50) NOT NULL,
    Cpf_Func NVARCHAR (25) NOT NULL UNIQUE,
    Salario FLOAT NOT NULL,
    Area_Func NVARCHAR (25) NOT NULL CHECK (Area_Func in ('Agrícola', 'Pecuária')),
)

CREATE TABLE PRODUTOS (
    ID_Prod int IDENTITY NOT NULL PRIMARY KEY,
    Nome_Prod NVARCHAR (50) NOT NULL,
    Tipo_Prod NVARCHAR (25) NOT NULL CHECK (Tipo_Prod in ('Animal', 'Vegetal')),
    Valor_Prod float NOT NULL,
    QuantidadeEstoque_Prod float NOT NULL,
    Total_Vendido float NOT NULL,
)

CREATE TABLE EQUIPAMENTO (
    ID_Equip int IDENTITY NOT NULL PRIMARY KEY,
    Nome_Equip NVARCHAR (25) NOT NULL,
    Tipo_Equip NVARCHAR (25) NOT NULL,
)

CREATE TABLE PRODUCAO_DE_LEITE (
    ID_Vaca int IDENTITY NOT NULL PRIMARY KEY,
    Especie_Vaca NVARCHAR (25) NOT NULL,
    Ultima_Ordenha DATE NOT NULL,
    Temperatura_Leite INT NOT NULL,
    Inseminacao_Vaca VARCHAR (3) CHECk (Inseminacao_Vaca IN ('Sim','Não')) DEFAULT 'Não' NOT NULL,
    Estimativa_Parto ntext NOT NULL DEFAULT '',
    Litros_Produzidos float NOT NULL,
)

CREATE TABLE PRODUCAO_DE_OVOS (
    ID_Galinha INT IDENTITY NOT NULL PRIMARY KEY,
    Especie_Galinha NVARCHAR (25) NOT NULL,
    Ultimo_OvoPosto DATE NULL,
    Inseminacao_Ovo VARCHAR (3) CHECK (Inseminacao_Ovo IN ('Sim', 'Não')) DEFAULT 'Não' NOT NULL,
    Estimativa_Chocar ntext NULL DEFAULT '',
    Ovos_Produzidos float NOT NULL
)

CREATE TABLE PLANTACAO (
    ID_Plantio INT IDENTITY NOT NULL PRIMARY KEY,
    Nome_Vegetal NVARCHAR (25) NOT NULL,
    Ultima_Colheita DATE NOT NULL,
    Total_Colheita FLOAT NOT NULL,
)

CREATE TABLE VAREJISTAS (
    ID_Varejo INT IDENTITY NOT NULL PRIMARY KEY,
    Nome_Varejo NVARCHAR (25) NOT NULL,
    ID_Municipio INT NOT NULL,
    Telefone_Varejo NVARCHAR (25) NOT NULL,
    Produto_Comprado int NOT NULL,
    Total_Comprado FLOAT NOT NULL,
)

CREATE TABLE MUNICIPIO (
    ID_Municipio INT IDENTITY NOT NULL PRIMARY KEY,
    UF_Municipio NVARCHAR (2) NULL,
    Nome_MUnicipio NVARCHAR (60) NOT NULL,
)
    
    ALTER TABLE VAREJISTAS
    ADD CONSTRAINT FK_ID_Municipio FOREIGN KEY (ID_Municipio) REFERENCES MUNICIPIO (ID_Municipio)

    ALTER TABLE VAREJISTAS
    ADD CONSTRAINT FK_Produtos_Comprados FOREIGN KEY (ID_Varejo) REFERENCES PRODUTOS (ID_Prod)


    INSERT INTO [dbo].[FUNCIONÁRIOS]
    VALUES ('Alberto Cruz', '237.477.210-10', '3200', 'Agrícola'), 
    ('Maria Nascimento', '654.342.867-32', '3700', 'Pecuária'),
    ('Luciana Pacheco', '718.171.260-83', '4000', 'Agrícola');

    SELECT * FROM FUNCIONÁRIOS


    INSERT INTO [dbo].[PRODUTOS]
    VALUES ('Litro de Leite', 'Animal', '1.94', '100', '45'),
    ('Ovos 30 Dúzias', 'Animal', '94.74', '80', '30'),
    ('Milho 60kg', 'Vegetal', '79.00', '90', '10');

    SELECT * FROM PRODUTOS


    INSERT INTO [dbo].[EQUIPAMENTO]
    VALUES ('BH 224', 'Trator'),
    ('John Deere 4730', 'Pulverizador'),
    ('Uniporte 3030 NPK Jacto', 'Adubadora');

    SELECT * FROM EQUIPAMENTO


    INSERT INTO [dbo].[PRODUCAO_DE_LEITE]
    VALUES ('Holandês', '2020-02-10', '38', 'Não', ' ', '14'),
    ('Sindi', '2020-02-04', '37', 'Não', ' ','9'),
    ('Gir Leiteiro', '2020-01-29', '38', 'Sim', '2020-11-07', '11')

SELECT * FROM PRODUCAO_DE_LEITE

INSERT INTO [dbo].[PRODUCAO_DE_OVOS]
VALUES ('New Hampshire', '2020-02-08', 'Não', '', '8'),
('Rhodes Island', '2020-02-05', 'Não', '', '5'),
('Pedrês portuguesa', '2020-02-01', 'Sim', '2020-02-22', '6');

SELECT * FROM PRODUCAO_DE_OVOS

INSERT INTO [dbo].[PLANTACAO]
VALUES ('Milho', '2019-11-09', '250'),
('Tomate', '2019-12-12', '145'),
('Pimentão', '2019-10-14', '220');

SELECT * FROM PLANTACAO

INSERT INTO [dbo].[VAREJISTAS]
VALUES ('Casa do Legume', '1', '2726-3645', '3', '10'),
('Varejo Supri', '2', '5343-2452', '1', '45'),
('Varejo da Laguna', '3', '4384-3145', '2', '30');

SELECT * FROM VAREJISTAS
drop table VAREJISTAS
INSERT INTO [dbo].[MUNICIPIO]
VALUES ('RJ', 'Rio de Janeiro'),
('SP', 'São Paulo'),
('ES', 'Espírito Santo');

SELECT * FROM MUNICIPIO

--consulta avançada de municipios dos varejistas
SELECT ID_Varejo, Nome_Varejo, Nome_MUnicipio, UF_Municipio
FROM MUNICIPIO m INNER JOIN VAREJISTAS v
ON (m.ID_Municipio = v.ID_Municipio)

--consulta avançada de comparativo de produção de ovos com produção de leite
SELECT Especie_Vaca, ID_Vaca, Litros_Produzidos, Especie_Galinha, ID_Galinha, Ovos_Produzidos
FROM PRODUCAO_DE_LEITE l INNER JOIN PRODUCAO_DE_OVOS o
ON (l.ID_Vaca = o.ID_Galinha)

--consulta avançada de comparativo de ultima ordenha com ultimo ovo posto
SELECT Especie_Vaca, ID_Vaca, Ultima_Ordenha, Especie_Galinha, ID_Galinha, Ultimo_OvoPosto
FROM PRODUCAO_DE_LEITE l INNER JOIN PRODUCAO_DE_OVOS o
ON (l.ID_Vaca = o.ID_Galinha)

--consulta avançada de produtos comprados pelo varejo
SELECT ID_Prod, Nome_Prod, ID_Varejo, Nome_Varejo, Produto_Comprado
FROM PRODUTOS p INNER JOIN VAREJISTAS v
ON (p.ID_Prod = v.ID_Varejo)