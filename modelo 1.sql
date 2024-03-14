CREATE TABLE Cliente (
    ClientId INTEGER PRIMARY KEY,
    CreatedBy INTEGER,
    UpdatedBy INTEGER,
    Name VARCHAR(50),
    LastName VARCHAR(50),
    Cell VARCHAR(30),
    Email VARCHAR(300),
    Observations VARCHAR(300),
    Active BOOLEAN,
    CreateDate DATETIME,
    UpdatedDate DATETIME,
    FOREIGN KEY (CreatedBy) REFERENCES UserUC(UserIdUC),
    FOREIGN KEY (UpdatedBy) REFERENCES UserUC(UserIdUC)
);

CREATE TABLE Ticket (
    TicketId INTEGER PRIMARY KEY,
    RaffleId INTEGER,
    ClientId INTEGER,
    CreatedBy INTEGER,
    UpdatedBy INTEGER,
    Active BOOLEAN,
    CreateDate DATETIME,
    UpdatedDate DATETIME,
    FOREIGN KEY (RaffleId) REFERENCES Raffle(RaffleId),
    FOREIGN KEY (ClientId) REFERENCES Cliente(ClientId),
    FOREIGN KEY (CreatedBy) REFERENCES UserUC(UserIdUC),
    FOREIGN KEY (UpdatedBy) REFERENCES UserUC(UserIdUC)
);

CREATE TABLE UserUC (
    UserIdUC INTEGER PRIMARY KEY,
    CreatedDate DATETIME,
    UpdateBY INTEGER,
    UserName VARCHAR(100),
    Password VARCHAR(100),
    LastAccess DATETIME,
    Active BOOLEAN,
    CreateBY INTEGER,
    CreateDate DATETIME,
    UpdateDate DATETIME
);

CREATE TABLE Raffle (
    RaffleId INTEGER PRIMARY KEY,
    CreatedBY INTEGER,
    Description VARCHAR(300),
    StartDate DATETIME,
    RaffleDate DATETIME,
    Active BOOLEAN,
    CreateDate DATETIME,
    UpdateDate DATETIME,
    FOREIGN KEY (CreatedBY) REFERENCES UserUC(UserIdUC)
);

CREATE TABLE Prize (
    PrizeId INTEGER PRIMARY KEY,
    RaffleId INTEGER,
    CreatedBy INTEGER,
    UpdatedBy INTEGER,
    Product VARCHAR(100),
    Active BOOLEAN,
    CreatedDate DATETIME,
    UpdatedDate DATETIME,
    FOREIGN KEY (RaffleId) REFERENCES Raffle(RaffleId),
    FOREIGN KEY (CreatedBy) REFERENCES UserUC(UserIdUC),
    FOREIGN KEY (UpdatedBy) REFERENCES UserUC(UserIdUC)
);
