CREATE TABLE votes (
    ID INT(11) PRIMARY KEY, 
    voting_date DATETIME, 
    chosen_person VARCHAR(20), 
    voter VARCHAR(50), 
    message VARCHAR(255), 
    valid BOOLEAN, 
    quality VARCHAR(50)
    );

CREATE TABLE persons (
    ID INT(11) NOT NULL PRIMARY KEY,
    Status VARCHAR(20),
    Short_Name VARCHAR(50),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Email_Address VARCHAR(100),
    Locatie VARCHAR(50)
    );

INSERT INTO votes (ID, voting_date, chosen_person, voter, message, valid, quality)
VALUES
    (253, '2022-10-29 11:54:15', '03400110', 00108901, 'Vote 1', 1, 'entrepreneur'),
    (254, '2022-10-29 11:55:22', '03400360', 00108901, 'Vote 2', 0, 'entrepreneur'),
    (255, '2022-10-29 11:56:53', '03402059', 00199990, 'Vote 3', 1, 'partner'),
    (256, '2022-10-29 11:58:23', '03400565', 00108941, 'Vote 4', 1, 'developer'),
    (257, '2022-10-29 12:13:00', '03400436', 00108941, 'Vote 5', 1, 'developer');

INSERT INTO persons (ID, Status, Short_Name, First_Name, Last_Name, Email_Address, Locatie)
VALUES
    (00108901, 'Active', 'person.one', 'Person', 'One', 'person.one@gfk.com', 'Germany'),
    (00108941, 'Active', 'person.two', 'Person', 'Two', 'person.two@gfk.com', 'France'),
    (00199990, 'Inactive', 'person.three', 'Person', 'Three', 'person.three@gfk.com', 'Brazil'),
    (01100003, 'Active', 'person.four', 'Person', 'Four', 'person.four@gfk.com', 'Hong Kong');
