-- 1. Total students in each section
SELECT section, COUNT(*) AS total_students
FROM Students
GROUP BY section;

-- 2. Average marks per subject
SELECT subject_name, AVG(marks_obtained) AS avg_marks
FROM Marks
JOIN Subjects ON Marks.subject_id = Subjects.subject_id
GROUP BY subject_name;

-- 3. Top scorer in Mathematics
SELECT name, marks_obtained
FROM Marks
JOIN Students ON Marks.student_id = Students.student_id
WHERE subject_id = 101
ORDER BY marks_obtained DESC
LIMIT 1;

-- 4. Students who scored more than 80 in any subject
SELECT DISTINCT name
FROM Marks
JOIN Students ON Marks.student_id = Students.student_id
WHERE marks_obtained > 80;

-- 5. Average marks per student
SELECT name, AVG(marks_obtained) AS avg_score
FROM Marks
JOIN Students ON Marks.student_id = Students.student_id
GROUP BY name;
