INSERT INTO dasHausderHunderedBiere.Branches (Name) VALUES ('Kudamm100');

-- change the column name beacuse i used name as a feild in a hurry so renamed it
ALTER TABLE dasHausderHunderedBiere.Branches 
CHANGE Name BranchName VARCHAR(100) NOT NULL;

ALTER TABLE dasHausderHunderedBiere.Categories 
CHANGE NAME CategoryName VARCHAR (100) NOT NULL; 

ALTER TABLE dasHausderHunderedBiere.MenuTypes
CHANGE Name MenuTypeName VARCHAR(100) NOT NULL; 

INSERT INTO dasHausderHunderedBiere.MenuTypes (MenuTypeName) VALUES
('Allkarte'),
('Wochenkarte');

INSERT INTO dasHausderHunderedBiere.Categories (CategoryName) VALUES
('Vorspeisen / Zwischendurch'),
('Flammkuchen'),
('Vegetarisch'),
('Hauptgänge'),
('Für den kleinen Hunger'),
('Der süße Abschluss');

INSERT INTO dasHausderHunderedBiere.MenuItems (MenuTypeId, CategoryId, ItemName, Price) VALUES
(1, 1, 'Schale Oliven', 5.00),
(1, 1, 'Ungarische Gulaschsuppe', 7.90),
(1, 1, 'Salat der Saison', 7.90),
(1, 1, 'Caesar Salad', 10.90),
(1, 1, 'Bruschetta', 6.90),
(1, 1, 'Matjesfilet Hausfrauen Art', 14.90),
(1, 1, 'Wurstsalat', 14.90),
(1, 1, 'Rinder-Tatar 180g', 18.90);

INSERT INTO dasHausderHunderedBiere.MenuItems (MenuTypeId, CategoryId, ItemName, Price) VALUES
(1, 2, 'Elsässer Classic', 12.90),
(1, 2, 'Hirtenflammkuchen', 12.90),
(1, 2, 'Flammkuchen Mediterran', 12.90);

INSERT INTO dasHausderHunderedBiere.MenuItems (MenuTypeId, CategoryId, ItemName, Price) VALUES
(1, 3, 'Schwäbische Kässpätzle', 14.90),
(1, 3, 'Mediterrane Gemüsepfanne', 14.90),
(1, 3, 'Gebackener Camembert', 13.90);

INSERT INTO dasHausderHunderedBiere.MenuItems (MenuTypeId, CategoryId, ItemName, Price) VALUES
(1, 4, 'Schnitzel vom Schwein', 18.90),
(1, 4, 'Schnitzel vom Kalb', 24.90),
(1, 4, 'Jäger-Schnitzel vom Schwein', 19.90),
(1, 4, 'Jäger-Schnitzel vom Kalb', 25.90),
(1, 4, 'Krosse Schweinshaxe', 20.90),
(1, 4, 'Kalbsleber Berliner Art', 20.90),
(1, 4, 'Marinierte Hähnchenbrustfilet', 17.90),
(1, 4, 'Kesselgulasch vom Rind', 18.90),
(1, 4, 'Ku’damm Burger (100% Rind)', 16.90),
(1, 4, 'Krosse Schweinswürste / Nürnberger Rostbratwürste (2 Pers.)', 38.90),
(1, 4, 'Krosse Schweinswürste / Nürnberger Rostbratwürste (4 Pers.)', 75.90);


INSERT INTO dasHausderHunderedBiere.MenuItems (MenuTypeId, CategoryId, ItemName, Price) VALUES
(1, 5, 'Leberkäse / 2 Spiegeleier / Kartoffel-Gurkensalat / süßer Senf', 16.90),
(1, 5, 'Leberkäse / 2 Spiegeleier / Bauernbrot / Gewürzgurke / süßer Senf', 12.90),
(1, 5, 'Berliner Boulette frisch gebraten / Gewürzgurke / Brot', 10.90),
(1, 5, 'Berliner Boulette frisch gebraten / Pommes frites / bunter Salat', 15.90),
(1, 5, 'Schaschlikspieße vom Schwein', 14.90),
(1, 5, 'Berliner Currywurst', 10.90),
(1, 5, '5 Rostbratwürste', 10.90),
(1, 5, 'Kartoffelstampf / Zwiebel-Bratensauce', 12.90),
(1, 5, 'Nachos überbacken', 10.90);

INSERT INTO dasHausderHunderedBiere.MenuItems (MenuTypeId, CategoryId, ItemName, Price) VALUES
(1, 6, 'Apfelstrudel', 7.90),
(1, 6, 'Kaiserschmarrn', 8.90);

-- used because i accidently insert the record same time 
DELETE FROM dashausderhunderedbiere.menuitems WHERE MenuItemId IN (37,38);



