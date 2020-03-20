CREATE TABLE Neighborhood (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    [Name] VARCHAR(55) NOT NULL
);

CREATE TABLE Walker (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    [Name] VARCHAR(55) NOT NULL,
    NeighborhoodId INTEGER,
    CONSTRAINT FK_Walker_Neighborhood FOREIGN KEY(NeighborhoodId) REFERENCES Neighborhood(Id),
);

CREATE TABLE Walks (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    [Date] datetime NOT NULL,
    Duration INTEGER NOT NULL,
    WalkerId INTEGER,
    DogId INTEGER,
    CONSTRAINT FK_Walks_Walker FOREIGN KEY(WalkerId) REFERENCES Walker(Id),
    CONSTRAINT FK_Walks_Dog FOREIGN KEY(DogId) REFERENCES Dog(Id)
);

CREATE TABLE Dog (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    [Name] VARCHAR(55) NOT NULL,
    OwnerId INTEGER,
    CONSTRAINT FK_Dog_Owner FOREIGN KEY(OwnerId) REFERENCES [Owner](Id),
    Breed VARCHAR(55) NOT NULL,
    Notes VARCHAR(255) NOT NULL
);

CREATE TABLE Owner (
    Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
    [Name] VARCHAR(55) NOT NULL,
    [Address] VARCHAR(255) NOT NULL,
    NeighborhoodId INTEGER,
    CONSTRAINT FK_Owner_Neighborhood FOREIGN KEY(NeighborhoodId) REFERENCES Neighborhood(Id),
    Phone VARCHAR(55) NOT NULL
);

INSERT INTO Neighborhood([Name]) VALUES ('Coolsville');
INSERT INTO Neighborhood([Name]) VALUES ('Orbit City');
INSERT INTO Neighborhood([Name]) VALUES ('Bedrock');

INSERT INTO Walker([Name], NeighborhoodId) VALUES ('Doug Walkerson', 1);
INSERT INTO Walker([Name], NeighborhoodId) VALUES ('Patty Poochini', 2);
INSERT INTO Walker([Name], NeighborhoodId) VALUES ('Walker, Texas Ranger', 3);

INSERT INTO Dog([Name], OwnerId, Breed, Notes) VALUES ('Scooby-Doo', 1, 'Great Dane', 'Loves Scooby Snacks, can also speak (kind of)');
INSERT INTO Dog([Name], OwnerId, Breed, Notes) VALUES ('Scrappy-Doo', 1, 'Great Dane', 'Nephew of Scooby-Doo, can speak as well');
INSERT INTO Dog([Name], OwnerId, Breed, Notes) VALUES ('Astro', 2, 'Space Dog', 'Enjoys chasing cats');
INSERT INTO Dog([Name], OwnerId, Breed, Notes) VALUES ('Orbitty', 2, 'Spring Alien', 'Sometimes changes colors');
INSERT INTO Dog([Name], OwnerId, Breed, Notes) VALUES ('Dino', 3, 'Snorkasaurus', 'Will lick owner whenever he sees him');

INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-17, 35, 1, 1);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-17, 35, 1, 2);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-17, 45, 2, 3);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-17, 30, 3, 4);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-18, 40, 1, 1);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-18, 40, 1, 2);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-18, 35, 2, 3);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-18, 35, 3, 4);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-19, 40, 1, 1);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-19, 40, 1, 2);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-19, 45, 2, 3);
INSERT INTO Walks([Date], Duration, WalkerId, DogId) VALUES (2020-03-19, 45, 3, 4);

INSERT INTO Owner([Name], [Address], NeighborhoodId, Phone) VALUES ('Shaggy Rogers', '123 Coolsville Lane', 1, '888-123-4567');
INSERT INTO Owner([Name], [Address], NeighborhoodId, Phone) VALUES ('George Jetson', '123 Skypad Appartments', 2, '888-123-4567');
INSERT INTO Owner([Name], [Address], NeighborhoodId, Phone) VALUES ('Shaggy Rogers', '55 Cobblestone Rd.', 3, '888-123-4567');