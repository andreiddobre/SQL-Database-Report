CREATE TABLE votes (
    ID INT PRIMARY KEY,
    voting_date DATETIME,
    chosen_person VARCHAR(20),
    voter INT,
    message VARCHAR(255),
    valid BOOLEAN,
    quality INT
);

CREATE TABLE persons (
    ID VARCHAR(20) PRIMARY KEY,
    Status VARCHAR(20),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email_Address VARCHAR(100),
    Locatie VARCHAR(50)
);
