-- Lozinke su hesovane pomocu BCrypt algoritma https://www.dailycred.com/article/bcrypt-calculator
-- Lozinka za oba user-a je 123
-- Ovo su sve imena kolona u tabelama db(Column anotacija u klasama), a ne imena polja u klasama

INSERT INTO Authorities (id, role) VALUES (1, 'ROLE_SYSTEM_ADMIN');
INSERT INTO Authorities (id, role) VALUES (2, 'ROLE_AIRLINE_ADMIN');
INSERT INTO Authorities (id, role) VALUES (3, 'ROLE_HOTEL_ADMIN');
INSERT INTO Authorities (id, role) VALUES (4, 'ROLE_RENT_A_CAR_ADMIN');
INSERT INTO Authorities (id, role) VALUES (5, 'ROLE_REGISTERED_USER');
        
--INSERT INTO USERS (id, username, password, first_name, last_name, email, enabled, last_password_reset_date) VALUES (1, 'user', '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', 'Marko', 'Markovic', 'user@example.com', true, '2017-10-01 21:58:58.508-07');
--INSERT INTO USERS (id, username, password, first_name, last_name, email, enabled, last_password_reset_date) VALUES (2, 'admin', '$2a$04$Vbug2lwwJGrvUXTj6z7ff.97IzVBkrJ1XfApfGNl.Z695zqcnPYra', 'Nikola', 'Nikolic', 'admin@example.com', true, '2017-10-01 18:57:58.508-07');
--insert into users (email, enabled, first_time, last_password_reset_date, name, password, surname, username, airline_id, dtype, id) values ('bobic@gmail.com', 1, 1, '2019-04-28 21:00:00', 'Bob', '$2a$10$c7jv8zcmZoNkjkLZAdTE5OmvmPddtMzMn6GLYt62lymTYu5vdpfpG', 'Bobic', 'avion', 1, 'AirlineAdmin', 2);
INSERT INTO Users (dtype, id, username, password, first_name, last_name, email, enabled,last_password_reset_date, phone_number, first_time) VALUES ( 'RegisteredUser', 1, 'registereduser', '$2a$10$ti9XAVlcbsumx2wlOkFb3u9VpJMe5.l.r.fb7eY.TBddzI5UNoNai','Bob', 'Bobic', 'bob@gmail.com', true, '2019-04-18 20:58:00', '00381643332211', true);
INSERT INTO Users (dtype, id, username, password, first_name, last_name, email, enabled,last_password_reset_date, phone_number, first_time) VALUES ( 'AirlineAdmin', 2, 'airlineadmin', '$2a$10$ti9XAVlcbsumx2wlOkFb3u9VpJMe5.l.r.fb7eY.TBddzI5UNoNai','Tom', 'Tomic', 'tom@gmail.com', true, '2019-04-18 20:58:00', '00381643332211', true);


INSERT INTO USER_AUTHORITY (user_id, authority_id) VALUES (1, 5);
INSERT INTO USER_AUTHORITY (user_id, authority_id) VALUES (2, 2);
--INSERT INTO USER_AUTHORITY (user_id, authority_id) VALUES (2, 2);

        
        
