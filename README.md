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

INSERT INTO votes (ID, voting_date, chosen_person, voter, message, valid, quality)
VALUES
    (253, '2022-10-29 11:54:15', '03400110', 00108901, 'Vote 1', 1, NULL),
    (254, '2022-10-29 11:55:22', '03400360', 00108901, 'Vote 2', 0, NULL),
    (255, '2022-10-29 11:56:53', '03402059', 00199990, 'Vote 3', 1, NULL),
    (256, '2022-10-29 11:58:23', '03400565', 00108941, 'Vote 4', 1, NULL),
    (257, '2022-10-29 12:13:00', '03400436', 00108941, 'Vote 5', 1, NULL);

INSERT INTO persons (ID, Status, First_Name, Last_Name, Email_Address, Locatie)
VALUES
    ('00108901', 'Active', 'Person', 'One', 'person.one@gfk.com', 'Germany'),
    ('00108941', 'Active', 'Person', 'Four', 'person.four@gfk.com', 'Hong Kong'),
    ('00108901', 'Active', 'Person', 'Two', 'person.two@gfk.com', 'France'),
    ('00199990', 'Inactive', 'Person', 'Three', 'person.three@gfk.com', 'Brazil');

UPDATE `my_db_sort`.`votes` SET `quality` = 'entrepreneur' WHERE (`ID` = '253');
UPDATE `my_db_sort`.`votes` SET `quality` = 'entrepreneur' WHERE (`ID` = '254');
UPDATE `my_db_sort`.`votes` SET `quality` = 'partner' WHERE (`ID` = '255');
UPDATE `my_db_sort`.`votes` SET `quality` = 'developer' WHERE (`ID` = '256');
UPDATE `my_db_sort`.`votes` SET `quality` = 'developer' WHERE (`ID` = '257');
