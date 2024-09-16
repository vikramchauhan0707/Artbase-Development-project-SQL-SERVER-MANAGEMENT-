use Artbase;
-- Table to store information about artists
CREATE TABLE Artists (
    artist_id int PRIMARY KEY IDENTITY(1,1),
    name varchar(100) NOT NULL UNIQUE,
    birthplace varchar(100) NULL,
    age int NULL,
    style_of_art varchar(100) NULL
);

-- Table to store information about artwork
CREATE TABLE Artwork (
    artwork_id int PRIMARY KEY IDENTITY(1,1),
    artist_id int NULL,
    year_made int NULL,
    title varchar(100) NOT NULL UNIQUE,
    type_of_art varchar(50) NULL,
    price decimal(10,2) NULL,
    CONSTRAINT FK_Artwork_Artists FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

-- Table to store information about artwork groups
CREATE TABLE ArtworkGroups (
    group_id int PRIMARY KEY IDENTITY(1,1),
    group_name varchar(100) NOT NULL
);

-- Table to establish many-to-many relationship between artwork and artwork groups
CREATE TABLE Artwork_ArtworkGroups (
    artwork_id int NOT NULL,
    group_id int NOT NULL,
    PRIMARY KEY (artwork_id, group_id),
    CONSTRAINT FK_Artwork_ArtworkGroups_Artwork FOREIGN KEY (artwork_id) REFERENCES Artwork(artwork_id),
    CONSTRAINT FK_Artwork_ArtworkGroups_ArtworkGroups FOREIGN KEY (group_id) REFERENCES ArtworkGroups(group_id)
);

-- Table to store information about customers
CREATE TABLE Customers (
    customer_id int PRIMARY KEY IDENTITY(1,1),
    name varchar(100) NOT NULL,
    address varchar(255) NULL,
    total_dollars_spent decimal(10,2) NULL
);

-- Table to establish many-to-many relationship between customers and artists
CREATE TABLE Customer_Artists (
    customer_id int NOT NULL,
    artist_id int NOT NULL,
    PRIMARY KEY (customer_id, artist_id),
    CONSTRAINT FK_Customer_Artists_Customers FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    CONSTRAINT FK_Customer_Artists_Artists FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

-- Table to establish many-to-many relationship between customers and artwork groups
CREATE TABLE Customer_ArtworkGroups (
    customer_id int NOT NULL,
    group_id int NOT NULL,
    PRIMARY KEY (customer_id, group_id),
    CONSTRAINT FK_Customer_ArtworkGroups_Customers FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    CONSTRAINT FK_Customer_ArtworkGroups_ArtworkGroups FOREIGN KEY (group_id) REFERENCES ArtworkGroups(group_id)
);