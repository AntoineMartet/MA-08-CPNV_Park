-- -----------------------------------------------------
-- Schema cpnv_park
-- -----------------------------------------------------
USE master;
GO

IF DB_ID('cpnv_park') IS NOT NULL
BEGIN
    ALTER DATABASE cpnv_park SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE cpnv_park;
END
GO

CREATE DATABASE cpnv_park;
GO

USE cpnv_park;
GO

-- -----------------------------------------------------
-- Table cpnv_park.paymentMethods
-- -----------------------------------------------------
CREATE TABLE paymentMethods (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    CONSTRAINT UQ_paymentMethods_Id UNIQUE (id),
    CONSTRAINT UQ_paymentMethods_Name UNIQUE (name)
);

-- -----------------------------------------------------
-- Table cpnv_park.purchasingWays
-- -----------------------------------------------------
CREATE TABLE purchasingWays (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    CONSTRAINT UQ_purchasingWay_Id UNIQUE (id),
    CONSTRAINT UQ_purchasingWays_Name UNIQUE (name)
);

-- -----------------------------------------------------
-- Table cpnv_park.transactions
-- -----------------------------------------------------
CREATE TABLE transactions (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    number VARCHAR(30) NOT NULL,
    dateTime DATETIME NULL,
    paymentMethod_id INT NOT NULL,
    purchasingWay_id INT NOT NULL,
    CONSTRAINT UQ_transactions_Id UNIQUE (id),
    CONSTRAINT UQ_transactions_Number UNIQUE (number),
    CONSTRAINT FK_transactions_paymentMethods FOREIGN KEY (paymentMethod_id) REFERENCES paymentMethods (id),
    CONSTRAINT FK_transactions_purchasingWays FOREIGN KEY (purchasingWay_id) REFERENCES purchasingWays (id)
);

-- -----------------------------------------------------
-- Table cpnv_park.fares
-- -----------------------------------------------------
CREATE TABLE fares (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    ageRangeBeginning INT NULL,
    ageRangeEnd INT NULL,
    price DECIMAL(5,2) NOT NULL,
    CONSTRAINT UQ_fares_Id UNIQUE (id),
    CONSTRAINT UQ_fares_Name UNIQUE (name)
);

-- -----------------------------------------------------
-- Table cpnv_park.transactions_contain_fares
-- -----------------------------------------------------
CREATE TABLE transactions_contain_fares (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    quantity INT NOT NULL,
    dateOfUse DATE NOT NULL,
    transaction_id INT NOT NULL,
    fare_id INT NOT NULL,
    CONSTRAINT UQ_transactions_contain_fares_Id UNIQUE (id),
    CONSTRAINT FK_transactions_contain_fares_transactions FOREIGN KEY (transaction_id) REFERENCES transactions (id) ON DELETE CASCADE,
    CONSTRAINT FK_transactions_contain_fares_fares FOREIGN KEY (fare_id) REFERENCES fares (id) ON DELETE NO ACTION
);

-- -----------------------------------------------------
-- Table cpnv_park.roles
-- -----------------------------------------------------
CREATE TABLE roles (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    CONSTRAINT UQ_roles_Id UNIQUE (id),
    CONSTRAINT UQ_roles_Name UNIQUE (name)
);

-- -----------------------------------------------------
-- Table cpnv_park.zones
-- -----------------------------------------------------
CREATE TABLE zones (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    CONSTRAINT UQ_zones_Id UNIQUE (id),
    CONSTRAINT UQ_zones_Name UNIQUE (name)
);

-- -----------------------------------------------------
-- Table cpnv_park.attractions
-- -----------------------------------------------------
CREATE TABLE attractions (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    capacity INT NULL,
    minHeight INT NULL,
    maxHeight INT NULL,
    lastCheckDate DATETIME NOT NULL,
    zone_id INT NOT NULL,
    CONSTRAINT UQ_attractions_Id UNIQUE (id),
    CONSTRAINT UQ_attractions_Name UNIQUE (name),
    CONSTRAINT FK_attractions_zones FOREIGN KEY (zone_id) REFERENCES zones (id)
);

-- -----------------------------------------------------
-- Table cpnv_park.restaurants
-- -----------------------------------------------------
CREATE TABLE restaurants (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    phone VARCHAR(20) NULL,
    capacity INT NULL,
    zone_id INT NOT NULL,
    CONSTRAINT UQ_restaurants_Id UNIQUE (id),
    CONSTRAINT UQ_restaurants_Name UNIQUE (name),
    CONSTRAINT FK_restaurants_zones FOREIGN KEY (zone_id) REFERENCES zones (id)
);

-- -----------------------------------------------------
-- Table cpnv_park.types
-- -----------------------------------------------------
CREATE TABLE types (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    CONSTRAINT UQ_types_Id UNIQUE (id),
    CONSTRAINT UQ_types_Name UNIQUE (name)
);

-- -----------------------------------------------------
-- Table cpnv_park.stands
-- -----------------------------------------------------
CREATE TABLE stands (
    id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    zone_id INT NOT NULL,
    type_id INT NOT NULL,
    CONSTRAINT UQ_stand_Id UNIQUE (id),
    CONSTRAINT UQ_stands_Name UNIQUE (name),
    CONSTRAINT FK_stands_zones FOREIGN KEY (zone_id) REFERENCES zones (id),
    CONSTRAINT FK_stands_types FOREIGN
KEY (type_id) REFERENCES types (id)
);

-- -----------------------------------------------------
-- Table cpnv_park.employees
-- -----------------------------------------------------
CREATE TABLE employees (
id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
lastName VARCHAR(50) NOT NULL,
firstName VARCHAR(50) NOT NULL,
mail VARCHAR(255) NOT NULL,
street VARCHAR(50) NOT NULL,
streetNumber VARCHAR(10) NOT NULL,
city VARCHAR(50) NOT NULL,
postalCode INT NOT NULL,
phone VARCHAR(20) NOT NULL,
AVS VARCHAR(16) NOT NULL,
role_id INT NOT NULL,
attraction_id INT NULL,
restaurant_id INT NULL,
stand_id INT NULL,
CONSTRAINT UQ_employees_Id UNIQUE (id),
CONSTRAINT UQ_employees_AVS UNIQUE (AVS),
CONSTRAINT FK_employees_roles FOREIGN KEY (role_id) REFERENCES roles (id),
CONSTRAINT FK_employees_attractions FOREIGN KEY (attraction_id) REFERENCES attractions (id) ON DELETE SET NULL,
CONSTRAINT FK_employees_restaurants FOREIGN KEY (restaurant_id) REFERENCES restaurants (id) ON DELETE SET NULL,
CONSTRAINT FK_employees_stands FOREIGN KEY (stand_id) REFERENCES stands (id) ON DELETE SET NULL
);

-- -----------------------------------------------------
-- Table cpnv_park.products
-- -----------------------------------------------------
CREATE TABLE products (
id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
number VARCHAR(30) NOT NULL,
name VARCHAR(45) NOT NULL,
price DECIMAL(5,2) NOT NULL,
CONSTRAINT UQ_products_Id UNIQUE (id),
CONSTRAINT UQ_products_Number UNIQUE (number)
);

-- -----------------------------------------------------
-- Table cpnv_park.stands_contain_products
-- -----------------------------------------------------
CREATE TABLE stands_contain_products (
id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
quantity INT NULL,
stand_id INT NOT NULL,
product_id INT NOT NULL,
CONSTRAINT UQ_stands_contain_products_Id UNIQUE (id),
CONSTRAINT FK_stands_contain_products_stands FOREIGN KEY (stand_id) REFERENCES stands (id) ON DELETE CASCADE,
CONSTRAINT FK_stands_contain_products_products FOREIGN KEY (product_id) REFERENCES products (id) ON DELETE CASCADE
);
