-- PHASE 0: Creating database
DROP DATABASE IF EXISTS Cours;
CREATE DATABASE Cours;
USE Cours;

-- PHASE 1: Creating tables
    -- Professor
    CREATE TABLE Professor(
        Id_prof INT(11) NOT NULL,
        name VARCHAR(128) NOT NULL,
        PRIMARY KEY (Id_prof)
    );

    INSERT INTO Professor(Id_prof, name)
    VALUES (1, 'ANDRE'),
           (2, 'JACQUES');

    -- Person
    CREATE TABLE Person (
        Id_person INT(11) NOT NULL,
        name VARCHAR(128) NOT NULL,
        PRIMARY KEY (Id_person)
    );
    INSERT INTO Person(Id_person, name)
    VALUES (1, 'PAUL'),
           (2, 'PIERRE'),
           (3, 'JULES');

    -- Formation
    CREATE TABLE Formation(
        Id_formation INT(11) NOT NULL,
        class VARCHAR(128) NOT NULL,
        prof INT(11),
        PRIMARY KEY(Id_formation),
        FOREIGN KEY (prof) REFERENCES Professor(Id_prof)
    );

    INSERT INTO Formation(id_formation, class, prof)
    VALUES (1,'ANALYSE',2),
           (2, 'SQL', 2),
           (3, 'COBOL', 1);

    -- Follows
    CREATE TABLE Follows (
        class INT NOT NULL,
        student INT NOT NULL,
        PRIMARY KEY(class, student),
        FOREIGN KEY (class) REFERENCES Formation(Id_formation),
        FOREIGN KEY (student) REFERENCES Person(Id_person)
    );
    INSERT INTO Follows(class, student)
    VALUES (1,2),
           (1,3),
           (2,2);