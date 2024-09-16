use Artbase
-- Inserting data into Artists table
INSERT INTO Artists (name, birthplace, age, style_of_art)
VALUES ('Leonardo da Vinci', 'Anchiano, Italy', 67, 'Painter'),
       ('Pablo Picasso', 'Málaga, Spain', 91, 'Painter'),
       ('Vincent van Gogh', 'Zundert, Netherlands', 37, 'Painter');

-- Inserting data into Artwork table
INSERT INTO Artwork (artist_id, year_made, title, type_of_art, price)
VALUES (1, 1503, 'Mona Lisa', 'Painting', 1000000.00),
       (2, 1907, 'Les Demoiselles d''Avignon', 'Painting', 2000000.00),
       (3, 1889, 'The Starry Night', 'Painting', 1500000.00);

-- Inserting data into ArtworkGroups table
INSERT INTO ArtworkGroups (group_name)
VALUES ('Renaissance Art'),
       ('Cubism'),
       ('Post-Impressionism');

-- Inserting data into Artwork_ArtworkGroups table (linking artwork to groups)
INSERT INTO Artwork_ArtworkGroups (artwork_id, group_id)
VALUES (1, 1), -- Mona Lisa belongs to Renaissance Art
       (2, 2), -- Les Demoiselles d'Avignon belongs to Cubism
       (3, 3); -- The Starry Night belongs to Post-Impressionism

-- Inserting data into Customers table
INSERT INTO Customers (name, address, total_dollars_spent)
VALUES ('John Smith', '123 Main St, Anytown, USA', 5000.00),
       ('Jane Doe', '456 Elm St, Othertown, USA', 7500.00),
       ('Alice Johnson', '789 Oak St, AnotherTown, USA', 10000.00);

-- Inserting data into Customer_Artists table (linking customers to artists)
INSERT INTO Customer_Artists (customer_id, artist_id)
VALUES (1, 1), -- John Smith likes Leonardo da Vinci
       (2, 2), -- Jane Doe likes Pablo Picasso
       (3, 3); -- Alice Johnson likes Vincent van Gogh

-- Inserting data into Customer_ArtworkGroups table (linking customers to artwork groups)
INSERT INTO Customer_ArtworkGroups (customer_id, group_id)
VALUES (1, 1), -- John Smith is interested in Renaissance Art
       (2, 2), -- Jane Doe is interested in Cubism
       (3, 3); -- Alice Johnson is interested in Post-Impressionism