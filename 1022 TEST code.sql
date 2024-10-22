-- 1. 테이블 생성 4개---
--2. 조인문 사용 3개 --
-- 3.SELECt 문 사용해서 데이터 출력 --

CREATE TABLE course
(
	id varchar(40) ,
	name varchar(40)  ,
	teacher_id varchar(40)
);


CREATE TABLE teacher
(
	id varchar(40), 
	first_name varchar(40)  ,
	last_name varchar(40)
);

CREATE TAbLE Student
(
	id varchar(40),
	first_name varchar(40) ,
	last_name varchar(40)
);

CREATE TABLE student_course
(
	student_id int,
	corurse_id int,
	PRIMARY KEY (student_id, course_id),
	FOREIGN KEY (student_id) REFERENCES student(id),
	FOREIGN KEY (course_id) REFERENCES course(id)
	
);


INSERT INTO course
VALUES
		('1', 'Database design', '1'),
		('2', 'English literature', '2'),
		('3', 'Python programming', '1');
		
INSERT INTO teacher
VALUES
		('1', 'Taylah', 'Booker'),
		('2', 'Sarah-Louise', 'Blake');
		
INSERT INTO Student
VALUES
		('1', 'Shreya', 'Bain'),
		('2', 'Rianna', 'Foster'),
		('3', 'Yosef', 'Naylor');
		
INSERT INTO student_course
VALUES
		('1', '2'),
		('1', '3'),
		('2', '1'),
		('2', '2'),
		('2', '3'),
		('3', '1');
		
SELECT  *
FROM  student_course
LEFT JOIN student ON student_course."student_id" = CAST(student."id" AS varchar)
LEFT JOIN course ON student_course."course_id" = course."id"
LEFT JOIN teacher ON student_course."course_id" = teacher."course_id";

SELECT first_name 
FROM student 
WHERE course_name = 'Database Design';

SELECT course_name 
FROM course 
WHERE instructor_name = 'Taylah Brooker';

SELECT name 
FROM students 
WHERE last_name LIKE 'B%'
UNION
SELECT name 
FROM teachers 
WHERE last_name LIKE 'B%';