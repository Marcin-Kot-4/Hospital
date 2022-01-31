-- INSERT INTO patient (id, user_id)
-- VALUES (13, 24);

-- INSERT INTO prescription (id, access_code, issued, exhibitor, dosage, packs_number, medicine_id, patient_id, doctor_id, medical_history_id, hospital_id)
-- VALUES (5, 2367, '2022-01-05', 'Samodzielny Publiczny Centralny Szpital Kliniczny', '1 tabletka co 4 godziny, do póki jest odczuwany ból.', 1, 2, 13, 7, 1, 1);

-- INSERT INTO prescription (id, access_code, issued, exhibitor, dosage, packs_number, medicine_id, patient_id, doctor_id, medical_history_id, hospital_id)
-- VALUES (6, 0988, '2021-12-05', 'Samodzielny Publiczny Centralny Szpital Kliniczny', '1 tabletka co min. 6 godzin, jeśli ból nie ustępuje.', 2, 6, 13, 9, 6, 1);

-- INSERT INTO prescription (id, access_code, issued, exhibitor, dosage, packs_number, medicine_id, patient_id, doctor_id, medical_history_id, hospital_id)
-- VALUES (7, 1143, '2021-09-18', 'Wojewódzki Szpital Specjalistyczny im. J. Korczaka', '1 tabletka co min. 4-7 godzin, jeśli ból nie ustępuje.', 4, 9, 13, 10, 9, 2);

-- INSERT INTO prescription (id, access_code, issued, exhibitor, dosage, packs_number, medicine_id, patient_id, doctor_id, hospital_id)
-- VALUES (8, 8732, '2022-01-09', 'Szpital Praski p.w. Przemieniania Pańskiego Sp. z o.o.', 'Dwa razy dziennie. Raz rano i raz wieczorem.', 3, 7, 13, 4, 3);

-- INSERT INTO referral (id, place, access_code, issued, exhibitor, diagnosis, other_informations, patient_id, doctor_id, medical_history_id)
-- VALUES (8, 'Poradnia ortopedyczna', 4332, '2021-11-25', 'Samodzielny Publiczny Centralny Szpital Kliniczny', 'Złamanie kociuka', 'Proszę o wykonanie rehabilitacji kciuka, w trybie natychmiastowym', 13, 9, 12);

-- INSERT INTO referral (id, place, access_code, issued, exhibitor, diagnosis, other_informations, patient_id, doctor_id, medical_history_id)
-- VALUES (9, 'Poradnia ortopedyczna', 1145, '2021-10-09', 'Wojewódzki Szpital Specjalistyczny im. J. Korczaka', 'Złamanie kości ramieniowej', 'Sprawdzenie stanu kości. Zalecene prześwietlenie x-ray', 13, 10, 10);

-- INSERT INTO referral (id, place, access_code, issued, exhibitor, diagnosis, other_informations, patient_id, doctor_id, medical_history_id)
-- VALUES (10, 'Poradnia chirurgiczna', 8966, '2021-11-25', 'Wojewódzki Szpital Specjalistyczny im. J. Korczaka', 'Zapalenie wyrostka', 'Brak.', 13, 6, 14);

-- INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
-- VALUES (11, 209487, 'ortopeda', 25, 10);

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- -----------------------------------------------------
-- Inserts for table `hospital`.`address`
-- -----------------------------------------------------
INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (1, 'Mickiewicza', 68, '87-104', 'Toruń');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (2, 'Spacerowa', 91, '91-838', 'Łódź');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (3, 'Anhellego', 116, '71-037', 'Szczecin');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (4, 'Bagatela', 12, '20-460', 'Lublin');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (5, 'Barborki', 9, '44-270', 'Rybnik');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (6, 'Przewodowa', 143, '04-895', 'Warszawa');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (7, 'Orzeszkowej Elizy', 118, '49-300', 'Brzeg');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (8, 'Leczycka', 77, '10-680', 'Olsztyn');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (9, 'Pogodna', 142, '42-606', 'Tarnowskie Góry');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (10, 'Starogardzka', 75, '80-058', 'Gdańsk');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (11, 'Kielecka', 20, '15-387', 'Białystok');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (12, 'Drzewicka', 130, '26-601', 'Radom');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (13, '3 Maja', 15, '05-071', 'Sulejowek');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (14, 'Zamenhofa Ludwika', 89, '90-547', 'Łódź');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (15, 'Unislawa', 96, '61-063', 'Poznań');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (16, 'Garwolińska', 2, '53-117', 'Wrocław');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (17, 'Nefrytowa', 73, '52-215', 'Wrocław');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (18, 'Mazurska', 92, '20-728', 'Lublin');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (19, 'Perłowa', 56, '05-077', 'Warszawa');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (20, 'Rezyserska', 57, '01-386', 'Warszawa');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (21, 'Jagiellońska', 103, '44-206', 'Rybnik');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (22, 'Hutnicza', 111, '41-506', 'Chorzów');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (23, 'Składowa', 32, '30-016', 'Kraków');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (24, 'Korepty Jana', 109, '30-864', 'Kraków');

INSERT INTO address (id, street, house_number, postcode, city) 
VALUES (25, 'Jagielly', 144, '38-300', 'Gorlice');

-- -----------------------------------------------------
-- Inserts for table `hospital`.`role`
-- -----------------------------------------------------
INSERT INTO role (id, name)
VALUES (1, 'Administrator');

INSERT INTO role (id, name)
VALUES (2, 'Personel');

INSERT INTO role (id, name)
VALUES (3, 'Pacjent');

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

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (6, 'AS_PAT', 'AS_27', 'Aidan', 'Sparks', 277861610, 62460411971, 60, 'M', 6);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (7, 'BG_PAT', 'BG_53', 'Bianca', 'Guy', 533114988, 96881105640, 26, 'K', 7);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (8, 'KW_PAT', 'KW_63', 'Kristen', 'Walton', 631103942, 76390219516, 46, 'K', 8);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (9, 'PR_PAT', 'PR_86', 'Perry', 'Roach', 862231401, 71230427487, 51, 'M', 9);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (10, 'KG_PAT', 'KG_20', 'Karyn', 'Gay', 206290093, 81290313859, 41, 'K', 10);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (11, 'IT_LEK', 'LEK_72', 'Ingrid', 'Tanner', 729936965, 86230717709, 36, 'K', 11);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (12, 'RM_LEK', 'LEK_30', 'Ronan', 'Myers', 309298963, 80151228845, 42, 'M', 12);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (13, 'EH_LEK', 'LEK_26', 'Emmanuel', 'Henderson', 262833491, 66730219577, 56, 'M', 13);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (14, 'IW_LEK', 'LEK_38', 'Ivor', 'William', 389686263, 90720425298, 32, 'M', 14);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (15, 'MC_LEK', 'LEK_45', 'May', 'Compton', 457989100, 56170907949, 66, 'K', 15);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (16, 'AJ_LEK', 'LEK_40', 'Amaya', 'Jefferson', 403253236, 66550220465, 56, 'K', 16);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (17, 'EN_PAT', 'EN_48', 'Emi', 'Nichols', 488706492, 99700316000, 23, 'K', 17);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (18, 'JJ_PAT', 'JJ_02', 'Joel', 'Jenkins', 028906265, 77820310224, 45, 'M', 18);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (19, 'EC_LEK', 'LEK_10', 'Emily', 'Cotton', 109517689, 84700323703, 38, 'K', 19);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (20, 'FM_LEK', 'LEK_43', 'Fryderyk', 'Marciniak', 433498313, 83082411551, 39, 'M', 20);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (21, 'RG_PAT', 'RG_34', 'Rafał', 'Gajewska', 340800811, 02280893547, 20, 'M', 21);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (22, 'BA_PAT', 'BA_15', 'Bogda', 'Andrzejewska', 158817256, 64052279818, 58, 'K', 22);

INSERT INTO user (id, login, password, name, surname, phone_number, pesel, age, sex, address_id)
VALUES (23, 'root', 'pass', 'Dawid', 'Walczak', 258814456, 92052279818, 30, 'M', 20);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`user_roles`
-- -----------------------------------------------------
INSERT INTO users_roles (user_id, role_id)
VALUES (1, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (2, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (3, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (4, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (5, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (6, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (7, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (8, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (9, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (10, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (11, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (12, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (13, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (14, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (15, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (16, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (17, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (18, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (19, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (20, 2);

INSERT INTO users_roles (user_id, role_id)
VALUES (21, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (22, 3);

INSERT INTO users_roles (user_id, role_id)
VALUES (23, 1);


-- -----------------------------------------------------
-- Inserts for table `hospital`.`medicine`
-- -----------------------------------------------------
INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (1, 'neo-angin', 'Tabletki na: ból gardła, zaczerwienienie lub obrzęk jamy ustnej.', '1 tabletka co 2-3 godziny.');

INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (2, 'Gripex', 'Tabletki na: gorączkę, ból głowy, ból mięśni oraz ból gardła.', '1 lub 2 tabletki co 4 do 6 godziny. Maksymalna dawka dobowa: 8 tabletek.');

INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (3, 'Lirra Gem', 'Tabletki na alergię.', '1 tabletka na dobę.');

INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (4, 'Metoclopramidum Polpharma', 'Tabletki na nudności.', '1 tabletka co 8 godziny.');

INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (5, 'Primaflor', 'Synbiotyk', '1 tabletka dziennie.');

INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (6, 'Aulin', 'Tabletki przeciwbólowe.', '1 tabletka co 6 godzin.');

INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (7, 'Alantan Plus', 'Krem na różnego rodzaje rany.', 'Raz lub dwa razy dziennie.');

INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (8, 'Vines', 'Tabletki antykoncepcyjne.', 'Raz dziennie.');

INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (9, 'Ibuprom', 'Tabletki przeciwbólowe.', '1 tabletka co 4-6 godzin.');

INSERT INTO medicine (id, medicine_name, description, dosage)
VALUES (10, 'Argentiin-T', 'Spray do gardła.Wspomaga leczenie stanów zapalnych gardła.', '3-4 dawki w strone gardła. Powtarzać wedle potrzeby.');

-- -----------------------------------------------------
-- Inserts for table `hospital`.`hospital`
-- -----------------------------------------------------
INSERT INTO hospital (id, hospital_name, address_id)
VALUES (1, 'Samodzielny Publiczny Centralny Szpital Kliniczny', 23);

INSERT INTO hospital (id, hospital_name, address_id)
VALUES (2, 'Wojewódzki Szpital Specjalistyczny im. J. Korczaka', 24);

INSERT INTO hospital (id, hospital_name, address_id)
VALUES (3, 'Szpital Praski p.w. Przemieniania Pańskiego Sp. z o.o.', 25);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`ward`
-- -----------------------------------------------------
INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (1, 'Oddział Chorób Wewnętrznych i Diabetologii', 'A', 1);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (2, 'Oddział Chorób Wewnętrznych i Diabetologii', 'E', 2);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (3, 'Oddział Anestezjologii i Intensywnej Terapii', 'B', 2);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (4, 'Oddział Anestezjologii i Intensywnej Terapii', 'A', 3);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (5, 'Oddział Chirurgiczny Dla Dzieci', 'C', 1);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (6, 'Oddział Chirurgii Ogólnej z Pododdziałem Chirurgii Onkologicznej', 'D', 2);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (7, 'Oddział Chorób Dzieci z Pododdziałem Pulmonologii Dziecięcej', 'A', 1);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (8, 'Oddział Chorób Dzieci z Pododdziałem Pulmonologii Dziecięcej', 'E', 2);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (9, 'Oddział Chirurgii Urazowo-Ortopedycznej', 'B', 1);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (10, 'Oddział Chirurgii Urazowo-Ortopedycznej', 'C', 2);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (11, 'Oddział Chirurgii Urazowo-Ortopedycznej', 'A', 3);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (12, 'Oddział Neonatologiczny z Pododdziałem Patologii Noworodka', 'D', 1);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (13, 'Oddział Chirurgii Naczyniowej', 'C', 2);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (14, 'Oddział Chirurgii Naczyniowej', 'E', 3);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (15, 'Oddział Obserwacyjno-Zakaźny', 'E', 1);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (16, 'Oddział Obserwacyjno-Zakaźny', 'B', 2);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (17, 'Oddział Obserwacyjno-Zakaźny', 'E', 3);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (18, 'Oddział Rehabilitacji Kardiologicznej', 'A', 1);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (19, 'Oddział Dermatologiczny', 'D', 3);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (20, 'Oddział Rehabilitacji z Pododdziałem Rehabilitacji Neurologicznej', 'A', 2);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (21, 'Oddział Urologiczny z Pododdziałem Urologii Onkologicznej', 'B', 3);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (22, 'Oddział Reumatologii', 'F', 1);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (23, 'Oddział Gastroenterologiczny', 'B', 3);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (24, 'Oddział Gastroenterologiczny', 'D', 2);

INSERT INTO ward (id, ward_name, building, hospital_id)
VALUES (25, 'Oddział Ginekologiczno – Położniczy z Pododdziałem Ginekologii Onkologicznej', 'D', 1);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`room`
-- -----------------------------------------------------
INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (1, 1, 2, 'Gabinet wizyt', 1);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (2, 2, 2, 'Gabinet leczniczy', 1);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (3, 5, 3, 'Gabinet wizyt', 2);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (4, 6, 4, 'Gabinet wizyt', 3);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (5, 10, 1, 'Gabinet leczniczy', 4);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (6, 3, 0, 'Sala operacyjna', 5);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (7, 4, 2, 'Gabinet wizyt', 6);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (8, 7, 3, 'Sala operacyjna', 6);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (9, 8, 1, 'Gabinet wizyt', 7);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (10, 9, 1, 'Gabinet wizyt', 8);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (11, 1, 1, 'Gabinet leczniczy', 9);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (12, 2, 1, 'Sala operacyjna', 10);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (13, 5, 3, 'Gabinet wizyt', 10);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (14, 7, 3, 'Gabinet leczniczy', 11);

INSERT INTO room (id, room_number, floor, purpose, ward_id)
VALUES (15, 10, 2, 'Gabinet wizyt', 12);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`doctor`
-- -----------------------------------------------------
INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (1, 234567, 'internista', 3, 1);

INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (2, 776574, 'diabetolog', 4, 2);

INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (3, 113425, 'anestezjolog', 11, 3);

INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (4, 947899, 'chirurg', 12, 11);

INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (5, 901124, 'chirurg', 13, 5);

INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (6, 905543, 'chirurg', 14, 6);

INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (7, 233876, 'pediatra', 15, 7);

INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (8, 098441, 'pediatra', 16, 8);

INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (9, 119663, 'ortopeda', 19, 9);

INSERT INTO doctor (id, pwz_number, specialisation, user_id, ward_id)
VALUES (10, 209487, 'ortopeda', 20, 10);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`patient`
-- -----------------------------------------------------
INSERT INTO patient (id, user_id)
VALUES (1, 1);

INSERT INTO patient (id, user_id)
VALUES (2, 2);

INSERT INTO patient (id, user_id)
VALUES (3, 5);

INSERT INTO patient (id, user_id)
VALUES (4, 6);

INSERT INTO patient (id, user_id)
VALUES (5, 7);

INSERT INTO patient (id, user_id)
VALUES (6, 8);

INSERT INTO patient (id, user_id)
VALUES (7, 9);

INSERT INTO patient (id, user_id)
VALUES (8, 10);

INSERT INTO patient (id, user_id)
VALUES (9, 17);

INSERT INTO patient (id, user_id)
VALUES (10, 18);

INSERT INTO patient (id, user_id)
VALUES (11, 21);

INSERT INTO patient (id, user_id)
VALUES (12, 22);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`schedule`
-- -----------------------------------------------------
INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (1, '2022-02-02', '08:05:00', '08:35:00', 1, 1, 1);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (2, '2022-02-04', '09:30:00', '10:00:00', 1, 1, 1);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (3, '2022-02-07', '08:05:00', '08:35:00', 2, 3, 2);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (4, '2022-02-02', '11:10:00', '11:45:00', 2, 3, 2);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (5, '2022-02-03', '09:30:00', '10:00:00', 3, 4, 3);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (6, '2022-02-07', '11:10:00', '11:45:00', 3, 4, 3);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (7, '2022-02-02', '09:30:00', '10:00:00', 5, 6, 5);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (8, '2022-02-04', '11:10:00', '11:45:00', 5, 6, 5);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (9, '2022-02-02', '08:05:00', '08:35:00', 6, 7, 6);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (10, '2022-02-03', '11:10:00', '11:45:00', 6, 7, 6);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (11, '2022-02-07', '09:30:00', '10:00:00', 7, 9, 7);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (12, '2022-02-03', '11:10:00', '11:45:00', 7, 9, 7);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (13, '2022-02-02', '08:05:00', '08:35:00', 8, 10, 8);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (14, '2022-02-07', '09:30:00', '10:00:00', 8, 10, 8);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (15, '2022-02-04', '11:10:00', '11:45:00', 9, 11, 9);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (16, '2022-02-02', '08:05:00', '08:35:00', 9, 11, 9);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (17, '2022-02-03', '09:30:00', '10:00:00', 10, 13, 10);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (18, '2022-02-07', '11:10:00', '11:45:00', 10, 13, 10);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (19, '2022-02-02', '08:05:00', '08:35:00', 4, 15, 11);

INSERT INTO schedule (id, date, from_hour, to_hour, doctor_id, room_id, ward_id)
VALUES (20, '2022-02-04', '09:30:00', '10:00:00', 4, 15, 11);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`medical_history`
-- -----------------------------------------------------
INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (1, 'Grypa', 'Pacjent ma gorączki, kaszlenie, wymioty i zatkany nos.', '2022-01-01', '2022-01-05', 1, 7);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (2, 'Zapalenie płuc', 'Suchy kaszel, silne bóle głowy i mięśni brzucha, wymioty, gorączka.', '2021-12-11',
        '2021-12-20', 1, 8);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (3, 'Cukrzyca',
        'Pacjent odczuwa wzmożony głód, suchość w ustach. Inne objawy: nagła utrata masy w ciągu miesiąca oraz moczenie nocne',
        '2021-10-09', '2021-10-16', 2, 2);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (4, 'Zapalenie wyrostka', 'Silne bóle brzucha i wymioty.', '2021-12-11', '2021-12-20', 4, 5);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (5, 'Cukrzyca',
        'Pacjent odczuwa drażliwość. Innymi objawami są moczenia noce, częse oddawanie moczy i suchość w gardle.',
        '2021-10-09', '2021-10-16', 4, 2);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (6, 'Złamanie nogi', 'Prawa noga została złamana w kości udowej. Złamanie wymaga operacji.', '2021-12-01',
        '2021-12-05', 5, 9);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (7, 'Zapalenie oskrzeli', 'Choroba utrzymuje się około 2 tygodnie. Pacjent jest bardzo osłabiony.', '2021-11-20',
        '2021-11-25', 5, 7);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (8, 'Cukrzyca',
        'Objawy pacjenta: wzmożony głód i pragnienie, przy czym suchość w ustach. Nagła utrata masy i bardzo duże osłabienie oragnizmu.',
        '2022-01-01', '2022-01-05', 6, 2);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (9, 'Złamanie ręki.', 'Pęknięcie kości promieniowej w lewej ręce. Założono pacjentowi gips na 3 tyg.', '2021-09-18',
        '2021-09-18', 6, 10);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (10, 'Złamanie ręki', 'Złamanie kości ramieniowej w prawej ręce. Założenie gipsu na 3 miesiące.', '2021-10-09', '2021-10-09',
        10, 10);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (11, 'Alergia',
        'Pacjent zjadł posiłek z orzechami na które jest silnie uczulony. Natychmiastowe podanie leków dożylnie spowolniło puchnięcie ciała.',
        '2021-10-09', '2021-10-16', 10, 1);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (12, 'Złamanie palca.', 'Złamanie kciuka w koniuszku u lewej dłoni. Założenie gipsu na palcu i nadgarstku do stabilizacji.',
        '2022-01-15', '2022-01-15', 11, 9);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (13, 'Narośl na lewej ręce.', 'Ciemna narośl, która znajduje wewnątrz lewej dłoni.', '2021-12-11', '2021-12-20',
        11, 5);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (14, 'Zapalenie wyrostka', 'Pacjent narzeka na silne bóle brzucha, w lewej części.', '2021-11-20', '2021-11-25',
        12, 6);

INSERT INTO medical_history (id, disease_name, interview, start_date_of_treatment, end_date_of_treatment, patient_id,
                             doctor_id)
VALUES (15, 'Zapalenie pęcherza',
        'Bardzo silne bóle, podczas oddawania moczu. W ciągu dnia piekące i niedyskomfortowe uczucie.', '2022-01-01',
        '2022-01-05', 12, 1);
        
-- -----------------------------------------------------
-- Inserts for table `hospital`.`referral`
-- -----------------------------------------------------
INSERT INTO referral (id, place, access_code, issued, exhibitor, diagnosis, other_informations, patient_id, doctor_id, medical_history_id)
VALUES (1, 'Poradnia ortopedyczna', 4332, '2021-11-25', 'Samodzielny Publiczny Centralny Szpital Kliniczny', 'Złamanie kociuka', 'Proszę o wykonanie rehabilitacji kciuka, w trybie natychmiastowym', 11, 9, 12);

INSERT INTO referral (id, place, access_code, issued, exhibitor, diagnosis, other_informations, patient_id, doctor_id, medical_history_id)
VALUES (2, 'Poradnia ortopedyczna', 1145, '2021-10-09', 'Wojewódzki Szpital Specjalistyczny im. J. Korczaka', 'Złamanie kości ramieniowej', 'Sprawdzenie stanu kości. Zalecene prześwietlenie x-ray', 10, 10, 10);

INSERT INTO referral (id, place, access_code, issued, exhibitor, diagnosis, other_informations, patient_id, doctor_id, medical_history_id)
VALUES (3, 'Poradnia chirurgiczna', 8966, '2021-11-25', 'Wojewódzki Szpital Specjalistyczny im. J. Korczaka', 'Zapalenie wyrostka', 'Brak.', 12, 6, 14);

INSERT INTO referral (id, place, access_code, issued, exhibitor, diagnosis, other_informations, patient_id, doctor_id, medical_history_id)
VALUES (4, 'Poradnia ortopedyczna', 0912, '2021-12-05', 'Samodzielny Publiczny Centralny Szpital Kliniczny', 'Złamanie nogi', 'Prześwietlenie kości.', 5, 9, 6);

INSERT INTO referral (id, place, access_code, issued, exhibitor, diagnosis, other_informations, patient_id, doctor_id, medical_history_id)
VALUES (5, 'Poradnia urologiczna', 1234, '2022-01-05', 'Samodzielny Publiczny Centralny Szpital Kliniczny', 'Zapalenie pęcherza', 'Badanie PH moczu oraz USG pęcherza.', 12, 1, 15);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`vaccination`
-- -----------------------------------------------------
INSERT INTO vaccination (id, vaccination_name, series, patient_id, doctor_id)
VALUES (1, 'Vaxigrip Tetra', 'vt-234', 1, 7);

INSERT INTO vaccination (id, vaccination_name, series, patient_id, doctor_id)
VALUES (2, 'Moderna', 'M-12', 6, 1);

INSERT INTO vaccination (id, vaccination_name, series, patient_id, doctor_id)
VALUES (3, 'Adacel', 'ac-8543s', 9, 1);

INSERT INTO vaccination (id, vaccination_name, series, patient_id, doctor_id)
VALUES (4, 'Dultavax ', 'dx-874', 7, 1);

INSERT INTO vaccination (id, vaccination_name, series, patient_id, doctor_id)
VALUES (5, 'Vaxigrip Tetra', 'vt-234', 3, 7);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`x_ray`
-- -----------------------------------------------------
INSERT INTO x_ray (id, part_of_bodie, description, patient_id, doctor_id, medical_history_id)
VALUES (1, 'ręka', 'Lewa ręka, kość promieniowa.', 6, 10, 9);

INSERT INTO x_ray (id, part_of_bodie, description, patient_id, doctor_id, medical_history_id)
VALUES (2, 'palec', 'Złamanie kciuka, w lewej dłoni.', 11, 9, 12);

INSERT INTO x_ray (id, part_of_bodie, description, patient_id, doctor_id, medical_history_id)
VALUES (3, 'przedramie', 'Prawa ręka, kość ramieniowa.', 10, 10, 10);

INSERT INTO x_ray (id, part_of_bodie, description, patient_id, doctor_id, medical_history_id)
VALUES (4, 'noga', 'Prawa noga, kość udowa.', 5, 9, 6);

INSERT INTO x_ray (id, part_of_bodie, description, patient_id, doctor_id, medical_history_id)
VALUES (5, 'brzuch', 'Prześwietlenie pęcherza oraz nerek.', 12, 1, 15);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`visit`
-- -----------------------------------------------------
-- appraisal - ocena od 1 do 10 gdzie 10 to najwyższa ocena
INSERT INTO visit (id, date, time, number_in_line, appraisal, completion, patient_id, doctor_id, room_id, ward_id, hospital_id, medical_history_id)
VALUES (1, '2021-10-09', '09:10:00', 5, 6, true, 10, 10, 13, 10, 2, 10);

INSERT INTO visit (id, date, time, number_in_line, appraisal, completion, patient_id, doctor_id, room_id, ward_id, hospital_id, medical_history_id)
VALUES (2, '2022-01-01', '11:25:00', 12, 8, true, 6, 2, 3, 2, 2, 8);

INSERT INTO visit (id, date, time, number_in_line, appraisal, completion, patient_id, doctor_id, room_id, ward_id, hospital_id, medical_history_id)
VALUES (3, '2021-10-09', '8:00:00', 1, 4, true, 10, 1, 1, 1, 1, 11);

INSERT INTO visit (id, date, time, number_in_line, appraisal, completion, patient_id, doctor_id, room_id, ward_id, hospital_id, medical_history_id)
VALUES (4, '2021-11-20', '14:55:00', 25, 7, true, 5, 7, 9, 7, 1, 7);

INSERT INTO visit (id, date, time, number_in_line, appraisal, completion, patient_id, doctor_id, room_id, ward_id, hospital_id, medical_history_id)
VALUES (5, '2022-01-01', '12:15:00', 16, 8, true, 12, 1, 1, 1, 1, 15);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`average_visit_time`
-- -----------------------------------------------------
INSERT INTO average_visit_time (id, average_visit_time, visits_number, patient_id, doctor_id, ward_id, hospital_id)
VALUES (1, 15.35, 3, 1, 1, 1, 1);

INSERT INTO average_visit_time (id, average_visit_time, visits_number, patient_id, doctor_id, ward_id, hospital_id)
VALUES (2, 45.62, 7, 5, 7, 7, 1);

INSERT INTO average_visit_time (id, average_visit_time, visits_number, patient_id, doctor_id, ward_id, hospital_id)
VALUES (3, 30, 4, 6, 2, 2, 2);

INSERT INTO average_visit_time (id, average_visit_time, visits_number, patient_id, doctor_id, ward_id, hospital_id)
VALUES (4, 67.08, 5, 10, 10, 10, 2);

INSERT INTO average_visit_time (id, average_visit_time, visits_number, patient_id, doctor_id, ward_id, hospital_id)
VALUES (5, 21.92, 2, 11, 5, 5, 1);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`operation`
-- -----------------------------------------------------
INSERT INTO operation (id, reason, course, medicine_id, medical_history_id)
VALUES (1, 'Zapalenie wyrostka', 'Uśpienie pacjenta narkozą, następnie usunięcie wyrostka. Udało się bez kompilacji. Pacjenta zszyto.', 6, 4);

INSERT INTO operation (id, reason, course, medicine_id, medical_history_id)
VALUES (2, 'Złamanie nogi', 'Pacjenta znieczulono miejscowo i podano leki przeciwbólowe. Operacja wstawienia śrub przebiegła pomyślnie.', 9, 6);

INSERT INTO operation (id, reason, course, medicine_id, medical_history_id)
VALUES (3, 'Narośl na ręce.', 'Pacjenta znieczulono miejscowo, usnięto narośl, a ranę zabandarzowano. Podano po zabiegu pacjentowi lek przeciwbólowy.', 6, 13);

INSERT INTO operation (id, reason, course, medicine_id, medical_history_id)
VALUES (4, 'Zapalenie wyrostka', 'Uśpienie pacjenta narkozą, następnie usunięcie wyrostka. Udało się bez kompilacji. Pacjenta zszyto.', 6, 14);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`test`
-- -----------------------------------------------------
INSERT INTO test (id, activities, medicine_id, patient_id, doctor_id, medical_history_id)
VALUES (1, 'Zbadanie płuc, zmierzenie temperatury (37.2), podanie leku.', 1, 1, 7, 1);

INSERT INTO test (id, activities, medicine_id, patient_id, doctor_id, medical_history_id)
VALUES (2, 'Zbadanie płuc, zmierzenie temperatury, sprawdzenie gardła. Podanie leku przeciw wymiotom.', 4, 1, 8, 2);

INSERT INTO test (id, activities, patient_id, doctor_id, medical_history_id)
VALUES (3,'Zmierzenie poziomu cukru we krwi.', 2, 2, 3);

INSERT INTO test (id, activities, medicine_id, patient_id, doctor_id, medical_history_id)
VALUES (4, 'Zbadanie płuc, zmierzenie temperatury, sprawdzenie czy kaszel suchy czy mokry. Podanie leku.', 1, 5, 7, 7);

INSERT INTO test (id, activities, medicine_id, patient_id, doctor_id, medical_history_id)
VALUES (5, 'Sprawdzanie jak pacjent reaguje. Podanie leku. Obserwacja jak pacjent na nie reaguje.', 3, 10, 1, 11);

-- -----------------------------------------------------
-- Inserts for table `hospital`.`prescription`
-- -----------------------------------------------------
INSERT INTO prescription (id, access_code, issued, exhibitor, dosage, packs_number, medicine_id, patient_id, doctor_id, medical_history_id, hospital_id)
VALUES (1, 2367, '2022-01-05', 'Samodzielny Publiczny Centralny Szpital Kliniczny', '1 tabletka co 4 godziny, do póki jest odczuwany ból.', 1, 2, 1, 7, 1, 1);

INSERT INTO prescription (id, access_code, issued, exhibitor, dosage, packs_number, medicine_id, patient_id, doctor_id, medical_history_id, hospital_id)
VALUES (2, 0988, '2021-12-05', 'Samodzielny Publiczny Centralny Szpital Kliniczny', '1 tabletka co min. 6 godzin, jeśli ból nie ustępuje.', 2, 6, 5, 9, 6, 1);

INSERT INTO prescription (id, access_code, issued, exhibitor, dosage, packs_number, medicine_id, patient_id, doctor_id, medical_history_id, hospital_id)
VALUES (3, 1143, '2021-09-18', 'Wojewódzki Szpital Specjalistyczny im. J. Korczaka', '1 tabletka co min. 4-7 godzin, jeśli ból nie ustępuje.', 4, 9, 6, 10, 9, 2);

INSERT INTO prescription (id, access_code, issued, exhibitor, dosage, packs_number, medicine_id, patient_id, doctor_id, hospital_id)
VALUES (4, 8732, '2022-01-09', 'Szpital Praski p.w. Przemieniania Pańskiego Sp. z o.o.', 'Dwa razy dziennie. Raz rano i raz wieczorem.', 3, 7, 8, 4, 3);