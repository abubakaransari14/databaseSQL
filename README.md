# Restaurant Menu & Orders Database

This repository contains a **MySQL database schema** for a restaurant, including the menu, categories, weekly and main menus, branches, and order tracking. It is designed for analytics, reporting, and point-of-sale (POS) systems.

- Menu items (main menu and weekly menu)  
- Categories of dishes (e.g., Vorspeisen, Hauptgänge, Vegetarisch)  
- Branches (e.g., Ku’damm, Neukölln)  
- Order tracking for analytics and reporting  

---

## 🏗 Database Structure

### 1. Branches
Stores restaurant branch information.

| Column      | Type        | Description           |
|------------|------------|---------------------|
| BranchID   | INT        | Primary key          |
| BranchName | VARCHAR    | Name of the branch   |

---

### 2. MenuTypes
Different types of menus (e.g., Allkarte, Wochenkarte).

| Column        | Type        | Description                  |
|--------------|------------|------------------------------|
| MenuTypeID   | INT        | Primary key                  |
| MenuTypeName | VARCHAR    | Name of the menu type        |

---

### 3. Categories
Menu categories (e.g., Vorspeisen, Hauptgänge, Vegetarisch).

| Column       | Type        | Description           |
|-------------|------------|---------------------|
| CategoryID  | INT        | Primary key          |
| CategoryName| VARCHAR    | Name of the category |

---

### 4. MenuItems
Stores all dishes served.

| Column          | Type        | Description                      |
|----------------|------------|----------------------------------|
| MenuItemID      | INT        | Primary key                      |
| MenuTypeID      | INT        | Foreign key to `MenuTypes`       |
| CategoryID      | INT        | Foreign key to `Categories`      |
| MenuItemName    | VARCHAR    | Name of the dish                  |
| MenuItemPrice   | DECIMAL    | Price of the dish                 |
| IsMenuItemActive| BIT        | Whether the dish is active        |

---

### 5. Orders
Stores order headers.

| Column       | Type        | Description           |
|-------------|------------|---------------------|
| OrderID     | INT        | Primary key          |
| BranchID    | INT        | Foreign key to `Branches` |
| OrderDateTime| DATETIME   | Timestamp of the order |

---

### 6. OrderItems
Stores individual items in each order.

| Column     | Type        | Description                 |
|-----------|------------|-----------------------------|
| OrderItemID| INT       | Primary key                 |
| OrderID   | INT        | Foreign key to `Orders`     |
| MenuItemID| INT        | Foreign key to `MenuItems`  |
| Quantity  | INT        | Number of items ordered      |
| ItemPrice | DECIMAL    | Price of the item at order time |

