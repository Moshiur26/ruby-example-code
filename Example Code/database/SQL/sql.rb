CREATE TABLE people (
    id integer primary key,
    name varchar(50),
    job varchar(50),
    gender varchar(6),
    age integer);

INSERT INTO people (name, age, gender, job) VALUES ("Chris Scott", 25, "Male", "Technician");
INSERT INTO people VALUES ("Chris Scott-2", 26, "Male", "Technician-2");

#SELECT
SELECT * FROM people;
SELECT name FROM people;
SELECT * FROM people WHERE id = 2;
SELECT * FROM people WHERE name = "Chris Scott";
SELECT * FROM people WHERE age >= 20 AND age <= 40;
SELECT * FROM people ORDER BY name DESC;
SELECT * FROM people ORDER BY name DESC LIMIT 5;
SELECT * FROM people ORDER BY age DESC LIMIT 1;

# DELETE
DELETE FROM people WHERE name="Chris";
DELETE FROM people WHERE age > 100;
DELETE FROM people WHERE gender = "Male" AND age < 50;
DELETE FROM people WHERE age > 100 LIMIT 10;

#UPDATE
UPDATE people SET name = "Christopher" WHERE name = "Chris";
UPDATE people SET name = "Christopher", age = 44 WHERE name = "Chris";
UPDATE people SET name = "Christopher" WHERE name = "Chris" AND age = 25;
UPDATE people SET name = "Christopher";         #This SQL changes the name column to “Christopher” on every row of the people table.
