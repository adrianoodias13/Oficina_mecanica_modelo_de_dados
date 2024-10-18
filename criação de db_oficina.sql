-- ========================================================== --
-- >>> CRIAÇÃO DE BANCO ED DADOS PARA O CENÁRIO DE OFICIA <<< --
-- ========================================================== --

CREATE DATABASE Oficina_Mecanica;

USE Oficina_Mecanica;

-- ========================================= --
-- >>> 1. CRIAÇÃO DAS TABELAS PRINCIPAIS <<< --
-- ========================================= --

-- 1.1 TABELA CLIENTE
CREATE TABLE Clients (
	Id_client INT AUTO_INCREMENT PRIMARY KEY
    ,Name_Client VARCHAR (45)
    ,Nick_Name VARCHAR(45)
    ,Phone CHAR(13)
    ,Address VARCHAR(225)
    ,Number_Address VARCHAR(10)
    ,Address_complement VARCHAR(45)
);
ALTER TABLE Clients AUTO_INCREMENT = 1;

-- 1.2 TABELA TIPO VEÍCULO
CREATE TABLE Vehicle_Type (
	Id_Vehicle_Type INT AUTO_INCREMENT PRIMARY KEY
    ,Vehicle_Type VARCHAR(25)
);
ALTER TABLE Vehicle_Type AUTO_INCREMENT = 1
;

-- 1.3 TABELA TIPO SERVIÇO
CREATE TABLE Service_type(
	Id_Service_Type INT AUTO_INCREMENT PRIMARY KEY
    ,Service_Name VARCHAR(45)
    ,Service_Description VARCHAR(225)
    ,Service_value DECIMAL
);
ALTER TABLE Service_type AUTO_INCREMENT = 1;

-- 1.4 TABELA PEÇA
CREATE TABLE Parts(
	Id_Part INT AUTO_INCREMENT PRIMARY KEY
    ,Parts_Name VARCHAR(50)
    ,Parts_Description VARCHAR(225)
    ,Unity_Value DECIMAL
);
ALTER TABLE Parts AUTO_INCREMENT = 1
;

-- 1.5 TABELA TÉCNICO
CREATE TABLE Technician(
	Id_Technician INT AUTO_INCREMENT PRIMARY KEY
    ,Technitician_Name VARCHAR(45)
    ,Address VARCHAR(225)
);
ALTER TABLE Technician AUTO_INCREMENT = 1
;

-- 1.6 TABELA TIPO ESPECIALIDADE
CREATE TABLE Specialty(
	Id_Specialty INT AUTO_INCREMENT PRIMARY KEY
    ,Specialty VARCHAR(45)
    ,Specialty_Describe VARCHAR(225)
);
ALTER TABLE Specialty AUTO_INCREMENT = 1
;

-- ========================================== --
-- >>> 2. CRIAÇÃO DAS TABELAS SECUNDARIAS <<< --
-- ========================================== --

-- 2.1 TABELA VEÍCULOS
CREATE TABLE Vehicles(
	Id_vehicle INT AUTO_INCREMENT PRIMARY KEY
    ,Plate CHAR(7)
    ,Chassis CHAR(17)
    ,Color VARCHAR(10)
    ,Model VARCHAR(25)
    ,Year INT(4)
    ,Brand VARCHAR(25)
    ,Id_Vehicle_Type INT
    ,CONSTRAINT FK_Type_Vehicle FOREIGN KEY (Id_Vehicle_Type) REFERENCES Vehicle_Type(Id_Vehicle_type)
);
ALTER TABLE Vehicles AUTO_INCREMENT = 1
;

-- 2.2 TABELA ORDEM DE SERVIÇO
CREATE TABLE Orders (
	Id_Order INT AUTO_INCREMENT PRIMARY KEY
    ,Date_Inssue DATETIME
    ,Date_Deliver DATETIME
    ,Status_Order ENUM('Emitida', 'Iniciada', 'Em andamento', 'Finalizada')
    ,Value_Parts DECIMAL
    ,Value_Services DECIMAL
    ,Value_Total DECIMAL
    ,Id_Client INT
    ,CONSTRAINT FK_Client_Order FOREIGN KEY (Id_Client) REFERENCES Clients(Id_Client)
);
ALTER TABLE Orders AUTO_INCREMENT = 1
;

-- 2.3 TABELA ACOMPANHAMENTO ORDEM DE SERVIÇO
CREATE TABLE Order_log (
	Id_Order_log INT AUTO_INCREMENT PRIMARY KEY
    ,Id_Order INT
    ,Id_Technician INT
    ,Description_log VARCHAR (225)
    ,Status_Order ENUM('Emitida', 'Iniciada', 'Em andamento', 'Finalizada')
	,CONSTRAINT FK_Order_Order_log FOREIGN KEY (Id_order) REFERENCES Orders(Id_Order)
);
ALTER TABLE Order_Log AUTO_INCREMENT = 1
;


-- ========================================== --
-- >>> 3. CRIAÇÃO DAS TABELAS PONTES <<< --
-- ========================================== --

-- 3.1 TABELA ESPECIALIDADE TÉCNICO
CREATE TABLE Technician_Specialty (
	Id_Technician INT
    ,Id_Specialty INT
    ,Date_Register DATETIME
    ,Date_Removal DATETIME
    ,PRIMARY KEY(Id_Technician, Id_Specialty)
    ,CONSTRAINT FK_Technician_Techn_Specialty FOREIGN KEY (Id_Technician) REFERENCES Technician(Id_Technician)
	,CONSTRAINT FK_Specialty_Techn_Specialty FOREIGN KEY (Id_Specialty) REFERENCES Specialty(Id_Specialty)
);

-- 3.2 TABELA ORDEM DE SERVIÇO TÉCNICO
CREATE TABLE Order_Technician (
	Id_Order INT
    ,Id_Technician INT
    ,PRIMARY KEY(Id_Order, Id_Technician)
    ,CONSTRAINT FK_Order_Order_Techni FOREIGN KEY (Id_Order) REFERENCES Orders(Id_Order)
    ,CONSTRAINT FK_Techni_Order_Techni FOREIGN KEY (Id_Technician) REFERENCES Technician(Id_Technician)
);

-- 3.3 TABELA ORDEM DE SERVIÇO SERVIÇOS
CREATE TABLE Order_services (
	Id_Order INT
    ,Id_Service_Type INT
    ,PRIMARY KEY (Id_Order, Id_Service_Type)
    ,CONSTRAINT FK_Order_Order_Service_Type FOREIGN KEY (Id_Order) REFERENCES Orders(Id_Order)
    ,CONSTRAINT FK_Service_Type_Order_Service_Type FOREIGN KEY (Id_Service_Type) REFERENCES Service_Type(Id_Service_Type)
);

-- 3.4 TABELA ORDEM DE SERVIÇO PEÇAS
CREATE TABLE Order_Parts(
	Id_Order INT
    ,Id_Part INT
    ,PRIMARY KEY (Id_order, Id_Part)
    ,CONSTRAINT FK_Order_Order_Parts FOREIGN KEY (Id_Order) REFERENCES Orders(Id_Order)
    ,CONSTRAINT FK_Part_Order_Parts FOREIGN KEY (Id_Part) REFERENCES Parts(Id_Part)
);

-- 3.5 TABELA CLIENTE VEÍCULO
CREATE TABLE Clients_Vehicles(
	Id_Client INT
    ,ID_Vehicle INT
    ,PRIMARY KEY (Id_Client, Id_Vehicle)
    ,CONSTRAINT FK_Client_Clients_Vehicles FOREIGN KEY (Id_Client) REFERENCES Clients(Id_Client)
    ,CONSTRAINT FK_Vehicle_Clients_Vehicles FOREIGN KEY (Id_Vehicle) REFERENCES Vehicles(Id_vehicle) 
);

-- 3.6 TABELA ORDEM DE SERVIÇO VEÍCULO
CREATE TABLE Order_Vehicle(
	Id_Order INT
    ,Id_Vehicle INT
    ,Id_client INT
    ,PRIMARY KEY(Id_Order,Id_Vehicle, Id_Client)
    ,CONSTRAINT FK_Order_Order_Vehicle FOREIGN KEY (Id_Order) REFERENCES Orders(Id_Order)
    ,CONSTRAINT FK_Client_Vehicle_Order_Vehicle FOREIGN KEY (Id_Client, Id_Vehicle) 
		REFERENCES Clients_Vehicles(Id_Client, Id_Vehicle)
);




 