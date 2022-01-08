-- -----------------------------------------------------
-- Inserts for table `hospital`.`address`
-- -----------------------------------------------------
INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (1, 'Mickiewicza', 68, 87-104, 'Toruń');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (2, 'Spacerowa', 91, 91-838, 'Łódż');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (3, 'Anhellego', 116, 71-037, 'Szczecin');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (4, 'Bagatela', 12, 20-460, 'Lublin');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (5, 'Barborki', 9, 44-270, 'Rybnik');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (6, 'Przewodowa', 143, 04-895, 'Warszawa');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (7, 'Orzeszkowej Elizy', 118, 49-300, 'Brzeg');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (8, 'Leczycka', 77, 10-680, 'Olsztyn');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (9, 'Pogodna', 142, 42-606, 'Tarnowskie Góry');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (10, 'Starogardzka', 75, 80-058, 'Gdańsk');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (11, 'Kielecka', 20, 15-387, 'Białystok');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (12, 'Drzewicka', 130, 26-601, 'Radom');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (13, '3 Maja', 15, 05-071, 'Sulejowek');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (14, 'Zamenhofa Ludwika', 89, 90-547, 'Łódż');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (15, 'Unislawa', 96, 61-063, 'Poznań');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (16, 'Garwolińska', 2, 53-117, 'Wrocław');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (17, 'Nefrytowa', 73, 52-215, 'Wrocław');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (18, 'Mazurska', 92, 20-728, 'Lublin');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (19, 'Perłowa', 56, 05-077, 'Warszawa');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (20, 'Rezyserska', 57, 01-386, 'Warszawa');

-- -----------------------------------------------------
-- Inserts for table `hospital`.`user`
-- -----------------------------------------------------
INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id) 
VALUES (1, 'WA_PAT', 'WA_14', 'Wesley', 'Atkins', 146110491, 75111129001, 47, 'M', 1);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id) 
VALUES (2, 'LF_PAT', 'LF_89', 'Len', 'Foster', 892585000, 62030819139, 60, 'K', 2);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id) 
VALUES (3, 'DR_LEK', 'LEK_89', 'Dai', 'Riddle', 899817812, 74430427774, 48, 'K', 3);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id) 
VALUES (4, 'LM_LEK', 'LEK_15', 'Lucy', 'Moran', 154108533, 80370920326, 42, 'K', 4);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id) 
VALUES (5, 'JM_PAT', 'JM_26', 'Jolie', 'Moran', 265414758, 86360413702, 36, 'K', 5);