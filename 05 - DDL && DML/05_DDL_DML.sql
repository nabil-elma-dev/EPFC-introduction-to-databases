-- PHASE 0: Creating database
CREATE DATABASE Cours;

-- PHASE 1: Creating tables
    -- Person
    CREATE TABLE Person (
        Id_person INT NOT NULL,
        name VARCHAR(30) NOT NULL
    );

    ALTER TABLE Person
    ADD CONSTRAINT pk_person
    PRIMARY KEY(Id_person);

    INSERT INTO Person(Id_person, name)
    VALUES (1, 'PAUL'),
           (2, 'PIERRE'),
           (3, 'JULES');


    -- Professor
    CREATE TABLE Professor(
        Id_prof INT NOT NULL,
        name VARCHAR(30) NOT NULL
    );

    ALTER TABLE Professor
    ADD CONSTRAINT pk_prof
    PRIMARY KEY(Id_prof);

    INSERT INTO Professor(id_prof, name)
    VALUES (1, 'ANDRE'),
           (2, 'JACQUES');

    -- Formation
    CREATE TABLE Formation(
        Id_formation INT NOT NULL,
        class VARCHAR(30) NOT NULL,
        prof INT,
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
    );

    ALTER TABLE follows
    ADD CONSTRAINT fk_student
    FOREIGN KEY (student) REFERENCES person(Id_person);

    -- THIS QUERY DOES NOT WORK!!!
    ALTER TABLE follows
    ADD CONSTRAINT fk_class
    FOREIGN KEY follows(class) REFERENCES formation(Id_formation);

    INSERT INTO Follows(class, student)
    VALUES (1,2),
           (1,3),
           (2,2);