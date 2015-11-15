--pessoas
INSERT INTO locadoraveiculos.pessoa(tipo_pessoa, codigo, cpf, data_nascimento, nome, sexo) VALUES ('MOTORISTA', 1 ,12312312312, '03/11/1986', 'Asdrubal da Silva Sauro', 'MASCULINO');
INSERT INTO locadoraveiculos.pessoa(tipo_pessoa, codigo, cpf, data_nascimento, nome, sexo) VALUES ('MOTORISTA', 2 ,11111111111, '04/11/1986', 'Juliana Oliveira', 'FEMININO');
INSERT INTO locadoraveiculos.pessoa(tipo_pessoa, codigo, cpf, data_nascimento, nome, sexo) VALUES ('MOTORISTA', 3 ,22222222222, '05/11/1986', 'James Bond', 'MASCULINO');
INSERT INTO locadoraveiculos.pessoa(tipo_pessoa, codigo, cpf, data_nascimento, nome, sexo) VALUES ('MOTORISTA', 4 ,33333333333, '06/11/1986', 'Tina Turner', 'FEMININO');
INSERT INTO locadoraveiculos.pessoa(tipo_pessoa, codigo, cpf, data_nascimento, nome, sexo) VALUES ('FUNCIONARIO', 5 ,44444444444, '06/11/1987', 'Paola de Oliveira', 'FEMININO');
SELECT setval('locadoraveiculos.pessoa_codigo_seq', 6, false);

--motorista
INSERT INTO locadoraveiculos.motorista(numerocnh, codigo) VALUES (123123123121, 1);
INSERT INTO locadoraveiculos.motorista(numerocnh, codigo) VALUES (123123123122, 2);
INSERT INTO locadoraveiculos.motorista(numerocnh, codigo) VALUES (123123123123, 3);
INSERT INTO locadoraveiculos.motorista(numerocnh, codigo) VALUES (123123123124, 4);

--funcionario
INSERT INTO locadoraveiculos.funcionario(matricula, codigo) VALUES (11111, 5);

--fabricante
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (1, 'Honda');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (2, 'GM/Chevrolet');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (3, 'Volksvagem');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (4, 'Ferrari');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (5, 'BMW');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (6, 'Audi');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (7, 'Chrysler');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (8, 'Dodge');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (9, 'Fiat');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (10, 'Ford');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (11, 'Hyundai');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (12, 'Jeep');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (13, 'Kia');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (14, 'Jaguar');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (15, 'Jac Motors');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (16, 'Land Rover');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (17, 'Mercedes-Benz');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (18, 'Mitsubishi');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (19, 'Nissan');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (20, 'Peugeot');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (21, 'Porsche');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (22, 'Renault');
INSERT INTO locadoraveiculos.fabricante(codigo, nome) VALUES (23, 'Suzuki');
SELECT setval('locadoraveiculos.fabricante_codigo_seq', 24, false);


--modelocarro
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (1, 'HATCH_COMPACTO', 'Honda Civic', 1);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (2, 'HATCH_MEDIO', 'i3', 5);   
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (3, 'HATCH_MEDIO', 'A1', 6);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (4, 'HATCH_MEDIO', 'A3', 6);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (5, 'HATCH_MEDIO', '500', 9);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (6, 'HATCH_MEDIO', 'Bravo', 9);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (7, 'UTILITARIO_COMERCIAL', 'Doblò Cargo', 9);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (8, 'HATCH_MEDIO', 'Fiesta Rocam Hatch', 10);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (9, 'HATCH_COMPACTO', 'Ka', 10);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (10, 'HATCH_MEDIO', 'Focus Hatch', 10);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (11, 'HATCH_MEDIO', 'Agile', 2);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (12, 'SEDAN_COMPACTO', 'Astra Sedan', 2);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (13, 'HATCH_MEDIO', 'Astra Hatch', 2);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (14, 'HATCH_MEDIO', 'Camaro', 2);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (16, 'HATCH_MEDIO', 'Cruze', 2);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (17, 'HATCH_MEDIO', 'Onix', 2);
INSERT INTO locadoraveiculos.modelocarro(codigo, categoria, descricao, codigo_fabricante) VALUES (18, 'HATCH_MEDIO', 'Prisma', 2);
SELECT setval('locadoraveiculos.modelocarro_codigo_seq', 19, false);

--acessorio
INSERT INTO locadoraveiculos.acessorio(codigo, descricao) VALUES (1, 'ABS');
INSERT INTO locadoraveiculos.acessorio(codigo, descricao) VALUES (2, 'Teto Solar');
INSERT INTO locadoraveiculos.acessorio(codigo, descricao) VALUES (3, 'Alarme');
INSERT INTO locadoraveiculos.acessorio(codigo, descricao) VALUES (4, 'Direção');
INSERT INTO locadoraveiculos.acessorio(codigo, descricao) VALUES (5, 'Vidro');
SELECT setval('locadoraveiculos.acessorio_codigo_seq', 6, false);


--carro
INSERT INTO locadoraveiculos.carro(codigo, chassi, cor, datacriacao, datamodificacao, foto, placa,valordiaria, codigo_modelo)  VALUES (1, '111', 'Prata', now(), null, null, 'AAA-1112', 200.2, 1);
INSERT INTO locadoraveiculos.carro(codigo, chassi, cor, datacriacao, datamodificacao, foto, placa,valordiaria, codigo_modelo)  VALUES (2, '222', 'Branco', now(), null, null, 'BBB-1112', 100.2, 2);
INSERT INTO locadoraveiculos.carro(codigo, chassi, cor, datacriacao, datamodificacao, foto, placa,valordiaria, codigo_modelo)  VALUES (3, '333', 'Preto', now(), null, null, 'CCC-1111', 240.2, 3);
INSERT INTO locadoraveiculos.carro(codigo, chassi, cor, datacriacao, datamodificacao, foto, placa,valordiaria, codigo_modelo)  VALUES (4, '444', 'Prata', now(), null, null, 'BBB-1111', 130.2, 4);
SELECT setval('locadoraveiculos.carro_codigo_seq', 5, false);

--carro_acessorio
INSERT INTO locadoraveiculos.carro_acessorio(codigo_carro, codigo_acessorio) VALUES (1, 1);
INSERT INTO locadoraveiculos.carro_acessorio(codigo_carro, codigo_acessorio) VALUES (1, 2);
INSERT INTO locadoraveiculos.carro_acessorio(codigo_carro, codigo_acessorio) VALUES (2, 1);
INSERT INTO locadoraveiculos.carro_acessorio(codigo_carro, codigo_acessorio) VALUES (2, 2);
INSERT INTO locadoraveiculos.carro_acessorio(codigo_carro, codigo_acessorio) VALUES (2, 3);
INSERT INTO locadoraveiculos.carro_acessorio(codigo_carro, codigo_acessorio) VALUES (2, 4);
INSERT INTO locadoraveiculos.carro_acessorio(codigo_carro, codigo_acessorio) VALUES (2, 5);
INSERT INTO locadoraveiculos.carro_acessorio(codigo_carro, codigo_acessorio) VALUES (3, 1);


