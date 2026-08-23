SELECT
    e.student_id,
    MIN(e.exam_id) AS exam_id,
    e.score
FROM exam_results e
JOIN (
    SELECT
        student_id,
        MAX(score) AS score
    FROM exam_results
    GROUP BY student_id
) b
    ON e.student_id = b.student_id
   AND e.score = b.score
GROUP BY e.student_id, e.score;