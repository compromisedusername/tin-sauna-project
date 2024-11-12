-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-11-11 15:11:13.099

-- tables
-- Table: Permission
CREATE TABLE Permission (
    id int  NOT NULL,
    name varchar(20)  NOT NULL,
    CONSTRAINT Permission_pk PRIMARY KEY (id)
);

-- Table: Reservation
CREATE TABLE Reservation (
    id int  NOT NULL,
    date_from timestamp  NOT NULL,
    date_to timestamp  NOT NULL,
    number_of_people int  NOT NULL,
    user_id int  NOT NULL,
    sauna_id int  NOT NULL,
    CONSTRAINT Reservation_pk PRIMARY KEY (id)
);

-- Table: Role
CREATE TABLE Role (
    id int  NOT NULL,
    name varchar(20)  NOT NULL,
    CONSTRAINT Role_pk PRIMARY KEY (id)
);

-- Table: RolePermission
CREATE TABLE RolePermission (
    permission_id int  NOT NULL,
    role_id int  NOT NULL,
    resource_type int  NOT NULL,
    CONSTRAINT RolePermission_pk PRIMARY KEY (permission_id,role_id)
);

-- Table: Sauna
CREATE TABLE Sauna (
    id int  NOT NULL,
    sauna_type varchar(20)  NOT NULL,
    humidity int  NOT NULL,
    temperature int  NOT NULL,
    people_capacity int  NOT NULL,
    CONSTRAINT Sauna_pk PRIMARY KEY (id)
);

-- Table: User
CREATE TABLE "User" (
    id int  NOT NULL,
    name varchar(60)  NOT NULL,
    surname varchar(60)  NOT NULL,
    email varchar(200)  NOT NULL,
    password_hash varchar(255)  NOT NULL,
    salt varchar(50)  NOT NULL,
    CONSTRAINT User_ak_1 UNIQUE (email) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT User_pk PRIMARY KEY (id)
);

-- Table: UserRole
CREATE TABLE UserRole (
    user_id int  NOT NULL,
    Role_id int  NOT NULL,
    CONSTRAINT UserRole_pk PRIMARY KEY (user_id,Role_id)
);

-- foreign keys
-- Reference: Reservation_Sauna (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_Sauna
    FOREIGN KEY (sauna_id)
    REFERENCES Sauna (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: Reservation_User (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_User
    FOREIGN KEY (user_id)
    REFERENCES "User" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: RolePermission_Permission (table: RolePermission)
ALTER TABLE RolePermission ADD CONSTRAINT RolePermission_Permission
    FOREIGN KEY (permission_id)
    REFERENCES Permission (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: RolePermission_Role (table: RolePermission)
ALTER TABLE RolePermission ADD CONSTRAINT RolePermission_Role
    FOREIGN KEY (role_id)
    REFERENCES Role (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: RolePermission_User (table: UserRole)
ALTER TABLE UserRole ADD CONSTRAINT RolePermission_User
    FOREIGN KEY (user_id)
    REFERENCES "User" (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: UserRole_Role (table: UserRole)
ALTER TABLE UserRole ADD CONSTRAINT UserRole_Role
    FOREIGN KEY (Role_id)
    REFERENCES Role (id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

