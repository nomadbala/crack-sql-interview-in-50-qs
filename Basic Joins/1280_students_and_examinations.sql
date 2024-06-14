SELECT S.student_id, S.student_name, SUB.subject_name, COUNT(E.student_id) as attended_exams
FROM Students AS S
CROSS JOIN Subjects AS SUB
LEFT JOIN Examinations AS E
ON S.student_id = E.student_id AND sub.subject_name = E.subject_name
GROUP BY S.student_id, S.student_name, sub.subject_name
ORDER BY S.student_id, SUB.subject_name
