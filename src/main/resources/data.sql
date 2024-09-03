-- Inserindo dados na tabela Owner
INSERT INTO owners (name, email) VALUES ('Alberto Vilar', 'albertovilar1@gmail.com');

-- Inserindo dados na tabela Address
INSERT INTO addresses (street, city, state, postal_code, country, owner_id)
VALUES ('Sítio Cunha', 'Juazeirinho', 'PB', '58660000', 'Brasil', 1);

-- Inserindo dados na tabela GoatFarm
INSERT INTO goat_farms (name, registration_number, owner_id, address_id)
VALUES ('Capril Vilar', 'GF123', 1, 1);



-- Inserir números de telefone únicos para cada proprietário
INSERT INTO phones (ddd, number, owner_id) VALUES ('021', '123-456-7890', 1);
INSERT INTO phones (ddd, number, owner_id) VALUES ('021', '098-765-4321', 1);  -- Se necessário para o mesmo owner_id

-- Inserir números de telefone para o segundo proprietário, se existir
-- Exemplo se houver um owner_id = 2
-- INSERT INTO phones (ddd, number, owner_id) VALUES ('021', '555-555-5555', 2);

-- Inserindo dados na tabela Goat

-- Inserir dados ajustados na tabela goats
INSERT INTO goats (id, name, registration_number, birth_date, goat_farm_id, breed, breeder, category, coat_color, gender, owner_name, status, tod, toe, event_type)
VALUES
    (1, 'XEQUE V', '1643218012', '2018-06-27', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Macho', 'João Carlos', 'Healthy', '16432', '18012', 'BIRTH'),
    (2, 'C.V.C SIGNOS PETROLEO', '1635717065', '2017-05-15', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Macho', 'Capril Vilar', 'Healthy', '16357', '17065', 'BIRTH'),
    (3, 'NAIDE DO CRS', '2114517012', '2017-07-10', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Fêmea', 'Capril Vilar', 'Healthy', '21145', '17012', 'BIRTH'),
    (4, 'PETRÓLEO CAPRIVAMA', '1422915618', '2016-02-20', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Macho', 'Capril Vilar', 'Healthy', '14229', '15618', 'BIRTH'),
    (5, 'BÉLGICA DA CAPRIVAMA', '1422913470', '2015-11-12', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Fêmea', 'Capril Vilar', 'Healthy', '14229', '13470', 'BIRTH'),
    (6, 'JOSA CAPRIMEL', '1650113018', '2016-03-22', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Macho', 'Capril Vilar', 'Healthy', '16501', '13018', 'BIRTH'),
    (7, 'PANTALONA DO CRS', '2114513061', '2017-04-18', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Fêmea', 'Capril Vilar', 'Healthy', '21145', '13061', 'BIRTH'),
    (8, 'BALOTELI DA CAPRIVAMA', '1422913451', '2015-10-30', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Macho', 'Capril Vilar', 'Healthy', '14229', '13451', 'BIRTH'),
    (9, 'COROA DA CAPRIVAMA', '1422913488', '2015-11-05', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Fêmea', 'Capril Vilar', 'Healthy', '14229', '13488', 'BIRTH'),
    (10, 'SHEREK SANRI', '1421308033', '2015-08-12', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Macho', 'Capril Vilar', 'Healthy', '14213', '08033', 'BIRTH'),
    (11, 'JUCELISE DO INLI', '1418510219', '2015-09-22', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Fêmea', 'Capril Vilar', 'Healthy', '14185', '10219', 'BIRTH'),
    (12, 'NATAL DO JACOMÉ', '1403110395', '2015-01-15', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Macho', 'Capril Vilar', 'Healthy', '14031', '10395', 'BIRTH'),
    (13, '12018 CAPRIMEL', '1650112018', '2016-02-18', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Fêmea', 'Capril Vilar', 'Healthy', '16501', '12018', 'BIRTH'),
    (14, 'HERE DO ANGICANO', '2104406006', '2017-01-10', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Macho', 'Capril Vilar', 'Healthy', '21044', '06006', 'BIRTH'),
    (15, 'TOPÁZIO DO CRS', '2114510040', '2016-08-15', 1, 'Alpina', 'Alberto Vilar', 'Dairy', 'Chamoise', 'Macho', 'Capril Vilar', 'Healthy', '21145', '10040', 'BIRTH');


-- Inserir dados ajustados na tabela relationships
INSERT INTO relationships (goat_id, id, name, registration_number, type)
VALUES
    -- Pais
    (1, 1, 'C.V.C SIGNOS PETROLEO', '1635717065', 'Pai'),
    (1, 2, 'NAIDE DO CRS', '2114517012', 'Mãe'),

    -- Avós
    (2, 3, 'PETRÓLEO CAPRIVAMA', '1422915618', 'Avô Paterno'),
    (2, 4, 'BÉLGICA DA CAPRIVAMA', '1422913470', 'Avó Paterna'),
    (3, 5, 'JOSA CAPRIMEL', '1650113018', 'Avô Materno'),
    (3, 6, 'PANTALONA DO CRS', '2114513061', 'Avó Materna'),

    -- Bisavós
    (4, 7, 'BALOTELI DA CAPRIVAMA', '1422913451', 'Bisavô Paterno'),
    (4, 8, 'COROA DA CAPRIVAMA', '1422913488', 'Bisavó Paterna'),
    (5, 9, 'SHEREK SANRI', '1421308033', 'Bisavô Paterno'),
    (5, 10, 'JUCELISE DO INLI', '1418510219', 'Bisavó Paterna'),
    (6, 11, 'NATAL DO JACOMÉ', '1403110395', 'Bisavô Materno'),
    (6, 12, '12018 CAPRIMEL', '1650112018', 'Bisavó Materna'),
    (6, 13, 'HERE DO ANGICANO', '2104406006', 'Bisavó Materna'),
    (6, 14, 'TOPÁZIO DO CRS', '2114510040', 'Bisavó Materna');



INSERT INTO events (date, description, event_type, goat_id)
VALUES
('2023-01-10', 'Nascimento de HERE DO ANGICANO', 'BIRTH', 14),
('2022-05-20', 'Nascimento de C.V.C SIGNOS PETROLEO', 'BIRTH', 2),
('2022-03-15', 'Nascimento de NAIDE DO CRS', 'BIRTH', 3),
('2021-02-25', 'Nascimento de PETRÓLEO CAPRIVAMA', 'BIRTH', 4),
('2021-07-30', 'Nascimento de BÉLGICA DA CAPRIVAMA', 'BIRTH', 5),
('2020-09-18', 'Nascimento de JOSA CAPRIMEL', 'BIRTH', 6),
('2020-11-12', 'Nascimento de PANTALONA DO CRS', 'BIRTH', 7),
('2019-12-25', 'Nascimento de BALOTELI DA CAPRIVAMA', 'BIRTH', 8),
('2019-03-01', 'Nascimento de COROA DA CAPRIVAMA', 'BIRTH', 9),
('2018-08-15', 'Nascimento de SHEREK SANRI', 'BIRTH', 10),
('2018-11-22', 'Nascimento de JUCELISE DO INLI', 'BIRTH', 11),
('2017-05-10', 'Nascimento de NATAL DO JACOMÉ', 'BIRTH', 12),
('2017-06-20', 'Nascimento de 12018 CAPRIMEL', 'BIRTH', 13);
