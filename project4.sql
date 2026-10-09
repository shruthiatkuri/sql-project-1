--students table

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    birth_date TEXT,
    enorollment_date DATE NOT NULL DEFAULT now());

-- courses table

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    course_name TEXT NOT NULL,
    instructor TEXT NOT NULL,
    credits INTEGER NOT NULL CHECK ( credits > 0));    


-- grades table

CREATE TABLE grades (
    grades_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students(id),
    course_id INTEGER REFERENCES courses(id),
    grade NUMERIC NOT NULL CHECK ( grade > 0 AND grade < 100),
    UNIQUE(student_id, course_id));


--insert into values students

INSERT INTO students ( name, email, birth_date)
VALUES ('Alice', 'Alice@gamil.com','2002-07-09'),
       ('Sam', 'samemial@gmail.com','2001-08-20'),
       ('Fyn', 'Fnynn@gmail.com',NULL);


SELECT * FROM students;


--insert into values courses tables

INSERT INTO courses (course_name,instructor, credits)
VALUES ('Databases', 'James',4),
       ('Statistics', 'Avi', 4),
       ('Algorithms', 'Kay', 3);


SELECT * FROM courses;

--insert into values grades table

INSERT INTO grades (student_id, course_id, grade)
VALUES (1, 1, 89),
       (2,2,90),
       (3,3,78),
       (2,1,80);


SELECT * FROM grades;

--update 1 in students table

UPDATE students
SET email= 'sam@gmail.com'
WHERE name= 'Sam';


SELECT name,email
FROM students;

--updates 2 in students table

UPDATE students
SET birth_date= '2002-09-09'
WHERE name= 'Fyn';

SELECT name,birth_date
FROM students;

--first delete foreign key from grades

DELETE FROM grades
WHERE student_id= 1;

--Then delete the value form students table

DELETE FROM students
WHERE name= 'Alice';




SELECT * FROM students;


SELECT s.name, c.course_name, g.grade
FROM grades g
JOIN students s ON s.id= g.student_id
JOIN courses c ON c.id= g.course_id;