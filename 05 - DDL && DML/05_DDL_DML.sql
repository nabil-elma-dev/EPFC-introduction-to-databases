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

    -- Professor
    CREATE TABLE Professor(
        Id_prof INT NOT NULL,
        name VARCHAR(30) NOT NULL
    );

    ALTER TABLE Professor
    ADD CONSTRAINT pk_prof
    PRIMARY KEY(Id_prof);

    -- Formation
    CREATE TABLE Formation(
        Id_formation INT NOT NULL,
        class VARCHAR(30) NOT NULL,
        prof INT,
        PRIMARY KEY(Id_formation),
        FOREIGN KEY (prof) REFERENCES Professor(Id_prof)
    );

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

