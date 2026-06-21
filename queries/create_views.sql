-- This view calculates and returns the utilization rate based on tables like: applications, employees, raw_activity_logs
CREATE VIEW round-cable-381420.time_tracking.employee_utilization AS 
SELECT act.employee_id AS employee_id, full_name, 
-- total_tracked_time: time usage including data from all tracked applications, regardless of productivity status
SUM(duration_minutes) AS total_tracked_time, 
-- productive_minutes: time usage excluding data from tracked unproductive applications
SUM((CASE WHEN category = 'Productive' THEN duration_minutes ELSE 0 END)) AS productive_minutes, 
-- Utilization Rate: percentage of productive time relative to total tracked time.
ROUND(SUM((CASE WHEN category = 'Productive' THEN duration_minutes 
ELSE 0
END))/SUM(duration_minutes)*100, 2) AS utilization_rate 
FROM `round-cable-381420.time_tracking.applications` app
INNER JOIN  `round-cable-381420.time_tracking.raw_activity_logs` act
ON app.app_id = act.app_id
INNER JOIN `round-cable-381420.time_tracking.employees` em 
ON act.employee_id = em.employee_id
GROUP BY employee_id, full_name