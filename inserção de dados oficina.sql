-- DROP DATABASE Oficina_mecanica

-- >> 1. inserção de dados e-commerce <<--

use Oficina_mecanica;

-- =========================== --
-- >>> 1.1 REGISTRO DE CLIENTES << --
-- =========================== --

INSERT INTO 
	Clients
    (Name_Client, Nick_Name, Phone, Address, Number_Address , Address_Complement)
Values
('Gabriel Silva','Gabe',11987654321,'Rua das Palmeiras, 123 - Apto 45','45','São Paulo, SP, 01000-000')
,('Isabella Santos', 'Bella',21976543210,'Avenida Brasil, 987 - Sala 21','987','Rio de Janeiro, RJ, 20000-000')
,('Miguel Oliveira', 'Migs',31987651234,'Rua do Comércio, 456 - Casa 10','456','Belo Horizonte, MG, 30100-000')
,('Sofia Costa','Sofi',71998765432,'Praça da Liberdade, 234 - Bloco B, Apt 7','234','Brasília, DF, 70000-000')
,('Lucas Almeida','Luke',41987655678,'Rua das Flores, 789 - Loja 5','789','Curitiba, PR, 80000-000')
,('Amanda Peireira', 'Mandy',51998764321,'Avenida Paulista, 345 - Conjunto 202','345','São Paulo, SP, 01310-000')
,('Thiago Rocha', 'Thi',85987656789,'Rua do Sol, 678 - Casa 8','678','Fortaleza, CE, 60000-000')
,('Rafael Carvalho', 'Rafa',81976546789,'Rua dos Bandeirantes, 123 - Apto 302','123','Porto Alegre, RS, 90000-000')
,('Letícia Martins','Lety',61987659876,'Rua da Paz, 456 - Apt 12A','456','Salvador, BA, 40000-000');

-- 1.2 REGISTRO DE TIPOS DE VEICULOS --

INSERT INTO 
	VEHICLE_TYPE
	(Vehicle_Type)
VALUES 
('Motocicleta'),('Caminhao'),('Ônibus'),('Van'),('Scooter'),('Picape'),('SUV'),('Combi');

-- 1.3 REGISTRO DE TIPOS DE SERVIÇOS --
INSERT INTO
	Service_Type
    (Service_Name, Service_description,Service_value)
VALUES
('Troca de Óleo e Filtros',' Substituição do óleo do motor e do filtro de óleo para garantir o bom funcionamento do motor.',225)
,('Alinhamento e Balanceamento',' Ajuste dos ângulos das rodas e balanceamento dos pneus para evitar desgaste irregular e melhorar a dirigibilidade.',150)
,('Troca de Pastilhas de Freio',' Substituição das pastilhas de freio desgastadas para garantir a segurança e eficiência do sistema de frenagem.',375)
,('Reparo de Suspensão',' Conserto ou substituição de componentes da suspensão, como amortecedores e molas, para melhorar a estabilidade do veículo.',550)
,('Troca de Bateria',' Substituição da bateria antiga por uma nova para garantir que o veículo ligue corretamente e evite problemas elétricos.',300)
,('Serviço de Ar-Condicionado',' Reparo e manutenção do sistema de ar-condicionado, incluindo recarga de gás e conserto de vazamentos.',425)
,('Troca de Correia Dentada',' Substituição da correia dentada para evitar danos ao motor e garantir o sincronismo correto das peças internas.',650)
,('Reparo de Sistema de Escape',' Conserto ou substituição de componentes do sistema de escape, como catalisador e silenciador, para manter a eficiência e reduzir emissões.',400)
,('Substituição de Fluídos de Transmissão',' Troca do fluido da transmissão para assegurar uma mudança de marchas suave e prolongar a vida útil da transmissão.',500)
,('Reparo de Sistema de Direção',' Conserto ou substituição de componentes do sistema de direção, como bomba de direção e caixa de direção, para garantir uma condução precisa e segura.',700)
;

-- 1.4 REGISTRO DE PEÇAS --
INSERT INTO 
	Parts
    (Parts_Name,Parts_Description, Unity_Value)
VALUES
('Óleo de Motor','Fluído essencial para lubrificar o motor e garantir seu bom funcionamento.',150)
,('Filtro de Óleo','Filtro que remove impurezas do óleo do motor.',55)
,('Pastilhas de Freio','Componentes que pressionam contra os discos de freio para parar o veículo.',225)
,('Amortecedor','Peça da suspensão que absorve impactos e garante um passeio suave.',350)
,('Bateria de Carro','Fonte de energia que alimenta o sistema elétrico e o motor de arranque.',300)
,('Correia Dentada','Correia que sincroniza a rotação do virabrequim e do comando de válvulas.',425)
,('Catalisador','Componente do sistema de escape que reduz as emissões de poluentes.',850)
,('Fluído de Transmissão','Líquido que lubrifica e facilita as mudanças de marcha na transmissão.',175)
,('Mangueira de Ar-Condicionado','Tubo que transporta o gás refrigerante no sistema de ar-condicionado.',250)
,('Bomba de Direção Hidráulica','Componente que auxilia na direção do veículo, tornando a condução mais fácil.',550)
,('Disco de Freio','Componente rotativo que trabalha com as pastilhas de freio para parar o veículo.',275)
,('Filtro de Ar','Filtro que impede que sujeira e partículas entrem no motor.',100)
,('Velas de Ignição','Peças que geram a faísca necessária para a ignição da mistura de ar e combustível.',55)
,('Bomba de Combustível','Componente que bombeia o combustível do tanque para o motor.',425)
,('Radiador','Componente do sistema de resfriamento que dissipa o calor do líquido refrigerante.',650)
,('Termostato','Peça que regula a temperatura do líquido de arrefecimento do motor.',140)
,('Junta de Cabeça','Vedação entre o bloco do motor e a cabeça do cilindro, impedindo vazamentos.',275)
,('Braço de Suspensão','Componente que conecta a suspensão ao chassi do veículo e permite o movimento das rodas.',350)
,('Alternador','Gerador que produz eletricidade para carregar a bateria e alimentar os sistemas elétricos.',700)
,('Sensor de O2 (Oxigênio)','Sensor que mede a quantidade de oxigênio nos gases de escape para otimizar a mistura de ar e combustível.',250)
;

-- 1.5  REGISTRO DE TÉCNICOS --
INSERT INTO
	Technician
	(Technitician_Name,Address)
VALUES
('João Fumaça',' Rua dos Engrenagens, 101 - Bairro da Buzina')
,('Ana Ferramenta',' Avenida das Chaves, 202 - Sala 10')
,('Carlos Parafuso',' Rua do Sargento, 303 - Casa 5')
,('Lúcia Solda',' Praça do Reparador, 404 - Apto 12')
,('Pedro Pistão',' Rua da Chave Inglesa, 505 - Loja 8')
,('Mariana Elétrica',' Avenida do Conector, 606 - Conjunto 2')
,('Ricardo Engrenagem',' Rua do Parafuso, 707 - Sala 4')
,('Fernanda Soldagem',' Praça da Roda, 808 - Apto 15')
,('Gustavo Chaveiro',' Rua do Reparador, 909 - Bloco C, Apt 3')
,('Cláudia Manivela',' Avenida da Fita Métrica, 1010 - Sala 6')
;

-- 1.5 REGISTRO DE TIPOS DE ESPECIALIDADES
INSERT INTO
	Specialty
	(Specialty, Specialty_Describe)
VALUES
('Diagnóstico Rápido','Especialista em identificar e solucionar problemas rapidamente, realizando diagnósticos precisos.')
,('Manutenção Preventiva','Profissional dedicado a inspeções e manutenção periódica para prevenir falhas e garantir bom funcionamento.')
,('Reparo de Sistemas Elétricos','Especializado na manutenção e conserto de sistemas elétricos, incluindo fiações e componentes eletrônicos.')
,('Calibração de Máquinas','Especialista em ajustar e calibrar máquinas e equipamentos para garantir precisão e eficiência.')
,('Soldagem Avançada','Profissional com habilidades avançadas em técnicas de soldagem, como MIG, TIG e de arco.')
,('Refrigeração e Ar-Condicionado','Especialista em instalação, manutenção e reparo de sistemas de refrigeração e ar-condicionado.')
,('Sistemas Hidráulicos','Profissional especializado na manutenção e conserto de sistemas hidráulicos, como bombas e cilindros.')
,('Automação Industrial','Especialista em instalar e manter sistemas automatizados, como robôs industriais e sistemas de controle.')
,('Mecânica de Precisão','Profissional especializado na manutenção e reparo de equipamentos e peças que exigem alta precisão.')
;

-- ==================================--
-- >> 2. INSEÇÃO DE REGISTRO SECUNDARIOS --
-- ================================= --

-- 2.1 REGISTRO DE VEICULOS
 INSERT INTO 
	VEHICLEs
    (Plate,Chassis,Color,Model,Year,Brand,Id_Vehicle_Type)
VALUES
('XYZ1A23','JH2MC3301KK123456','Preto','CB 500',2022,'Honda',1)
,('ABC2B34','1HD1FR2125Y123456','Vermelha','Sportster',2021,'Harley-Davidson',1)
,('DEF3C45','1F9NWA45M5T123456','Azul','Ninja 400',2022,'Kawasaki',1)
,('GHI4D56','JH2SC5904LK123456','Verde','VFR 800',2020,'Honda',1)
,('JKL5E67','1HD1CXV21KC123456','Cinza','Road King',2021,'Harley-Davidson',1)
,('UVW1A23','1HTMNAAMX9H123456','Branco','26280',2020,'International',2)
,('XYZ2B34','3HDCHE34A7N123456','Prata','33500',2019,'Mercedes-Benz',2)
,('ABC3C45','1FTRF4X50JFC12456','Azul','F-350',2021,'Ford',2)
,('DEF4D56','3FRNF75JX5V123456','Vermelho','Actros 2546',2022,'Mercedes-Benz',2)
,('GHI5E67','4JXH9EAT0J123456','Verde','1844',2020,'Scania',2)
,('XYZ1A23','9BFTW1S4Y8J123456','Azul','Irizar i6',2021,'Marcopolo',3)
,('ABC2B34','6HDBR9B2X4L123456','Verde','Volare W9',2020,'Comil',3)
,('DEF3C45','2FBAZ1M4X7H123456','Branco','Apache S21',2022,'Neobus',3)
,('GHI4D56','1BPC0P85X8J123456','Amarelo','OF 1721',2019,'Mercedes-Benz',3)
,('JKL5E67','5J8H4J4X3HK123456','Preto','Paradiso 1800',2021,'Marcopolo',3)
,('ABC1D23','2C4RDGBG9LR123456','Prata','Transit',2022,'Ford',4)
,('DEF2E34','1N6AF0KY4MN123456','Branco','Master',2021,'Renault',4)
,('GHI3F45','WV1ZZZ7HZ7H123456','Azul','Sprinter',2020,'Mercedes-Benz',4)
,('JKL4G56','1GZB91C4P8H123456','Preto','Hiace',2022,'Toyota',4)
,('MNO5H67','3F5Z3J6T0G123456','Vermelho','Ducato',2021,'Fiat',4)
,('PQR1A23','JH2MC2601MM123456','Vermelha','NMAX 155',2023,'Yamaha',5)
,('STU2B34','1D6KC3007LR123456','Azul','PCX 150',2022,'Honda',5)
,('VWX3C45','JH2MC4301MK123456','Preto','Forza 300',2021,'Honda',5)
,('YZA4D56','1HD1MC2119T123456','Verde','XMAX 250',2022,'Yamaha',5)
,('BCD5E67','JH2MC2601JK123456','Branco','Vino 125',2020,'Honda',5)
,('EFG1A23','1GTP9EEL0KZ123456','Cinza','Ranger',2021,'Ford',6)
,('HIJ2B34','3FTRF4X55JH123456','Branco','Hilux',2020,'Toyota',6)
,('KLM3C45','2C4RDGBG9HR123456','Preto','S10',2022,'Chevrolet',6)
,('NOP4D56','5XYP2D7E5JZ123456','Vermelho','Frontier',2021,'Nissan',6)
,('QRS5E67','1C6RR7GT1KS123456','Verde','Titan',2020,'Dodge',6)
,('TUV1A23','5UXTR9C56M9N12356','Preto','X5',2020,'BMW',7)
,('WXY2B34','1C4RJFBG4JC123456','Cinza','Grand Cherokee',2021,'Jeep',7)
,('ZAB3C45','2FMDK4K30JB123456','Azul','Edge',2022,'Ford',7)
,('CDE4D56','5J6YH2H83KL123456','Vermelho','CR-V',2021,'Honda',7)
,('FGH5E67','1FMCU0J90LZ123456','Branco','Escape',2020,'Ford',7)
,('GHI1A23','WV2ZZZ7HZ4H123456','Branco','Kombi',2019,'Volkswagen',8)
,('JKL2B34','WV1ZZZ70X5H123456','Amarelo','Kombi',2020,'Volkswagen',8)
,('MNO3C45','WV2ZZZ7HZ4J123456','Azul','Kombi',2021,'Volkswagen',8)
,('PQR4D56','WV1ZZZ7HZ5H123456','Verde','Kombi',2019,'Volkswagen',8)
,('STU5E67','WV2ZZZ7HZ6H123456','Cinza','Kombi',2022,'Volkswagen',8)
;

-- 2.2 REGISTRO DE ORDEM DE SERVIÇOS

INSERT INTO 
	ORDERS
    (Date_Inssue,Date_Deliver,Status_Order,ID_client)
VALUES
('2023-01-01',NULL,'Emitida',6)
,('2023-01-02',NULL,'Emitida',4)
,('2023-01-03','2023-01-14','Finalizada',1)
,('2023-01-07',NULL,'Emitida',1)
,('2023-01-17',NULL,'Emitida',4)
,('2023-01-20',NULL,'Iniciada',9)
,('2023-01-25','2023-02-06','Finalizada',5)
,('2023-02-07',NULL,'Em andamento',4)
,('2023-02-10',NULL,'Em andamento',4)
,('2023-02-10',NULL,'Emitida',6)
,('2023-02-11',NULL,'Iniciada',7)
,('2023-02-11',NULL,'Iniciada',7)
,('2023-02-14',NULL,'Em andamento',3)
,('2023-02-14',NULL,'Emitida',9)
,('2023-02-20',NULL,'Iniciada',7)
,('2023-02-23','2023-03-02','Finalizada',9)
,('2023-03-08',NULL,'Em andamento',1)
,('2023-03-08','2023-03-12','Finalizada',5)
,('2023-03-08',NULL,'Iniciada',8)
,('2023-03-14',NULL,'Emitida',8)
,('2023-03-16',NULL,'Iniciada',7)
,('2023-03-23',NULL,'Emitida',6)
,('2023-03-23',NULL,'Iniciada',9)
,('2023-03-24',NULL,'Iniciada',2)
,('2023-03-25','2023-03-28','Finalizada',6)
,('2023-03-29',NULL,'Emitida',1)
,('2023-04-05','2023-04-13','Finalizada',7)
,('2023-04-07','2023-04-12','Finalizada',4)
,('2023-04-10','2023-04-20','Finalizada',7)
,('2023-04-13',NULL,'Iniciada',6)
,('2023-04-17','2023-04-20','Finalizada',7)
,('2023-04-21',NULL,'Em andamento',8)
,('2023-04-21','2023-04-24','Finalizada',5)
,('2023-04-22',NULL,'Em andamento',4)
,('2023-04-22','2023-05-02','Finalizada',5)
,('2023-04-23','2023-04-28','Finalizada',7)
,('2023-04-27',NULL,'Emitida',5)
,('2023-04-29',NULL,'Iniciada',4)
,('2023-05-06',NULL,'Emitida',4)
,('2023-05-23',NULL,'Emitida',2)
,('2023-05-26','2023-06-09','Finalizada',7)
,('2023-06-07',NULL,'Em andamento',9)
,('2023-06-10',NULL,'Em andamento',4)
,('2023-06-10',NULL,'Iniciada',4)
,('2023-06-13',NULL,'Em andamento',2)
,('2023-06-14',NULL,'Em andamento',3)
,('2023-06-15',NULL,'Em andamento',8)
,('2023-06-26','2023-07-01','Finalizada',2)
,('2023-06-30',NULL,'Iniciada',1)
,('2023-07-02',NULL,'Em andamento',8)
,('2023-07-03',NULL,'Emitida',9)
,('2023-07-04',NULL,'Iniciada',3)
,('2023-07-06',NULL,'Iniciada',9)
,('2023-07-09','2023-07-16','Finalizada',1)
,('2023-07-10','2023-07-24','Finalizada',2)
,('2023-07-11',NULL,'Iniciada',8)
,('2023-07-18','2023-07-29','Finalizada',5)
,('2023-07-19',NULL,'Em andamento',9)
,('2023-07-21','2023-08-01','Finalizada',4)
,('2023-07-26',NULL,'Em andamento',9)
,('2023-07-28',NULL,'Iniciada',6)
,('2023-07-30',NULL,'Iniciada',6)
,('2023-08-09','2023-08-24','Finalizada',4)
,('2023-08-13','2023-08-19','Finalizada',1)
,('2023-08-18','2023-08-31','Finalizada',9)
,('2023-08-19',NULL,'Em andamento',8)
,('2023-08-23',NULL,'Iniciada',6)
,('2023-08-25',NULL,'Iniciada',2)
,('2023-08-26',NULL,'Emitida',1)
,('2023-08-29',NULL,'Emitida',7)
,('2023-09-04',NULL,'Iniciada',1)
,('2023-09-06',NULL,'Emitida',4)
,('2023-09-14',NULL,'Emitida',6)
,('2023-09-16',NULL,'Em andamento',2)
,('2023-09-17',NULL,'Em andamento',5)
,('2023-09-18',NULL,'Em andamento',4)
,('2023-09-18',NULL,'Emitida',9)
,('2023-09-19','2023-09-20','Finalizada',4)
,('2023-09-24',NULL,'Em andamento',7)
,('2023-09-25',NULL,'Em andamento',2)
,('2023-09-27','2023-10-05','Finalizada',4)
,('2023-10-18','2023-10-31','Finalizada',2)
,('2023-10-22',NULL,'Emitida',7)
,('2023-11-01',NULL,'Emitida',5)
,('2023-11-03',NULL,'Em andamento',8)
,('2023-11-03','2023-11-11','Finalizada',7)
,('2023-11-05',NULL,'Iniciada',3)
,('2023-11-06','2023-11-21','Finalizada',6)
,('2023-11-17',NULL,'Emitida',9)
,('2023-11-20','2023-11-27','Finalizada',5)
,('2023-11-21',NULL,'Emitida',4)
,('2023-11-22',NULL,'Emitida',9)
,('2023-11-24',NULL,'Em andamento',7)
,('2023-12-01',NULL,'Em andamento',6)
,('2023-12-02','2023-12-15','Finalizada',5)
,('2023-12-04',NULL,'Em andamento',3)
,('2023-12-19',NULL,'Emitida',5)
,('2023-12-24',NULL,'Iniciada',2)
,('2023-12-29','2024-01-07','Finalizada',8)
,('2023-12-31',NULL,'Em andamento',6)
;

-- 2.3 REGISTRO DE ACOMPANHAMENTO DE ORDEM DE SERVIÇOS

INSERT INTO 
	Order_log
    (Id_Order, ID_Technician, Description_log, Status_order)
VALUES
(3,8,'Cliente relatou falha no sistema de freios do carro, solicitar inspeção e revisão completa.','Iniciada'),
(7,3,'Motor da moto está com ruído anormal, verificar possíveis problemas no sistema de escape e válvulas.','Iniciada'),
(16,3,'Realizar troca de óleo e filtros do caminhão, conforme recomendado no manual de manutenção.','Iniciada'),
(18,6,'Cliente solicitou revisão completa do sistema de suspensão do carro, com possível troca de amortecedores.','Iniciada'),
(25,8,'Verificar luz de injeção eletrônica acesa no painel do veículo e diagnosticar código de erro.','Iniciada'),
(27,7,'Solicitar alinhamento e balanceamento das rodas da moto após relato de instabilidade ao dirigir.','Iniciada'),
(28,10,'Realizar substituição do conjunto de embreagem do caminhão, identificado desgaste excessivo.','Iniciada'),
(29,9,'Checar vazamento de óleo no motor do carro e realizar reparo no retentor se necessário.','Iniciada'),
(31,8,'Cliente solicitou substituição das pastilhas de freio e discos do caminhão, verificar espessura atual.','Iniciada'),
(33,9,'Realizar revisão do sistema elétrico da moto, com atenção especial à bateria e alternador.','Iniciada'),
(35,7,'Cliente relatou dificuldade ao engatar marchas no carro, verificar sistema de câmbio e embreagem.','Iniciada'),
(36,4,'Solicitar revisão do sistema de ar-condicionado do caminhão, identificado baixa eficiência de refrigeração.','Iniciada'),
(41,9,'Moto apresenta falhas na partida, verificar o sistema de ignição e possível falha na vela ou bobina.','Iniciada'),
(48,8,'Realizar substituição dos pneus do carro, conforme orientação do cliente, e verificar alinhamento.','Iniciada'),
(3,8,'Sistema de freios inspecionado, pastilhas estão desgastadas e disco apresenta irregularidades.','Em andamento'),
(3,8,'Troca das pastilhas e discos realizada, testando o desempenho do freio em pista.','Em andamento'),
(7,3,'Escape verificado, sem obstruções; identificada folga nas válvulas.','Em andamento'),
(7,3,'Ajuste de válvulas realizado, ruído do motor está mais suave, finalizando testes.','Em andamento'),
(16,3,'Óleo antigo drenado e filtros removidos, sem detritos visíveis.','Em andamento'),
(16,3,'Novo óleo e filtros instalados, verificando nível e pressão do óleo após troca.','Em andamento'),
(18,6,'Amortecedores dianteiros apresentam vazamento, recomendada substituição.','Em andamento'),
(18,6,'Amortecedores substituídos, alinhamento realizado, testando estabilidade do veículo.','Em andamento'),
(25,8,'Código de erro indica falha no sensor de oxigênio, necessário substituí-lo.','Em andamento'),
(25,8,'Sensor de oxigênio substituído, luz de injeção apagada, verificando parâmetros no scanner.','Em andamento'),
(27,7,'Rodas fora de alinhamento, realizando ajuste na geometria das rodas.','Em andamento'),
(27,7,'Alinhamento e balanceamento concluídos, testando a moto em rodagem.','Em andamento'),
(28,10,'Conjunto de embreagem removido, verificado desgaste severo no disco e platô.','Em andamento'),
(28,10,'Novo conjunto de embreagem instalado, testando troca de marchas durante a condução.','Em andamento'),
(29,9,'Vazamento localizado no retentor do virabrequim, preparando para substituição.','Em andamento'),
(29,9,'Retentor trocado, sem sinais de novo vazamento após teste de rodagem.','Em andamento'),
(31,8,'Pastilhas e discos abaixo do limite de desgaste, preparando substituição.','Em andamento'),
(31,8,'Pastilhas e discos substituídos, ajustando freios e verificando resposta na frenagem.','Em andamento'),
(33,9,'Bateria com carga baixa e alternador sem fornecer corrente adequada, realizar substituição.','Em andamento'),
(33,9,'Novo alternador instalado, bateria carregada, sistema elétrico funcionando corretamente.','Em andamento'),
(35,7,'Cabo da embreagem com desgaste e falta de tensão, realizando ajuste.','Em andamento'),
(35,7,'Cabo ajustado, engates mais suaves, realizando teste de direção para garantir.','Em andamento'),
(36,4,'Verificado baixo nível de gás refrigerante, iniciando recarga do sistema.','Em andamento'),
(36,4,'Sistema de ar-condicionado recarregado e verificada pressão; refrigeração normalizada, finalizando testes.','Em andamento'),
(41,9,'Vela de ignição com desgaste e bobina apresentando baixa tensão, substituindo componentes.','Em andamento'),
(41,9,'Vela e bobina trocadas, moto funcionando corretamente, partida testada várias vezes sem falhas.','Em andamento'),
(48,8,'Pneus antigos removidos, novos pneus instalados, iniciando verificação de alinhamento.','Em andamento'),
(48,8,'Alinhamento concluído, pneus calibrados, testando o carro em rodagem para avaliar estabilidade.','Em andamento'),
(3,8,'Freios substituídos e testados. Sistema funcionando corretamente, veículo liberado ao cliente.','Finalizada'),
(7,3,'Ajustes nas válvulas concluídos, ruído eliminado. Moto testada e liberada com bom desempenho.','Finalizada'),
(16,3,'Troca de óleo e filtros realizada com sucesso. Níveis conferidos, caminhão pronto para retirada.','Finalizada'),
(18,6,'Suspensão revisada e amortecedores trocados. Veículo testado e entregue com estabilidade normalizada.','Finalizada'),
(25,8,'Falha no sensor de oxigênio corrigida. Luz de injeção apagada, veículo em perfeitas condições.','Finalizada'),
(27,7,'Alinhamento e balanceamento finalizados. Moto testada e estável durante a condução, pronta para entrega.','Finalizada'),
(28,10,'Substituição do conjunto de embreagem concluída. Caminhão testado em diversas marchas, pronto para operação.','Finalizada'),
(29,9,'Retentor substituído com sucesso, sem sinais de novos vazamentos. Veículo pronto para retirada.','Finalizada'),
(31,8,'Pastilhas e discos trocados. Sistema de freios testado e aprovado, caminhão pronto para devolução.','Finalizada'),
(33,9,'Sistema elétrico revisado, alternador e bateria funcionando corretamente. Moto pronta para uso.','Finalizada'),
(35,7,'Cabo da embreagem ajustado, marchas engatando sem dificuldade. Veículo liberado para o cliente.','Finalizada'),
(36,4,'Revisão do ar-condicionado concluída, eficiência de refrigeração restabelecida. Caminhão liberado.','Finalizada'),
(41,9,'Vela e bobina substituídas, moto partida sem problemas. Testada e pronta para entrega.','Finalizada'),
(48,8,'Pneus substituídos e alinhamento ajustado. Veículo estável durante testes, pronto para retirada.','Finalizada')
;

-- ==================================--
-- >> 3. INSEÇÃO DE REGISTRO TABELAS PONTES --
-- ================================= --

-- 3.1 REGISTRO DE ESPECIALIDADE TÉCNICO
INSERT INTO Technician_Specialty 
(Id_Technician,Id_Specialty,Date_Register,Date_Removal)
VALUES
(9,9,'2023-02-10 08:30:00',NULL)
,(4,4,'2023-03-15 12:45:00','2023-03-16 14:30:00')
,(3,8,'2023-04-20 17:00:00',NULL)
,(4,9,'2023-05-05 09:15:00',NULL)
,(6,9,'2023-06-18 14:00:00','2023-06-19 16:45:00')
,(1,6,'2023-07-22 16:30:00',NULL)
,(10,5,'2023-08-11 10:00:00','2023-08-12 12:00:00')
,(7,2,'2023-09-25 18:45:00',NULL)
,(1,7,'2023-10-07 07:20:00','2023-10-08 09:30:00')
,(5,9,'2023-11-14 11:50:00',NULL)
,(4,5,'2023-12-01 15:35:00','2023-12-02 17:00:00')
,(10,7,'2024-01-19 13:10:00',NULL)
,(4,6,'2024-02-26 09:25:00',NULL)
,(1,2,'2024-03-30 19:05:00','2024-03-31 20:50:00')
,(3,7,'2024-04-12 06:45:00',NULL)
,(4,7,'2024-05-23 11:15:00','2024-05-24 13:30:00')
,(6,2,'2024-06-14 17:30:00',NULL)
,(2,5,'2024-07-09 14:55:00',NULL)
,(4,1,'2024-08-27 16:40:00','2024-08-28 18:00:00')
,(9,4,'2024-09-10 10:20:00',NULL)
,(9,6,'2024-10-21 07:50:00',NULL)
,(8,4,'2024-11-03 12:00:00','2024-11-04 14:10:00')
,(10,8,'2024-12-18 18:10:00',NULL)
,(3,4,'2024-03-06 08:00:00','2024-03-07 10:30:00')
;

-- 3.2 REGISTROS TÉCNICOS DE ORDEM DE SERVIÇOS 
INSERT INTO Order_technician
(Id_Order,Id_technician)
VALUES
(3,8),(7,3),(16,3),(18,6),(25,8),(27,7),(28,10),(29,9),(31,8)
,(33,9),(35,7),(36,4),(41,9),(48,8),(3,1),(7,9),(16,2)
,(18,7),(25,5),(27,2),(28,6),(29,1),(31,10),(35,2),(36,8)
,(41,3),(3,3),(7,2),(16,4),(18,9),(25,6),(27,4),(28,1)
,(29,6),(31,1),(33,1),(35,3),(41,8),(48,9)
;

-- 3.3 REGISTROS DE SERVIÇOS DE ORDEM DE SERVIÇOS
INSERT INTO Order_services
(Id_order,Id_Service_type)
VALUES 
(2,8),(4,9),(5,2),(6,6),(7,8),(8,3),(9,7),(10,2)
,(12,8),(13,3),(14,3),(15,2),(16,10),(17,6),(18,5)
,(19,4),(20,1),(21,2),(22,7),(24,3),(25,9),(26,8),(27,8)
,(28,1),(30,7),(31,8),(32,2),(33,1),(34,6),(36,10),(38,3)
,(39,7),(40,4),(41,3),(42,6),(43,2),(44,2),(45,4),(46,10)
,(47,1),(48,5),(49,9),(50,7),(1,10),(2,10),(3,4),(7,2)
,(10,7),(11,9),(12,2),(13,6),(14,2),(18,10),(19,6),(20,9)
,(21,7),(23,2),(24,2),(25,4),(26,7),(27,4),(28,10),(29,8)
,(30,6),(32,6),(33,2),(34,8),(36,3),(37,9),(38,9),(39,9)
,(40,3),(41,1),(42,8),(43,5),(44,6),(45,9),(46,6),(47,7)
,(48,6),(50,3),(1,1),(2,9),(5,8),(6,4),(8,1),(9,9)
,(12,7),(13,2),(14,7),(15,3),(16,7),(19,5),(23,9),(24,5)
,(26,10),(27,1),(28,2),(29,9),(31,10),(32,10),(34,5),(35,10)
,(36,8),(37,3),(39,6),(40,5),(41,7),(42,5),(43,8),(44,7)
,(45,8),(47,3),(50,10)
;

-- 3.4 REGISTROS DE PEÇAS DE ORDEM DE SERVIÇOS
INSERT INTO ORDER_PARTS
(Id_Order, Id_part)
VALUES 
(8,18),(9,2),(13,16),(17,3),(32,1),(34,4),(43,18),(45,19)
,(46,5),(47,11),(50,12),(3,15),(16,11),(18,1),(25,16),(28,6)
,(31,9),(33,3),(36,14),(41,13),(6,9),(12,19),(19,6),(24,2)
,(30,9),(38,9),(44,2),(49,5),(8,13),(9,19),(17,1),(32,14)
,(34,2),(42,6),(45,7),(46,11),(47,3),(3,14),(7,11),(16,3)
,(28,13),(29,15),(31,2),(35,10),(36,5),(6,11),(12,20),(15,7)
,(21,3),(24,7),(38,6),(44,19),(9,6),(13,3),(17,12),(32,5)
,(42,12),(43,8),(45,18),(46,2),(50,7),(7,13),(16,15),(18,8)
,(25,12),(29,11),(31,18),(33,8),(35,12),(41,1),(48,1),(6,14)
,(11,6),(12,3),(15,17),(19,16),(23,19),(24,14),(30,15),(44,16)
,(49,17),(8,9),(9,20),(17,20),(32,8),(34,10),(42,2),(43,4)
,(45,11),(46,18),(50,3),(3,10),(16,5),(18,20),(25,10),(29,14)
,(35,5),(36,2),(41,4),(48,13),(15,3),(19,20),(21,9),(38,20)
,(44,4),(8,17),(17,16),(34,3),(42,5),(46,6),(47,19),(50,13)
,(3,1),(7,12),(16,6),(18,12),(25,13),(27,11),(28,12),(29,5)
,(31,20),(33,19),(41,2),(48,14),(6,8),(11,2),(12,2),(15,9)
,(19,15),(21,13),(24,10),(30,11),(49,19),(8,12),(9,15),(17,15)
,(32,17),(42,18),(43,14),(45,10),(46,10),(47,2),(50,2),(3,17)
,(7,17),(16,1),(25,6),(27,4),(29,12),(31,6),(33,20),(35,15)
,(36,11),(48,4),(11,4),(12,1),(24,19),(30,2),(49,4)
;

-- 3.5 REGISTROS DE VEÍCULOS DE CLIENTES
INSERT INTO Clients_Vehicles
(Id_Client, Id_vehicle)
Values 
(9,1),(1,2),(2,3),(9,4),(5,5),(7,6),(2,7),(3,8)
,(3,9),(3,10),(1,11),(3,12),(6,13),(7,14),(1,15),(8,16)
,(9,17),(8,18),(1,19),(2,20),(7,21),(8,22),(9,23),(6,24)
,(4,25),(1,26),(4,27),(2,28),(2,29),(1,30),(8,31),(1,32)
,(8,33),(4,34),(1,35),(5,36),(3,37),(1,38),(2,39),(6,40)
;

-- 3.6 TABELA DE VEICULOS DAS ORDEM DE SERVIÇOS
INSERT INTO Order_vehicle
(Id_Order,Id_Vehicle,Id_Client)
Values
(1,16,8),(2,16,8),(3,5,5),(4,8,3)
,(5,2,1),(6,8,3),(7,5,5),(8,16,8)
,(9,1,9),(10,3,2),(11,16,8),(12,25,4)
,(13,13,6),(14,13,6),(15,2,1),(16,2,1)
,(17,16,8),(18,6,7),(19,13,6),(20,3,2)
,(21,3,2),(22,25,4),(23,3,2),(24,25,4)
,(25,8,3),(26,3,2),(27,16,8),(28,16,8)
,(29,16,8),(30,2,1),(31,2,1),(32,2,1)
,(33,5,5),(34,13,6),(35,13,6),(36,8,3)
,(37,2,1),(38,6,7),(39,6,7),(40,25,4)
,(41,2,1),(42,13,6),(43,8,3),(44,2,1)
,(45,5,5),(46,25,4),(47,16,8),(48,8,3)
,(49,1,9),(50,1,9)
;

-- ==================================--
-- >> 4. INSEÇÃO DE VALORES TOTAIS
-- ================================= --


-- 4.1 INSERINDO VALORES TOTAIS DE SERVIÇOS
update orders o
set Value_services =(
select 
coalesce(sum(t.service_value), 0) as total_servico
 from ORDER_SERVICES S 
INNER JOIN SERVICE_TYPE T 
	ON T.ID_SERVICE_TYPE = S.ID_SERVICE_TYPE
where s.id_order = o.id_order
);

-- 4.2 INSERINDO VALORES TOTAIS DE PEÇAS
update orders o
set Value_parts =(
select 
coalesce(sum(p.Unity_value),0) as total_pecas
 from ORDER_PARTS OP
INNER JOIN PARTS P
	ON P.Id_part = OP.ID_part
where op.id_order = o.id_order
);

-- 4.3 INSERINDO VALOR TOTAL SERVIÇO + PEÇA
WITH TOTAL as
(
SELECT 
O.id_order
,coalesce(o.Value_parts + o.Value_services,0) as total
from orders o
group by o.id_order
)
update orders o
inner join total t on t.id_order = o.id_order
set Value_total = t.total
;


