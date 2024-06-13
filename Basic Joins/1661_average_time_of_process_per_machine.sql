SELECT
    machine_id,
    ROUND(AVG(end_time - start_time)::numeric, 3) AS processing_time
FROM (
    SELECT
        s.machine_id,
        s.timestamp AS start_time,
        e.timestamp AS end_time
    FROM Activity s
    JOIN Activity e
    ON s.machine_id = e.machine_id
    AND s.process_id = e.process_id
    AND s.activity_type = 'start'
    AND e.activity_type = 'end'
) process_times
GROUP BY machine_id;
