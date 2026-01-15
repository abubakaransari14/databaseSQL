CREATE DATABASE dasHausderHunderedBiere;
CREATE TABLE dasHausderHunderedBiere.Branches (
    BranchId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE dasHausderHunderedBiere.MenuTypes (
    MenuTypeId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE dasHausderHunderedBiere.Categories (
    CategoryId INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE dasHausderHunderedBiere.MENUITEMS (
	MenuItemId INT AUTO_INCREMENT PRIMARY KEY,
    MenuTypeId INT NOT NULL,
    CategoryId INT NOT NULL,
    ItemName VARCHAR(200) NOT NULL,
    Price DECIMAL(8,2),
	IsActive BIT DEFAULT 1,
    FOREIGN KEY (MenuTypeId) REFERENCES dasHausderHunderedBiere.MenuTypes(MenuTypeId),
    FOREIGN KEY (CategoryId) REFERENCES dasHausderHunderedBiere.Categories(CategoryId)
    
);

CREATE TABLE dasHausderHunderedBiere.Orders (
    OrderId INT AUTO_INCREMENT PRIMARY KEY,
    BranchId INT NOT NULL,
    OrderDateTime DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (BranchId) REFERENCES dasHausderHunderedBiere.Branches(BranchId)
);

CREATE TABLE dasHausderHunderedBiere.OrderItems (
	OrderItemId INT AUTO_INCREMENT PRIMARY KEY,
    OrderId INT NOT NULL,
    MenuItemId INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (OrderId) REFERENCES dasHausderHunderedBiere.Orders(OrderId),
    FOREIGN KEY (MenuItemId) REFERENCES dasHausderHunderedBiere.MenuItems(MenuItemId)
);