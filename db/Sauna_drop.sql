-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-11-11 15:11:13.099

-- foreign keys
ALTER TABLE Reservation
    DROP CONSTRAINT Reservation_Sauna;

ALTER TABLE Reservation
    DROP CONSTRAINT Reservation_User;

ALTER TABLE RolePermission
    DROP CONSTRAINT RolePermission_Permission;

ALTER TABLE RolePermission
    DROP CONSTRAINT RolePermission_Role;

ALTER TABLE UserRole
    DROP CONSTRAINT RolePermission_User;

ALTER TABLE UserRole
    DROP CONSTRAINT UserRole_Role;

-- tables
DROP TABLE Permission;

DROP TABLE Reservation;

DROP TABLE Role;

DROP TABLE RolePermission;

DROP TABLE Sauna;

DROP TABLE "User";

DROP TABLE UserRole;

-- End of file.

