-- Lozinke su hesovane pomocu BCrypt algoritma https://www.dailycred.com/article/bcrypt-calculator
-- Lozinka za oba user-a je 123
-- Ovo su sve imena kolona u tabelama db(Column anotacija u klasama), a ne imena polja u klasama

INSERT INTO Authorities (id, role) VALUES (1, "ROLE_SYSTEM_ADMIN");
INSERT INTO Authorities (id, role) VALUES (2, "ROLE_AIRLINE_ADMIN");
INSERT INTO Authorities (id, role) VALUES (3, "ROLE_HOTEL_ADMIN");
INSERT INTO Authorities (id, role) VALUES (4, "ROLE_RENT_A_CAR_ADMIN");
INSERT INTO Authorities (id, role) VALUES (5, "ROLE_REGISTERED_USER");
        
        
        
