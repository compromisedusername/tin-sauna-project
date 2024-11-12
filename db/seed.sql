INSERT INTO Permission (id, name) VALUES
(1, 'CREATE'),
(2, 'READ'),
(3, 'UPDATE'),
(4, 'DELETE');

INSERT INTO Role (id, name) VALUES
(1, 'Admin'),
(2, 'User');

INSERT INTO UserRole (user_id, Role_id) VALUES
(1, 1);

INSERT INTO RolePermission (permission_id, role_id, resource_type ) VALUES
(1,1, "ALL"),
(1, 2, "ALL"),
(1, 3, "ALL"),
(1, 4, "ALL");


INSERT INTO Sauna (id, sauna_type, humidity, temperature, people_capacity) VALUES
(1, 'Finnish', 10, 90, 4),
(2, 'Steam', 80, 45, 6);

INSERT INTO "User" (id, name, surname, email, password_hash, salt) VALUES
(1, 'admin', 'admin', 'admin@sauny.pl', 'admin', 'salt'),
(2, 'John', 'Kowalski', 'john@kowalski.pl', 'password', 'salt');

